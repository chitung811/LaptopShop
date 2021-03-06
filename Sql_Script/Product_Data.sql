USE [master]
GO
/****** Object:  Database [BanHangDB]    Script Date: 11/25/2020 11:17:41 AM ******/
CREATE DATABASE [BanHangDB]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'BanHangDB', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.SQLEXPRESS\MSSQL\DATA\BanHangDB.mdf' , SIZE = 4416KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'BanHangDB_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.SQLEXPRESS\MSSQL\DATA\BanHangDB_log.ldf' , SIZE = 2560KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [BanHangDB] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [BanHangDB].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [BanHangDB] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [BanHangDB] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [BanHangDB] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [BanHangDB] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [BanHangDB] SET ARITHABORT OFF 
GO
ALTER DATABASE [BanHangDB] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [BanHangDB] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [BanHangDB] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [BanHangDB] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [BanHangDB] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [BanHangDB] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [BanHangDB] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [BanHangDB] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [BanHangDB] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [BanHangDB] SET  ENABLE_BROKER 
GO
ALTER DATABASE [BanHangDB] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [BanHangDB] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [BanHangDB] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [BanHangDB] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [BanHangDB] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [BanHangDB] SET READ_COMMITTED_SNAPSHOT ON 
GO
ALTER DATABASE [BanHangDB] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [BanHangDB] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [BanHangDB] SET  MULTI_USER 
GO
ALTER DATABASE [BanHangDB] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [BanHangDB] SET DB_CHAINING OFF 
GO
ALTER DATABASE [BanHangDB] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [BanHangDB] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [BanHangDB] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [BanHangDB] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [BanHangDB] SET QUERY_STORE = OFF
GO
USE [BanHangDB]
GO
/****** Object:  Table [dbo].[__EFMigrationsHistory]    Script Date: 11/25/2020 11:17:42 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[__EFMigrationsHistory](
	[MigrationId] [nvarchar](150) NOT NULL,
	[ProductVersion] [nvarchar](32) NOT NULL,
 CONSTRAINT [PK___EFMigrationsHistory] PRIMARY KEY CLUSTERED 
(
	[MigrationId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetRoleClaims]    Script Date: 11/25/2020 11:17:42 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetRoleClaims](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[RoleId] [nvarchar](450) NOT NULL,
	[ClaimType] [nvarchar](max) NULL,
	[ClaimValue] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetRoleClaims] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetRoles]    Script Date: 11/25/2020 11:17:42 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetRoles](
	[Id] [nvarchar](450) NOT NULL,
	[Name] [nvarchar](256) NULL,
	[NormalizedName] [nvarchar](256) NULL,
	[ConcurrencyStamp] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetRoles] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserClaims]    Script Date: 11/25/2020 11:17:42 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserClaims](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [nvarchar](450) NOT NULL,
	[ClaimType] [nvarchar](max) NULL,
	[ClaimValue] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetUserClaims] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserLogins]    Script Date: 11/25/2020 11:17:42 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserLogins](
	[LoginProvider] [nvarchar](450) NOT NULL,
	[ProviderKey] [nvarchar](450) NOT NULL,
	[ProviderDisplayName] [nvarchar](max) NULL,
	[UserId] [nvarchar](450) NOT NULL,
 CONSTRAINT [PK_AspNetUserLogins] PRIMARY KEY CLUSTERED 
(
	[LoginProvider] ASC,
	[ProviderKey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserRoles]    Script Date: 11/25/2020 11:17:42 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserRoles](
	[UserId] [nvarchar](450) NOT NULL,
	[RoleId] [nvarchar](450) NOT NULL,
 CONSTRAINT [PK_AspNetUserRoles] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUsers]    Script Date: 11/25/2020 11:17:42 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUsers](
	[Id] [nvarchar](450) NOT NULL,
	[UserName] [nvarchar](256) NULL,
	[NormalizedUserName] [nvarchar](256) NULL,
	[Email] [nvarchar](256) NULL,
	[NormalizedEmail] [nvarchar](256) NULL,
	[EmailConfirmed] [bit] NOT NULL,
	[PasswordHash] [nvarchar](max) NULL,
	[SecurityStamp] [nvarchar](max) NULL,
	[ConcurrencyStamp] [nvarchar](max) NULL,
	[PhoneNumber] [nvarchar](max) NULL,
	[PhoneNumberConfirmed] [bit] NOT NULL,
	[TwoFactorEnabled] [bit] NOT NULL,
	[LockoutEnd] [datetimeoffset](7) NULL,
	[LockoutEnabled] [bit] NOT NULL,
	[AccessFailedCount] [int] NOT NULL,
	[Password] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_AspNetUsers] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserTokens]    Script Date: 11/25/2020 11:17:42 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserTokens](
	[UserId] [nvarchar](450) NOT NULL,
	[LoginProvider] [nvarchar](450) NOT NULL,
	[Name] [nvarchar](450) NOT NULL,
	[Value] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetUserTokens] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[LoginProvider] ASC,
	[Name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[BaiViet]    Script Date: 11/25/2020 11:17:42 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BaiViet](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[TieuDe] [nvarchar](max) NULL,
	[NoiDung] [nvarchar](max) NULL,
	[Hinh] [nvarchar](max) NULL,
	[MaLoai] [int] NOT NULL,
 CONSTRAINT [PK_BaiViet] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Contact]    Script Date: 11/25/2020 11:17:42 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Contact](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](max) NULL,
	[Email] [nvarchar](max) NULL,
	[Phone] [int] NOT NULL,
	[NoiDung] [nvarchar](max) NULL,
 CONSTRAINT [PK_Contact] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HangHoa]    Script Date: 11/25/2020 11:17:42 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HangHoa](
	[MaHH] [int] IDENTITY(1,1) NOT NULL,
	[TenHH] [nvarchar](100) NOT NULL,
	[Hinh] [nvarchar](max) NULL,
	[MoTa] [nvarchar](max) NULL,
	[DonGia] [float] NOT NULL,
	[SoLuong] [int] NOT NULL,
	[MaLoai] [int] NOT NULL,
	[NgayDang] [datetime2](7) NOT NULL,
	[GiamGia] [int] NOT NULL,
	[DaMua] [int] NOT NULL,
	[NoiBat] [bit] NOT NULL,
 CONSTRAINT [PK_HangHoa] PRIMARY KEY CLUSTERED 
(
	[MaHH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Loai]    Script Date: 11/25/2020 11:17:42 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Loai](
	[MaLoai] [int] IDENTITY(1,1) NOT NULL,
	[TenLoai] [nvarchar](max) NULL,
 CONSTRAINT [PK_Loai] PRIMARY KEY CLUSTERED 
(
	[MaLoai] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Oder]    Script Date: 11/25/2020 11:17:42 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Oder](
	[ID] [bigint] NOT NULL,
	[Status] [bit] NOT NULL,
	[CustomerID] [nvarchar](max) NULL,
	[ShipName] [nvarchar](max) NULL,
	[ShipMobile] [nvarchar](max) NULL,
	[ShipAddress] [nvarchar](max) NULL,
	[ShipEmail] [nvarchar](max) NULL,
	[CreatedDate] [datetime2](7) NOT NULL,
	[CheckOutType] [nvarchar](max) NULL,
	[Total] [float] NOT NULL,
 CONSTRAINT [PK_Oder] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[OderDetail]    Script Date: 11/25/2020 11:17:42 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OderDetail](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[OderID] [bigint] NOT NULL,
	[Quantity] [int] NOT NULL,
	[Gia] [float] NOT NULL,
	[MaHH] [int] NOT NULL,
 CONSTRAINT [PK_OderDetail] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[QuangCao]    Script Date: 11/25/2020 11:17:42 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[QuangCao](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Hinh] [nvarchar](max) NULL,
	[MaHH] [int] NOT NULL,
 CONSTRAINT [PK_QuangCao] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TaiKhoan]    Script Date: 11/25/2020 11:17:42 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TaiKhoan](
	[MaTK] [nvarchar](450) NOT NULL,
	[TenDangNhap] [nvarchar](max) NULL,
	[MatKhau] [nvarchar](max) NULL,
 CONSTRAINT [PK_TaiKhoan] PRIMARY KEY CLUSTERED 
(
	[MaTK] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20201112153414_Database', N'2.1.11-servicing-32099')
GO
INSERT [dbo].[AspNetRoles] ([Id], [Name], [NormalizedName], [ConcurrencyStamp]) VALUES (N'1', N'Admin', N'ADMIN', NULL)
GO
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'e3112a0b-97f7-4f27-9a94-1de87a3df001', N'1')
GO
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [Password]) VALUES (N'90a17dd2-53a3-41a5-8085-326d30a7466c', N'warbest', N'WARBEST', N'ttphuc75@gmail.com', N'TTPHUC75@GMAIL.COM', 0, N'AQAAAAEAACcQAAAAECSULX/Fk1RlLLLnzGeeO8vWhcj7kL0zXBXUa99zkxDUnIsjR+l/4ZxhvWTAKHft2g==', N'YUL7QRFE6BLP4M7SFMFUHTTOCWLNDGZX', N'cc95350c-fe37-4bd8-ad3c-a57c4e0a74e9', N'0906970487', 1, 0, NULL, 1, 0, N'Warbest101?')
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [Password]) VALUES (N'a8831e00-be34-49eb-880a-aa382a991656', N'warbest111', N'WARBEST111', N'ttphuc75@gmail.com', N'TTPHUC75@GMAIL.COM', 0, N'AQAAAAEAACcQAAAAELZgIvaqiTNicFROAL/pLZTnvuab7TNJPlGJ+naZRuq3hhtS7PUCr+JIHU/f5XoVtA==', N'LT5YOYRL6LZZLDSJJBS6XBZA7MQQ3P6L', N'51e200f1-b83b-4498-b57c-052f0c509c7b', NULL, 0, 0, NULL, 1, 0, N'Warbest101?')
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [Password]) VALUES (N'bfa7a2d7-07d7-4573-b137-8b9b7d70ad90', N'ttphuc75', N'TTPHUC75', N'ttphuc75@gmail.com', N'TTPHUC75@GMAIL.COM', 0, N'AQAAAAEAACcQAAAAECbxRcIM7WNQC0pY1DLm0PWktwby2HCe49I7N6s9dwcxmBCfL1G3qINKODQWEOUZyw==', N'CWHUQHM6JKLANIFGQPD4RPJSGIZ4DCDC', N'8dc95cee-008a-4a42-98e0-c40c2610c789', NULL, 0, 0, NULL, 1, 0, N'Warsd101!')
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [Password]) VALUES (N'e3112a0b-97f7-4f27-9a94-1de87a3df001', N'Admin', N'ADMIN', N'admin123@gmail.com', N'ADMIN123@GMAIL.COM', 0, N'AQAAAAEAACcQAAAAEHnipvtKNcK5vCV2kJ+dLjap2+NfkHo5AP7oD7srR2fOn/pEp35KAmmMjX3dAcKs+g==', N'XI4F4QRUIMRFZAAG6EW4RQY5KLP4CCXM', N'5437d8a9-7ec8-44fb-8423-4508d71da944', NULL, 0, 0, NULL, 1, 0, N'Admin123?')
GO
SET IDENTITY_INSERT [dbo].[BaiViet] ON 

INSERT [dbo].[BaiViet] ([ID], [TieuDe], [NoiDung], [Hinh], [MaLoai]) VALUES (1, N'MSI công bố laptop chơi game Alpha 15 đầu tiên trang bị công nghệ 7nm', N'Thương hiệu gaming MSI mới đây đã công bố sản phẩm laptop chơi game Alpha 15 mới nhất của hãng.  Được trang bị card đồ họa AMD Radeon RX 5500M mới, chiếc Alpha 15 là mẫu laptop chơi game đầu tiên sử dụng công nghệ 7nm, đem công nghệ phần cứng tiên tiến nhất hiện nay tới với người dùng đại chúng.  MSI còn tạo ra một dải sản phẩm mới với logo mới để nhấn mạnh vào tính độc đáo và sáng tạo của mẫu laptop mới này. Logo của Alpha lấy hình dạng lôi điểu đang giương cánh, biểu trưng cho sức mạnh, sự sáng tạo và phát triển. Là sản phẩm đi đầu về công nghệ trên laptop, nên MSI đã đặt tên cho model này là “Alpha”.  Theo truyền thống sản phẩm chơi game của MSI, mẫu laptop mới này cũng được trang bị các công nghệ mới nhất như hệ thống tản nhiệt mạnh mẽ, bàn phím đèn nền RGB per-key, loa Giant Speaker, âm thanh High-Res, cùng nhiều công nghệ khác.', N'laptop-choi-game-msi-alpha-15-2.jpg', 6)
INSERT [dbo].[BaiViet] ([ID], [TieuDe], [NoiDung], [Hinh], [MaLoai]) VALUES (2, N'Lenovo Yoga S740 lên kệ Thế Giới Di Động, giá khởi điểm 24 triệu', N'Lenovo Yoga S740 14-inch được thiết kế giúp người dùng tiết kiệm thời gian, mang lại nhiều tiện lợi hơn cho công việc hàng ngày. Bên cạnh thiết kế nhôm nguyên khối cùng bàn phím màu sắc hài hòa, Yoga S740 còn mạnh mẽ với bộ xử lý lên tới Intel Core i7 Gen 10 và đăng nhập camera hồng ngoại (IR) cùng cảm biến TOF (Time-of-flight).', N'lenovo-yoga-s740-the-gioi-di-dong-3.jpg', 4)
INSERT [dbo].[BaiViet] ([ID], [TieuDe], [NoiDung], [Hinh], [MaLoai]) VALUES (3, N'HP 15s-du0068TX - Chiếc laptop mỏng nhẹ, cấu hình mạnh mẽ với mức giá siêu “hời’’ dành cho các bạn học sinh, sinh viên', N'Một trong những trăn trở lớn nhất của các bạn sinh viên và học sinh khi lựa chọn mua laptop, đó chính là việc làm thế nào để có thể cân bằng được 3 yếu tố ngoại hình, hiệu năng và mức giá vừa túi tiền.', N'photo-1-15731407555281793641607.jpg', 5)
INSERT [dbo].[BaiViet] ([ID], [TieuDe], [NoiDung], [Hinh], [MaLoai]) VALUES (4, N'Lenovo ra mắt ThinkBook 14/15, hướng đến doanh nghiệp vừa và nhỏ', N'Lenovo đã chính thức giới thiệu tại thị trường Việt Nam 2 mẫu laptop ThinkBook 14 và ThinkBook 15 mới hướng tới người dùng doanh nghiệp vừa và nhỏ (DNVVN). Được ra mắt tại sự kiện IFA 2019 hồi tháng 9, bộ đôi ThinkBook mới có kiểu dáng đẹp và trang nhã, phù hợp với không gian làm việc hiện đại. Sản phẩm đồng thời cũng hội tụ hiệu suất, bảo mật và kết nối mạnh mẽ mà khách hàng DNVVN mong muốn cho một môi trường làm việc thông minh hơn.', N'laptop-lenovo-thinkbook-14-15-cover.jpg', 4)
INSERT [dbo].[BaiViet] ([ID], [TieuDe], [NoiDung], [Hinh], [MaLoai]) VALUES (5, N'ASUS giới thiệu series laptop X409/ X509 nhỏ gọn', N'ASUS vừa giới thiệu bộ đôi laptop phổ thông ASUS X409 và X509 có kích thước và trọng lượng nhỏ gọn với màn hình viền mỏng NanoEdge, cảm biến vân tay 1 chạm, tùy chọn ổ lưu SSD 512GB chuẩn PCIE tốc độ cao.', N'laptop-asus-x409-x509-nho-gon.jpg', 3)
INSERT [dbo].[BaiViet] ([ID], [TieuDe], [NoiDung], [Hinh], [MaLoai]) VALUES (6, N'Ra mắt HP Envy phiên bản gỗ tự nhiên', N'Sau thành công với Spectre Folio phiên bản da dành cho doanh nhân, HP đang trưng bày những chiếc laptop chất liệu gỗ đầu tiên trong triển lãm Computex 2019 diễn ra tại Đài Bắc (Đài Loan).', N'ra-mat-hp-envy-phien-ban-go-tu-nhien-e1559182803234.jpg', 5)
INSERT [dbo].[BaiViet] ([ID], [TieuDe], [NoiDung], [Hinh], [MaLoai]) VALUES (7, N'Ra mắt HP Pavilion Gaming 15 dành cho game thủ', N'HP Việt Nam đã giới thiệu sản phẩm máy tính xách tay Pavilion Gaming thế hệ mới với những tính năng cao cấp dành riêng cho đối tượng game thủ là học sinh, sinh viên và nhân viên văn phòng.', N'ra-mat-hp-pavilion-gaming-15-2.png', 5)
INSERT [dbo].[BaiViet] ([ID], [TieuDe], [NoiDung], [Hinh], [MaLoai]) VALUES (8, N'Dell kết hợp cùng Marvel Studios ra mắt G Series', N'Dell kết hợp cùng Marvel Studios ra mắt G Series – dòng laptop gaming trong bộ phim bom tấn Ant-man and The Wasp (Người Kiến và Chiến Binh Ong).', N'dell-marvel-studios-g-series-ant-man.jpg', 2)
INSERT [dbo].[BaiViet] ([ID], [TieuDe], [NoiDung], [Hinh], [MaLoai]) VALUES (9, N'Dell ra mắt dòng laptop chuyên game G Series, giá từ 23 triệu đồng', N'Hôm nay 27/6, Dell đã giới thiệu đến thị trường Việt Nam dòng laptop gaming hoàn toàn mới với 2 phiên bản G3 và G7.', N'laptop-choi-game-dell-g7-3.jpg', 2)
INSERT [dbo].[BaiViet] ([ID], [TieuDe], [NoiDung], [Hinh], [MaLoai]) VALUES (10, N'Apple ‘chia tay’ Intel, dùng chip tự sản xuất cho máy Mac tương lai', N'Apple đang có kế hoạch sử dụng con chip tự sản xuất trên các máy tính Mac từ năm 2020, thay thế sản phẩm của Intel hiện nay.', N'apple-chia-tay-intel-dung-chip-tu-san-xuat-cho-may-mac-tuong-lai.jpg', 1)
INSERT [dbo].[BaiViet] ([ID], [TieuDe], [NoiDung], [Hinh], [MaLoai]) VALUES (11, N'Apple mở bán Macbook Pro 13-inch hàng tân trang với giá hợp lý', N'Nếu việc bỏ tiền ra mua một chiếc Macbook Pro 2016 15-inch làm bạn lo lắng cho cái ví tiền của mình thì chiếc Macbook Pro 2016 13-inch hàng tân trang lại sẽ làm cho bạn thoải mái hơn trong việc chi tiêu.', N'apple-mo-ban-macbook-pro-13-inch-hang-tan-trang-voi-gia-hop-ly.jpg', 1)
INSERT [dbo].[BaiViet] ([ID], [TieuDe], [NoiDung], [Hinh], [MaLoai]) VALUES (12, N'Dell bán laptop không bật Intel Management Engine', N'Việc tắt chức năng Intel Management Engine được xem là một giải pháp an toàn hơn cho người dùng laptop. ', N'dell-ban-laptop-tat-intel-management-engine.jpg', 2)
INSERT [dbo].[BaiViet] ([ID], [TieuDe], [NoiDung], [Hinh], [MaLoai]) VALUES (13, N'ASUS ZenBook UX430 ra mắt bản màu vàng Gold, giá từ 22,5 triệu đồng', N'ASUS ZenBook UX430 có thêm bản màu Vàng Gold, đồng thời nâng vi xử lý Intel thế hệ 8 và nhân đồ họa GeForce MX150 kiến trúc Pascal mới nhất.', N'asus-zenbook-ux430-mau-gold-ra-mat2.jpg', 3)
INSERT [dbo].[BaiViet] ([ID], [TieuDe], [NoiDung], [Hinh], [MaLoai]) VALUES (14, N'Lenovo ra mắt 3 mẫu laptop di động Yoga 520/720 và IdeaPad 320S, giá từ 11 triệu đồng', N'Lenovo Yoga 720 sở hữu màn hình 13 inch FHD IPS có viền siêu mỏng, nhờ vậy tích hợp vừa vặn trong thân máy 12-inch. Máy được trang bị loa JBL cùng công nghệ âm thanh Dolby Audio Premium cho trải nghiệm âm thanh di động ấn tượng.  Máy có độ dày chỉ 14,3mm, mỏng hơn 17% so với đời máy trước. Máy hỗ trợ chuyển đổi nhanh chóng giữa các chế độ sử dụng.  Trong khi đó, Lenovo Yoga 520 được trang bị loa Harman và âm thanh Dolby Audio Premium cho âm thanh lớn và rõ ràng hơn, không bị méo tiếng. Máy có màn hình 14 inch nhưng khá nhỏ gọn. Cả hai là công cụ đắc lực giúp họ có thể phác thảo nội dung bằng bút cảm ứng cho phép người dùng dễ dàng chỉnh sửa nội dung, tạo ghi chú và phác thảo trên Windows Ink.', N'Lenovo_IdeaPad_320S_12.jpg', 4)
SET IDENTITY_INSERT [dbo].[BaiViet] OFF
GO
SET IDENTITY_INSERT [dbo].[Contact] ON 

INSERT [dbo].[Contact] ([ID], [Name], [Email], [Phone], [NoiDung]) VALUES (1, N'Trần Thiên Phúc', N'ttphuc75@gmail.com', 784339916, N'Tôi muốn xin tư vấn về việc mua laptop để chơi game')
INSERT [dbo].[Contact] ([ID], [Name], [Email], [Phone], [NoiDung]) VALUES (2, N'Nguyễn Thanh Huy Hoàng', N'HuyHoangnt@gmail.com', 903868430, N'Cho mình hỏi có laptop chơi game MSIAlpha 15 không ?')
INSERT [dbo].[Contact] ([ID], [Name], [Email], [Phone], [NoiDung]) VALUES (3, N'Tran Thien Phuc', N'ttphuc75@gmail.com', 784339916, N'Tui muốn tư vấn')
SET IDENTITY_INSERT [dbo].[Contact] OFF
GO
SET IDENTITY_INSERT [dbo].[HangHoa] ON 

INSERT [dbo].[HangHoa] ([MaHH], [TenHH], [Hinh], [MoTa], [DonGia], [SoLuong], [MaLoai], [NgayDang], [GiamGia], [DaMua], [NoiBat]) VALUES (1, N'Apple MacBook Air 2017', N'apple-macbook-air-mqd32sa-a-i5-5350u-600x600.jpg', N'MacBook Air 2017 i5 128GB là mẫu laptop văn phòng, có thiết kế siêu mỏng và nhẹ, vỏ nhôm nguyên khối sang trọng. Máy có hiệu năng ổn định, thời lượng pin cực lâu 12 giờ, phù hợp cho hầu hết các nhu cầu làm việc và giải trí. ', 22990000, 20, 1, CAST(N'2019-12-13T20:09:01.8080000' AS DateTime2), 5, 8, 0)
INSERT [dbo].[HangHoa] ([MaHH], [TenHH], [Hinh], [MoTa], [DonGia], [SoLuong], [MaLoai], [NgayDang], [GiamGia], [DaMua], [NoiBat]) VALUES (2, N'Apple Macbook Air 2019', N'apple-macbook-air-2019-i5-16ghz-8gb-128gb-mvfm2sa-13-32-600x600.jpg', N'MacBook Air 2019 128 GB i5 đã ra mắt giữ nguyên các ưu điểm vốn có của dòng MacBook Air: Mỏng nhẹ, cấu hình khỏe và pin trâu. Mẫu MacBook mới con được trang bị màn hình True Tone và cải tiến bàn phím Butterfly thế hệ mới, ổn định và gõ êm hơn.', 28990000, 18, 1, CAST(N'2019-12-13T20:12:32.9360000' AS DateTime2), 6, 2, 0)
INSERT [dbo].[HangHoa] ([MaHH], [TenHH], [Hinh], [MoTa], [DonGia], [SoLuong], [MaLoai], [NgayDang], [GiamGia], [DaMua], [NoiBat]) VALUES (3, N'Apple MacBook Air 2018', N'apple-macbook-air-mref2sa-a-i5-8gb-256gb-content-manhinhdmx-1-1-600x600.jpg', N'Macbook Air 2018 256 GB sở hữu vẻ ngoài sang trọng và mỏng nhẹ. Chip Intel Core i5 mạnh mẽ đáp ứng đầy đủ nhu cầu sử dụng văn phòng, giải trí cùng thời lượng pin đủ để bạn sử dụng suốt cả ngày dài.', 33990000, 20, 1, CAST(N'2019-12-13T20:16:22.5780000' AS DateTime2), 0, 0, 0)
INSERT [dbo].[HangHoa] ([MaHH], [TenHH], [Hinh], [MoTa], [DonGia], [SoLuong], [MaLoai], [NgayDang], [GiamGia], [DaMua], [NoiBat]) VALUES (4, N'Apple Macbook Pro Touch 2019 i5 128GB', N'apple-macbook-pro-touch-2019-i5-14ghz-8gb-128gb-m-2-2-600x600.jpg', N'Laptop Apple MacBook Pro Touch 2019 i5 (MUHN2SA/A) là thế hệ laptop mới của dòng MacBook Pro. Khoác lên mình vẻ ngoài đẳng cấp, cấu hình mạnh mẽ cùng nhiều tính năng hiện đại, chiếc laptop Apple MacBook Pro là một trong những chiếc laptop cao cấp - sang trọng đáng sở hữu nhất hiện nay.', 34490000, 15, 1, CAST(N'2019-12-13T20:17:48.2970000' AS DateTime2), 5, 0, 0)
INSERT [dbo].[HangHoa] ([MaHH], [TenHH], [Hinh], [MoTa], [DonGia], [SoLuong], [MaLoai], [NgayDang], [GiamGia], [DaMua], [NoiBat]) VALUES (5, N'Apple Macbook Pro Touch 2019 i5 256GB', N'apple-macbook-pro-touch-2019-i5-14ghz-8gb-256gb-m00-600x600.jpg', N'Laptop Apple Macbook Pro Touch 2019 được trang bị màn hình Retina tuyệt đẹp với công nghệ True Tone mang đến những thước phim cực sống động. Hơn nữa, cấu hình Intel Core i5 mạnh mẽ đưa bạn đến những trải nghiệm làm việc cực mượt mà khi thiết kế đồ hoạ hay chơi game giải trí.', 39990000, 10, 1, CAST(N'2019-12-13T20:21:44.0000000' AS DateTime2), 5, 0, 0)
INSERT [dbo].[HangHoa] ([MaHH], [TenHH], [Hinh], [MoTa], [DonGia], [SoLuong], [MaLoai], [NgayDang], [GiamGia], [DaMua], [NoiBat]) VALUES (6, N'Apple MacBook Pro Touch 2018', N'apple-macbook-pro-touch-mr9q2sa-a-2018-17-600x600.jpg', N'Thế hệ Macbook Pro 2018 đã được ra mắt với nâng cấp mạnh mẽ về cấu hình và khả năng bảo mật với con chip Apple T2. Máy vẫn giữ nguyên các ưu điểm đặc trưng như màn hình siêu nét, thiết kế cao cấp cùng thanh Touch Bar cho khả năng tương tác tuyệt vời với các ứng dụng.', 42990000, 16, 1, CAST(N'2019-12-13T20:24:53.8590000' AS DateTime2), 10, 0, 0)
INSERT [dbo].[HangHoa] ([MaHH], [TenHH], [Hinh], [MoTa], [DonGia], [SoLuong], [MaLoai], [NgayDang], [GiamGia], [DaMua], [NoiBat]) VALUES (7, N'Apple Macbook Pro Touch 2019 i7', N'apple-macbook-pro-touch-2019-15-thumb-600x600.jpg', N'MacBook Pro 2019 được Apple ra mắt là một chiếc laptop cá nhân mang tính thời trang rất cao với thiết kế tinh tế đến từng chi tiết bên cạnh cấu hình khủng để vận hành trơn tru hầu hết các công việc văn phòng như Photoshop, AI, cắt ghép video. Thêm vào đó là một số tính năng hữu ích khác như thanh cảm ứng Touch Bar, Touch ID, màn hình Retina.', 59990000, 20, 1, CAST(N'2019-12-13T20:28:45.9910000' AS DateTime2), 3, 0, 0)
INSERT [dbo].[HangHoa] ([MaHH], [TenHH], [Hinh], [MoTa], [DonGia], [SoLuong], [MaLoai], [NgayDang], [GiamGia], [DaMua], [NoiBat]) VALUES (8, N'Apple Macbook Pro Touch 2019 i9', N'macbook-pro-touch-2019-i9-23ghz-16gb-512gb-4gb-rad-600x600.jpg', N'Laptop Macbook Pro Touch 2019 i9 (MV912SA/A) - siêu phẩm mạnh mẽ nhất hiện nay của Apple sẽ đem đến những trải nghiệm mà không phải chiếc laptop nào cũng có được. Thiết kế hoàn mỹ, hiệu năng sở hữu nhiều cải tiến cùng các tính năng hiện đại là những gì mà MacBook ProTouch 2019 đem đến.', 69990000, 20, 1, CAST(N'2019-12-13T20:33:00.2720000' AS DateTime2), 0, 1, 1)
INSERT [dbo].[HangHoa] ([MaHH], [TenHH], [Hinh], [MoTa], [DonGia], [SoLuong], [MaLoai], [NgayDang], [GiamGia], [DaMua], [NoiBat]) VALUES (9, N'Asus VivoBook X507MA', N'asus-x507ma-n4000-4gb-256gb-win10-br318t-10-600x600.jpg', N'Laptop Asus X507MA (BR318T) là chiếc laptop văn phòng - học tập sở hữu thiết kế mỏng nhẹ, hoạt động nhanh mượt với ổ cứng SSD. Máy tính xách tay này còn được trang bị tính năng bảo mật bằng vân tay, giúp mở máy nhanh chóng và an toàn.', 6990000, 30, 3, CAST(N'2019-12-13T20:52:21.4570000' AS DateTime2), 7, 0, 0)
INSERT [dbo].[HangHoa] ([MaHH], [TenHH], [Hinh], [MoTa], [DonGia], [SoLuong], [MaLoai], [NgayDang], [GiamGia], [DaMua], [NoiBat]) VALUES (10, N'Asus VivoBook X441MA', N'asus-x441ma-ga024t-600x600.jpg', N'Laptop Asus Vivobook X441MA N5000 là chiếc máy tính xách tay nhỏ gọn được Asus ưu ái trang bị một hệ thống các cổng kết nối đồ sộ cùng một hiệu năng ổn định với CPU Intel Pentium thế hệ 7.', 7190000, 40, 3, CAST(N'2019-12-13T20:55:55.2334433' AS DateTime2), 0, 0, 0)
INSERT [dbo].[HangHoa] ([MaHH], [TenHH], [Hinh], [MoTa], [DonGia], [SoLuong], [MaLoai], [NgayDang], [GiamGia], [DaMua], [NoiBat]) VALUES (11, N'Asus VivoBook X407UA', N'asus-x407ua-bv351t-600x600.jpg', N'Được thiết kế vẻ ngoài trang nhã, laptop Asus X407UA (BV351T) có cấu hình đủ khoẻ để chạy tốt các ứng dụng văn phòng, photoshop cơ bản phù hợp cho nhân viên văn phòng.', 9990000, 30, 3, CAST(N'2019-12-13T20:57:27.2630000' AS DateTime2), 0, 0, 0)
INSERT [dbo].[HangHoa] ([MaHH], [TenHH], [Hinh], [MoTa], [DonGia], [SoLuong], [MaLoai], [NgayDang], [GiamGia], [DaMua], [NoiBat]) VALUES (12, N'Asus VivoBook 14 X407UA', N'asus-x407ua-i37020u-4gb-1tb-14-win1-0-bv345t-xam-2-2-600x600.jpg', N'Laptop Asus X407UA i3 7020U (BV345T) là chiếc laptop có cấu hình xử lý tốt các tác vụ học tập, văn phòng cơ bản đi kèm là các tính năng hiện đại như bảo mật vân tay, công nghệ màn hình chống chói. Đây sẽ là laptop văn phòng giá rẻ đáng cân nhắc dành cho học sinh - sinh viên hay dân văn phòng có điều kiện kinh tế vừa phải.', 9990000, 35, 3, CAST(N'2019-12-13T21:00:37.1201347' AS DateTime2), 0, 0, 0)
INSERT [dbo].[HangHoa] ([MaHH], [TenHH], [Hinh], [MoTa], [DonGia], [SoLuong], [MaLoai], [NgayDang], [GiamGia], [DaMua], [NoiBat]) VALUES (13, N'Asus VivoBook X507UA', N'laptop-asus-x507ua-i3-7020u-4gb-1tb-win10-ej727t-1-600x600.jpg', N'Tiếp tục hướng tới khách hàng là sinh viên, nhân viên văn phòng Asus vừa tung ra một sản phẩm mới với tên gọi Asus VivoBook X507UA (EJ727T). Với cấu hình chạy tốt các ứng dụng văn phòng, mở khoá vân tay hiện đại, và một thiết kế gọn nhẹ phù hợp cho việc di chuyển hằng ngày đến lớp, công ty. ', 10590000, 28, 3, CAST(N'2019-12-13T21:04:19.3770000' AS DateTime2), 3, 0, 0)
INSERT [dbo].[HangHoa] ([MaHH], [TenHH], [Hinh], [MoTa], [DonGia], [SoLuong], [MaLoai], [NgayDang], [GiamGia], [DaMua], [NoiBat]) VALUES (14, N'Asus VivoBook X507UF', N'asus-x507uf-i3-8130u-4gb-1tb-mx130-win10-ej117t-1-1-600x600.jpg', N'Hiệu năng ổn định và thiết kế linh động là những điều laptop Asus VivoBook X507UF (EJ117T) mang đến cho người dùng, nhất là những ai yêu thích sự gọn nhẹ, dễ di chuyển cũng như giải trí hàng ngày như học sinh, sinh viên và nhân viên văn phòng.', 12290000, 27, 3, CAST(N'2019-12-13T21:05:47.2427616' AS DateTime2), 0, 0, 0)
INSERT [dbo].[HangHoa] ([MaHH], [TenHH], [Hinh], [MoTa], [DonGia], [SoLuong], [MaLoai], [NgayDang], [GiamGia], [DaMua], [NoiBat]) VALUES (15, N'Asus VivoBook X509FJ', N'asus-vivobook-x509fj-i3-8145u-4gb-1tb-2gb-mx230-wi-1-600x600.jpg', N'Laptop ASUS VivoBook X509FJ (EJ227T) là chiếc máy tính xách tay văn phòng giá rẻ nhưng có cấu hình khá, thiết kế đẹp mắt. Máy còn được trang bị cảm biến vân tay mở máy cực nhanh, card đồ họa rời GeForce hiện đại. Đây là một lựa chọn tuyệt vời dành cho giới trẻ. ', 12790000, 28, 3, CAST(N'2019-12-13T21:08:15.4500000' AS DateTime2), 5, 0, 0)
INSERT [dbo].[HangHoa] ([MaHH], [TenHH], [Hinh], [MoTa], [DonGia], [SoLuong], [MaLoai], [NgayDang], [GiamGia], [DaMua], [NoiBat]) VALUES (16, N'Asus VivoBook A412FA', N'asus-vivobook-a412f-i3-8145u-4gb-32gb-512gb-win10-600x600.jpg', N'Hiện đại và tiện dụng là những gì mà laptop ASUS VivoBook A412F i3 (EK661T) đem lại. Với thiết kế mỏng nhẹ cùng ổ cứng SSD tích hợp Intel Optane siêu nhanh đem đến những trải nghiệm tuyệt vời cho người dùng, đặc biệt phù hợp với giới trẻ. ', 13490000, 26, 3, CAST(N'2019-12-13T21:09:57.2102202' AS DateTime2), 0, 0, 0)
INSERT [dbo].[HangHoa] ([MaHH], [TenHH], [Hinh], [MoTa], [DonGia], [SoLuong], [MaLoai], [NgayDang], [GiamGia], [DaMua], [NoiBat]) VALUES (17, N'Asus VivoBook S430FA', N'asus-s430fa-i3-8145u-4gb-256gb-14f-win10-eb459t-18-600x600.jpg', N'Laptop ASUS VivoBook S430FA i3 (EB459T) tự tin đồng hành cùng bạn đến bất cứ đâu. Mỏng nhẹ thời thượng, hiệu năng ổn định, cảm biến vân tay bảo mật tối ưu là những điểm mạnh của chiếc laptop ASUS VivoBook này. ', 14490000, 25, 3, CAST(N'2019-12-13T21:11:36.6042124' AS DateTime2), 0, 0, 0)
INSERT [dbo].[HangHoa] ([MaHH], [TenHH], [Hinh], [MoTa], [DonGia], [SoLuong], [MaLoai], [NgayDang], [GiamGia], [DaMua], [NoiBat]) VALUES (18, N'Asus VivoBook A512FA', N'asus-a512fa-i5-8265u-8gb-1tb-156f-win10-ej202t-b-16-600x600.jpg', N'Asus VivoBook A512FA là chiếc laptop cấu hình mạnh, đáp ứng tốt nhu cầu văn phòng và đồ họa chuyên nghiệp. Thân máy nhỏ gọn dễ dàng để bạn mang theo hằng ngày.', 15790000, 22, 3, CAST(N'2019-12-13T21:13:45.7610000' AS DateTime2), 4, 0, 0)
INSERT [dbo].[HangHoa] ([MaHH], [TenHH], [Hinh], [MoTa], [DonGia], [SoLuong], [MaLoai], [NgayDang], [GiamGia], [DaMua], [NoiBat]) VALUES (19, N'Asus VivoBook X407UB', N'asus-x407ub-bv147t-2-3-600x600.jpg', N'ASUS VivoBook X407UB - BV147T là chiếc máy tính xách tay mang trong mình bộ vi xử lý Core i7 8550U cùng card đồ họa rời MX110 cho hiệu năng mạnh mẽ và chơi game ổn. Mẫu laptop Asus sẽ là một sự lựa chọn phù hợp cho người dùng quan tâm đến một mẫu laptop văn phòng có cấu hình cao trong mức giá phải chăng nhất.', 16190000, 19, 3, CAST(N'2019-12-13T21:15:32.8240000' AS DateTime2), 7, 0, 0)
INSERT [dbo].[HangHoa] ([MaHH], [TenHH], [Hinh], [MoTa], [DonGia], [SoLuong], [MaLoai], [NgayDang], [GiamGia], [DaMua], [NoiBat]) VALUES (20, N'Asus Gaming TUF FX505D R7', N'asus-gaming-tuf-fx505d-r7-3750h-8gb-512gb-4gb-gtx1-1-600x600.jpg', N'Cỗ máy chiến game ASUS Gaming TUF FX505D R7 (AL003T) với cấu hình mạnh cùng thiết kế gaming độc đáo, cá tính. Đây là chiếc máy gaming có nhiều cải tiến, phù hợp với các game thủ hiện đại. ', 22490000, 30, 3, CAST(N'2019-12-13T21:17:46.4850000' AS DateTime2), 9, 0, 0)
INSERT [dbo].[HangHoa] ([MaHH], [TenHH], [Hinh], [MoTa], [DonGia], [SoLuong], [MaLoai], [NgayDang], [GiamGia], [DaMua], [NoiBat]) VALUES (21, N'Asus ZenBook 14 UX433FA', N'asus-ux433fa-i5-8265u-8gb-256gb-14f-cap-tui-win10-17-600x600.jpg', N'Asus Zenbook 14 UX433FA mẫu máy tính nhỏ gọn nhất thế giới với thiết kế sáng tạo trau chuốt tỉ mỉ đến từng chi tiết như bản lề ErgoLift và bàn di chuột NumberPad độc quyền, cạnh đó là cấu hình xử lý tốt các ứng dụng đồ hoạ cơ bản phù hợp với nhân viên văn phòng.', 22490000, 25, 3, CAST(N'2019-12-13T21:19:03.6330000' AS DateTime2), 5, 0, 0)
INSERT [dbo].[HangHoa] ([MaHH], [TenHH], [Hinh], [MoTa], [DonGia], [SoLuong], [MaLoai], [NgayDang], [GiamGia], [DaMua], [NoiBat]) VALUES (22, N'Asus Gaming FX505GE', N'asus-fx505ge-bq052t-24-600x600.jpg', N'Laptop Asus TUF Gaming FX505-BQ052T là chiếc laptop gaming có thiết kế hầm hố quen thuộc của dòng Asus TUF. Cấu hình hiện đại bao gồm chip core i5 thế hệ thứ 8, RAM 8 GB và card đồ họa rời NVIDIA GeForce GTX 1050Ti đem đến cho Asus TUF Gaming FX505-BQ052T sức mạnh chinh phục mọi tựa game.', 22490000, 31, 3, CAST(N'2019-12-13T21:20:25.2100000' AS DateTime2), 8, 0, 0)
INSERT [dbo].[HangHoa] ([MaHH], [TenHH], [Hinh], [MoTa], [DonGia], [SoLuong], [MaLoai], [NgayDang], [GiamGia], [DaMua], [NoiBat]) VALUES (23, N'Asus ZenBook 13 UX333FN', N'asus-ux333fn-a4124t-19-600x600.jpg', N'Khai phá sức sáng tạo trong bạn với chiếc laptop Asus ZenBook 13 UX333FN-A4124T. Không chỉ mang trong mình hiệu năng tuyệt vời, sự chú trọng tới từng chi tiết từ đường viền sắc nét cho đến tối ưu hóa trọng lượng đã giúp Asus UX333FN-A4124T xứng đáng nằm trong top sản phẩm thiết kế vượt thời gian.', 25490000, 26, 3, CAST(N'2019-12-13T21:22:30.6930000' AS DateTime2), 5, 0, 0)
INSERT [dbo].[HangHoa] ([MaHH], [TenHH], [Hinh], [MoTa], [DonGia], [SoLuong], [MaLoai], [NgayDang], [GiamGia], [DaMua], [NoiBat]) VALUES (24, N'Asus Gaming ROG Strix G531', N'asus-rog-g531-i7-9750h-8gb-512gb-6gb-gtx2060-win10-14-600x600.jpg', N'Laptop Asus ROG G531 là dòng laptop gaming nổi bật của Asus. Máy sở hữu cấu hình khủng, thiết kế không quá hầm hố nhưng vẫn đầy uy lực kết hợp cùng dải đèn LED chuyển màu tạo sự bắt mắt, nâng tầm đẳng cấp. chỉ những nét nổi bật trên đã giúp máy có một màu sắc riêng trong dòng laptop gaming.', 38990000, 28, 3, CAST(N'2019-12-13T21:23:43.9940000' AS DateTime2), 0, 0, 1)
INSERT [dbo].[HangHoa] ([MaHH], [TenHH], [Hinh], [MoTa], [DonGia], [SoLuong], [MaLoai], [NgayDang], [GiamGia], [DaMua], [NoiBat]) VALUES (25, N'Acer Aspire A315 34 C2H9', N'acer-aspire-a315-34-c2h9-n4000-4gb-256gb-win10-nx9-1-600x600.jpg', N'Laptop Acer Aspire A315 34 C2H9 hướng đến đối tượng học sinh - sinh viên đòi hỏi cấu hình đủ dùng để lướt web, soạn thảo, cùng với đó là mức phải chăng và thiết kế gọn nhẹ. Máy là một trong số ít sản phẩm đảm bảo các yếu tố giá rẻ, thời lượng pin cao cùng ổ cứng SSD nhanh chóng.', 6790000, 26, 7, CAST(N'2019-12-13T21:25:17.8731745' AS DateTime2), 0, 0, 0)
INSERT [dbo].[HangHoa] ([MaHH], [TenHH], [Hinh], [MoTa], [DonGia], [SoLuong], [MaLoai], [NgayDang], [GiamGia], [DaMua], [NoiBat]) VALUES (26, N'Acer Aspire 3 A315 54K 30FK', N'acer-aspire-3-a315-54-30fk-i3-7020u-4gb-1tb-win10-18-600x600.jpg', N'Laptop Acer Aspire 3 A315 54 30FK i3 là mẫu laptop học tập văn phòng phổ thông với cấu hình vừa phải, màn hình HD chân thực, đáp ứng nhu cầu học tập và giải trí của mọi người. ', 9790000, 33, 7, CAST(N'2019-12-13T21:27:45.6985430' AS DateTime2), 0, 0, 0)
INSERT [dbo].[HangHoa] ([MaHH], [TenHH], [Hinh], [MoTa], [DonGia], [SoLuong], [MaLoai], [NgayDang], [GiamGia], [DaMua], [NoiBat]) VALUES (27, N'Acer Aspire 3 A315 42 R2NS R3', N'acer-aspire-3-a315-42-r2ns-r3-3200u-4gb-256gb-win1-1-600x600.jpg', N'Laptop Acer Aspire 3 A315 (NX.HF9SV.005) hỗ trợ làm việc và giải trí hằng ngày. Máy có cấu hình trung bình, thiết kế mỏng nhẹ cơ động mọi lúc mọi nơi, điểm cộng của chiếc máy này là ổ cứng SSD 256 GB cho tốc độ vận hành cực nhanh. ', 9990000, 29, 7, CAST(N'2019-12-13T21:29:17.9450000' AS DateTime2), 5, 0, 0)
INSERT [dbo].[HangHoa] ([MaHH], [TenHH], [Hinh], [MoTa], [DonGia], [SoLuong], [MaLoai], [NgayDang], [GiamGia], [DaMua], [NoiBat]) VALUES (28, N'Acer Aspire A315 54 3501', N'acer-aspire-a315-54-3501-i3-8145u-4gb-256gb-win10-1-600x600.jpg', N'Laptop Acer Aspire A315 với chip Intel Core i3, cấu hình ổn với mức giá phải chăng, phù hợp với các tân sinh viên đang tìm kiếm một trợ thủ công nghệ.', 10990000, 31, 7, CAST(N'2019-12-13T21:31:42.9280000' AS DateTime2), 5, 0, 0)
INSERT [dbo].[HangHoa] ([MaHH], [TenHH], [Hinh], [MoTa], [DonGia], [SoLuong], [MaLoai], [NgayDang], [GiamGia], [DaMua], [NoiBat]) VALUES (29, N'Acer Swift 1 SF114 32 P2SG', N'acer-swift-sf114-32-p2sg-n5000-4gb-64gb-win10-nxg-600x600.jpg', N'Laptop Acer Swift 1 là mẫu laptop có ngoại hình sang trọng, thiết kế siêu mỏng và nhẹ đặc biệt phù hợp với những ai cần di chuyển nhiều hoặc mang theo máy đi làm hàng ngày. Máy sử dụng Chip Intel Pentium, RAM 4 GB đủ dùng phục vụ tốt cho laptop văn phòng và học tập.', 10990000, 26, 7, CAST(N'2019-12-13T21:33:27.0795686' AS DateTime2), 0, 0, 0)
INSERT [dbo].[HangHoa] ([MaHH], [TenHH], [Hinh], [MoTa], [DonGia], [SoLuong], [MaLoai], [NgayDang], [GiamGia], [DaMua], [NoiBat]) VALUES (30, N'Acer Swift SF114 32 P8TS', N'acer-swift-sf114-32-p8ts-n5000-4gb-64gb-14f-win10-16-600x600.jpg', N'Laptop Acer Swift SF114 được trang bị chip Intel Pentium có cấu hình tầm trung, đạt được hiệu năng ổn định với mức giá phải chăng, phù hợp với những bạn học sinh sinh viên đang tìm một trợ thủ đắc lực cùng sánh bước lên giảng đường.', 10990000, 26, 7, CAST(N'2019-12-13T21:35:00.5170000' AS DateTime2), 5, 0, 0)
INSERT [dbo].[HangHoa] ([MaHH], [TenHH], [Hinh], [MoTa], [DonGia], [SoLuong], [MaLoai], [NgayDang], [GiamGia], [DaMua], [NoiBat]) VALUES (31, N'Acer Aspire A315 54 36QY', N'acer-aspire-a315-54-36qy-i3-10110u-4gb-256gb-win10-1-600x600.jpg', N'Đặc điểm nổi bật của Acer Aspire A315 54 36QY i3 10110U/4GB/256GB/Win10 (NX.HM2SV.001)  Bộ sản phẩm chuẩn: Sách hướng dẫn, Thùng máy, Adapter sạc  ‹› Acer Aspire A315 54 36QY (NX.HM2SV.001) là chiếc laptop có thiết kế nhỏ gọn, hợp thời trang, màn hình chân thực, sắc nét cùng cấu hình ổn định đáp ứng nhu cầu học tập, làm việc văn phòng. ', 10790000, 9, 7, CAST(N'2019-12-13T21:37:34.6040000' AS DateTime2), 4, 0, 0)
INSERT [dbo].[HangHoa] ([MaHH], [TenHH], [Hinh], [MoTa], [DonGia], [SoLuong], [MaLoai], [NgayDang], [GiamGia], [DaMua], [NoiBat]) VALUES (32, N'Acer Aspire A514 52 33AB', N'acer-aspire-a514-52-33ab-i3-10110u-4gb-256gb-win10-1-600x600.jpg', N'Laptop Acer Aspire A514 i3 (NX.HMHSV.001) được thiết kế mỏng nhẹ phù hợp với giới trẻ, đặc biệt là các bạn học sinh sinh viên cần di chuyển nhiều. Máy sử dụng con chip Intel thế hệ thứ 10 hiện đại, ổ cứng SSD khởi động cực nhanh, màn hình Full HD góc nhìn siêu rộng đem đến những trải nghiệm tuyệt vời. ', 11990000, 18, 7, CAST(N'2019-12-13T21:39:45.9070055' AS DateTime2), 0, 0, 0)
INSERT [dbo].[HangHoa] ([MaHH], [TenHH], [Hinh], [MoTa], [DonGia], [SoLuong], [MaLoai], [NgayDang], [GiamGia], [DaMua], [NoiBat]) VALUES (33, N'Acer Spin 3 SP314 51 39WK', N'acer-spin-3-sp314-51-39wk-i3-7130u-nxguwsv001-cava-1-600x600.jpg', N'Acer Spin 3 SP314 51 39WK là mẫu máy tính có thiên hướng thiết kế về thời trang và sự linh hoạt, tiện lợi vượt trội. Là một chiếc laptop nhỏ gọn, màn hình cảm ứng và có thể biến đổi nhiều hình dạng phù hợp với các nhu cầu sử dụng.', 11490000, 36, 7, CAST(N'2019-12-13T21:41:03.6910000' AS DateTime2), 5, 0, 0)
INSERT [dbo].[HangHoa] ([MaHH], [TenHH], [Hinh], [MoTa], [DonGia], [SoLuong], [MaLoai], [NgayDang], [GiamGia], [DaMua], [NoiBat]) VALUES (34, N'Acer Swift 3 SF314 54 51QL', N'acer-swift-sf314-54-51ql-nxgxzsv001-14-600x600.jpg', N'Acer Swift SF314 54 51Q được trang bị vi xử lý Intel Core i5 Kabylake Refresh mới nhất (thế hệ thứ 8). Chiếc laptop nhỏ gọn, đơn giản, hiện đại đi cùng một cấu hình mạnh và nhiều công nghệ mới được tích hợp. ', 15290000, 29, 7, CAST(N'2019-12-13T21:44:02.1807145' AS DateTime2), 0, 0, 0)
INSERT [dbo].[HangHoa] ([MaHH], [TenHH], [Hinh], [MoTa], [DonGia], [SoLuong], [MaLoai], [NgayDang], [GiamGia], [DaMua], [NoiBat]) VALUES (35, N'Acer Switch 5 SW512 52P 34RS', N'acer-switch-sw512-52p-34rs-i3-7130u-4gb-128gb-win10-600x600.jpg', N'Đặc điểm nổi bật của Acer Switch 5 SW512 52P 34RS i3 7130U/4GB/128GB/Touch/Pen/Win10 (NT.LDTSV.004)  Tìm hiểu thêm Bộ sản phẩm chuẩn: Sách hướng dẫn, Bút cảm ứng, Thùng máy, Adapter sạc, Cáp  ‹› Laptop Acer Switch SW512 52P 34RS i3 là mẫu laptop 2 trong 1 siêu linh hoạt, có thể chuyển đổi thành máy tính bảng dễ dàng. Bút cảm ứng đi kèm giúp người dùng có thể ghi chú mọi ý tưởng nhanh chóng. Màn hình 2K siêu nét chắc chắn khiến bạn đắm chìm với những hình ảnh chất lượng cao.', 15740000, 35, 7, CAST(N'2019-12-13T21:45:42.2800000' AS DateTime2), 9, 4, 1)
INSERT [dbo].[HangHoa] ([MaHH], [TenHH], [Hinh], [MoTa], [DonGia], [SoLuong], [MaLoai], [NgayDang], [GiamGia], [DaMua], [NoiBat]) VALUES (36, N'Acer Swit 5 SF514 53T 740R', N'acer-swit-5-sf514-53t-740r-i7-8565u-8gb-256gb-14f-1-600x600.jpg', N'Laptop Acer Swit 5 SF514 53T 740R là dòng sản phẩm Ultrabook của Acer hướng đến đối tượng là doanh nhân khi mang trong mình trọng lượng chỉ 0.94 kg, dày 14.9 mm - một trong những chiếc laptop mỏng nhẹ nhất ở thời điểm hiện tại. Máy có cấu hình mạnh, đặc biệt được trang bị thêm màn hình cảm ứng giúp máy trở thành một trong những đối thủ đáng lườm ở phân khúc cao cấp, sang trọng.', 26490000, 14, 7, CAST(N'2019-12-13T21:47:46.9090000' AS DateTime2), 10, 0, 0)
INSERT [dbo].[HangHoa] ([MaHH], [TenHH], [Hinh], [MoTa], [DonGia], [SoLuong], [MaLoai], [NgayDang], [GiamGia], [DaMua], [NoiBat]) VALUES (37, N'Acer Swift 7 SF714 52T 76C6', N'acer-swift-7-600x600.jpg', N'Laptop Acer Swift 7 thuộc phân khúc laptop cao cấp không những sở hữu thiết kế sang trọng đầy cảm hứng, máy còn có hiệu năng mạnh mẽ cùng thời lượng pin ấn tượng. Swift 7 vừa là công cụ làm việc đắc lực, vừa là món phụ kiện đẳng cấp dành cho giới doanh nhân, văn phòng.', 49990000, 20, 7, CAST(N'2019-12-13T21:49:39.2300000' AS DateTime2), 10, 0, 1)
INSERT [dbo].[HangHoa] ([MaHH], [TenHH], [Hinh], [MoTa], [DonGia], [SoLuong], [MaLoai], [NgayDang], [GiamGia], [DaMua], [NoiBat]) VALUES (38, N'Acer Nitro AN515 54 52EZ', N'acer-nitro-an515-54-52ez-i5-9300h-8gb-256gb-gtx165-3-600x600.jpg', N'Laptop Gaming Acer Nitro AN515 54 52EZ (NH.Q59SV.019) sở hữu card đồ họa rời GTX 1650 mạnh mẽ và chip Core i5 9300H đủ chiến những tựa game đình đám. Tuy nhiên điều bất ngờ là giá của chiếc laptop này rẻ hơn nhiều sản phẩm có cấu hình tương tự dành cho dân thiết kế và game thủ.', 22990000, 25, 7, CAST(N'2019-12-13T21:52:15.9690000' AS DateTime2), 5, 0, 0)
INSERT [dbo].[HangHoa] ([MaHH], [TenHH], [Hinh], [MoTa], [DonGia], [SoLuong], [MaLoai], [NgayDang], [GiamGia], [DaMua], [NoiBat]) VALUES (39, N'HP 15 da0359TU N4417', N'hp-15-da0359tu-n4417-4gb-500gb-win10-6kd00pa-15-600x600.jpg', N'Laptop HP 15 da0359TU N4417 (6KD00PA) là chiếc laptop văn phòng giá rẻ được trang bị cấu hình vừa đủ sử dụng tính năng cơ bản và cài sẵn hệ điều hành Windows 10 bản quyền giúp sử dụng ổn định, tiện lợi hơn. Đây sẽ là laptop phù hợp cho học, sinh viên, hay dân văn phòng có điều kiện kinh tế thấp.', 7490000, 40, 5, CAST(N'2019-12-13T21:55:09.3490000' AS DateTime2), 3, 0, 0)
INSERT [dbo].[HangHoa] ([MaHH], [TenHH], [Hinh], [MoTa], [DonGia], [SoLuong], [MaLoai], [NgayDang], [GiamGia], [DaMua], [NoiBat]) VALUES (40, N'HP 14 ck0068TU', N'hp-14-ck0068tu-i3-7020u-4gb-500gb-14-win10-4me90p-16-600x600.jpg', N'Laptop HP 14 ck0068TU là thuộc dòng laptop văn phòng với thiết kế nhỏ gọn, dễ dàng di chuyển. Chiếc máy có cấu hình vừa phải đáp ứng nhu cầu học tập và giải trí của người dùng.', 10390000, 39, 5, CAST(N'2019-12-13T21:57:19.2780000' AS DateTime2), 5, 0, 0)
INSERT [dbo].[HangHoa] ([MaHH], [TenHH], [Hinh], [MoTa], [DonGia], [SoLuong], [MaLoai], [NgayDang], [GiamGia], [DaMua], [NoiBat]) VALUES (41, N'HP 348 G5', N'hp-348-g5-i3-7020u-4gb-256gb-win10-7xj62pa-210172-600x600.jpg', N'Với hiệu năng ổn định khi xử lí tác các tác vụ cơ bản như lướt web, xem phim, làm việc văn phòng Word, Excel, Powerpoint,... laptop HP 348 G5 7XJ62PA là lựa chọn phù hợp cho công việc văn phòng, học tập.', 10690000, 31, 5, CAST(N'2019-12-13T21:58:24.9340000' AS DateTime2), 5, 0, 0)
INSERT [dbo].[HangHoa] ([MaHH], [TenHH], [Hinh], [MoTa], [DonGia], [SoLuong], [MaLoai], [NgayDang], [GiamGia], [DaMua], [NoiBat]) VALUES (42, N'HP Pavilon 14 ce2035tu', N'hp-pavilon-14-ce2035tu-i3-8145u-4gb-1gb-win10-6yz-17-600x600.jpg', N'HP Pavilon 14 ce2035tu i3 (6YZ18PA) là một mẫu laptop học tập văn phòng có cấu hình vừa phải, đáp ứng nhu cầu văn phòng và giải trí thường ngày. Laptop còn có thiết kế mỏng nhẹ và mức giá phải chăng.', 12990000, 27, 5, CAST(N'2019-12-13T21:59:53.3255948' AS DateTime2), 0, 0, 0)
INSERT [dbo].[HangHoa] ([MaHH], [TenHH], [Hinh], [MoTa], [DonGia], [SoLuong], [MaLoai], [NgayDang], [GiamGia], [DaMua], [NoiBat]) VALUES (43, N'HP Pavilion X360 ad104TU', N'hp-pavilion-x360-ad104tu-4mf13pa-600x600.jpg', N'Máy tính xách tay Pavilion X360 đến từ thương hiệu HP nổi tiếng sở hữu màn hình cảm ứng lật xoay cùng cấu hình tầm trung với core i3 thế hệ thứ 8 cùng Windows bản quyền được cài đặt sẵn, đáp ứng tốt các tác vụ cơ bản của đối tượng có nhu cầu văn phòng - học tập.', 12990000, 23, 5, CAST(N'2019-12-13T22:01:21.3200000' AS DateTime2), 4, 0, 0)
INSERT [dbo].[HangHoa] ([MaHH], [TenHH], [Hinh], [MoTa], [DonGia], [SoLuong], [MaLoai], [NgayDang], [GiamGia], [DaMua], [NoiBat]) VALUES (44, N'HP Pavilion 15 cs2032TU', N'hp-pavilion-15-cs2032tu-i3-8145u-4gb-1tb-156f-win1-18-600x600.jpg', N'Laptop HP Pavilion 15 cs2032TU i3 6YZ04PA thiết kế gọn nhẹ và cấu hình đủ mạnh để xử lý các công việc văn phòng. Chiếc laptop này phù hợp nhất với học sinh sinh viên và nhân viên làm các tác vụ văn phòng đơn giản.', 13290000, 20, 5, CAST(N'2019-12-13T22:04:02.2020000' AS DateTime2), 4, 0, 0)
INSERT [dbo].[HangHoa] ([MaHH], [TenHH], [Hinh], [MoTa], [DonGia], [SoLuong], [MaLoai], [NgayDang], [GiamGia], [DaMua], [NoiBat]) VALUES (45, N'HP Probook 13', N'hp-probook-430-g6-i5-8265u-4gb-1tb-133-win10-5ym9-6-1-600x600.jpg', N'Laptop HP Probook 430 G6 (5YM98PA) là chiếc laptop mỏng nhẹ phù hợp với dân văn phòng và sinh viên. Với Chip Core i5, RAM 4 GB, chiếc laptop HP Probook 430 có sức mạnh đủ để chạy tốt các ứng dụng văn phòng và giải trí thường ngày.', 17490000, 16, 5, CAST(N'2019-12-13T22:05:37.0450000' AS DateTime2), 5, 0, 0)
INSERT [dbo].[HangHoa] ([MaHH], [TenHH], [Hinh], [MoTa], [DonGia], [SoLuong], [MaLoai], [NgayDang], [GiamGia], [DaMua], [NoiBat]) VALUES (46, N'HP Probook 430 G6', N'hp-probook-430-g6-i5-8265u-4gb-256gb-win10-6ux78p2-600x600.jpg', N'Không thay đổi quá nhiều so với các sản phẩm trước tuy nhiên laptop HP Probook 430 sang trọng hơn nhờ mặt chiếu nghỉ tay kim loại. Trọng lượng chỉ 1,45 kg và mỏng 18mm, laptop đã đáp ứng điều kiện mỏng nhẹ để phù hợp với nhu cầu thường xuyên di chuyển của bạn.', 17990000, 25, 5, CAST(N'2019-12-13T22:06:47.7061956' AS DateTime2), 0, 0, 0)
INSERT [dbo].[HangHoa] ([MaHH], [TenHH], [Hinh], [MoTa], [DonGia], [SoLuong], [MaLoai], [NgayDang], [GiamGia], [DaMua], [NoiBat]) VALUES (47, N'HP Envy 13 ah1011TU', N'hp-envy-13-ah1011tu-i5-8265u-8gb-256gb-win10-5hz2-3339-thumb-600x600.jpg', N'Laptop HP Envy 13 ah1011TU i5 8265U (5HZ28PA) mang trong mình một thiết kế siêu mỏng, siêu nhẹ cực kì thuận tiện cho việc di chuyển kết hợp cùng chất liệu kim nguyên khối toát lên vẻ tinh tế, sang trọng. Bên cạnh đó, với cấu hình đáp ứng mượt mà các ứng dụng văn phòng, cũng như xử lý khá tốt các ứng dụng đồ họa thì chắc chắn đây sẽ là chiếc laptop đáng được cân nhắc dành cho khách hàng là nhân viên văn phòng, doanh nhân.', 21490000, 21, 5, CAST(N'2019-12-13T22:07:51.4912547' AS DateTime2), 0, 0, 0)
INSERT [dbo].[HangHoa] ([MaHH], [TenHH], [Hinh], [MoTa], [DonGia], [SoLuong], [MaLoai], [NgayDang], [GiamGia], [DaMua], [NoiBat]) VALUES (48, N'HP Envy x360 ar0071AU R5', N'hp-envy-x360-ar0071au-r5-3500u-8gb-256gb-touch-win-209107-thumb-600x600.jpg', N'Laptop HP Envy x360 ar0071AU R5 với sức mạnh xử lý của AMD Ryzen 5, mẫu laptop cao cấp sẵn sàng xử lý mọi công việc đòi hỏi cấu hình cao, chỉnh sửa hình ảnh, video mượt mà.', 22890000, 26, 5, CAST(N'2019-12-13T22:11:04.8780000' AS DateTime2), 3, 0, 0)
INSERT [dbo].[HangHoa] ([MaHH], [TenHH], [Hinh], [MoTa], [DonGia], [SoLuong], [MaLoai], [NgayDang], [GiamGia], [DaMua], [NoiBat]) VALUES (49, N'HP Envy 13 aq0027TU', N'hp-envy-13-aq0027tu-i7-8565u-8gb-256gb-win10-6zf4-8-600x600.jpg', N'Với trọng lượng chỉ 1.26 kg, laptop siêu mỏng nhẹ HP Envy 13 aq0027tu sẵn sàng cùng bạn đương đầu với thách thức công việc văn phòng bất cứ nơi đâu.', 27490000, 21, 5, CAST(N'2019-12-13T22:13:06.4004355' AS DateTime2), 0, 0, 0)
INSERT [dbo].[HangHoa] ([MaHH], [TenHH], [Hinh], [MoTa], [DonGia], [SoLuong], [MaLoai], [NgayDang], [GiamGia], [DaMua], [NoiBat]) VALUES (50, N'HP Palivion 15 cx0182TX', N'hp-pavilion-15-cx0182tx-i7-8750h-8gb-1tb-128gb-4gb-3-600x600.jpg', N'Laptop HP Pavilion 15 cx0182TX i7 (5EF46PA) là chiếc laptop mang trong mình bộ vi xử lý mới nhất và mạnh mẽ nhất Intel Core i7 cùng Card đồ họa GeForce GTX 1050Ti cho hiệu năng mạnh mẽ xử lý tốt mọi tựa game và ứng dụng đồ họa hiện hành. ', 29990000, 34, 5, CAST(N'2019-12-13T22:14:40.4510000' AS DateTime2), 5, 0, 1)
INSERT [dbo].[HangHoa] ([MaHH], [TenHH], [Hinh], [MoTa], [DonGia], [SoLuong], [MaLoai], [NgayDang], [GiamGia], [DaMua], [NoiBat]) VALUES (51, N'HP EliteBook X360 1030 G3', N'hp-elitebook-x360-1030-g3-i7-8550u-8gb-256gb-133f-6-600x600.jpg', N'Sở hữu thiết kế siêu mỏng nhẹ và cấu hình cao cấp, laptop 2 in 1 HP EliteBook X360 1030 G3 5AS44PA sẵn sàng cùng bạn khởi đầu ngày làm việc bận rộn một cách tốt nhất.', 43990000, 20, 5, CAST(N'2019-12-13T22:16:21.3260000' AS DateTime2), 3, 0, 0)
INSERT [dbo].[HangHoa] ([MaHH], [TenHH], [Hinh], [MoTa], [DonGia], [SoLuong], [MaLoai], [NgayDang], [GiamGia], [DaMua], [NoiBat]) VALUES (52, N'HP EliteBook X360 14', N'hp-elitebook-x360-1040-g5-i7-8550u-16gb-512gb-touc-6-600x600.jpg', N'Laptop HP EliteBook X360 1040 G5 là chiếc laptop mới được ra mắt tháng 3/2019 - một chiếc laptop cao cấp được trang bị hầu như tất cả các công nghệ cao cấp mà HP cung cấp. Ngoài ra nó còn được hỗ trợ xác thực ba yếu tố (khuôn mặt, dấu vân tay, mật khẩu) phù hợp với yêu cầu người dùng cần bảo mật cao.', 51990000, 11, 5, CAST(N'2019-12-13T22:18:41.4920000' AS DateTime2), 2, 0, 1)
INSERT [dbo].[HangHoa] ([MaHH], [TenHH], [Hinh], [MoTa], [DonGia], [SoLuong], [MaLoai], [NgayDang], [GiamGia], [DaMua], [NoiBat]) VALUES (53, N'Dell Vostro 3568', N'dell-vostro-3568-vti32072w-vv-600x600.jpg', N'Thêm một sự lựa chọn nữa trong phân khúc laptop học tập - văn phòng nữa đến từ thương hiệu Dell. Với cấu hình được trang bị chip Intel Core i3 Kabylake, cùng RAM 4 GB, ổ cứng HDD 1 TB, laptop Dell Vostro 3568 (VTI32072W) sẽ đáp ứng tốt nhu cầu với các tác vụ nơi văn phòng cũng như việc học tập của sinh viên.', 11890000, 26, 2, CAST(N'2019-12-14T09:57:06.4700000' AS DateTime2), 4, 0, 0)
INSERT [dbo].[HangHoa] ([MaHH], [TenHH], [Hinh], [MoTa], [DonGia], [SoLuong], [MaLoai], [NgayDang], [GiamGia], [DaMua], [NoiBat]) VALUES (54, N'Dell Inspiron 3576', N'dell-inspiron-3576-p63f002n76b-15-600x600.jpg', N'Dell Inspiron 3576 i3 8130U là một trong những đại diện từ Dell cho dòng laptop mới trong năm 2018 này. Là một sản phẩm trong dòng máy Inspiron nổi tiếng từ Dell, máy được bổ sung vi xử lý thế hệ thứ 8 và 4 GB RAM rất phù hợp cho người dùng phổ thông, cần một chiếc laptop để học tập, làm việc.', 11990000, 30, 2, CAST(N'2019-12-14T09:58:41.7080000' AS DateTime2), 4, 0, 0)
INSERT [dbo].[HangHoa] ([MaHH], [TenHH], [Hinh], [MoTa], [DonGia], [SoLuong], [MaLoai], [NgayDang], [GiamGia], [DaMua], [NoiBat]) VALUES (55, N'Dell Vostro 14 3481', N'dell-vostro-3481-core-i3-7020u-6-1-1-1-600x600.jpg', N'DELL Vostro 3481 core i3-7020U là chiếc laptop có giá tốt trong phân khúc laptop tầm trung, phù hợp với khách hàng là học sinh, sinh viên hay nhân viên văn phòng. Cấu hình laptop Dell bao gồm chip Intel Core i3 Coffee Lake cùng 4 GB RAM cho hiệu năng hoạt động ổn định và mượt mà, ổ cứng HDD 1 TB cho khả năng lưu trữ dữ liệu thoải mái.', 12290000, 35, 2, CAST(N'2019-12-14T10:01:07.8477062' AS DateTime2), 0, 0, 0)
INSERT [dbo].[HangHoa] ([MaHH], [TenHH], [Hinh], [MoTa], [DonGia], [SoLuong], [MaLoai], [NgayDang], [GiamGia], [DaMua], [NoiBat]) VALUES (56, N'Dell Inspiron 3581', N'dell-inspiron-3581-i3-7020u-4gb-1tb-amd-520-win10-1-1-600x600.jpg', N'Laptop Dell Inspiron 3581 là chiếc laptop học tập, văn phòng cơ bản với hiệu năng ổn định, thiết kế đơn giản, thanh lịch. Máy còn phục vụ giải trí tốt với màn hình rộng, độ phân giải Full HD, card đồ họa rời AMD Radeon 520 chơi được các game nhẹ.', 12890000, 32, 2, CAST(N'2019-12-14T10:01:58.8284313' AS DateTime2), 0, 0, 0)
INSERT [dbo].[HangHoa] ([MaHH], [TenHH], [Hinh], [MoTa], [DonGia], [SoLuong], [MaLoai], [NgayDang], [GiamGia], [DaMua], [NoiBat]) VALUES (57, N'Dell Vostro 3580', N'dell-vostro-3580-i3-8145u-4gb-1tb-156fwin10-v5i30-15-600x600.jpg', N'Laptop Dell Vostro 3580 i3 (V5I3058W) là mẫu laptop học tập văn phòng với thiết kế cứng cáp, chắc chắn, cấu hình vừa phải đáp ứng nhu cầu học tập và giải trí của bạn. ', 12990000, 22, 2, CAST(N'2019-12-14T10:03:37.4790000' AS DateTime2), 3, 0, 0)
INSERT [dbo].[HangHoa] ([MaHH], [TenHH], [Hinh], [MoTa], [DonGia], [SoLuong], [MaLoai], [NgayDang], [GiamGia], [DaMua], [NoiBat]) VALUES (58, N'Dell Inspiron 5593', N'dell-inspiron-5593-i3-1005g1-4gb-128gb-win10-7019-1-600x600.jpg', N'Laptop Dell Inspiron 5593 với lớp vỏ nhựa cao cấp màu bạc thể hiện sự đẳng cấp sang trọng. Đây là chiếc laptop phù hợp với các bạn học sinh sinh viên đang tìm kiếm một trợ thủ công nghệ đồng hành với mức giá phải chăng.', 13990000, 25, 2, CAST(N'2019-12-14T10:07:42.9240000' AS DateTime2), 0, 0, 0)
INSERT [dbo].[HangHoa] ([MaHH], [TenHH], [Hinh], [MoTa], [DonGia], [SoLuong], [MaLoai], [NgayDang], [GiamGia], [DaMua], [NoiBat]) VALUES (59, N'Dell Vostro 14 3480', N'dell-vostro-3480-i5-8265u-4gb-1tb-14-win10-7018377-6-1-1-1-600x600.jpg', N'Dell Vostro 3480 i5 8265U là mẫu laptop văn phòng với thiết kế khá mỏng nhẹ thuận tiện để mang đi làm việc hàng ngày. Laptop được trang bị cấu hình giúp chạy mượt mà các ứng dụng học tập, văn phòng cơ bản, đi kèm là tính năng bảo mật vân tay hiện đại.', 14990000, 24, 2, CAST(N'2019-12-14T10:09:10.2585237' AS DateTime2), 0, 0, 0)
INSERT [dbo].[HangHoa] ([MaHH], [TenHH], [Hinh], [MoTa], [DonGia], [SoLuong], [MaLoai], [NgayDang], [GiamGia], [DaMua], [NoiBat]) VALUES (60, N'Dell Inspiron 13 5370', N'dell-inspiron-5370-i3-8130u-4gb-128gb-133f-win10-n-18-600x600.jpg', N'Laptop Dell Inspiron 5370 (N3I3002W) là dòng laptop cho sinh viên với cấu hình được trang bị vi xử lý chip Intel Core i3 thế hệ thứ 8 đem đến hiệu năng ổn định khi thao tác các tác vụ cơ bản, phù hợp cho công việc văn phòng, học tập.', 15890000, 39, 2, CAST(N'2019-12-14T10:11:19.7478326' AS DateTime2), 0, 0, 0)
INSERT [dbo].[HangHoa] ([MaHH], [TenHH], [Hinh], [MoTa], [DonGia], [SoLuong], [MaLoai], [NgayDang], [GiamGia], [DaMua], [NoiBat]) VALUES (61, N'Dell Vostro 3580', N'dell-vostro-3580-i5-8265u-4gb-1tb-2gb-amd520-win10-15-600x600.jpg', N'Dell vừa cho ra mắt laptop Dell Vostro 3580 i5 (P75F010V80I) với thiết kế trang nhã, cấu hình đáp ứng tốt nhu cầu văn phòng và đồ họa cơ bản, đây chính là chiếc laptop văn phòng đáng cân nhắc đối với khách hàng là học sinh, nhân viên văn phòng.', 16690000, 33, 2, CAST(N'2019-12-14T10:13:11.3320000' AS DateTime2), 8, 0, 0)
INSERT [dbo].[HangHoa] ([MaHH], [TenHH], [Hinh], [MoTa], [DonGia], [SoLuong], [MaLoai], [NgayDang], [GiamGia], [DaMua], [NoiBat]) VALUES (62, N'Dell Inspiron 5593', N'dell-inspiron-5593-i5-1035g1-4gb-1tb-128gb-2gb-mx2-1-600x600.jpg', N' ‹› Laptop Dell Inspiron 5593 sẽ giúp bạn giải quyết công việc một cách hiệu quả nhờ cấu hình Core i5 mạnh mẽ và các tính năng hiện đại.', 17990000, 29, 2, CAST(N'2019-12-14T10:15:51.0193615' AS DateTime2), 0, 0, 0)
INSERT [dbo].[HangHoa] ([MaHH], [TenHH], [Hinh], [MoTa], [DonGia], [SoLuong], [MaLoai], [NgayDang], [GiamGia], [DaMua], [NoiBat]) VALUES (63, N'Dell Vostro 5581', N'dell-vostro-5581-i5-8265u-8gb-1tb-win10-70175957-15-1-600x600.jpg', N'Dell Vostro 5581 là chiếc máy tính phù hợp với dân văn phòng và đồ họa bởi chiếc laptop sở hữu thiết kế đơn giản cứng cáp đẹp mắt cùng với cấu hình cho hiệu năng hoạt động mạnh mẽ. ', 20790000, 30, 2, CAST(N'2019-12-14T10:17:32.3320000' AS DateTime2), 5, 0, 0)
INSERT [dbo].[HangHoa] ([MaHH], [TenHH], [Hinh], [MoTa], [DonGia], [SoLuong], [MaLoai], [NgayDang], [GiamGia], [DaMua], [NoiBat]) VALUES (64, N'Dell Inspiron 15 5584', N'dell-inspiron-5584-i5-8265u-8gb-2tb-2gb-mx130-156f-17-600x600.jpg', N'Laptop Dell Inspiron 5584 (N5I5353W) là mẫu laptop cho sinh viên với kiểu dáng đơn giản, cứng cáp quen thuộc của dòng Dell Inspiron. Chiếc máy tính xách tay gây ấn tượng bởi cấu hình mạnh mẽ, dung lượng lưu trữ cực lớn cùng các tính năng hiện đại.', 21690000, 27, 2, CAST(N'2019-12-14T10:18:32.4646486' AS DateTime2), 0, 0, 0)
INSERT [dbo].[HangHoa] ([MaHH], [TenHH], [Hinh], [MoTa], [DonGia], [SoLuong], [MaLoai], [NgayDang], [GiamGia], [DaMua], [NoiBat]) VALUES (65, N'Dell XPS 13 7390', N'dell-xps-13-7390-i5-10210u-8gb-256gb-win10-701974-2-600x600.jpg', N'Laptop Dell XPS 13 7390 i5 (70197462) là chiếc laptop doanh nhân cao cấp vừa được ra mắt thuộc dòng Ultrabook có thiết kế siêu mỏng nhẹ. Laptop trang bị chip Intel Core i5 thế hệ mới nhất có nhiều cải tiến so với thế hệ cũ.', 34990000, 30, 2, CAST(N'2019-12-14T10:20:24.6140000' AS DateTime2), 5, 0, 0)
INSERT [dbo].[HangHoa] ([MaHH], [TenHH], [Hinh], [MoTa], [DonGia], [SoLuong], [MaLoai], [NgayDang], [GiamGia], [DaMua], [NoiBat]) VALUES (66, N'Dell XPS 13 9370', N'dell-xps-13-9370-i7-8550u-8gb-256gb-office365-win1-1-1-600x600.jpg', N'Nếu bạn đang tìm kiếm một chiếc laptop mỏng nhẹ dễ dàng di chuyển nhưng vẫn sở hữu một cấu hình mạnh thì laptop Dell XPS 13 9370 chính là lựa chọn hợp lí. Dell XPS 13 được thiết kế siêu mỏng nhẹ, bắt mắt, được trang bị chip Core i7 mạnh mẽ cùng nhiều tính năng hiện đại. ', 44990000, 26, 2, CAST(N'2019-12-14T10:22:53.5710000' AS DateTime2), 5, 2, 1)
INSERT [dbo].[HangHoa] ([MaHH], [TenHH], [Hinh], [MoTa], [DonGia], [SoLuong], [MaLoai], [NgayDang], [GiamGia], [DaMua], [NoiBat]) VALUES (67, N'Lenovo IdeaPad 330 14IKB', N'lenovo-ideapad-330-i3-7020u-4g-1tb-win10-19-600x600.jpg', N'Laptop Lenovo Ideapad 330 được thiết kế tinh tế và mỏng nhẹ, sở hữu công nghệ màn hình và âm thanh chất lượng kết hợp với hiệu năng đủ dùng. Laptop Lenovo Ideapad 330 sẽ là công cụ hỗ trợ tốt công việc và cả giải trí dành cho bạn.', 10290000, 40, 4, CAST(N'2019-12-14T10:25:16.3070000' AS DateTime2), 3, 0, 0)
INSERT [dbo].[HangHoa] ([MaHH], [TenHH], [Hinh], [MoTa], [DonGia], [SoLuong], [MaLoai], [NgayDang], [GiamGia], [DaMua], [NoiBat]) VALUES (68, N'Lenovo Yoga 520 14IKB', N'lenovo-yoga-520-14ikb-i3-7130u-8080106vn-11-600x600.jpg', N'Máy tính xách tay Lenovo IdeaPad Yoga 520 là mẫu máy tính thuộc dòng phân khúc mỏng nhẹ của thương hiệu laptop Lenovo. Máy có thiết kế hiện đại cùng một cấu hình thế hệ mới và với giá thành khá hợp lý, phù hợp với nhu cầu giải trí hay làm việc.', 11690000, 40, 4, CAST(N'2019-12-14T10:26:48.4820000' AS DateTime2), 3, 0, 0)
INSERT [dbo].[HangHoa] ([MaHH], [TenHH], [Hinh], [MoTa], [DonGia], [SoLuong], [MaLoai], [NgayDang], [GiamGia], [DaMua], [NoiBat]) VALUES (69, N'Lenovo Ideapad S340 14IWL', N'laptop-lenovo-s340-81n70064vn-18-600x600.jpg', N'Cấu hình khá, hiệu năng ổn định và thiết kế tinh tế đẹp mắt là những điểm đáng chú ý trên Lenovo IdeaPad S340 14IWL i3 8145U. Đây sẽ là chiếc laptop mỏng nhẹ phù hợp với đối tượng sinh viên, dân văn phòng thường xuyên xử lý các tác vụ văn phòng, học tập.', 12990000, 34, 4, CAST(N'2019-12-14T10:29:17.0790000' AS DateTime2), 2, 0, 0)
INSERT [dbo].[HangHoa] ([MaHH], [TenHH], [Hinh], [MoTa], [DonGia], [SoLuong], [MaLoai], [NgayDang], [GiamGia], [DaMua], [NoiBat]) VALUES (70, N'Lenovo Ideapad YOGA 530 14IKB', N'lenovo-ideapad-yoga-530-14ikb-7130u-600x600.jpg', N'Được thiết kế thanh lịch đầy trang nhã, laptop Lenovo Ideapad Yoga 530 14IKB mang đến cho sinh viên, nhân viên văn phòng 1 sự lựa chọn tốt phù hợp với nhu cầu sử dụng. Bên cạnh cấu hình khoẻ chạy khá mượt các ứng dụng đồ hoạ cơ bản như photoshop, coreldraw.', 13490000, 25, 4, CAST(N'2019-12-14T10:31:05.8380000' AS DateTime2), 6, 0, 0)
INSERT [dbo].[HangHoa] ([MaHH], [TenHH], [Hinh], [MoTa], [DonGia], [SoLuong], [MaLoai], [NgayDang], [GiamGia], [DaMua], [NoiBat]) VALUES (71, N'Lenovo ideapad C340 14IWL', N'lenovo-ideapad-c340-14iwl-i5-8265u-8gb-256gb-touch-21-600x600.jpg', N'Laptop Lenovo ideapad C340 được thiết kế hướng đến khách hàng là giới văn phòng, học sinh sinh viên. Với kiểu dáng đơn giản, trang nhã và cấu hình mạnh mẽ, laptop Lenovo IdeaPad 330 là một chiếc laptop văn phòng đáng sở hữu với mức giá tốt.', 17490000, 34, 4, CAST(N'2019-12-14T10:32:50.7080000' AS DateTime2), 3, 0, 0)
INSERT [dbo].[HangHoa] ([MaHH], [TenHH], [Hinh], [MoTa], [DonGia], [SoLuong], [MaLoai], [NgayDang], [GiamGia], [DaMua], [NoiBat]) VALUES (72, N'Lenovo IdeaPad S340 14IIL', N'lenovo-ideapad-s340-14iil-i5-1035g1-8gb-512gb-win1-18-600x600.jpg', N'Laptop Lenovo IdeaPad S340 14IIL i5 (81VV003SVN) là một lựa chọn phù hợp dành cho nhân viên văn phòng, học sinh sinh viên. Máy có cấu hình khá với vi xử lí mới nhất đến từ Intel, ổ cứng SSD cực nhanh, thiết kế sang trọng, mỏng nhẹ sẵn sàng đồng hành cùng bạn mọi lúc mọi nơi.', 16290000, 30, 4, CAST(N'2019-12-14T10:38:09.1630000' AS DateTime2), 3, 0, 0)
INSERT [dbo].[HangHoa] ([MaHH], [TenHH], [Hinh], [MoTa], [DonGia], [SoLuong], [MaLoai], [NgayDang], [GiamGia], [DaMua], [NoiBat]) VALUES (73, N'Lenovo Ideapad S145 15IWL', N'lenovo-ideapad-s145-15iwl-i7-8565u-8gb-512gb-mx110-19-600x600.jpg', N'Xử lý nhanh chóng mọi công việc hay thiết kế đồ họa chuyên nghiệp với Lenovo Ideapad S145 15IWL nhờ Chip Intel Core i7, RAM 8 GB. Thiết kế đơn giản, thanh lịch và gọn nhẹ, Lenovo Ideapad trở thành sự lựa chọn của dân văn phòng và sinh viên năng động.', 18790000, 34, 4, CAST(N'2019-12-14T10:41:18.2600000' AS DateTime2), 5, 0, 0)
INSERT [dbo].[HangHoa] ([MaHH], [TenHH], [Hinh], [MoTa], [DonGia], [SoLuong], [MaLoai], [NgayDang], [GiamGia], [DaMua], [NoiBat]) VALUES (74, N'Lenovo Ideapad 530s 14IKB', N'lenovo-ip-530s-81eu00t0vn-vt-1-1-600x600.jpg', N'Laptop Lenovo Ideapad 530s (81EU00T0VN) là một sự lựa chọn tốt cho giới văn phòng, học sinh sinh viên với những tính năng vượt trội trong tầm giá. Thiết kế đẹp mắt, siêu mỏng nhẹ đem đến độ di động tối ưu cho những ai cần đem laptop đi học, đi làm thường xuyên. Bên cạnh đó là một cấu hình mạnh mẽ chạy mượt mà các ứng dụng văn phòng và đồ họa.', 18990000, 27, 4, CAST(N'2019-12-14T10:42:53.4750000' AS DateTime2), 5, 0, 0)
INSERT [dbo].[HangHoa] ([MaHH], [TenHH], [Hinh], [MoTa], [DonGia], [SoLuong], [MaLoai], [NgayDang], [GiamGia], [DaMua], [NoiBat]) VALUES (75, N'Lenovo Ideapad L340 15IRH', N'lenovo-ideapad-l340-15irh-i5-9300h-8gb-1tb-3gb-gtx-2-2-600x600.jpg', N'Laptop Lenovo Ideapad L340 15IRH được trang bị chip Intel Core i5 cùng bộ nhớ RAM 8 GB giải quyết nhanh gọn mọi tác vụ văn phòng, chạy mượt Photoshop. Sản phẩm này là sự lựa chọn trên cả tuyệt vời cho người dùng văn phòng hay học sinh, sinh viên đang tìm kiếm một trợ thủ công nghệ đắc lực.', 18990000, 41, 4, CAST(N'2019-12-14T10:44:24.3130000' AS DateTime2), 3, 0, 0)
INSERT [dbo].[HangHoa] ([MaHH], [TenHH], [Hinh], [MoTa], [DonGia], [SoLuong], [MaLoai], [NgayDang], [GiamGia], [DaMua], [NoiBat]) VALUES (76, N'Lenovo IdeaPad 330 15', N'lenovo-ideapad-330-i7-8550u-4g-1tb-16gb-r53-4gb-wi-15-600x600.jpg', N'Laptop Lenovo IdeaPad 330 có thiết kế đơn giản nhưng hiệu quả làm việc cao với card đồ họa rời tiên tiến, laptop Lenovo IdeaPad sẽ giúp bạn xử lí công việc dễ dàng hơn bên cạnh đó còn là thiết bị giải trí vô cùng thú vị.', 18990000, 30, 4, CAST(N'2019-12-14T10:46:10.9690000' AS DateTime2), 5, 0, 0)
INSERT [dbo].[HangHoa] ([MaHH], [TenHH], [Hinh], [MoTa], [DonGia], [SoLuong], [MaLoai], [NgayDang], [GiamGia], [DaMua], [NoiBat]) VALUES (77, N'Lenovo Yoga S740 14IIL', N'lenovo-yoga-s740-14iil-i5-1035g4-8gb-512gb-win10-1-600x600.jpg', N'Laptop Lenovo Yoga S740 14IIL với thiết kế hoàn toàn bằng kim loại, được trang bị bộ xử lý Intel Core i5 thế hệ 10 mạnh mẽ, giúp bạn làm việc và giải trí mọi lúc mọi nơi.', 23690000, 32, 4, CAST(N'2019-12-14T10:47:43.2750000' AS DateTime2), 5, 0, 0)
INSERT [dbo].[HangHoa] ([MaHH], [TenHH], [Hinh], [MoTa], [DonGia], [SoLuong], [MaLoai], [NgayDang], [GiamGia], [DaMua], [NoiBat]) VALUES (78, N'Lenovo YOGA S730 13IWL', N'lenovo-yoga-s730-13iwl-i5-8265u-8gb-512gb-win10-8-20886-600x600.jpg', N'Laptop Lenovo YOGA S730 13IWL i5 là chiếc laptop văn phòng với thiết kế siêu mỏng và nhẹ, hiệu suất khá đáp ứng các nhu cầu học tập, làm việc và giải trí. ', 23990000, 30, 4, CAST(N'2019-12-14T10:49:57.3770000' AS DateTime2), 2, 0, 0)
INSERT [dbo].[HangHoa] ([MaHH], [TenHH], [Hinh], [MoTa], [DonGia], [SoLuong], [MaLoai], [NgayDang], [GiamGia], [DaMua], [NoiBat]) VALUES (79, N'Lenovo Legion Y530 15', N'lenovo-legion-y530-i7-8750h-8gb-2tb-16gb-gtx-1050t-16-600x600.jpg', N'Laptop Gaming Lenovo Legion Y530 81FV008LVN sở hữu cấu hình mạnh mẽ và thiết kế khá hầm hố đặc trưng của laptop chơi game.', 27990000, 40, 4, CAST(N'2019-12-14T10:51:31.6040000' AS DateTime2), 10, 0, 1)
INSERT [dbo].[HangHoa] ([MaHH], [TenHH], [Hinh], [MoTa], [DonGia], [SoLuong], [MaLoai], [NgayDang], [GiamGia], [DaMua], [NoiBat]) VALUES (80, N'MSI Gaming 15 GF63 9SC', N'msi-gaming-gf63-9sc-i7-9750h-8gb-256gb-gtx1650-win-600x600.jpg', N'Laptop gaming MSI đã đem lại cho người dùng phân khúc Laptop MSI Gaming GF63 9SC giá rẻ - chỉ hơn 20 triệu đồng. Bạn sẽ có một thiết kế gaming hầm hố nhưng lại thanh lịch, tối giản và tính di động cao hơn cùng với cấu hình mới nhất đem lại hiệu năng mạnh mẽ không thua kém quá nhiều so với các laptop tầm trung hay cận cao cấp. Đây là một lựa chọn rất đáng cân nhắc và hấp dẫn cho người dùng.', 25990000, 30, 6, CAST(N'2019-12-14T11:06:05.4590000' AS DateTime2), 2, 0, 0)
INSERT [dbo].[HangHoa] ([MaHH], [TenHH], [Hinh], [MoTa], [DonGia], [SoLuong], [MaLoai], [NgayDang], [GiamGia], [DaMua], [NoiBat]) VALUES (81, N'MSI GL63 8RCS-068VN', N'636936231914981789_msi-gl63-8rcs-068vn-1.png', N'MSI GL63 giúp những game thủ có phút giây giải trí tuyệt vời bên những trò chơi đỉnh cao nhờ những công nghệ hàng đầu hiện nay. Là một thiết bị hướng tới giải trí, nên MSI GL63 có một màn hình lớn 15.6 inch, độ phân giải Full HD và đạt 94% dải màu NTSC.', 20990000, 30, 6, CAST(N'2019-12-14T11:10:31.5300000' AS DateTime2), 0, 0, 0)
INSERT [dbo].[HangHoa] ([MaHH], [TenHH], [Hinh], [MoTa], [DonGia], [SoLuong], [MaLoai], [NgayDang], [GiamGia], [DaMua], [NoiBat]) VALUES (82, N'MSI Modern 14 A10M', N'637085714674617461_msi-modern-14-bac-1.png', N'Chiếc laptop siêu mỏng nhẹ MSI Modern 14 A10M là sự kết hợp hoàn hảo giữa vẻ đẹp thanh lịch và hiệu năng mạnh mẽ, giúp bạn thỏa sức thể hiện khả năng sáng tạo trong công việc cùng hoạt động giải trí hàng ngày.', 18990000, 20, 6, CAST(N'2019-12-14T11:12:18.1094003' AS DateTime2), 0, 3, 0)
INSERT [dbo].[HangHoa] ([MaHH], [TenHH], [Hinh], [MoTa], [DonGia], [SoLuong], [MaLoai], [NgayDang], [GiamGia], [DaMua], [NoiBat]) VALUES (83, N'MSI PS42 8MO-250VN', N'636936242507653454_msi-ps42-8mo-250vn-1.png', N'MSI PS42 là chiếc máy tính xách tay tuyệt vời dành cho nhân viên văn phòng và các doanh nhân khi hội tụ đầy đủ những phẩm chất như thiết kế thanh lịch, mỏng nhẹ và hiệu năng tốt.', 22990000, 33, 6, CAST(N'2019-12-14T11:14:25.4290000' AS DateTime2), 10, 8, 0)
INSERT [dbo].[HangHoa] ([MaHH], [TenHH], [Hinh], [MoTa], [DonGia], [SoLuong], [MaLoai], [NgayDang], [GiamGia], [DaMua], [NoiBat]) VALUES (84, N'MSI GF75 9RCX', N'637078816557055259_msi-gf75-9rcx-den-1.png', N'MSI GF75 9RCX là lựa chọn laptop chơi game màn hình lớn 17,3 inch, nhưng vẫn có thiết kế gọn gàng cùng trọng lượng nhẹ để bạn dễ dàng mang đi bất cứ đâu. Tất nhiên không thể không nhắc đến bộ vi xử lý Intel Core i7 thế hệ thứ 9 mạnh mẽ và card đồ họa rời GTX 1050Ti.', 24990000, 30, 6, CAST(N'2019-12-14T11:25:46.7190000' AS DateTime2), 5, 26, 1)
INSERT [dbo].[HangHoa] ([MaHH], [TenHH], [Hinh], [MoTa], [DonGia], [SoLuong], [MaLoai], [NgayDang], [GiamGia], [DaMua], [NoiBat]) VALUES (85, N'MSI PS63 8MO-099VN', N'637037044876151128_msi-ps63-8mo-den-1.png', N'MSI PS63 đề cao tính sáng tạo và di động trong công việc, là phương tiện làm việc hoàn hảo của bạn với hiệu năng mạnh mẽ, thiết kế đột phá, cơ động cùng thời lượng pin bền bỉ.', 26990000, 24, 6, CAST(N'2019-12-14T11:28:38.4140000' AS DateTime2), 4, 21, 1)
SET IDENTITY_INSERT [dbo].[HangHoa] OFF
GO
SET IDENTITY_INSERT [dbo].[Loai] ON 

INSERT [dbo].[Loai] ([MaLoai], [TenLoai]) VALUES (1, N'Apple')
INSERT [dbo].[Loai] ([MaLoai], [TenLoai]) VALUES (2, N'Dell')
INSERT [dbo].[Loai] ([MaLoai], [TenLoai]) VALUES (3, N'Asus')
INSERT [dbo].[Loai] ([MaLoai], [TenLoai]) VALUES (4, N'Lenovo')
INSERT [dbo].[Loai] ([MaLoai], [TenLoai]) VALUES (5, N'HP')
INSERT [dbo].[Loai] ([MaLoai], [TenLoai]) VALUES (6, N'MSI')
INSERT [dbo].[Loai] ([MaLoai], [TenLoai]) VALUES (7, N'Acer')
SET IDENTITY_INSERT [dbo].[Loai] OFF
GO
INSERT [dbo].[Oder] ([ID], [Status], [CustomerID], [ShipName], [ShipMobile], [ShipAddress], [ShipEmail], [CreatedDate], [CheckOutType], [Total]) VALUES (637408175170616953, 1, N'e3112a0b-97f7-4f27-9a94-1de87a3df001', N'Nguyễn Đỗ Khôi', NULL, N'44/10,Huỳnh Tấn Phát', N'admin123@gmail.com', CAST(N'2020-11-12T22:38:37.0617719' AS DateTime2), N'Normal', 49650900)
INSERT [dbo].[Oder] ([ID], [Status], [CustomerID], [ShipName], [ShipMobile], [ShipAddress], [ShipEmail], [CreatedDate], [CheckOutType], [Total]) VALUES (637408177038357955, 0, N'e3112a0b-97f7-4f27-9a94-1de87a3df001', N'VNPay User', NULL, NULL, N'admin123@gmail.com', CAST(N'2020-11-12T22:41:43.8361351' AS DateTime2), N'VNPay', 45581000)
INSERT [dbo].[Oder] ([ID], [Status], [CustomerID], [ShipName], [ShipMobile], [ShipAddress], [ShipEmail], [CreatedDate], [CheckOutType], [Total]) VALUES (637408183149547383, 0, N'e3112a0b-97f7-4f27-9a94-1de87a3df001', N'VNPay User', NULL, NULL, N'admin123@gmail.com', CAST(N'2020-11-12T22:51:54.9552782' AS DateTime2), N'VNPay', 50991100)
INSERT [dbo].[Oder] ([ID], [Status], [CustomerID], [ShipName], [ShipMobile], [ShipAddress], [ShipEmail], [CreatedDate], [CheckOutType], [Total]) VALUES (637408187348459607, 0, N'e3112a0b-97f7-4f27-9a94-1de87a3df001', N'VNPay User', NULL, NULL, N'admin123@gmail.com', CAST(N'2020-11-12T22:58:54.8459621' AS DateTime2), N'VNPay', 25910400)
INSERT [dbo].[Oder] ([ID], [Status], [CustomerID], [ShipName], [ShipMobile], [ShipAddress], [ShipEmail], [CreatedDate], [CheckOutType], [Total]) VALUES (637408201731252211, 0, N'e3112a0b-97f7-4f27-9a94-1de87a3df001', N'VNPay User', NULL, NULL, N'admin123@gmail.com', CAST(N'2020-11-12T23:22:53.1256517' AS DateTime2), N'VNPay', 25910400)
INSERT [dbo].[Oder] ([ID], [Status], [CustomerID], [ShipName], [ShipMobile], [ShipAddress], [ShipEmail], [CreatedDate], [CheckOutType], [Total]) VALUES (637408207222572123, 0, N'e3112a0b-97f7-4f27-9a94-1de87a3df001', N'VNPay User', NULL, NULL, N'admin123@gmail.com', CAST(N'2020-11-12T23:32:02.2574525' AS DateTime2), N'VNPay', 23740500)
INSERT [dbo].[Oder] ([ID], [Status], [CustomerID], [ShipName], [ShipMobile], [ShipAddress], [ShipEmail], [CreatedDate], [CheckOutType], [Total]) VALUES (637408568519248215, 0, N'e3112a0b-97f7-4f27-9a94-1de87a3df001', N'VNPay User', NULL, NULL, N'admin123@gmail.com', CAST(N'2020-11-13T09:34:11.9255762' AS DateTime2), N'VNPay', 25910400)
INSERT [dbo].[Oder] ([ID], [Status], [CustomerID], [ShipName], [ShipMobile], [ShipAddress], [ShipEmail], [CreatedDate], [CheckOutType], [Total]) VALUES (637408577702466557, 0, N'e3112a0b-97f7-4f27-9a94-1de87a3df001', N'VNPay User', NULL, NULL, N'admin123@gmail.com', CAST(N'2020-11-13T09:49:30.2472429' AS DateTime2), N'VNPay', 25910400)
INSERT [dbo].[Oder] ([ID], [Status], [CustomerID], [ShipName], [ShipMobile], [ShipAddress], [ShipEmail], [CreatedDate], [CheckOutType], [Total]) VALUES (637408587417654857, 0, N'e3112a0b-97f7-4f27-9a94-1de87a3df001', N'VNPay User', NULL, NULL, N'admin123@gmail.com', CAST(N'2020-11-13T10:05:41.7660504' AS DateTime2), N'VNPay', 23740500)
INSERT [dbo].[Oder] ([ID], [Status], [CustomerID], [ShipName], [ShipMobile], [ShipAddress], [ShipEmail], [CreatedDate], [CheckOutType], [Total]) VALUES (637408597764617015, 1, N'e3112a0b-97f7-4f27-9a94-1de87a3df001', N'VNPay User', NULL, NULL, N'admin123@gmail.com', CAST(N'2020-11-13T10:22:56.4623115' AS DateTime2), N'VNPay', 23740500)
INSERT [dbo].[Oder] ([ID], [Status], [CustomerID], [ShipName], [ShipMobile], [ShipAddress], [ShipEmail], [CreatedDate], [CheckOutType], [Total]) VALUES (637408634935259666, 1, N'e3112a0b-97f7-4f27-9a94-1de87a3df001', N'Nguyễn Đỗ Khôi', NULL, N'1232, Phát Cùng', N'admin123@gmail.com', CAST(N'2020-11-13T11:24:53.5261419' AS DateTime2), N'Normal', 25910400)
INSERT [dbo].[Oder] ([ID], [Status], [CustomerID], [ShipName], [ShipMobile], [ShipAddress], [ShipEmail], [CreatedDate], [CheckOutType], [Total]) VALUES (637408645819788016, 1, N'e3112a0b-97f7-4f27-9a94-1de87a3df001', N'Lê Trường Thanh', NULL, N'44/10,Huyện Nhà Bè', N'admin123@gmail.com', CAST(N'2020-11-13T11:43:01.9789457' AS DateTime2), N'Normal', 49650900)
INSERT [dbo].[Oder] ([ID], [Status], [CustomerID], [ShipName], [ShipMobile], [ShipAddress], [ShipEmail], [CreatedDate], [CheckOutType], [Total]) VALUES (637408647657712090, 1, N'e3112a0b-97f7-4f27-9a94-1de87a3df001', N'Nguyễn Đỗ Khôi', NULL, N'44/10', N'admin123@gmail.com', CAST(N'2020-11-13T11:46:05.7713417' AS DateTime2), N'Normal', 45581000)
INSERT [dbo].[Oder] ([ID], [Status], [CustomerID], [ShipName], [ShipMobile], [ShipAddress], [ShipEmail], [CreatedDate], [CheckOutType], [Total]) VALUES (637408656338744613, 0, N'e3112a0b-97f7-4f27-9a94-1de87a3df001', N'Paypal User', N'None', N'None', N'admin123@gmail.com', CAST(N'2020-11-13T12:00:33.8758221' AS DateTime2), N'Paypal', 20691000)
INSERT [dbo].[Oder] ([ID], [Status], [CustomerID], [ShipName], [ShipMobile], [ShipAddress], [ShipEmail], [CreatedDate], [CheckOutType], [Total]) VALUES (637408667298554241, 0, N'e3112a0b-97f7-4f27-9a94-1de87a3df001', N'Paypal User', N'None', N'None', N'admin123@gmail.com', CAST(N'2020-11-13T12:18:49.8621903' AS DateTime2), N'Paypal', 74731600)
INSERT [dbo].[Oder] ([ID], [Status], [CustomerID], [ShipName], [ShipMobile], [ShipAddress], [ShipEmail], [CreatedDate], [CheckOutType], [Total]) VALUES (637408675159958652, 0, N'e3112a0b-97f7-4f27-9a94-1de87a3df001', N'Paypal User', N'None', N'None', N'admin123@gmail.com', CAST(N'2020-11-13T12:31:55.9973128' AS DateTime2), N'Paypal', 18990000)
INSERT [dbo].[Oder] ([ID], [Status], [CustomerID], [ShipName], [ShipMobile], [ShipAddress], [ShipEmail], [CreatedDate], [CheckOutType], [Total]) VALUES (637408678885941755, 0, N'e3112a0b-97f7-4f27-9a94-1de87a3df001', N'Paypal User', N'None', N'None', N'admin123@gmail.com', CAST(N'2020-11-13T12:38:08.5956446' AS DateTime2), N'Paypal', 20691000)
INSERT [dbo].[Oder] ([ID], [Status], [CustomerID], [ShipName], [ShipMobile], [ShipAddress], [ShipEmail], [CreatedDate], [CheckOutType], [Total]) VALUES (637408682571219874, 0, N'e3112a0b-97f7-4f27-9a94-1de87a3df001', N'Paypal User', N'None', N'None', N'admin123@gmail.com', CAST(N'2020-11-13T12:44:17.1259543' AS DateTime2), N'Paypal', 14323400)
INSERT [dbo].[Oder] ([ID], [Status], [CustomerID], [ShipName], [ShipMobile], [ShipAddress], [ShipEmail], [CreatedDate], [CheckOutType], [Total]) VALUES (637408688652372982, 0, N'e3112a0b-97f7-4f27-9a94-1de87a3df001', N'Paypal User', N'None', N'None', N'admin123@gmail.com', CAST(N'2020-11-13T12:54:25.2397170' AS DateTime2), N'Paypal', 23740500)
INSERT [dbo].[Oder] ([ID], [Status], [CustomerID], [ShipName], [ShipMobile], [ShipAddress], [ShipEmail], [CreatedDate], [CheckOutType], [Total]) VALUES (637408691481318303, 0, N'e3112a0b-97f7-4f27-9a94-1de87a3df001', N'Paypal User', N'None', N'None', N'admin123@gmail.com', CAST(N'2020-11-13T12:59:08.1328159' AS DateTime2), N'Paypal', 42740500)
INSERT [dbo].[Oder] ([ID], [Status], [CustomerID], [ShipName], [ShipMobile], [ShipAddress], [ShipEmail], [CreatedDate], [CheckOutType], [Total]) VALUES (637408717568110891, 1, N'e3112a0b-97f7-4f27-9a94-1de87a3df001', N'Paypal User', N'None', N'None', N'admin123@gmail.com', CAST(N'2020-11-13T13:42:36.8130294' AS DateTime2), N'Paypal', 25910400)
INSERT [dbo].[Oder] ([ID], [Status], [CustomerID], [ShipName], [ShipMobile], [ShipAddress], [ShipEmail], [CreatedDate], [CheckOutType], [Total]) VALUES (637408718962862446, 1, N'e3112a0b-97f7-4f27-9a94-1de87a3df001', N'Lê Trường Thanh', NULL, N'1232, Phát Cùng', N'admin123@gmail.com', CAST(N'2020-11-13T13:44:56.2862458' AS DateTime2), N'Normal', 25910400)
INSERT [dbo].[Oder] ([ID], [Status], [CustomerID], [ShipName], [ShipMobile], [ShipAddress], [ShipEmail], [CreatedDate], [CheckOutType], [Total]) VALUES (637408824407780728, 0, N'90a17dd2-53a3-41a5-8085-326d30a7466c', N'Paypal User', N'None', N'None', N'ttphuc75@gmail.com', CAST(N'2020-11-13T16:40:40.7791554' AS DateTime2), N'Paypal', 63222500)
INSERT [dbo].[Oder] ([ID], [Status], [CustomerID], [ShipName], [ShipMobile], [ShipAddress], [ShipEmail], [CreatedDate], [CheckOutType], [Total]) VALUES (637408825620730804, 0, N'90a17dd2-53a3-41a5-8085-326d30a7466c', N'Paypal User', N'None', N'None', N'ttphuc75@gmail.com', CAST(N'2020-11-13T16:43:01.9971604' AS DateTime2), N'Paypal', 66471000)
INSERT [dbo].[Oder] ([ID], [Status], [CustomerID], [ShipName], [ShipMobile], [ShipAddress], [ShipEmail], [CreatedDate], [CheckOutType], [Total]) VALUES (637408826740541606, 1, N'90a17dd2-53a3-41a5-8085-326d30a7466c', N'Paypal User', N'None', N'None', N'ttphuc75@gmail.com', CAST(N'2020-11-13T16:44:34.0566372' AS DateTime2), N'Paypal', 44431500)
INSERT [dbo].[Oder] ([ID], [Status], [CustomerID], [ShipName], [ShipMobile], [ShipAddress], [ShipEmail], [CreatedDate], [CheckOutType], [Total]) VALUES (637408827983748129, 1, N'90a17dd2-53a3-41a5-8085-326d30a7466c', N'Paypal User', N'None', N'None', N'ttphuc75@gmail.com', CAST(N'2020-11-13T16:46:38.3748562' AS DateTime2), N'Paypal', 23740500)
INSERT [dbo].[Oder] ([ID], [Status], [CustomerID], [ShipName], [ShipMobile], [ShipAddress], [ShipEmail], [CreatedDate], [CheckOutType], [Total]) VALUES (637408829968584737, 1, N'90a17dd2-53a3-41a5-8085-326d30a7466c', N'Paypal User', N'None', N'None', N'ttphuc75@gmail.com', CAST(N'2020-11-13T16:49:56.8611339' AS DateTime2), N'Paypal', 45581000)
INSERT [dbo].[Oder] ([ID], [Status], [CustomerID], [ShipName], [ShipMobile], [ShipAddress], [ShipEmail], [CreatedDate], [CheckOutType], [Total]) VALUES (637408830519207129, 1, N'90a17dd2-53a3-41a5-8085-326d30a7466c', N'Paypal User', N'None', N'None', N'ttphuc75@gmail.com', CAST(N'2020-11-13T16:50:51.9207337' AS DateTime2), N'Paypal', 108053900)
INSERT [dbo].[Oder] ([ID], [Status], [CustomerID], [ShipName], [ShipMobile], [ShipAddress], [ShipEmail], [CreatedDate], [CheckOutType], [Total]) VALUES (637409435147945697, 1, N'90a17dd2-53a3-41a5-8085-326d30a7466c', N'VNPay User', N'None', N'None', N'ttphuc75@gmail.com', CAST(N'2020-11-14T09:38:34.7957316' AS DateTime2), N'VNPay', 73661300)
INSERT [dbo].[Oder] ([ID], [Status], [CustomerID], [ShipName], [ShipMobile], [ShipAddress], [ShipEmail], [CreatedDate], [CheckOutType], [Total]) VALUES (637409442210305804, 1, N'90a17dd2-53a3-41a5-8085-326d30a7466c', N'VNPay User', N'None', N'None', N'ttphuc75@gmail.com', CAST(N'2020-11-14T09:50:21.0305870' AS DateTime2), N'VNPay', 66144200)
INSERT [dbo].[Oder] ([ID], [Status], [CustomerID], [ShipName], [ShipMobile], [ShipAddress], [ShipEmail], [CreatedDate], [CheckOutType], [Total]) VALUES (637409444419050794, 1, N'90a17dd2-53a3-41a5-8085-326d30a7466c', N'VNPay User', N'VNPay User', N'VNPay User', N'VNPay User', CAST(N'2020-11-14T09:54:01.9075135' AS DateTime2), N'VNPay', 69321500)
INSERT [dbo].[Oder] ([ID], [Status], [CustomerID], [ShipName], [ShipMobile], [ShipAddress], [ShipEmail], [CreatedDate], [CheckOutType], [Total]) VALUES (637409500310365893, 0, N'90a17dd2-53a3-41a5-8085-326d30a7466c', N'Paypal User', N'Paypal User', N'Paypal User', N'Paypal User', CAST(N'2020-11-14T11:29:26.0819185' AS DateTime2), N'Paypal', 42730500)
INSERT [dbo].[Oder] ([ID], [Status], [CustomerID], [ShipName], [ShipMobile], [ShipAddress], [ShipEmail], [CreatedDate], [CheckOutType], [Total]) VALUES (637409502737966443, 0, N'90a17dd2-53a3-41a5-8085-326d30a7466c', N'Paypal User', N'Paypal User', N'Paypal User', N'Paypal User', CAST(N'2020-11-14T11:31:16.4828607' AS DateTime2), N'Paypal', 49650900)
INSERT [dbo].[Oder] ([ID], [Status], [CustomerID], [ShipName], [ShipMobile], [ShipAddress], [ShipEmail], [CreatedDate], [CheckOutType], [Total]) VALUES (637409505571954053, 0, N'90a17dd2-53a3-41a5-8085-326d30a7466c', N'Paypal User', N'Paypal User', N'Paypal User', N'Paypal User', CAST(N'2020-11-14T11:36:21.2167105' AS DateTime2), N'Paypal', 73661300)
INSERT [dbo].[Oder] ([ID], [Status], [CustomerID], [ShipName], [ShipMobile], [ShipAddress], [ShipEmail], [CreatedDate], [CheckOutType], [Total]) VALUES (637409510537552925, 1, N'90a17dd2-53a3-41a5-8085-326d30a7466c', N'Paypal User', N'Paypal User', N'Paypal User', N'Paypal User', CAST(N'2020-11-14T11:45:44.2407116' AS DateTime2), N'Paypal', 75561300)
INSERT [dbo].[Oder] ([ID], [Status], [CustomerID], [ShipName], [ShipMobile], [ShipAddress], [ShipEmail], [CreatedDate], [CheckOutType], [Total]) VALUES (637409553647067791, 0, N'90a17dd2-53a3-41a5-8085-326d30a7466c', N'Paypal User', N'Paypal User', N'Paypal User', N'Paypal User', CAST(N'2020-11-14T12:56:05.8510503' AS DateTime2), N'Paypal', 23740500)
INSERT [dbo].[Oder] ([ID], [Status], [CustomerID], [ShipName], [ShipMobile], [ShipAddress], [ShipEmail], [CreatedDate], [CheckOutType], [Total]) VALUES (637409554087378232, 0, N'90a17dd2-53a3-41a5-8085-326d30a7466c', N'Paypal User', N'Paypal User', N'Paypal User', N'Paypal User', CAST(N'2020-11-14T12:56:49.9104752' AS DateTime2), N'Paypal', 25910400)
INSERT [dbo].[Oder] ([ID], [Status], [CustomerID], [ShipName], [ShipMobile], [ShipAddress], [ShipEmail], [CreatedDate], [CheckOutType], [Total]) VALUES (637409555029285328, 0, N'90a17dd2-53a3-41a5-8085-326d30a7466c', N'Paypal User', N'Paypal User', N'Paypal User', N'Paypal User', CAST(N'2020-11-14T12:58:44.4988591' AS DateTime2), N'Paypal', 20691000)
INSERT [dbo].[Oder] ([ID], [Status], [CustomerID], [ShipName], [ShipMobile], [ShipAddress], [ShipEmail], [CreatedDate], [CheckOutType], [Total]) VALUES (637409568311432961, 0, N'90a17dd2-53a3-41a5-8085-326d30a7466c', N'Paypal User', N'Paypal User', N'Paypal User', N'Paypal User', CAST(N'2020-11-14T13:21:33.7391446' AS DateTime2), N'Paypal', 49650900)
INSERT [dbo].[Oder] ([ID], [Status], [CustomerID], [ShipName], [ShipMobile], [ShipAddress], [ShipEmail], [CreatedDate], [CheckOutType], [Total]) VALUES (637409589963129396, 1, N'90a17dd2-53a3-41a5-8085-326d30a7466c', N'Paypal User', N'Paypal User', N'Paypal User', N'Paypal User', CAST(N'2020-11-14T13:56:58.8687700' AS DateTime2), N'Paypal', 69321500)
INSERT [dbo].[Oder] ([ID], [Status], [CustomerID], [ShipName], [ShipMobile], [ShipAddress], [ShipEmail], [CreatedDate], [CheckOutType], [Total]) VALUES (637409601313068340, 1, N'90a17dd2-53a3-41a5-8085-326d30a7466c', N'Paypal User', N'Paypal User', N'Paypal User', N'Paypal User', CAST(N'2020-11-14T14:15:31.3080045' AS DateTime2), N'Paypal', 98445900)
GO
SET IDENTITY_INSERT [dbo].[OderDetail] ON 

INSERT [dbo].[OderDetail] ([ID], [OderID], [Quantity], [Gia], [MaHH]) VALUES (7, 637408175170616953, 1, 26990000, 85)
INSERT [dbo].[OderDetail] ([ID], [OderID], [Quantity], [Gia], [MaHH]) VALUES (8, 637408175170616953, 1, 24990000, 84)
INSERT [dbo].[OderDetail] ([ID], [OderID], [Quantity], [Gia], [MaHH]) VALUES (9, 637408177038357955, 1, 24990000, 84)
INSERT [dbo].[OderDetail] ([ID], [OderID], [Quantity], [Gia], [MaHH]) VALUES (10, 637408177038357955, 1, 22990000, 1)
INSERT [dbo].[OderDetail] ([ID], [OderID], [Quantity], [Gia], [MaHH]) VALUES (11, 637408183149547383, 1, 24990000, 84)
INSERT [dbo].[OderDetail] ([ID], [OderID], [Quantity], [Gia], [MaHH]) VALUES (12, 637408183149547383, 1, 28990000, 2)
INSERT [dbo].[OderDetail] ([ID], [OderID], [Quantity], [Gia], [MaHH]) VALUES (13, 637408187348459607, 1, 26990000, 85)
INSERT [dbo].[OderDetail] ([ID], [OderID], [Quantity], [Gia], [MaHH]) VALUES (14, 637408201731252211, 1, 26990000, 85)
INSERT [dbo].[OderDetail] ([ID], [OderID], [Quantity], [Gia], [MaHH]) VALUES (15, 637408207222572123, 1, 24990000, 84)
INSERT [dbo].[OderDetail] ([ID], [OderID], [Quantity], [Gia], [MaHH]) VALUES (16, 637408568519248215, 1, 26990000, 85)
INSERT [dbo].[OderDetail] ([ID], [OderID], [Quantity], [Gia], [MaHH]) VALUES (17, 637408577702466557, 1, 26990000, 85)
INSERT [dbo].[OderDetail] ([ID], [OderID], [Quantity], [Gia], [MaHH]) VALUES (18, 637408587417654857, 1, 24990000, 84)
INSERT [dbo].[OderDetail] ([ID], [OderID], [Quantity], [Gia], [MaHH]) VALUES (19, 637408597764617015, 1, 24990000, 84)
INSERT [dbo].[OderDetail] ([ID], [OderID], [Quantity], [Gia], [MaHH]) VALUES (20, 637408634935259666, 1, 26990000, 85)
INSERT [dbo].[OderDetail] ([ID], [OderID], [Quantity], [Gia], [MaHH]) VALUES (21, 637408645819788016, 1, 26990000, 85)
INSERT [dbo].[OderDetail] ([ID], [OderID], [Quantity], [Gia], [MaHH]) VALUES (22, 637408645819788016, 1, 24990000, 84)
INSERT [dbo].[OderDetail] ([ID], [OderID], [Quantity], [Gia], [MaHH]) VALUES (23, 637408647657712090, 1, 24990000, 84)
INSERT [dbo].[OderDetail] ([ID], [OderID], [Quantity], [Gia], [MaHH]) VALUES (24, 637408647657712090, 1, 22990000, 1)
INSERT [dbo].[OderDetail] ([ID], [OderID], [Quantity], [Gia], [MaHH]) VALUES (25, 637408656338744613, 1, 22990000, 83)
INSERT [dbo].[OderDetail] ([ID], [OderID], [Quantity], [Gia], [MaHH]) VALUES (26, 637408667298554241, 2, 24990000, 84)
INSERT [dbo].[OderDetail] ([ID], [OderID], [Quantity], [Gia], [MaHH]) VALUES (27, 637408667298554241, 1, 28990000, 2)
INSERT [dbo].[OderDetail] ([ID], [OderID], [Quantity], [Gia], [MaHH]) VALUES (28, 637408675159958652, 1, 18990000, 82)
INSERT [dbo].[OderDetail] ([ID], [OderID], [Quantity], [Gia], [MaHH]) VALUES (29, 637408678885941755, 1, 22990000, 83)
INSERT [dbo].[OderDetail] ([ID], [OderID], [Quantity], [Gia], [MaHH]) VALUES (30, 637408682571219874, 1, 15740000, 35)
INSERT [dbo].[OderDetail] ([ID], [OderID], [Quantity], [Gia], [MaHH]) VALUES (31, 637408688652372982, 1, 24990000, 84)
INSERT [dbo].[OderDetail] ([ID], [OderID], [Quantity], [Gia], [MaHH]) VALUES (32, 637408691481318303, 1, 44990000, 66)
INSERT [dbo].[OderDetail] ([ID], [OderID], [Quantity], [Gia], [MaHH]) VALUES (33, 637408717568110891, 1, 26990000, 85)
INSERT [dbo].[OderDetail] ([ID], [OderID], [Quantity], [Gia], [MaHH]) VALUES (34, 637408718962862446, 1, 26990000, 85)
INSERT [dbo].[OderDetail] ([ID], [OderID], [Quantity], [Gia], [MaHH]) VALUES (35, 637408824407780728, 2, 22990000, 83)
INSERT [dbo].[OderDetail] ([ID], [OderID], [Quantity], [Gia], [MaHH]) VALUES (36, 637408824407780728, 1, 22990000, 1)
INSERT [dbo].[OderDetail] ([ID], [OderID], [Quantity], [Gia], [MaHH]) VALUES (37, 637408825620730804, 2, 24990000, 84)
INSERT [dbo].[OderDetail] ([ID], [OderID], [Quantity], [Gia], [MaHH]) VALUES (38, 637408825620730804, 1, 18990000, 82)
INSERT [dbo].[OderDetail] ([ID], [OderID], [Quantity], [Gia], [MaHH]) VALUES (39, 637408826740541606, 1, 24990000, 84)
INSERT [dbo].[OderDetail] ([ID], [OderID], [Quantity], [Gia], [MaHH]) VALUES (40, 637408826740541606, 1, 22990000, 83)
INSERT [dbo].[OderDetail] ([ID], [OderID], [Quantity], [Gia], [MaHH]) VALUES (41, 637408827983748129, 1, 24990000, 84)
INSERT [dbo].[OderDetail] ([ID], [OderID], [Quantity], [Gia], [MaHH]) VALUES (42, 637408829968584737, 1, 24990000, 84)
INSERT [dbo].[OderDetail] ([ID], [OderID], [Quantity], [Gia], [MaHH]) VALUES (43, 637408829968584737, 1, 22990000, 1)
INSERT [dbo].[OderDetail] ([ID], [OderID], [Quantity], [Gia], [MaHH]) VALUES (44, 637408830519207129, 1, 24990000, 84)
INSERT [dbo].[OderDetail] ([ID], [OderID], [Quantity], [Gia], [MaHH]) VALUES (45, 637408830519207129, 1, 15740000, 35)
INSERT [dbo].[OderDetail] ([ID], [OderID], [Quantity], [Gia], [MaHH]) VALUES (46, 637408830519207129, 1, 69990000, 8)
INSERT [dbo].[OderDetail] ([ID], [OderID], [Quantity], [Gia], [MaHH]) VALUES (47, 637409435147945697, 2, 26990000, 85)
INSERT [dbo].[OderDetail] ([ID], [OderID], [Quantity], [Gia], [MaHH]) VALUES (48, 637409435147945697, 1, 22990000, 1)
INSERT [dbo].[OderDetail] ([ID], [OderID], [Quantity], [Gia], [MaHH]) VALUES (49, 637409442210305804, 2, 26990000, 85)
INSERT [dbo].[OderDetail] ([ID], [OderID], [Quantity], [Gia], [MaHH]) VALUES (50, 637409442210305804, 1, 15740000, 35)
INSERT [dbo].[OderDetail] ([ID], [OderID], [Quantity], [Gia], [MaHH]) VALUES (51, 637409444419050794, 2, 24990000, 84)
INSERT [dbo].[OderDetail] ([ID], [OderID], [Quantity], [Gia], [MaHH]) VALUES (52, 637409444419050794, 1, 22990000, 1)
INSERT [dbo].[OderDetail] ([ID], [OderID], [Quantity], [Gia], [MaHH]) VALUES (53, 637409500310365893, 1, 24990000, 84)
INSERT [dbo].[OderDetail] ([ID], [OderID], [Quantity], [Gia], [MaHH]) VALUES (54, 637409500310365893, 1, 18990000, 82)
INSERT [dbo].[OderDetail] ([ID], [OderID], [Quantity], [Gia], [MaHH]) VALUES (55, 637409502737966443, 1, 24990000, 84)
INSERT [dbo].[OderDetail] ([ID], [OderID], [Quantity], [Gia], [MaHH]) VALUES (56, 637409502737966443, 1, 26990000, 85)
INSERT [dbo].[OderDetail] ([ID], [OderID], [Quantity], [Gia], [MaHH]) VALUES (57, 637409505571954053, 2, 26990000, 85)
INSERT [dbo].[OderDetail] ([ID], [OderID], [Quantity], [Gia], [MaHH]) VALUES (58, 637409505571954053, 1, 22990000, 1)
INSERT [dbo].[OderDetail] ([ID], [OderID], [Quantity], [Gia], [MaHH]) VALUES (59, 637409510537552925, 2, 26990000, 85)
INSERT [dbo].[OderDetail] ([ID], [OderID], [Quantity], [Gia], [MaHH]) VALUES (60, 637409510537552925, 1, 24990000, 84)
INSERT [dbo].[OderDetail] ([ID], [OderID], [Quantity], [Gia], [MaHH]) VALUES (61, 637409553647067791, 1, 24990000, 84)
INSERT [dbo].[OderDetail] ([ID], [OderID], [Quantity], [Gia], [MaHH]) VALUES (62, 637409554087378232, 1, 26990000, 85)
INSERT [dbo].[OderDetail] ([ID], [OderID], [Quantity], [Gia], [MaHH]) VALUES (63, 637409555029285328, 1, 22990000, 83)
INSERT [dbo].[OderDetail] ([ID], [OderID], [Quantity], [Gia], [MaHH]) VALUES (64, 637409568311432961, 1, 24990000, 84)
INSERT [dbo].[OderDetail] ([ID], [OderID], [Quantity], [Gia], [MaHH]) VALUES (65, 637409568311432961, 1, 26990000, 85)
INSERT [dbo].[OderDetail] ([ID], [OderID], [Quantity], [Gia], [MaHH]) VALUES (66, 637409589963129396, 2, 24990000, 84)
INSERT [dbo].[OderDetail] ([ID], [OderID], [Quantity], [Gia], [MaHH]) VALUES (67, 637409589963129396, 1, 22990000, 1)
INSERT [dbo].[OderDetail] ([ID], [OderID], [Quantity], [Gia], [MaHH]) VALUES (68, 637409601313068340, 2, 22990000, 83)
INSERT [dbo].[OderDetail] ([ID], [OderID], [Quantity], [Gia], [MaHH]) VALUES (69, 637409601313068340, 1, 44990000, 66)
INSERT [dbo].[OderDetail] ([ID], [OderID], [Quantity], [Gia], [MaHH]) VALUES (70, 637409601313068340, 1, 15740000, 35)
SET IDENTITY_INSERT [dbo].[OderDetail] OFF
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_AspNetRoleClaims_RoleId]    Script Date: 11/25/2020 11:17:42 AM ******/
CREATE NONCLUSTERED INDEX [IX_AspNetRoleClaims_RoleId] ON [dbo].[AspNetRoleClaims]
(
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [RoleNameIndex]    Script Date: 11/25/2020 11:17:42 AM ******/
CREATE UNIQUE NONCLUSTERED INDEX [RoleNameIndex] ON [dbo].[AspNetRoles]
(
	[NormalizedName] ASC
)
WHERE ([NormalizedName] IS NOT NULL)
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_AspNetUserClaims_UserId]    Script Date: 11/25/2020 11:17:42 AM ******/
CREATE NONCLUSTERED INDEX [IX_AspNetUserClaims_UserId] ON [dbo].[AspNetUserClaims]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_AspNetUserLogins_UserId]    Script Date: 11/25/2020 11:17:42 AM ******/
CREATE NONCLUSTERED INDEX [IX_AspNetUserLogins_UserId] ON [dbo].[AspNetUserLogins]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_AspNetUserRoles_RoleId]    Script Date: 11/25/2020 11:17:42 AM ******/
CREATE NONCLUSTERED INDEX [IX_AspNetUserRoles_RoleId] ON [dbo].[AspNetUserRoles]
(
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [EmailIndex]    Script Date: 11/25/2020 11:17:42 AM ******/
CREATE NONCLUSTERED INDEX [EmailIndex] ON [dbo].[AspNetUsers]
(
	[NormalizedEmail] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UserNameIndex]    Script Date: 11/25/2020 11:17:42 AM ******/
CREATE UNIQUE NONCLUSTERED INDEX [UserNameIndex] ON [dbo].[AspNetUsers]
(
	[NormalizedUserName] ASC
)
WHERE ([NormalizedUserName] IS NOT NULL)
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_HangHoa_MaLoai]    Script Date: 11/25/2020 11:17:42 AM ******/
CREATE NONCLUSTERED INDEX [IX_HangHoa_MaLoai] ON [dbo].[HangHoa]
(
	[MaLoai] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_OderDetail_OderID]    Script Date: 11/25/2020 11:17:42 AM ******/
