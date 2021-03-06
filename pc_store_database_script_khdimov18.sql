USE [master]
GO
/****** Object:  Database [pc_store_ khdimov18]    Script Date: 05.03.2021 14:40:27 ******/
CREATE DATABASE [pc_store_ khdimov18]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'pc_store_ khdimov18', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\pc_store_ khdimov18.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'pc_store_ khdimov18_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\pc_store_ khdimov18_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [pc_store_ khdimov18].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [pc_store_ khdimov18] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [pc_store_ khdimov18] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [pc_store_ khdimov18] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [pc_store_ khdimov18] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [pc_store_ khdimov18] SET ARITHABORT OFF 
GO
ALTER DATABASE [pc_store_ khdimov18] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [pc_store_ khdimov18] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [pc_store_ khdimov18] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [pc_store_ khdimov18] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [pc_store_ khdimov18] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [pc_store_ khdimov18] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [pc_store_ khdimov18] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [pc_store_ khdimov18] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [pc_store_ khdimov18] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [pc_store_ khdimov18] SET  DISABLE_BROKER 
GO
ALTER DATABASE [pc_store_ khdimov18] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [pc_store_ khdimov18] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [pc_store_ khdimov18] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [pc_store_ khdimov18] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [pc_store_ khdimov18] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [pc_store_ khdimov18] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [pc_store_ khdimov18] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [pc_store_ khdimov18] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [pc_store_ khdimov18] SET  MULTI_USER 
GO
ALTER DATABASE [pc_store_ khdimov18] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [pc_store_ khdimov18] SET DB_CHAINING OFF 
GO
ALTER DATABASE [pc_store_ khdimov18] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [pc_store_ khdimov18] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [pc_store_ khdimov18] SET DELAYED_DURABILITY = DISABLED 
GO
USE [pc_store_ khdimov18]
GO
/****** Object:  Table [dbo].[products_ khdimov18]    Script Date: 05.03.2021 11:32:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[products_ khdimov18](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](250) NOT NULL,
	[Manufacturer] [nvarchar](50) NOT NULL,
	[Model] [nvarchar](50) NOT NULL,
	[YearOfManufacture] [int] NOT NULL,
	[Price] [decimal](18, 0) NOT NULL,
	[AvailableUnits] [int] NOT NULL,
	[Discount] [decimal](18, 0) NOT NULL,
	[PriceWithDiscount] [decimal](18, 0) NOT NULL,
	[Date] [datetime] NULL,
 CONSTRAINT [PK_products_ khdimov18] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[products_ khdimov18] ADD  CONSTRAINT [DF_products_ khdimov18_Discount]  DEFAULT ((0)) FOR [Discount]
GO
ALTER TABLE [dbo].[products_ khdimov18] ADD  CONSTRAINT [DF_products_ khdimov18_Date]  DEFAULT (getdate()) FOR [Date]
GO
ALTER TABLE [dbo].[products_ khdimov18]  WITH CHECK ADD  CONSTRAINT [CK_products_AvailableUnits] CHECK  (([AvailableUnits]>=(0)))
GO
ALTER TABLE [dbo].[products_ khdimov18] CHECK CONSTRAINT [CK_products_AvailableUnits]
GO
ALTER TABLE [dbo].[products_ khdimov18]  WITH CHECK ADD  CONSTRAINT [CK_products_Discount] CHECK  (([Discount]>=(0) AND [Discount]<=(30)))
GO
ALTER TABLE [dbo].[products_ khdimov18] CHECK CONSTRAINT [CK_products_Discount]
GO
ALTER TABLE [dbo].[products_ khdimov18]  WITH CHECK ADD  CONSTRAINT [CK_products_Price] CHECK  (([Price]>(0)))
GO
ALTER TABLE [dbo].[products_ khdimov18] CHECK CONSTRAINT [CK_products_Price]
GO
ALTER TABLE [dbo].[products_ khdimov18]  WITH CHECK ADD  CONSTRAINT [CK_products_YearOfManufacture] CHECK  (([YearOfManufacture]>(2018) AND [YearOfManufacture]<(2030)))
GO
ALTER TABLE [dbo].[products_ khdimov18] CHECK CONSTRAINT [CK_products_YearOfManufacture]
GO
USE [master]
GO
ALTER DATABASE [pc_store_ khdimov18] SET  READ_WRITE 
GO
