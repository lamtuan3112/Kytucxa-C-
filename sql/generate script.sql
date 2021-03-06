USE [master]
GO
/****** Object:  Database [KyTucXa]    Script Date: 07/12/2019 8:48:25 SA ******/
CREATE DATABASE [KyTucXa]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'KyTucXa', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.SQLEXPRESS\MSSQL\DATA\KyTucXa.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'KyTucXa_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.SQLEXPRESS\MSSQL\DATA\KyTucXa_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [KyTucXa] SET COMPATIBILITY_LEVEL = 140
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [KyTucXa].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [KyTucXa] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [KyTucXa] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [KyTucXa] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [KyTucXa] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [KyTucXa] SET ARITHABORT OFF 
GO
ALTER DATABASE [KyTucXa] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [KyTucXa] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [KyTucXa] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [KyTucXa] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [KyTucXa] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [KyTucXa] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [KyTucXa] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [KyTucXa] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [KyTucXa] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [KyTucXa] SET  DISABLE_BROKER 
GO
ALTER DATABASE [KyTucXa] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [KyTucXa] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [KyTucXa] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [KyTucXa] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [KyTucXa] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [KyTucXa] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [KyTucXa] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [KyTucXa] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [KyTucXa] SET  MULTI_USER 
GO
ALTER DATABASE [KyTucXa] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [KyTucXa] SET DB_CHAINING OFF 
GO
ALTER DATABASE [KyTucXa] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [KyTucXa] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [KyTucXa] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [KyTucXa] SET QUERY_STORE = OFF
GO
USE [KyTucXa]
GO
/****** Object:  Table [dbo].[DichVu]    Script Date: 07/12/2019 8:48:25 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DichVu](
	[MaDV] [nchar](10) NOT NULL,
	[ChucNang] [nvarchar](50) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Phong]    Script Date: 07/12/2019 8:48:25 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Phong](
	[MaPhong] [nchar](10) NOT NULL,
	[GiaPhong] [float] NULL,
	[MaDV] [nchar](10) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SinhVien]    Script Date: 07/12/2019 8:48:25 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SinhVien](
	[MaSV] [nchar](10) NOT NULL,
	[HoTenSV] [nvarchar](50) NULL,
	[MaPhong] [nchar](10) NULL
) ON [PRIMARY]
GO
INSERT [dbo].[DichVu] ([MaDV], [ChucNang]) VALUES (N'a1        ', N'Điều hòa,Wifi,Nóng lạnh,Rộng 50m2,Độ cũ 95%')
INSERT [dbo].[DichVu] ([MaDV], [ChucNang]) VALUES (N'a2        ', N'Điều hòa,Wifi,Rộng 40m2,Độ cũ 95%')
INSERT [dbo].[DichVu] ([MaDV], [ChucNang]) VALUES (N'a3        ', N'Điều hòa,Wifi,Rộng 30m2,Độ cũ 95%')
INSERT [dbo].[DichVu] ([MaDV], [ChucNang]) VALUES (N'a4        ', N'Điều hòa,Wifi,Rộng 25m2,Độ cũ 95%')
INSERT [dbo].[DichVu] ([MaDV], [ChucNang]) VALUES (N'a5        ', N'Điều hòa,Wifi,Rộng 25m2,Độ cũ 90%')
INSERT [dbo].[DichVu] ([MaDV], [ChucNang]) VALUES (N'a6        ', N'Điều hòa,Wifi,Rộng 25m2,Độ cũ 85%')
INSERT [dbo].[DichVu] ([MaDV], [ChucNang]) VALUES (N'a7        ', N'Điều hòa,Wifi,Rộng 25m2,Độ cũ 80%')
INSERT [dbo].[DichVu] ([MaDV], [ChucNang]) VALUES (N'a8        ', N'Điều hòa,Wifi,Rộng 25m2,Độ cũ 75%')
INSERT [dbo].[DichVu] ([MaDV], [ChucNang]) VALUES (N'a9        ', N'Điều hòa,Wifi,Rộng 25m2,Độ cũ 70%')
INSERT [dbo].[DichVu] ([MaDV], [ChucNang]) VALUES (N'a10       ', N'Điều hòa,Wifi,Rộng 25m2,Độ cũ 65%')
INSERT [dbo].[Phong] ([MaPhong], [GiaPhong], [MaDV]) VALUES (N'p1        ', 1000000, N'a1        ')
INSERT [dbo].[Phong] ([MaPhong], [GiaPhong], [MaDV]) VALUES (N'p2        ', 900000, N'a2        ')
INSERT [dbo].[Phong] ([MaPhong], [GiaPhong], [MaDV]) VALUES (N'p3        ', 800000, N'a3        ')
INSERT [dbo].[Phong] ([MaPhong], [GiaPhong], [MaDV]) VALUES (N'p4        ', 700000, N'a4        ')
INSERT [dbo].[Phong] ([MaPhong], [GiaPhong], [MaDV]) VALUES (N'p5        ', 900000, N'a2        ')
INSERT [dbo].[Phong] ([MaPhong], [GiaPhong], [MaDV]) VALUES (N'p6        ', 1000000, N'a1        ')
INSERT [dbo].[Phong] ([MaPhong], [GiaPhong], [MaDV]) VALUES (N'p7        ', 800000, N'a3        ')
INSERT [dbo].[Phong] ([MaPhong], [GiaPhong], [MaDV]) VALUES (N'p8        ', 700000, N'a4        ')
INSERT [dbo].[Phong] ([MaPhong], [GiaPhong], [MaDV]) VALUES (N'p9        ', 1000000, N'a1        ')
INSERT [dbo].[Phong] ([MaPhong], [GiaPhong], [MaDV]) VALUES (N'p10       ', 900000, N'a2        ')
INSERT [dbo].[SinhVien] ([MaSV], [HoTenSV], [MaPhong]) VALUES (N'sv1       ', N'Nguyễn Văn A', N'p1        ')
INSERT [dbo].[SinhVien] ([MaSV], [HoTenSV], [MaPhong]) VALUES (N'sv2       ', N'Nguyễn Văn B', N'p2        ')
INSERT [dbo].[SinhVien] ([MaSV], [HoTenSV], [MaPhong]) VALUES (N'sv3       ', N'Nguyễn Văn C', N'p1        ')
INSERT [dbo].[SinhVien] ([MaSV], [HoTenSV], [MaPhong]) VALUES (N'sv4       ', N'Nguyễn Văn D', N'p3        ')
INSERT [dbo].[SinhVien] ([MaSV], [HoTenSV], [MaPhong]) VALUES (N'sv5       ', N'Nguyễn Văn E', N'p1        ')
INSERT [dbo].[SinhVien] ([MaSV], [HoTenSV], [MaPhong]) VALUES (N'sv6       ', N'Nguyễn Văn F', N'p3        ')
INSERT [dbo].[SinhVien] ([MaSV], [HoTenSV], [MaPhong]) VALUES (N'sv7       ', N'Nguyễn Văn G', N'p4        ')
INSERT [dbo].[SinhVien] ([MaSV], [HoTenSV], [MaPhong]) VALUES (N'sv8       ', N'Nguyễn Văn H', N'p5        ')
INSERT [dbo].[SinhVien] ([MaSV], [HoTenSV], [MaPhong]) VALUES (N'sv9       ', N'Nguyễn Văn I', N'p6        ')
INSERT [dbo].[SinhVien] ([MaSV], [HoTenSV], [MaPhong]) VALUES (N'sv10      ', N'Nguyễn Văn K', N'p5        ')
USE [master]
GO
ALTER DATABASE [KyTucXa] SET  READ_WRITE 
GO
