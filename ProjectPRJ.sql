USE [master]
GO
CREATE DATABASE [projectprj]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'projectprj', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\projectprj.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'projectprj_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\projectprj_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [projectprj] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [projectprj].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [projectprj] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [projectprj] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [projectprj] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [projectprj] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [projectprj] SET ARITHABORT OFF 
GO
ALTER DATABASE [projectprj] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [projectprj] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [projectprj] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [projectprj] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [projectprj] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [projectprj] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [projectprj] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [projectprj] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [projectprj] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [projectprj] SET  DISABLE_BROKER 
GO
ALTER DATABASE [projectprj] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [projectprj] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [projectprj] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [projectprj] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [projectprj] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [projectprj] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [projectprj] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [projectprj] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [projectprj] SET  MULTI_USER 
GO
ALTER DATABASE [projectprj] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [projectprj] SET DB_CHAINING OFF 
GO
ALTER DATABASE [projectprj] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [projectprj] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [projectprj] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [projectprj] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [projectprj] SET QUERY_STORE = OFF
GO
USE [projectprj]
GO
/****** Object:  Table [dbo].[DichVu]    Script Date: 3/4/2022 2:50:03 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DichVu](
	[id] [int] NOT NULL,
	[tendichvu] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_DichVu] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[KhachHang]    Script Date: 3/4/2022 2:50:03 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[KhachHang](
	[id] [int] NOT NULL,
	[hovaten] [nvarchar](150) NOT NULL,
	[CMND_cancuoc] [varchar](150) NOT NULL,
	[sodienthoai] [varchar](150) NOT NULL,
	[quequan] [nvarchar](150) NOT NULL,
 CONSTRAINT [PK_KhachHang] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LoaiPhong]    Script Date: 3/4/2022 2:50:03 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LoaiPhong](
	[id] [int] NOT NULL,
	[tenloaiphong] [nvarchar](150) NOT NULL,
	[dongia] [int] NOT NULL,
 CONSTRAINT [PK_LoaiPhong] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Phong]    Script Date: 3/4/2022 2:50:03 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Phong](
	[id] [int] NOT NULL,
	[tenphong] [nvarchar](150) NOT NULL,
	[idloaiphong] [int] NOT NULL,
 CONSTRAINT [PK_Phong] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[QuanLy]    Script Date: 3/4/2022 2:50:03 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[QuanLy](
	[taikhoan] [varchar](150) NOT NULL,
	[matkhau] [varbinary](150) NOT NULL,
 CONSTRAINT [PK_QuanLy] PRIMARY KEY CLUSTERED 
(
	[taikhoan] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ThongTinTro]    Script Date: 3/4/2022 2:50:03 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ThongTinTro](
	[tenphongtro] [nvarchar](150) NOT NULL,
	[chuphongtro] [nvarchar](150) NOT NULL,
	[diachiphongtro] [nvarchar](150) NOT NULL,
	[sodienthoai] [varchar](150) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ThuePhong]    Script Date: 3/4/2022 2:50:03 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ThuePhong](
	[id] [bigint] NOT NULL,
	[idkhachhang] [int] NOT NULL,
	[idphong] [int] NOT NULL,
	[giaphong] [int] NOT NULL,
	[tiendatcoc] [int] NOT NULL,
	[ngaythue] [date] NOT NULL,
	[ngayhethan] [date] NOT NULL,
	[dathanhtoan] [tinyint] NOT NULL,
 CONSTRAINT [PK_ThuePhong] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TienDienNuoc]    Script Date: 3/4/2022 2:50:03 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TienDienNuoc](
	[id] [bigint] NOT NULL,
	[idthue] [bigint] NOT NULL,
	[idloaidichvu] [int] NOT NULL,
	[tungay] [date] NOT NULL,
	[denngay] [date] NOT NULL,
	[dongia] [int] NOT NULL,
	[dathanhtoan] [tinyint] NOT NULL,
 CONSTRAINT [PK_TienDienNuoc] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[KhachHang] ([id], [hovaten], [CMND_cancuoc], [sodienthoai], [quequan]) VALUES (1, N'Nguyen Chi Huong', N'123456789', N'0912517776', N'ninhbinh')
GO
ALTER TABLE [dbo].[Phong]  WITH CHECK ADD  CONSTRAINT [FK_Phong_LoaiPhong] FOREIGN KEY([idloaiphong])
REFERENCES [dbo].[LoaiPhong] ([id])
GO
ALTER TABLE [dbo].[Phong] CHECK CONSTRAINT [FK_Phong_LoaiPhong]
GO
ALTER TABLE [dbo].[ThuePhong]  WITH CHECK ADD  CONSTRAINT [FK_ThuePhong_KhachHang] FOREIGN KEY([idkhachhang])
REFERENCES [dbo].[KhachHang] ([id])
GO
ALTER TABLE [dbo].[ThuePhong] CHECK CONSTRAINT [FK_ThuePhong_KhachHang]
GO
ALTER TABLE [dbo].[ThuePhong]  WITH CHECK ADD  CONSTRAINT [FK_ThuePhong_Phong] FOREIGN KEY([idphong])
REFERENCES [dbo].[Phong] ([id])
GO
ALTER TABLE [dbo].[ThuePhong] CHECK CONSTRAINT [FK_ThuePhong_Phong]
GO
ALTER TABLE [dbo].[TienDienNuoc]  WITH CHECK ADD  CONSTRAINT [FK_TienDienNuoc_DichVu] FOREIGN KEY([idloaidichvu])
REFERENCES [dbo].[DichVu] ([id])
GO
ALTER TABLE [dbo].[TienDienNuoc] CHECK CONSTRAINT [FK_TienDienNuoc_DichVu]
GO
ALTER TABLE [dbo].[TienDienNuoc]  WITH CHECK ADD  CONSTRAINT [FK_TienDienNuoc_ThuePhong] FOREIGN KEY([idthue])
REFERENCES [dbo].[ThuePhong] ([id])
GO
ALTER TABLE [dbo].[TienDienNuoc] CHECK CONSTRAINT [FK_TienDienNuoc_ThuePhong]
GO
USE [master]
GO
ALTER DATABASE [projectprj] SET  READ_WRITE 
GO
