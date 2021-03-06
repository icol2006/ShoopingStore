USE [master]
GO
/****** Object:  Database [MvcAffableBean]    Script Date: 26/10/2017 21:20:57 ******/
CREATE DATABASE [MvcAffableBean]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'MvcAffableBean', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.SQLEXPRESS\MSSQL\DATA\MvcAffableBean.mdf' , SIZE = 4288KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'MvcAffableBean_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.SQLEXPRESS\MSSQL\DATA\MvcAffableBean_log.ldf' , SIZE = 1072KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [MvcAffableBean] SET COMPATIBILITY_LEVEL = 120
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [MvcAffableBean].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [MvcAffableBean] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [MvcAffableBean] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [MvcAffableBean] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [MvcAffableBean] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [MvcAffableBean] SET ARITHABORT OFF 
GO
ALTER DATABASE [MvcAffableBean] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [MvcAffableBean] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [MvcAffableBean] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [MvcAffableBean] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [MvcAffableBean] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [MvcAffableBean] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [MvcAffableBean] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [MvcAffableBean] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [MvcAffableBean] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [MvcAffableBean] SET  ENABLE_BROKER 
GO
ALTER DATABASE [MvcAffableBean] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [MvcAffableBean] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [MvcAffableBean] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [MvcAffableBean] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [MvcAffableBean] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [MvcAffableBean] SET READ_COMMITTED_SNAPSHOT ON 
GO
ALTER DATABASE [MvcAffableBean] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [MvcAffableBean] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [MvcAffableBean] SET  MULTI_USER 
GO
ALTER DATABASE [MvcAffableBean] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [MvcAffableBean] SET DB_CHAINING OFF 
GO
ALTER DATABASE [MvcAffableBean] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [MvcAffableBean] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [MvcAffableBean] SET DELAYED_DURABILITY = DISABLED 
GO
USE [MvcAffableBean]
GO
/****** Object:  Table [dbo].[__MigrationHistory]    Script Date: 26/10/2017 21:20:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[__MigrationHistory](
	[MigrationId] [nvarchar](150) NOT NULL,
	[ContextKey] [nvarchar](300) NOT NULL,
	[Model] [varbinary](max) NOT NULL,
	[ProductVersion] [nvarchar](32) NOT NULL,
 CONSTRAINT [PK_dbo.__MigrationHistory] PRIMARY KEY CLUSTERED 
(
	[MigrationId] ASC,
	[ContextKey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Carts]    Script Date: 26/10/2017 21:20:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Carts](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[CartId] [nvarchar](max) NULL,
	[ProductId] [int] NOT NULL,
	[Count] [int] NOT NULL,
	[DateCreated] [datetime2](7) NOT NULL,
 CONSTRAINT [PK_dbo.Carts] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Categories]    Script Date: 26/10/2017 21:20:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Categories](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](45) NOT NULL,
 CONSTRAINT [PK_dbo.Categories] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[CustomerOrders]    Script Date: 26/10/2017 21:20:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CustomerOrders](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[FirstName] [nvarchar](160) NOT NULL,
	[LastName] [nvarchar](160) NOT NULL,
	[Address] [nvarchar](70) NOT NULL,
	[City] [nvarchar](40) NOT NULL,
	[State] [nvarchar](40) NOT NULL,
	[PostalCode] [nvarchar](10) NOT NULL,
	[Country] [nvarchar](40) NOT NULL,
	[Phone] [nvarchar](24) NOT NULL,
	[Email] [nvarchar](max) NOT NULL,
	[DateCreated] [datetime2](7) NOT NULL,
	[Amount] [decimal](18, 2) NOT NULL,
	[CustomerUserName] [nvarchar](max) NULL,
 CONSTRAINT [PK_dbo.CustomerOrders] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Customers]    Script Date: 26/10/2017 21:20:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Customers](
	[Id] [int] IDENTITY(1,1) NOT NULL,
 CONSTRAINT [PK_dbo.Customers] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[OrderedProducts]    Script Date: 26/10/2017 21:20:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OrderedProducts](
	[ProductId] [int] NOT NULL,
	[CustomerOrderId] [int] NOT NULL,
	[Quantity] [int] NOT NULL,
 CONSTRAINT [PK_dbo.OrderedProducts] PRIMARY KEY CLUSTERED 
(
	[ProductId] ASC,
	[CustomerOrderId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Products]    Script Date: 26/10/2017 21:20:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Products](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](45) NOT NULL,
	[Price] [decimal](18, 2) NOT NULL,
	[Description] [nvarchar](max) NULL,
	[LastUpdated] [datetime2](7) NOT NULL,
	[CategoryId] [int] NOT NULL,
 CONSTRAINT [PK_dbo.Products] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Index [IX_ProductId]    Script Date: 26/10/2017 21:20:58 ******/
CREATE NONCLUSTERED INDEX [IX_ProductId] ON [dbo].[Carts]
(
	[ProductId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_CustomerOrderId]    Script Date: 26/10/2017 21:20:58 ******/
CREATE NONCLUSTERED INDEX [IX_CustomerOrderId] ON [dbo].[OrderedProducts]
(
	[CustomerOrderId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_ProductId]    Script Date: 26/10/2017 21:20:58 ******/
CREATE NONCLUSTERED INDEX [IX_ProductId] ON [dbo].[OrderedProducts]
(
	[ProductId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_CategoryId]    Script Date: 26/10/2017 21:20:58 ******/
CREATE NONCLUSTERED INDEX [IX_CategoryId] ON [dbo].[Products]
(
	[CategoryId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Carts]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Carts_dbo.Products_ProductId] FOREIGN KEY([ProductId])
REFERENCES [dbo].[Products] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Carts] CHECK CONSTRAINT [FK_dbo.Carts_dbo.Products_ProductId]
GO
ALTER TABLE [dbo].[OrderedProducts]  WITH CHECK ADD  CONSTRAINT [FK_dbo.OrderedProducts_dbo.CustomerOrders_CustomerOrderId] FOREIGN KEY([CustomerOrderId])
REFERENCES [dbo].[CustomerOrders] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[OrderedProducts] CHECK CONSTRAINT [FK_dbo.OrderedProducts_dbo.CustomerOrders_CustomerOrderId]
GO
ALTER TABLE [dbo].[OrderedProducts]  WITH CHECK ADD  CONSTRAINT [FK_dbo.OrderedProducts_dbo.Products_ProductId] FOREIGN KEY([ProductId])
REFERENCES [dbo].[Products] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[OrderedProducts] CHECK CONSTRAINT [FK_dbo.OrderedProducts_dbo.Products_ProductId]
GO
ALTER TABLE [dbo].[Products]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Products_dbo.Categories_CategoryId] FOREIGN KEY([CategoryId])
REFERENCES [dbo].[Categories] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Products] CHECK CONSTRAINT [FK_dbo.Products_dbo.Categories_CategoryId]
GO
USE [master]
GO
ALTER DATABASE [MvcAffableBean] SET  READ_WRITE 
GO
