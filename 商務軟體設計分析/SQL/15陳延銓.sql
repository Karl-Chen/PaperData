/** 15陳延銓的專案資料庫 2015/01/13**/
USE [master]
GO
/****** Object:  Database [GuestModel]    Script Date: 2025/1/15 下午 03:07:08 ******/
CREATE DATABASE [GuestModel]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'GuestModel', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.MSSQLSERVER\MSSQL\DATA\GuestModel.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'GuestModel_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.MSSQLSERVER\MSSQL\DATA\GuestModel_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT, LEDGER = OFF
GO
ALTER DATABASE [GuestModel] SET COMPATIBILITY_LEVEL = 160
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [GuestModel].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [GuestModel] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [GuestModel] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [GuestModel] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [GuestModel] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [GuestModel] SET ARITHABORT OFF 
GO
ALTER DATABASE [GuestModel] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [GuestModel] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [GuestModel] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [GuestModel] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [GuestModel] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [GuestModel] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [GuestModel] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [GuestModel] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [GuestModel] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [GuestModel] SET  ENABLE_BROKER 
GO
ALTER DATABASE [GuestModel] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [GuestModel] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [GuestModel] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [GuestModel] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [GuestModel] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [GuestModel] SET READ_COMMITTED_SNAPSHOT ON 
GO
ALTER DATABASE [GuestModel] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [GuestModel] SET RECOVERY FULL 
GO
ALTER DATABASE [GuestModel] SET  MULTI_USER 
GO
ALTER DATABASE [GuestModel] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [GuestModel] SET DB_CHAINING OFF 
GO
ALTER DATABASE [GuestModel] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [GuestModel] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [GuestModel] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [GuestModel] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'GuestModel', N'ON'
GO
ALTER DATABASE [GuestModel] SET QUERY_STORE = ON
GO
ALTER DATABASE [GuestModel] SET QUERY_STORE (OPERATION_MODE = READ_WRITE, CLEANUP_POLICY = (STALE_QUERY_THRESHOLD_DAYS = 30), DATA_FLUSH_INTERVAL_SECONDS = 900, INTERVAL_LENGTH_MINUTES = 60, MAX_STORAGE_SIZE_MB = 1000, QUERY_CAPTURE_MODE = AUTO, SIZE_BASED_CLEANUP_MODE = AUTO, MAX_PLANS_PER_QUERY = 200, WAIT_STATS_CAPTURE_MODE = ON)
GO
USE [GuestModel]
GO
/****** Object:  Table [dbo].[__EFMigrationsHistory]    Script Date: 2025/1/15 下午 03:07:08 ******/
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
/****** Object:  Table [dbo].[Brand]    Script Date: 2025/1/15 下午 03:07:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Brand](
	[BrandID] [nvarchar](2) NOT NULL,
	[BrandName] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Brand] PRIMARY KEY CLUSTERED 
(
	[BrandID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HandleOrder]    Script Date: 2025/1/15 下午 03:07:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HandleOrder](
	[StaffID] [nvarchar](6) NOT NULL,
	[OrderNo] [nvarchar](13) NOT NULL,
	[HandleTime] [datetime2](7) NOT NULL,
 CONSTRAINT [PK_HandleOrder] PRIMARY KEY CLUSTERED 
(
	[StaffID] ASC,
	[OrderNo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Invoice]    Script Date: 2025/1/15 下午 03:07:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Invoice](
	[InvoiceNo] [nvarchar](13) NOT NULL,
	[OrderNo] [nvarchar](13) NOT NULL,
 CONSTRAINT [PK_Invoice] PRIMARY KEY CLUSTERED 
(
	[InvoiceNo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Member]    Script Date: 2025/1/15 下午 03:07:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Member](
	[MemberID] [nvarchar](8) NOT NULL,
	[Name] [nvarchar](20) NOT NULL,
	[Address] [nvarchar](200) NULL,
	[Email] [nvarchar](100) NOT NULL,
 CONSTRAINT [PK_Member] PRIMARY KEY CLUSTERED 
(
	[MemberID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MemberAcc]    Script Date: 2025/1/15 下午 03:07:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MemberAcc](
	[Account] [nvarchar](450) NOT NULL,
	[Mima] [nvarchar](max) NOT NULL,
	[MemberID] [nvarchar](8) NOT NULL,
 CONSTRAINT [PK_MemberAcc] PRIMARY KEY CLUSTERED 
(
	[Account] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MemberTel]    Script Date: 2025/1/15 下午 03:07:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MemberTel](
	[Index] [int] IDENTITY(1,1) NOT NULL,
	[TelNumber] [nvarchar](15) NOT NULL,
	[MemberID] [nvarchar](8) NOT NULL,
 CONSTRAINT [PK_MemberTel] PRIMARY KEY CLUSTERED 
(
	[Index] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Order]    Script Date: 2025/1/15 下午 03:07:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Order](
	[OrderNo] [nvarchar](13) NOT NULL,
	[OrderDate] [datetime2](7) NOT NULL,
	[ShippingDate] [datetime2](7) NULL,
	[IsGoodPackage] [bit] NOT NULL,
	[ShippingAddr] [nvarchar](200) NULL,
	[PayWayID] [nvarchar](1) NOT NULL,
	[OrdertatusID] [nvarchar](2) NOT NULL,
	[MemberID] [nvarchar](8) NOT NULL,
	[ShippingWayID] [nvarchar](1) NOT NULL,
 CONSTRAINT [PK_Order] PRIMARY KEY CLUSTERED 
(
	[OrderNo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[OrderDetail]    Script Date: 2025/1/15 下午 03:07:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OrderDetail](
	[OrderNo] [nvarchar](13) NOT NULL,
	[ProductID] [nvarchar](8) NOT NULL,
	[Off] [real] NOT NULL,
	[Vol] [int] NOT NULL,
 CONSTRAINT [PK_OrderDetail] PRIMARY KEY CLUSTERED 
(
	[OrderNo] ASC,
	[ProductID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Ordertatus]    Script Date: 2025/1/15 下午 03:07:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Ordertatus](
	[OrdertatusID] [nvarchar](2) NOT NULL,
	[OrdertatusName] [nvarchar](10) NOT NULL,
 CONSTRAINT [PK_Ordertatus] PRIMARY KEY CLUSTERED 
(
	[OrdertatusID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PayWay]    Script Date: 2025/1/15 下午 03:07:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PayWay](
	[PayWayID] [nvarchar](1) NOT NULL,
	[PayWayName] [nvarchar](10) NOT NULL,
 CONSTRAINT [PK_PayWay] PRIMARY KEY CLUSTERED 
(
	[PayWayID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Prodect]    Script Date: 2025/1/15 下午 03:07:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Prodect](
	[ProductID] [nvarchar](8) NOT NULL,
	[ProductName] [nvarchar](50) NOT NULL,
	[Description] [nvarchar](500) NOT NULL,
	[Photo] [nvarchar](18) NOT NULL,
	[CostJP] [int] NOT NULL,
	[CostExchangeRate] [real] NOT NULL,
	[PriceExchangeRage] [real] NOT NULL,
	[Inventory] [int] NOT NULL,
	[OrderedQuantity] [int] NOT NULL,
	[ProductTypeID] [nvarchar](1) NOT NULL,
	[ProductSpecificationID] [nvarchar](20) NOT NULL,
	[BrandID] [nvarchar](2) NOT NULL,
	[SupplierID] [nvarchar](2) NOT NULL,
 CONSTRAINT [PK_Prodect] PRIMARY KEY CLUSTERED 
(
	[ProductID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ProductSpecification]    Script Date: 2025/1/15 下午 03:07:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProductSpecification](
	[SpecificationID] [nvarchar](20) NOT NULL,
	[SpecificationName] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_ProductSpecification] PRIMARY KEY CLUSTERED 
(
	[SpecificationID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ProductType]    Script Date: 2025/1/15 下午 03:07:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProductType](
	[TypeID] [nvarchar](1) NOT NULL,
	[TypeName] [nvarchar](10) NOT NULL,
 CONSTRAINT [PK_ProductType] PRIMARY KEY CLUSTERED 
(
	[TypeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Role]    Script Date: 2025/1/15 下午 03:07:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Role](
	[RoleID] [nvarchar](1) NOT NULL,
	[RoleName] [nvarchar](20) NOT NULL,
 CONSTRAINT [PK_Role] PRIMARY KEY CLUSTERED 
(
	[RoleID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ShippingWay]    Script Date: 2025/1/15 下午 03:07:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ShippingWay](
	[ShippingWayID] [nvarchar](1) NOT NULL,
	[ShippingWayName] [nvarchar](10) NOT NULL,
 CONSTRAINT [PK_ShippingWay] PRIMARY KEY CLUSTERED 
(
	[ShippingWayID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Staff]    Script Date: 2025/1/15 下午 03:07:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Staff](
	[StaffID] [nvarchar](6) NOT NULL,
	[Name] [nvarchar](20) NOT NULL,
	[ArrivalDate] [datetime2](7) NOT NULL,
	[Phone] [nvarchar](20) NOT NULL,
	[RoleID] [nvarchar](1) NOT NULL,
 CONSTRAINT [PK_Staff] PRIMARY KEY CLUSTERED 
(
	[StaffID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Supplier]    Script Date: 2025/1/15 下午 03:07:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Supplier](
	[SupplierID] [nvarchar](2) NOT NULL,
	[SupplierName] [nvarchar](50) NOT NULL,
	[ContactWindow] [nvarchar](20) NOT NULL,
	[Moblie] [nvarchar](15) NOT NULL,
	[Addr] [nvarchar](200) NOT NULL,
 CONSTRAINT [PK_Supplier] PRIMARY KEY CLUSTERED 
(
	[SupplierID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20250115061346_InitialCreate', N'8.0.11')
GO
INSERT [dbo].[Brand] ([BrandID], [BrandName]) VALUES (N'01', N'萬代')
INSERT [dbo].[Brand] ([BrandID], [BrandName]) VALUES (N'02', N'壽屋')
INSERT [dbo].[Brand] ([BrandID], [BrandName]) VALUES (N'03', N'青島')
INSERT [dbo].[Brand] ([BrandID], [BrandName]) VALUES (N'04', N'岩田')
INSERT [dbo].[Brand] ([BrandID], [BrandName]) VALUES (N'05', N'郡氏')
INSERT [dbo].[Brand] ([BrandID], [BrandName]) VALUES (N'06', N'田宮')
INSERT [dbo].[Brand] ([BrandID], [BrandName]) VALUES (N'07', N'蓋亞')
INSERT [dbo].[Brand] ([BrandID], [BrandName]) VALUES (N'08', N'AV')
INSERT [dbo].[Brand] ([BrandID], [BrandName]) VALUES (N'09', N'AK')
INSERT [dbo].[Brand] ([BrandID], [BrandName]) VALUES (N'10', N'H&S Infinity')
INSERT [dbo].[Brand] ([BrandID], [BrandName]) VALUES (N'11', N'WAVE')
INSERT [dbo].[Brand] ([BrandID], [BrandName]) VALUES (N'12', N'3M')
INSERT [dbo].[Brand] ([BrandID], [BrandName]) VALUES (N'13', N'神之手')
INSERT [dbo].[Brand] ([BrandID], [BrandName]) VALUES (N'14', N'OFLA')
GO
INSERT [dbo].[HandleOrder] ([StaffID], [OrderNo], [HandleTime]) VALUES (N'114001', N'N202412200001', CAST(N'2025-01-15T14:22:38.1246445' AS DateTime2))
INSERT [dbo].[HandleOrder] ([StaffID], [OrderNo], [HandleTime]) VALUES (N'114001', N'N202501090001', CAST(N'2025-01-16T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[Invoice] ([InvoiceNo], [OrderNo]) VALUES (N'28630525', N'N202412200001')
GO
INSERT [dbo].[Member] ([MemberID], [Name], [Address], [Email]) VALUES (N'M00001', N'呼溜肯', N'台南市中西區成功路1號', N'aaa@gmail.com')
INSERT [dbo].[Member] ([MemberID], [Name], [Address], [Email]) VALUES (N'M00002', N'春麗', N'台南市中西區成功路2號', N'bbb@gmail.com')
GO
INSERT [dbo].[MemberAcc] ([Account], [Mima], [MemberID]) VALUES (N'model001', N'123Model', N'M00001')
INSERT [dbo].[MemberAcc] ([Account], [Mima], [MemberID]) VALUES (N'model002', N'456Model', N'M00002')
GO
SET IDENTITY_INSERT [dbo].[MemberTel] ON 

INSERT [dbo].[MemberTel] ([Index], [TelNumber], [MemberID]) VALUES (1, N'0988123456', N'M00001')
INSERT [dbo].[MemberTel] ([Index], [TelNumber], [MemberID]) VALUES (2, N'0987017987', N'M00001')
INSERT [dbo].[MemberTel] ([Index], [TelNumber], [MemberID]) VALUES (3, N'0987543987', N'M00002')
SET IDENTITY_INSERT [dbo].[MemberTel] OFF
GO
INSERT [dbo].[Order] ([OrderNo], [OrderDate], [ShippingDate], [IsGoodPackage], [ShippingAddr], [PayWayID], [OrdertatusID], [MemberID], [ShippingWayID]) VALUES (N'N202412200001', CAST(N'2024-12-20T00:00:00.0000000' AS DateTime2), NULL, 0, N'台南市北區公園南路71號', N'0', N'01', N'M00001', N'1')
INSERT [dbo].[Order] ([OrderNo], [OrderDate], [ShippingDate], [IsGoodPackage], [ShippingAddr], [PayWayID], [OrdertatusID], [MemberID], [ShippingWayID]) VALUES (N'N202501090001', CAST(N'2025-01-15T14:22:36.6263300' AS DateTime2), NULL, 1, N'台南市東區莊敬路90號', N'1', N'02', N'M00001', N'2')
GO
INSERT [dbo].[OrderDetail] ([OrderNo], [ProductID], [Off], [Vol]) VALUES (N'N202412200001', N'PMGEX001', 0, 1)
INSERT [dbo].[OrderDetail] ([OrderNo], [ProductID], [Off], [Vol]) VALUES (N'N202412200001', N'PMGEX002', 0, 1)
INSERT [dbo].[OrderDetail] ([OrderNo], [ProductID], [Off], [Vol]) VALUES (N'N202501090001', N'PMGSD001', 0, 1)
INSERT [dbo].[OrderDetail] ([OrderNo], [ProductID], [Off], [Vol]) VALUES (N'N202501090001', N'PMGSD002', 0, 1)
INSERT [dbo].[OrderDetail] ([OrderNo], [ProductID], [Off], [Vol]) VALUES (N'N202501090001', N'PMGSD003', 0, 1)
GO
INSERT [dbo].[Ordertatus] ([OrdertatusID], [OrdertatusName]) VALUES (N'01', N'訂單已受理')
INSERT [dbo].[Ordertatus] ([OrdertatusID], [OrdertatusName]) VALUES (N'02', N'訂單已處理')
INSERT [dbo].[Ordertatus] ([OrdertatusID], [OrdertatusName]) VALUES (N'03', N'出貨中')
INSERT [dbo].[Ordertatus] ([OrdertatusID], [OrdertatusName]) VALUES (N'04', N'已出貨')
INSERT [dbo].[Ordertatus] ([OrdertatusID], [OrdertatusName]) VALUES (N'05', N'訂單完成')
INSERT [dbo].[Ordertatus] ([OrdertatusID], [OrdertatusName]) VALUES (N'10', N'訂單已取消')
INSERT [dbo].[Ordertatus] ([OrdertatusID], [OrdertatusName]) VALUES (N'11', N'廠商砍單')
INSERT [dbo].[Ordertatus] ([OrdertatusID], [OrdertatusName]) VALUES (N'12', N'廠商延期')
GO
INSERT [dbo].[PayWay] ([PayWayID], [PayWayName]) VALUES (N'0', N'來店取貨付款')
INSERT [dbo].[PayWay] ([PayWayID], [PayWayName]) VALUES (N'1', N'店到店取貨付款')
GO
INSERT [dbo].[Prodect] ([ProductID], [ProductName], [Description], [Photo], [CostJP], [CostExchangeRate], [PriceExchangeRage], [Inventory], [OrderedQuantity], [ProductTypeID], [ProductSpecificationID], [BrandID], [SupplierID]) VALUES (N'COFLA001', N'OFLA 筆刀刀片，刀柄另購', N'OFLA的筆刀刀路，做模型不打磨的神器', N'PIC_COFLA001.jpg', 90, 0.8, 1, 15, 7, N'C', N'Blade', N'14', N'07')
INSERT [dbo].[Prodect] ([ProductID], [ProductName], [Description], [Photo], [CostJP], [CostExchangeRate], [PriceExchangeRage], [Inventory], [OrderedQuantity], [ProductTypeID], [ProductSpecificationID], [BrandID], [SupplierID]) VALUES (N'CTATS021', N'TAMIYA TS-21 GOLD 有光金色 塑膠模型噴漆', N'田宮水性漆-消光暗銅色', N'PIC_CTATS021.jpg', 770, 0.18, 0.2, 9, 3, N'C', N'EnamelPaint', N'06', N'02')
INSERT [dbo].[Prodect] ([ProductID], [ProductName], [Description], [Photo], [CostJP], [CostExchangeRate], [PriceExchangeRage], [Inventory], [OrderedQuantity], [ProductTypeID], [ProductSpecificationID], [BrandID], [SupplierID]) VALUES (N'CTWXF002', N'TAMIYA 水性漆(壓克力漆)XF-2 消光白色', N'田宮水性漆-消光白色', N'PIC_CTWXF002.jpg', 220, 0.18, 0.2, 9, 3, N'C', N'WaterPaint', N'06', N'02')
INSERT [dbo].[Prodect] ([ProductID], [ProductName], [Description], [Photo], [CostJP], [CostExchangeRate], [PriceExchangeRage], [Inventory], [OrderedQuantity], [ProductTypeID], [ProductSpecificationID], [BrandID], [SupplierID]) VALUES (N'CTWX_003', N'TAMIYA 田宮 大水性漆 23ml X-3 亮光深藍色', N'田宮水性漆-亮光深藍色', N'PIC_CTWX_003.jpg', 220, 0.18, 0.2, 9, 3, N'C', N'WaterPaint', N'06', N'02')
INSERT [dbo].[Prodect] ([ProductID], [ProductName], [Description], [Photo], [CostJP], [CostExchangeRate], [PriceExchangeRage], [Inventory], [OrderedQuantity], [ProductTypeID], [ProductSpecificationID], [BrandID], [SupplierID]) VALUES (N'CTWX_007', N'TAMIYA 田宮 大水性漆 23ml X-7 亮光紅色', N'田宮水性漆-亮光紅色', N'PIC_CTWX_007.jpg', 220, 0.18, 0.2, 9, 3, N'C', N'WaterPaint', N'06', N'02')
INSERT [dbo].[Prodect] ([ProductID], [ProductName], [Description], [Photo], [CostJP], [CostExchangeRate], [PriceExchangeRage], [Inventory], [OrderedQuantity], [ProductTypeID], [ProductSpecificationID], [BrandID], [SupplierID]) VALUES (N'CTWX_018', N'TAMIYA 田宮 水性壓克力漆 X-18 半光黑色', N'田宮水性漆-半光黑色', N'PIC_CTWX_018.jpg', 220, 0.18, 0.2, 9, 3, N'C', N'WaterPaint', N'06', N'02')
INSERT [dbo].[Prodect] ([ProductID], [ProductName], [Description], [Photo], [CostJP], [CostExchangeRate], [PriceExchangeRage], [Inventory], [OrderedQuantity], [ProductTypeID], [ProductSpecificationID], [BrandID], [SupplierID]) VALUES (N'CTWX_025', N'TAMIYA 田宮 水性壓克力漆 X-25 亮光透明綠色', N'田宮水性漆-亮光透明綠色', N'PIC_CTWX_025.jpeg', 220, 0.18, 0.2, 9, 3, N'C', N'WaterPaint', N'06', N'02')
INSERT [dbo].[Prodect] ([ProductID], [ProductName], [Description], [Photo], [CostJP], [CostExchangeRate], [PriceExchangeRage], [Inventory], [OrderedQuantity], [ProductTypeID], [ProductSpecificationID], [BrandID], [SupplierID]) VALUES (N'CTWX_027', N'TAMIYA 田宮 水性壓克力漆 X-27 亮光透明紅色', N'田宮水性漆-亮光透明紅色', N'PIC_CTWX_027.jpeg', 220, 0.18, 0.2, 9, 3, N'C', N'WaterPaint', N'06', N'02')
INSERT [dbo].[Prodect] ([ProductID], [ProductName], [Description], [Photo], [CostJP], [CostExchangeRate], [PriceExchangeRage], [Inventory], [OrderedQuantity], [ProductTypeID], [ProductSpecificationID], [BrandID], [SupplierID]) VALUES (N'CTWXF016', N'TAMIYA 田宮 大水性漆 23ml XF-16 消光銀色', N'田宮水性漆-消光銀色', N'PIC_CTWXF016.jpg', 220, 0.18, 0.2, 9, 3, N'C', N'WaterPaint', N'06', N'02')
INSERT [dbo].[Prodect] ([ProductID], [ProductName], [Description], [Photo], [CostJP], [CostExchangeRate], [PriceExchangeRage], [Inventory], [OrderedQuantity], [ProductTypeID], [ProductSpecificationID], [BrandID], [SupplierID]) VALUES (N'CTWXF023', N'TAMIYA 田宮 大水性漆 23ml X-11 亮光銀色', N'田宮水性漆-亮光銀色', N'PIC_CTWXF023.jpg', 220, 0.18, 0.2, 9, 3, N'C', N'WaterPaint', N'06', N'02')
INSERT [dbo].[Prodect] ([ProductID], [ProductName], [Description], [Photo], [CostJP], [CostExchangeRate], [PriceExchangeRage], [Inventory], [OrderedQuantity], [ProductTypeID], [ProductSpecificationID], [BrandID], [SupplierID]) VALUES (N'CTWXF028', N'TAMIYA 田宮 大水性漆 23ml XF-28 消光暗銅色', N'田宮水性漆-消光暗銅色', N'PIC_CTWXF028.jpg', 264, 0.18, 0.2, 9, 3, N'C', N'WaterPaint', N'06', N'02')
INSERT [dbo].[Prodect] ([ProductID], [ProductName], [Description], [Photo], [CostJP], [CostExchangeRate], [PriceExchangeRage], [Inventory], [OrderedQuantity], [ProductTypeID], [ProductSpecificationID], [BrandID], [SupplierID]) VALUES (N'PMG__163', N'MG RX-93 Nu Gundam Ver. Ka', N'由Ka老師重新設計水貼貼在牛鋼上，更加增添牛鋼細節', N'PIC_PMG__163.jpeg', 7000, 0.2, 0.23, 33, 28, N'P', N'MG', N'01', N'01')
INSERT [dbo].[Prodect] ([ProductID], [ProductName], [Description], [Photo], [CostJP], [CostExchangeRate], [PriceExchangeRage], [Inventory], [OrderedQuantity], [ProductTypeID], [ProductSpecificationID], [BrandID], [SupplierID]) VALUES (N'PMG__169', N'MG GAT-X105 Aile Strike Gundam Ver. RM', N'翔翼型攻擊鋼彈', N'PIC_PMG__169.jpeg', 4200, 0.2, 0.23, 22, 17, N'P', N'MG', N'01', N'01')
INSERT [dbo].[Prodect] ([ProductID], [ProductName], [Description], [Photo], [CostJP], [CostExchangeRate], [PriceExchangeRage], [Inventory], [OrderedQuantity], [ProductTypeID], [ProductSpecificationID], [BrandID], [SupplierID]) VALUES (N'PMG__172', N'MG RX-78-2 Gundam ver. 3.0', N'初鋼3.0', N'PIC_PMG__172.jpeg', 4500, 0.2, 0.23, 25, 21, N'P', N'MG', N'01', N'01')
INSERT [dbo].[Prodect] ([ProductID], [ProductName], [Description], [Photo], [CostJP], [CostExchangeRate], [PriceExchangeRage], [Inventory], [OrderedQuantity], [ProductTypeID], [ProductSpecificationID], [BrandID], [SupplierID]) VALUES (N'PMG__175', N'MG MSN-04 Sazabi Ver. Ka', N'由Ka老師重新設計水貼貼在沙薩比上，更加增添沙薩比細節', N'PIC_PMG__175.jpeg', 9000, 0.2, 0.23, 28, 24, N'P', N'MG', N'01', N'01')
INSERT [dbo].[Prodect] ([ProductID], [ProductName], [Description], [Photo], [CostJP], [CostExchangeRate], [PriceExchangeRage], [Inventory], [OrderedQuantity], [ProductTypeID], [ProductSpecificationID], [BrandID], [SupplierID]) VALUES (N'PMG__223', N'MG MSN-06S-2 Sinanju Stein [Narrative Ver.] Ver.Ka', N'新安洲原石卡版', N'PIC_PMG__223.jpeg', 8000, 0.2, 0.23, 20, 15, N'P', N'MG', N'01', N'01')
INSERT [dbo].[Prodect] ([ProductID], [ProductName], [Description], [Photo], [CostJP], [CostExchangeRate], [PriceExchangeRage], [Inventory], [OrderedQuantity], [ProductTypeID], [ProductSpecificationID], [BrandID], [SupplierID]) VALUES (N'PMGEX001', N'MGEX獨角獸', N'自帶發光系統，將變身及發光以更加突出的方式完全展現出來的模型', N'PIC_PMGEX001.jpg', 23000, 0.2, 0.23, 3, 2, N'P', N'MGEX', N'01', N'01')
INSERT [dbo].[Prodect] ([ProductID], [ProductName], [Description], [Photo], [CostJP], [CostExchangeRate], [PriceExchangeRage], [Inventory], [OrderedQuantity], [ProductTypeID], [ProductSpecificationID], [BrandID], [SupplierID]) VALUES (N'PMGEX002', N'MGEX攻擊自由', N'最帥最強，將金色骨架特色以更加突出的方式完全展現出來的模型', N'PIC_PMGEX002.jpg', 13800, 0.2, 0.23, 3, 3, N'P', N'MGEX', N'01', N'01')
INSERT [dbo].[Prodect] ([ProductID], [ProductName], [Description], [Photo], [CostJP], [CostExchangeRate], [PriceExchangeRage], [Inventory], [OrderedQuantity], [ProductTypeID], [ProductSpecificationID], [BrandID], [SupplierID]) VALUES (N'PMGSD001', N'MGSD自由鋼彈', N'以MG的骨架技術展現在SD的Size上，擁有迷人的身姿及高度可動展現出自由鋼彈的帥氣', N'PIC_PMGSD001.jpg', 4290, 0.2, 0.25, 0, 0, N'P', N'MGSD', N'01', N'01')
INSERT [dbo].[Prodect] ([ProductID], [ProductName], [Description], [Photo], [CostJP], [CostExchangeRate], [PriceExchangeRage], [Inventory], [OrderedQuantity], [ProductTypeID], [ProductSpecificationID], [BrandID], [SupplierID]) VALUES (N'PMGSD002', N'MGSD獵魔鋼彈', N'以MG的骨架技術展現在SD的Size上，擁有迷人的身姿及高度可動展現出獵魔鋼彈帥氣骨架露出', N'PIC_PMGSD002.jpg', 4290, 0.2, 0.25, 13, 10, N'P', N'MGSD', N'01', N'01')
INSERT [dbo].[Prodect] ([ProductID], [ProductName], [Description], [Photo], [CostJP], [CostExchangeRate], [PriceExchangeRage], [Inventory], [OrderedQuantity], [ProductTypeID], [ProductSpecificationID], [BrandID], [SupplierID]) VALUES (N'PMGSD003', N'MGSD飛翼EW', N'以MG的骨架技術展現在SD的Size上，展露出俗稱飛翼掉毛的帥氣天使', N'PIC_PMGSD003.jpeg', 4950, 0.2, 0.25, 15, 15, N'P', N'MGSD', N'01', N'01')
INSERT [dbo].[Prodect] ([ProductID], [ProductName], [Description], [Photo], [CostJP], [CostExchangeRate], [PriceExchangeRage], [Inventory], [OrderedQuantity], [ProductTypeID], [ProductSpecificationID], [BrandID], [SupplierID]) VALUES (N'PPG__002', N'PG-Zaku-夏亞專用薩克', N'以1：60比例呈現將夏亞專用薩克完美呈現', N'PIC_PPG__002.jpeg', 12000, 0.2, 0.23, 3, 1, N'P', N'PG', N'01', N'01')
INSERT [dbo].[Prodect] ([ProductID], [ProductName], [Description], [Photo], [CostJP], [CostExchangeRate], [PriceExchangeRage], [Inventory], [OrderedQuantity], [ProductTypeID], [ProductSpecificationID], [BrandID], [SupplierID]) VALUES (N'PPG00007', N'PG能天使(含燈組)', N'能天使以1：60比例呈現出來，並且可以裝上燈組做為發光的賣點', N'PIC_PPG00007.jpeg', 34560, 0.2, 0.23, 7, 3, N'P', N'PG', N'01', N'01')
INSERT [dbo].[Prodect] ([ProductID], [ProductName], [Description], [Photo], [CostJP], [CostExchangeRate], [PriceExchangeRage], [Inventory], [OrderedQuantity], [ProductTypeID], [ProductSpecificationID], [BrandID], [SupplierID]) VALUES (N'PPGCE003', N'PG攻擊鋼彈', N'以1：60比例呈現將攻擊鋼彈完美呈現，以超高可動及外甲展開做為賣點', N'PIC_PPGCE003.jpeg', 14000, 0.2, 0.23, 19, 12, N'P', N'PG', N'01', N'01')
INSERT [dbo].[Prodect] ([ProductID], [ProductName], [Description], [Photo], [CostJP], [CostExchangeRate], [PriceExchangeRage], [Inventory], [OrderedQuantity], [ProductTypeID], [ProductSpecificationID], [BrandID], [SupplierID]) VALUES (N'PPGCE004', N'PG空中霸者', N'以1：60比例將攻擊鋼彈的翔翼背包搭載在空中霸者上，並且可以將翔翼背包與PG攻擊鋼彈相結合', N'PIC_PPGCE004.jpeg', 5000, 0.2, 0.23, 5, 3, N'P', N'PG', N'01', N'01')
INSERT [dbo].[Prodect] ([ProductID], [ProductName], [Description], [Photo], [CostJP], [CostExchangeRate], [PriceExchangeRage], [Inventory], [OrderedQuantity], [ProductTypeID], [ProductSpecificationID], [BrandID], [SupplierID]) VALUES (N'PPGCE005', N'PG攻擊自由', N'以1：60比例將攻擊自由的金色骨架及超大超華麗翅膀呈現在玩家', N'PIC_PPGCE005.jpeg', 25000, 0.2, 0.23, 12, 9, N'P', N'PG', N'01', N'01')
INSERT [dbo].[Prodect] ([ProductID], [ProductName], [Description], [Photo], [CostJP], [CostExchangeRate], [PriceExchangeRage], [Inventory], [OrderedQuantity], [ProductTypeID], [ProductSpecificationID], [BrandID], [SupplierID]) VALUES (N'PPGCE006', N'PG紅異端改', N'以1：60比例將紅異端改的肌肉特色造型呈現，其中更以雙武士刀及戰術大劍做為賣點', N'PIC_PPGCE006.jpeg', 24840, 0.2, 0.23, 33, 30, N'P', N'PG', N'01', N'01')
INSERT [dbo].[Prodect] ([ProductID], [ProductName], [Description], [Photo], [CostJP], [CostExchangeRate], [PriceExchangeRage], [Inventory], [OrderedQuantity], [ProductTypeID], [ProductSpecificationID], [BrandID], [SupplierID]) VALUES (N'PPGU_001', N'PGU-RX-78-2', N'以1：60比例呈現最新技術結晶的究極鋼普拉，將初代元祖鋼彈完美呈現，達到完美分件，也讓玩家可以更便利的上色，即使不塗裝也是很帥氣', N'PIC_PPGU_001.jpeg', 4950, 0.2, 0.25, 5, 5, N'P', N'PG', N'01', N'01')
INSERT [dbo].[Prodect] ([ProductID], [ProductName], [Description], [Photo], [CostJP], [CostExchangeRate], [PriceExchangeRage], [Inventory], [OrderedQuantity], [ProductTypeID], [ProductSpecificationID], [BrandID], [SupplierID]) VALUES (N'PPGUC008', N'PG獨角獸(燈組另購)', N'獨角獸以1：60比例呈現出來，並且可以另購燈組裝上做為發光的賣點', N'PIC_PPGUC008.jpeg', 34560, 0.2, 0.23, 7, 5, N'P', N'PG', N'01', N'01')
INSERT [dbo].[Prodect] ([ProductID], [ProductName], [Description], [Photo], [CostJP], [CostExchangeRate], [PriceExchangeRage], [Inventory], [OrderedQuantity], [ProductTypeID], [ProductSpecificationID], [BrandID], [SupplierID]) VALUES (N'PRG__011', N'RG ZGMF-X42S Destiny Gundam', N'RG 命運，劇場版捥回了一切', N'PIC_PRG__011.jpeg', 2500, 0.2, 0.23, 15, 5, N'P', N'RG', N'01', N'01')
INSERT [dbo].[Prodect] ([ProductID], [ProductName], [Description], [Photo], [CostJP], [CostExchangeRate], [PriceExchangeRage], [Inventory], [OrderedQuantity], [ProductTypeID], [ProductSpecificationID], [BrandID], [SupplierID]) VALUES (N'PRG__018', N'RG GN-0000-GNR-010 OO Raiser', N'RG 00 強化模組的神棍機', N'PIC_PRG__018.jpeg', 3000, 0.2, 0.23, 15, 5, N'P', N'RG', N'01', N'01')
INSERT [dbo].[Prodect] ([ProductID], [ProductName], [Description], [Photo], [CostJP], [CostExchangeRate], [PriceExchangeRage], [Inventory], [OrderedQuantity], [ProductTypeID], [ProductSpecificationID], [BrandID], [SupplierID]) VALUES (N'PRG__021', N'RG GNT-0000 OO Qan[T]', N'RG 00 會量子化的神棍機', N'PIC_PRG__021.jpeg', 2500, 0.2, 0.23, 15, 5, N'P', N'RG', N'01', N'01')
INSERT [dbo].[Prodect] ([ProductID], [ProductName], [Description], [Photo], [CostJP], [CostExchangeRate], [PriceExchangeRage], [Inventory], [OrderedQuantity], [ProductTypeID], [ProductSpecificationID], [BrandID], [SupplierID]) VALUES (N'TGOD_003', N'神之手 SPN-120', N'模型斜口鉗界的王者，斜口鉗中的斜口鉗，單刃又薄刃，剪完少白痕少挖肉，但依然脆弱', N'PIC_TGOD_003.jpg', 4800, 0.28, 0.35, 15, 7, N'T', N'Cut', N'13', N'02')
INSERT [dbo].[Prodect] ([ProductID], [ProductName], [Description], [Photo], [CostJP], [CostExchangeRate], [PriceExchangeRage], [Inventory], [OrderedQuantity], [ProductTypeID], [ProductSpecificationID], [BrandID], [SupplierID]) VALUES (N'TOFLA004', N'OFLA 筆刀', N'OFLA的筆刀，做模型不打磨的神器', N'PIC_TOFLA004.jpg', 200, 0.8, 1, 15, 7, N'T', N'Blade', N'14', N'07')
INSERT [dbo].[Prodect] ([ProductID], [ProductName], [Description], [Photo], [CostJP], [CostExchangeRate], [PriceExchangeRage], [Inventory], [OrderedQuantity], [ProductTypeID], [ProductSpecificationID], [BrandID], [SupplierID]) VALUES (N'TTAB_005', N'TAMIYA 田宮 74040 模型用高級筆刀 45度', N'田宮出品高級筆刀', N'PIC_TTAB_005.jpg', 1210, 0.2, 0.24, 9, 3, N'T', N'Blade', N'06', N'02')
INSERT [dbo].[Prodect] ([ProductID], [ProductName], [Description], [Photo], [CostJP], [CostExchangeRate], [PriceExchangeRage], [Inventory], [OrderedQuantity], [ProductTypeID], [ProductSpecificationID], [BrandID], [SupplierID]) VALUES (N'TTAC_001', N'田宮斜口鉗74035', N'田宮出品高級斜口鉗，雙刃薄刃鉗，效果略輸單刃的神之手一點', N'PIC_TTAC_001.jpg', 3100, 0.22, 0.25, 15, 7, N'T', N'Cut', N'06', N'02')
INSERT [dbo].[Prodect] ([ProductID], [ProductName], [Description], [Photo], [CostJP], [CostExchangeRate], [PriceExchangeRage], [Inventory], [OrderedQuantity], [ProductTypeID], [ProductSpecificationID], [BrandID], [SupplierID]) VALUES (N'TTAC_002', N'田宮斜口鉗74123', N'田宮出品高級斜口鉗，雙刃薄刃鉗，刃比74035薄一點，因此較為脆弱', N'PIC_TTAC_123.jpg', 3467, 0.22, 0.25, 15, 7, N'T', N'Cut', N'06', N'02')
INSERT [dbo].[Prodect] ([ProductID], [ProductName], [Description], [Photo], [CostJP], [CostExchangeRate], [PriceExchangeRage], [Inventory], [OrderedQuantity], [ProductTypeID], [ProductSpecificationID], [BrandID], [SupplierID]) VALUES (N'TTAC_006', N'Tamiya 田宮 蝕刻片專用夾鉗', N'田宮出品剪蝕刻片專用', N'PIC_TTAC_006.jpg', 2970, 0.18, 0.2, 9, 3, N'T', N'Cut', N'06', N'02')
GO
INSERT [dbo].[ProductSpecification] ([SpecificationID], [SpecificationName]) VALUES (N'30MM', N'30MM')
INSERT [dbo].[ProductSpecification] ([SpecificationID], [SpecificationName]) VALUES (N'BB', N'BB及SD')
INSERT [dbo].[ProductSpecification] ([SpecificationID], [SpecificationName]) VALUES (N'Blade', N'刀片')
INSERT [dbo].[ProductSpecification] ([SpecificationID], [SpecificationName]) VALUES (N'Board', N'膠板')
INSERT [dbo].[ProductSpecification] ([SpecificationID], [SpecificationName]) VALUES (N'Cut', N'剪鉗')
INSERT [dbo].[ProductSpecification] ([SpecificationID], [SpecificationName]) VALUES (N'Drill', N'鑽頭')
INSERT [dbo].[ProductSpecification] ([SpecificationID], [SpecificationName]) VALUES (N'EG', N'EG')
INSERT [dbo].[ProductSpecification] ([SpecificationID], [SpecificationName]) VALUES (N'EnamelPaint', N'珐瑯漆')
INSERT [dbo].[ProductSpecification] ([SpecificationID], [SpecificationName]) VALUES (N'FAG', N'Frame Arms Girl')
INSERT [dbo].[ProductSpecification] ([SpecificationID], [SpecificationName]) VALUES (N'Gule', N'膠水')
INSERT [dbo].[ProductSpecification] ([SpecificationID], [SpecificationName]) VALUES (N'HG', N'HG')
INSERT [dbo].[ProductSpecification] ([SpecificationID], [SpecificationName]) VALUES (N'MD', N'女神裝置')
INSERT [dbo].[ProductSpecification] ([SpecificationID], [SpecificationName]) VALUES (N'MG', N'MG及1/100')
INSERT [dbo].[ProductSpecification] ([SpecificationID], [SpecificationName]) VALUES (N'MGEX', N'MGEX')
INSERT [dbo].[ProductSpecification] ([SpecificationID], [SpecificationName]) VALUES (N'MGSD', N'MGSD')
INSERT [dbo].[ProductSpecification] ([SpecificationID], [SpecificationName]) VALUES (N'MicoPen', N'鋼彈麥克筆')
INSERT [dbo].[ProductSpecification] ([SpecificationID], [SpecificationName]) VALUES (N'MMS', N'武裝神姬')
INSERT [dbo].[ProductSpecification] ([SpecificationID], [SpecificationName]) VALUES (N'NitrocellulosePaint', N'硝基漆')
INSERT [dbo].[ProductSpecification] ([SpecificationID], [SpecificationName]) VALUES (N'PG', N'PG及1/60')
INSERT [dbo].[ProductSpecification] ([SpecificationID], [SpecificationName]) VALUES (N'RG', N'RG')
INSERT [dbo].[ProductSpecification] ([SpecificationID], [SpecificationName]) VALUES (N'Sandpaper', N'砂紙打磨板')
INSERT [dbo].[ProductSpecification] ([SpecificationID], [SpecificationName]) VALUES (N'WaterPaint', N'水性漆')
GO
INSERT [dbo].[ProductType] ([TypeID], [TypeName]) VALUES (N'C', N'耗材')
INSERT [dbo].[ProductType] ([TypeID], [TypeName]) VALUES (N'O', N'週邊')
INSERT [dbo].[ProductType] ([TypeID], [TypeName]) VALUES (N'P', N'模型')
INSERT [dbo].[ProductType] ([TypeID], [TypeName]) VALUES (N'T', N'工具')
GO
INSERT [dbo].[Role] ([RoleID], [RoleName]) VALUES (N'0', N'系統管理員')
INSERT [dbo].[Role] ([RoleID], [RoleName]) VALUES (N'1', N'店員')
GO
INSERT [dbo].[ShippingWay] ([ShippingWayID], [ShippingWayName]) VALUES (N'1', N'自取')
INSERT [dbo].[ShippingWay] ([ShippingWayID], [ShippingWayName]) VALUES (N'2', N'711取貨')
INSERT [dbo].[ShippingWay] ([ShippingWayID], [ShippingWayName]) VALUES (N'3', N'全家取貨')
INSERT [dbo].[ShippingWay] ([ShippingWayID], [ShippingWayName]) VALUES (N'4', N'萊爾富取貨')
INSERT [dbo].[ShippingWay] ([ShippingWayID], [ShippingWayName]) VALUES (N'5', N'OK取貨')
GO
INSERT [dbo].[Staff] ([StaffID], [Name], [ArrivalDate], [Phone], [RoleID]) VALUES (N'114001', N'王大明', CAST(N'2023-02-01T00:00:00.0000000' AS DateTime2), N'0912365478', N'1')
GO
INSERT [dbo].[Supplier] ([SupplierID], [SupplierName], [ContactWindow], [Moblie], [Addr]) VALUES (N'01', N'萬榮', N'萬榮業務', N'02-2836-8689', N'台北市士林區德行西路7號10樓')
INSERT [dbo].[Supplier] ([SupplierID], [SupplierName], [ContactWindow], [Moblie], [Addr]) VALUES (N'02', N'雙緯', N'雙緯業務', N'02-26097772', N'新北市林口區麗園二街41號')
INSERT [dbo].[Supplier] ([SupplierID], [SupplierName], [ContactWindow], [Moblie], [Addr]) VALUES (N'03', N'振光', N'振光業務', N'02-29619288', N'新北市板橋區中山路一段 156號9樓A5')
INSERT [dbo].[Supplier] ([SupplierID], [SupplierName], [ContactWindow], [Moblie], [Addr]) VALUES (N'04', N'科利達', N'科利達業務', N'02-25471381', N'新北市林口區中華路505號13樓')
INSERT [dbo].[Supplier] ([SupplierID], [SupplierName], [ContactWindow], [Moblie], [Addr]) VALUES (N'05', N'宏駿國際有限公司', N'宏駿業務', N'02-2984-9988', N'新北市三重區重陽路3段192號3樓D室')
INSERT [dbo].[Supplier] ([SupplierID], [SupplierName], [ContactWindow], [Moblie], [Addr]) VALUES (N'06', N'固來有限公司', N'固來業務', N'02-28310903', N'台北市士林區磺溪街36-1號六樓')
INSERT [dbo].[Supplier] ([SupplierID], [SupplierName], [ContactWindow], [Moblie], [Addr]) VALUES (N'07', N'文苑貿易有限公司', N'文苑業務', N'06-2292196', N'台南市中區民權路二段173號')
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_HandleOrder_OrderNo]    Script Date: 2025/1/15 下午 03:07:08 ******/
CREATE NONCLUSTERED INDEX [IX_HandleOrder_OrderNo] ON [dbo].[HandleOrder]
(
	[OrderNo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_Invoice_OrderNo]    Script Date: 2025/1/15 下午 03:07:08 ******/
CREATE UNIQUE NONCLUSTERED INDEX [IX_Invoice_OrderNo] ON [dbo].[Invoice]
(
	[OrderNo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_MemberAcc_MemberID]    Script Date: 2025/1/15 下午 03:07:08 ******/
CREATE UNIQUE NONCLUSTERED INDEX [IX_MemberAcc_MemberID] ON [dbo].[MemberAcc]
(
	[MemberID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_MemberTel_MemberID]    Script Date: 2025/1/15 下午 03:07:08 ******/
CREATE NONCLUSTERED INDEX [IX_MemberTel_MemberID] ON [dbo].[MemberTel]
(
	[MemberID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_Order_MemberID]    Script Date: 2025/1/15 下午 03:07:08 ******/
CREATE NONCLUSTERED INDEX [IX_Order_MemberID] ON [dbo].[Order]
(
	[MemberID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_Order_OrdertatusID]    Script Date: 2025/1/15 下午 03:07:08 ******/
CREATE NONCLUSTERED INDEX [IX_Order_OrdertatusID] ON [dbo].[Order]
(
	[OrdertatusID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_Order_PayWayID]    Script Date: 2025/1/15 下午 03:07:08 ******/
CREATE NONCLUSTERED INDEX [IX_Order_PayWayID] ON [dbo].[Order]
(
	[PayWayID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_Order_ShippingWayID]    Script Date: 2025/1/15 下午 03:07:08 ******/
CREATE NONCLUSTERED INDEX [IX_Order_ShippingWayID] ON [dbo].[Order]
(
	[ShippingWayID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_OrderDetail_ProductID]    Script Date: 2025/1/15 下午 03:07:08 ******/
CREATE NONCLUSTERED INDEX [IX_OrderDetail_ProductID] ON [dbo].[OrderDetail]
(
	[ProductID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_Prodect_BrandID]    Script Date: 2025/1/15 下午 03:07:08 ******/
CREATE NONCLUSTERED INDEX [IX_Prodect_BrandID] ON [dbo].[Prodect]
(
	[BrandID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_Prodect_ProductSpecificationID]    Script Date: 2025/1/15 下午 03:07:08 ******/
CREATE NONCLUSTERED INDEX [IX_Prodect_ProductSpecificationID] ON [dbo].[Prodect]
(
	[ProductSpecificationID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_Prodect_ProductTypeID]    Script Date: 2025/1/15 下午 03:07:08 ******/
CREATE NONCLUSTERED INDEX [IX_Prodect_ProductTypeID] ON [dbo].[Prodect]
(
	[ProductTypeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_Prodect_SupplierID]    Script Date: 2025/1/15 下午 03:07:08 ******/
CREATE NONCLUSTERED INDEX [IX_Prodect_SupplierID] ON [dbo].[Prodect]
(
	[SupplierID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_Staff_RoleID]    Script Date: 2025/1/15 下午 03:07:08 ******/
CREATE NONCLUSTERED INDEX [IX_Staff_RoleID] ON [dbo].[Staff]
(
	[RoleID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
ALTER TABLE [dbo].[HandleOrder]  WITH CHECK ADD  CONSTRAINT [FK_HandleOrder_Order_OrderNo] FOREIGN KEY([OrderNo])
REFERENCES [dbo].[Order] ([OrderNo])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[HandleOrder] CHECK CONSTRAINT [FK_HandleOrder_Order_OrderNo]
GO
ALTER TABLE [dbo].[HandleOrder]  WITH CHECK ADD  CONSTRAINT [FK_HandleOrder_Staff_StaffID] FOREIGN KEY([StaffID])
REFERENCES [dbo].[Staff] ([StaffID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[HandleOrder] CHECK CONSTRAINT [FK_HandleOrder_Staff_StaffID]
GO
ALTER TABLE [dbo].[Invoice]  WITH CHECK ADD  CONSTRAINT [FK_Invoice_Order_OrderNo] FOREIGN KEY([OrderNo])
REFERENCES [dbo].[Order] ([OrderNo])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Invoice] CHECK CONSTRAINT [FK_Invoice_Order_OrderNo]
GO
ALTER TABLE [dbo].[MemberAcc]  WITH CHECK ADD  CONSTRAINT [FK_MemberAcc_Member_MemberID] FOREIGN KEY([MemberID])
REFERENCES [dbo].[Member] ([MemberID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[MemberAcc] CHECK CONSTRAINT [FK_MemberAcc_Member_MemberID]
GO
ALTER TABLE [dbo].[MemberTel]  WITH CHECK ADD  CONSTRAINT [FK_MemberTel_Member_MemberID] FOREIGN KEY([MemberID])
REFERENCES [dbo].[Member] ([MemberID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[MemberTel] CHECK CONSTRAINT [FK_MemberTel_Member_MemberID]
GO
ALTER TABLE [dbo].[Order]  WITH CHECK ADD  CONSTRAINT [FK_Order_Member_MemberID] FOREIGN KEY([MemberID])
REFERENCES [dbo].[Member] ([MemberID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Order] CHECK CONSTRAINT [FK_Order_Member_MemberID]
GO
ALTER TABLE [dbo].[Order]  WITH CHECK ADD  CONSTRAINT [FK_Order_Ordertatus_OrdertatusID] FOREIGN KEY([OrdertatusID])
REFERENCES [dbo].[Ordertatus] ([OrdertatusID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Order] CHECK CONSTRAINT [FK_Order_Ordertatus_OrdertatusID]
GO
ALTER TABLE [dbo].[Order]  WITH CHECK ADD  CONSTRAINT [FK_Order_PayWay_PayWayID] FOREIGN KEY([PayWayID])
REFERENCES [dbo].[PayWay] ([PayWayID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Order] CHECK CONSTRAINT [FK_Order_PayWay_PayWayID]
GO
ALTER TABLE [dbo].[Order]  WITH CHECK ADD  CONSTRAINT [FK_Order_ShippingWay_ShippingWayID] FOREIGN KEY([ShippingWayID])
REFERENCES [dbo].[ShippingWay] ([ShippingWayID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Order] CHECK CONSTRAINT [FK_Order_ShippingWay_ShippingWayID]
GO
ALTER TABLE [dbo].[OrderDetail]  WITH CHECK ADD  CONSTRAINT [FK_OrderDetail_Order_OrderNo] FOREIGN KEY([OrderNo])
REFERENCES [dbo].[Order] ([OrderNo])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[OrderDetail] CHECK CONSTRAINT [FK_OrderDetail_Order_OrderNo]
GO
ALTER TABLE [dbo].[OrderDetail]  WITH CHECK ADD  CONSTRAINT [FK_OrderDetail_Prodect_ProductID] FOREIGN KEY([ProductID])
REFERENCES [dbo].[Prodect] ([ProductID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[OrderDetail] CHECK CONSTRAINT [FK_OrderDetail_Prodect_ProductID]
GO
ALTER TABLE [dbo].[Prodect]  WITH CHECK ADD  CONSTRAINT [FK_Prodect_Brand_BrandID] FOREIGN KEY([BrandID])
REFERENCES [dbo].[Brand] ([BrandID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Prodect] CHECK CONSTRAINT [FK_Prodect_Brand_BrandID]
GO
ALTER TABLE [dbo].[Prodect]  WITH CHECK ADD  CONSTRAINT [FK_Prodect_ProductSpecification_ProductSpecificationID] FOREIGN KEY([ProductSpecificationID])
REFERENCES [dbo].[ProductSpecification] ([SpecificationID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Prodect] CHECK CONSTRAINT [FK_Prodect_ProductSpecification_ProductSpecificationID]
GO
ALTER TABLE [dbo].[Prodect]  WITH CHECK ADD  CONSTRAINT [FK_Prodect_ProductType_ProductTypeID] FOREIGN KEY([ProductTypeID])
REFERENCES [dbo].[ProductType] ([TypeID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Prodect] CHECK CONSTRAINT [FK_Prodect_ProductType_ProductTypeID]
GO
ALTER TABLE [dbo].[Prodect]  WITH CHECK ADD  CONSTRAINT [FK_Prodect_Supplier_SupplierID] FOREIGN KEY([SupplierID])
REFERENCES [dbo].[Supplier] ([SupplierID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Prodect] CHECK CONSTRAINT [FK_Prodect_Supplier_SupplierID]
GO
ALTER TABLE [dbo].[Staff]  WITH CHECK ADD  CONSTRAINT [FK_Staff_Role_RoleID] FOREIGN KEY([RoleID])
REFERENCES [dbo].[Role] ([RoleID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Staff] CHECK CONSTRAINT [FK_Staff_Role_RoleID]
GO
USE [master]
GO
ALTER DATABASE [GuestModel] SET  READ_WRITE 
GO
