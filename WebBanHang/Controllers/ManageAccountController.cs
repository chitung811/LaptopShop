using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using MailChimp.Net;
using MailChimp.Net.Interfaces;
using MailChimp.Net.Models;
using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Identity;
using Microsoft.AspNetCore.Mvc;
using Microsoft.Extensions.Configuration;
using WebBanHang.Models;
using WebBanHang.Services;
using WebBanHang.ViewModels;

namespace WebBanHang.Controllers
{
    [Authorize]
    public class ManageAccountController : Controller
    {
        private readonly UserManager<AppUser> _userManager;
        private readonly SignInManager<AppUser> _signInManager;
        private readonly MyDBContext _context;
        private readonly IEmailSender _emailSender;
        private readonly ISmsSender _smsSender;

        //Mailchimp
        private readonly string _apiKey;
        private readonly string _listId;

        public ManageAccountController(
            MyDBContext context,
            UserManager<AppUser> userManager,
            SignInManager<AppUser> signInManager,
            IEmailSender emailSender,
            ISmsSender smsSender,
            IConfiguration config)
        {
            _context = context;
            _userManager = userManager;
            _signInManager = signInManager;
            _emailSender = emailSender;
            _smsSender = smsSender;

            //Mailchimp
            _apiKey = config["MailchimpSettings:ApiKey"];
            _listId = config["MailchimpSettings:ListId"];
        }

        public IActionResult Index()
        {
            return View();
        }
        public async Task<ActionResult> ManageAccount()
        {
            var model = _context.loais.ToList();
            ViewBag.model = model;

            if (!User.Identity.IsAuthenticated)
            {
                return RedirectToAction("Index", "TrangChus");
            }

            var result = await _userManager.FindByNameAsync(User.Identity.Name);
            if(result == null)
            {
                return NotFound();
            }
            IMailChimpManager mailChimpManager = new MailChimpManager(_apiKey);
            var members = await mailChimpManager.Members.GetAllAsync(_listId).ConfigureAwait(false);
            var member = members.FirstOrDefault(p => p.EmailAddress == result.Email);

            ViewBag.pending = Status.Pending;
            ViewBag.subscribed = Status.Subscribed;

            ViewBag.Member = member;
            
            return View(result);
        }

        public IActionResult AddPhoneNumber()
        {
            var modelLoai = _context.loais.ToList();
            ViewBag.model = modelLoai;

            return View();
        }

        [HttpPost]
        [ValidateAntiForgeryToken]
        public async Task<IActionResult> AddPhoneNumber(AddPhoneNumberViewModel model)
        {
            var modelLoai = _context.loais.ToList();
            ViewBag.model = modelLoai;

            if (ModelState.IsValid)
            {
                var user = await _userManager.FindByNameAsync(User.Identity.Name);
                if (user == null)
                {
                    return NotFound();
                }
                var code = await _userManager.GenerateChangePhoneNumberTokenAsync(user, model.PhoneNumber);
                await _smsSender.SendSmsAsync(model.PhoneNumber, "Your security code is: " + code);
                return RedirectToAction(nameof(VerifyPhoneNumber), new { model.PhoneNumber });
            }

            return View(model);
        }

        [HttpGet]
        public async Task<IActionResult> VerifyPhoneNumber(string phoneNumber)
        {
            var modelLoai = _context.loais.ToList();
            ViewBag.model = modelLoai;

            var user = await _userManager.FindByNameAsync(User.Identity.Name);
            if (user == null)
            {
                return NotFound();
            }
            var code = await _userManager.GenerateChangePhoneNumberTokenAsync(user, phoneNumber);
            return phoneNumber == null 
                ? View("ManageAccount") :
                View("VerifyPhoneNumber", new VerifyPhoneNumberViewModel { PhoneNumber = phoneNumber });
        }

        [HttpPost]
        [ValidateAntiForgeryToken]
        public async Task<IActionResult> VerifyPhoneNumber(VerifyPhoneNumberViewModel model)
        {
            var modelLoai = _context.loais.ToList();
            ViewBag.model = modelLoai;

            if (ModelState.IsValid)
            {
                var user = await _userManager.FindByNameAsync(User.Identity.Name);
                if (user == null)
                {
                    return NotFound();
                }
                var result = await _userManager.ChangePhoneNumberAsync(user, model.PhoneNumber, model.Code);
                if (result.Succeeded)
                {
                    await _signInManager.SignInAsync(user, isPersistent: false);
                    return RedirectToAction(nameof(ManageAccount));
                }
                else
                {
                    foreach (IdentityError error in result.Errors)
                        ModelState.AddModelError("", error.Description);
                }
            }
            ModelState.AddModelError(string.Empty, "Failed to verify phone number");
            return View(model);
        }

        [HttpPost]
        [ValidateAntiForgeryToken]
        public async Task<IActionResult> RemovePhoneNumber()
        {
            var user = await _userManager.FindByNameAsync(User.Identity.Name);
            if (user != null)
            {
                var result = await _userManager.SetPhoneNumberAsync(user, null);
                if (result.Succeeded)
                {
                    await _signInManager.SignInAsync(user, isPersistent: false);
                    return RedirectToAction(nameof(ManageAccount));
                }
            }
            return RedirectToAction(nameof(ManageAccount));
        }