CREATE NONCLUSTERED INDEX [IX_OderDetail_OderID] ON [dbo].[OderDetail]
(
	[OderID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
ALTER TABLE [dbo].[AspNetRoleClaims]  WITH CHECK ADD  CONSTRAINT [FK_AspNetRoleClaims_AspNetRoles_RoleId] FOREIGN KEY([RoleId])
REFERENCES [dbo].[AspNetRoles] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetRoleClaims] CHECK CONSTRAINT [FK_AspNetRoleClaims_AspNetRoles_RoleId]
GO
ALTER TABLE [dbo].[AspNetUserClaims]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserClaims_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserClaims] CHECK CONSTRAINT [FK_AspNetUserClaims_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserLogins]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserLogins_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserLogins] CHECK CONSTRAINT [FK_AspNetUserLogins_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserRoles_AspNetRoles_RoleId] FOREIGN KEY([RoleId])
REFERENCES [dbo].[AspNetRoles] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_AspNetUserRoles_AspNetRoles_RoleId]
GO
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserRoles_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_AspNetUserRoles_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserTokens]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserTokens_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserTokens] CHECK CONSTRAINT [FK_AspNetUserTokens_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[HangHoa]  WITH CHECK ADD  CONSTRAINT [FK_HangHoa_Loai_MaLoai] FOREIGN KEY([MaLoai])
REFERENCES [dbo].[Loai] ([MaLoai])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[HangHoa] CHECK CONSTRAINT [FK_HangHoa_Loai_MaLoai]
GO
ALTER TABLE [dbo].[OderDetail]  WITH CHECK ADD  CONSTRAINT [FK_OderDetail_Oder_OderID] FOREIGN KEY([OderID])
REFERENCES [dbo].[Oder] ([ID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[OderDetail] CHECK CONSTRAINT [FK_OderDetail_Oder_OderID]
GO
USE [master]
GO
ALTER DATABASE [BanHangDB] SET  READ_WRITE 
GO