        [HttpPost]
        [ValidateAntiForgeryToken]
        public async Task<IActionResult> EnableTwoFactorAuthentication()
        {
            var user = await _userManager.FindByNameAsync(User.Identity.Name);
            if (user != null)
            {

                if(user.PhoneNumber == null)
                {
                    return RedirectToAction(nameof(ManageAccount));
                }

                await _userManager.SetTwoFactorEnabledAsync(user, true);
                await _signInManager.SignInAsync(user, isPersistent: false);
            }
            return RedirectToAction(nameof(ManageAccount), "ManageAccount");
        }

        [HttpPost]
        [ValidateAntiForgeryToken]
        public async Task<IActionResult> DisableTwoFactorAuthentication()
        {
            var user = await _userManager.FindByNameAsync(User.Identity.Name);
            if (user != null)
            {
                await _userManager.SetTwoFactorEnabledAsync(user, false);
                await _signInManager.SignInAsync(user, isPersistent: false);
            }
            return RedirectToAction(nameof(ManageAccount), "ManageAccount");
        }

        [HttpGet]
        public IActionResult ChangePassword()
        {
            var modelLoai = _context.loais.ToList();
            ViewBag.model = modelLoai;

            return View();
        }

        [HttpPost]
        [ValidateAntiForgeryToken]
        public async Task<IActionResult> ChangePassword(ChangePasswordViewModel model)
        {
            var modelLoai = _context.loais.ToList();
            ViewBag.model = modelLoai;

            if (ModelState.IsValid)
            {
                var user = await _userManager.FindByNameAsync(User.Identity.Name);
                if (user != null)
                {
                    var result = await _userManager.ChangePasswordAsync(user, model.OldPassword, model.NewPassword);
                    if (result.Succeeded)
                    {
                        await _signInManager.SignInAsync(user, isPersistent: false);
                        return RedirectToAction(nameof(ManageAccount));
                    }
                    else
                    {
                        foreach (IdentityError error in result.Errors)
                            ModelState.AddModelError("", error.Description);
                        
                    }
                    return View(model);
                }
            }

            return RedirectToAction(nameof(ManageAccount));
        }

        public async Task<IActionResult> ChangeEmail()
        {
            var modelLoai = _context.loais.ToList();
            ViewBag.model = modelLoai;

            var user = await _userManager.FindByNameAsync(User.Identity.Name);
            if(user == null)
            {
                return NotFound();
            }
            ViewBag.OldEmail = user.Email;

            return View();
        }

        [HttpPost]
        [ValidateAntiForgeryToken]
        public async Task<IActionResult> ChangeEmail(ChangeEmailViewModel model)
        {
            var modelLoai = _context.loais.ToList();
            ViewBag.model = modelLoai;

            if (ModelState.IsValid)
            {
                var user = await _userManager.FindByNameAsync(User.Identity.Name);
                if (user != null)
                {
                    ViewBag.OldEmail = user.Email;
                    user.Email = model.NewEmail;

                    var result = await _userManager.UpdateAsync(user);
                    if (result.Succeeded)
                    {
                        await _signInManager.SignInAsync(user, isPersistent: false);
                        return RedirectToAction(nameof(ManageAccount));
                    }
                    else
                    {
                        foreach (IdentityError error in result.Errors)
                            ModelState.AddModelError("", error.Description);

                    }
                    return View(model);
                }
            }

            return RedirectToAction(nameof(ManageAccount));
        }

        [HttpPost]
        [ValidateAntiForgeryToken]
        public async Task<IActionResult> Subscribed()
        {
            var user = await _userManager.FindByNameAsync(User.Identity.Name);
            if (user != null)
            {
                IMailChimpManager mailChimpManager = new MailChimpManager(_apiKey);
                var members = await mailChimpManager.Members.GetAllAsync(_listId).ConfigureAwait(false);
                var member = members.FirstOrDefault(p => p.EmailAddress == user.Email);

                member.Status = Status.Subscribed;
                await mailChimpManager.Members.AddOrUpdateAsync(_listId, member);
            }

            return RedirectToAction(nameof(ManageAccount), "ManageAccount");
        }

        [HttpPost]
        [ValidateAntiForgeryToken]
        public async Task<IActionResult> Unsubscribed()
        {
            var user = await _userManager.FindByNameAsync(User.Identity.Name);
            if (user != null)
            {
                IMailChimpManager mailChimpManager = new MailChimpManager(_apiKey);
                var members = await mailChimpManager.Members.GetAllAsync(_listId).ConfigureAwait(false);
                var member = members.FirstOrDefault(p => p.EmailAddress == user.Email);

                member.Status = Status.Unsubscribed;
                await mailChimpManager.Members.AddOrUpdateAsync(_listId, member);
            }

            return RedirectToAction(nameof(ManageAccount), "ManageAccount");
        }



        public async Task<IActionResult> ExportMember(string id)
        {
            IMailChimpManager mailChimpManager = new MailChimpManager(_apiKey);
            var members = await mailChimpManager.Members.GetAllAsync(_listId).ConfigureAwait(false);
            var member = members.FirstOrDefault(p => p.EmailAddress == id);
            var csvName = "member_" + DateTime.UtcNow.Ticks + ".csv";
            var builder = new StringBuilder();
            builder.AppendLine("Email Address,First Name, Last Name");
            builder.AppendLine($"{member.EmailAddress},{member.MergeFields["FNAME"].ToString()},{member.MergeFields["LNAME"].ToString()}");
            return File(Encoding.UTF8.GetBytes(builder.ToString()), "text/csv", csvName);
        }
    }

}