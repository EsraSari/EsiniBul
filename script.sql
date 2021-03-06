USE [master]
GO
/****** Object:  Database [EsiniBulDB]    Script Date: 10.12.2019 00:18:44 ******/
CREATE DATABASE [EsiniBulDB]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'EsiniBulDB', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.MSSQLSERVER\MSSQL\DATA\EsiniBulDB.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'EsiniBulDB_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.MSSQLSERVER\MSSQL\DATA\EsiniBulDB_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [EsiniBulDB] SET COMPATIBILITY_LEVEL = 140
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [EsiniBulDB].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [EsiniBulDB] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [EsiniBulDB] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [EsiniBulDB] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [EsiniBulDB] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [EsiniBulDB] SET ARITHABORT OFF 
GO
ALTER DATABASE [EsiniBulDB] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [EsiniBulDB] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [EsiniBulDB] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [EsiniBulDB] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [EsiniBulDB] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [EsiniBulDB] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [EsiniBulDB] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [EsiniBulDB] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [EsiniBulDB] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [EsiniBulDB] SET  DISABLE_BROKER 
GO
ALTER DATABASE [EsiniBulDB] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [EsiniBulDB] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [EsiniBulDB] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [EsiniBulDB] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [EsiniBulDB] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [EsiniBulDB] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [EsiniBulDB] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [EsiniBulDB] SET RECOVERY FULL 
GO
ALTER DATABASE [EsiniBulDB] SET  MULTI_USER 
GO
ALTER DATABASE [EsiniBulDB] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [EsiniBulDB] SET DB_CHAINING OFF 
GO
ALTER DATABASE [EsiniBulDB] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [EsiniBulDB] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [EsiniBulDB] SET DELAYED_DURABILITY = DISABLED 
GO
EXEC sys.sp_db_vardecimal_storage_format N'EsiniBulDB', N'ON'
GO
ALTER DATABASE [EsiniBulDB] SET QUERY_STORE = OFF
GO
USE [EsiniBulDB]
GO
ALTER DATABASE SCOPED CONFIGURATION SET IDENTITY_CACHE = ON;
GO
ALTER DATABASE SCOPED CONFIGURATION SET LEGACY_CARDINALITY_ESTIMATION = OFF;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET LEGACY_CARDINALITY_ESTIMATION = PRIMARY;
GO
ALTER DATABASE SCOPED CONFIGURATION SET MAXDOP = 0;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET MAXDOP = PRIMARY;
GO
ALTER DATABASE SCOPED CONFIGURATION SET PARAMETER_SNIFFING = ON;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET PARAMETER_SNIFFING = PRIMARY;
GO
ALTER DATABASE SCOPED CONFIGURATION SET QUERY_OPTIMIZER_HOTFIXES = OFF;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET QUERY_OPTIMIZER_HOTFIXES = PRIMARY;
GO
USE [EsiniBulDB]
GO
/****** Object:  Table [dbo].[OgrenciGiris]    Script Date: 10.12.2019 00:18:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OgrenciGiris](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[OgrenciNumarasi] [int] NULL,
	[OgrenciAdi] [nvarchar](50) NULL,
	[OgrenciSoyadi] [nvarchar](100) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SoruCevap]    Script Date: 10.12.2019 00:18:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SoruCevap](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Soru] [nvarchar](200) NULL,
	[Seviye] [smallint] NULL,
	[BirinciSecenek] [nvarchar](200) NULL,
	[IkinciSecenek] [nvarchar](200) NULL,
	[UcuncuSecenek] [nvarchar](200) NULL,
	[DorduncuSecenek] [nvarchar](200) NULL,
	[Cevap] [nvarchar](200) NULL
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[SoruCevap] ON 

INSERT [dbo].[SoruCevap] ([ID], [Soru], [Seviye], [BirinciSecenek], [IkinciSecenek], [UcuncuSecenek], [DorduncuSecenek], [Cevap]) VALUES (1, N'd', 1, N'p', N'b', N'q', N'd', N'd')
INSERT [dbo].[SoruCevap] ([ID], [Soru], [Seviye], [BirinciSecenek], [IkinciSecenek], [UcuncuSecenek], [DorduncuSecenek], [Cevap]) VALUES (2, N'p', 1, N'd', N'p', N'b', N'q', N'p')
INSERT [dbo].[SoruCevap] ([ID], [Soru], [Seviye], [BirinciSecenek], [IkinciSecenek], [UcuncuSecenek], [DorduncuSecenek], [Cevap]) VALUES (3, N'b', 1, N'b', N'd', N'p', N'q', N'b')
INSERT [dbo].[SoruCevap] ([ID], [Soru], [Seviye], [BirinciSecenek], [IkinciSecenek], [UcuncuSecenek], [DorduncuSecenek], [Cevap]) VALUES (4, N'q', 1, N'q', N'p', N'd', N'b', N'q')
INSERT [dbo].[SoruCevap] ([ID], [Soru], [Seviye], [BirinciSecenek], [IkinciSecenek], [UcuncuSecenek], [DorduncuSecenek], [Cevap]) VALUES (5, N'ev', 2, N'en', N'ev', N've', N'em', N'ev')
INSERT [dbo].[SoruCevap] ([ID], [Soru], [Seviye], [BirinciSecenek], [IkinciSecenek], [UcuncuSecenek], [DorduncuSecenek], [Cevap]) VALUES (6, N've', 2, N've', N'ev', N'em', N'en', N've')
INSERT [dbo].[SoruCevap] ([ID], [Soru], [Seviye], [BirinciSecenek], [IkinciSecenek], [UcuncuSecenek], [DorduncuSecenek], [Cevap]) VALUES (7, N'en', 2, N'ev', N'em', N'en', N've', N'en')
INSERT [dbo].[SoruCevap] ([ID], [Soru], [Seviye], [BirinciSecenek], [IkinciSecenek], [UcuncuSecenek], [DorduncuSecenek], [Cevap]) VALUES (8, N'em', 2, N've', N'en', N'ev', N'em', N'em')
INSERT [dbo].[SoruCevap] ([ID], [Soru], [Seviye], [BirinciSecenek], [IkinciSecenek], [UcuncuSecenek], [DorduncuSecenek], [Cevap]) VALUES (9, N'aba', 3, N'aba', N'ada', N'apa', N'aqa', N'aba')
INSERT [dbo].[SoruCevap] ([ID], [Soru], [Seviye], [BirinciSecenek], [IkinciSecenek], [UcuncuSecenek], [DorduncuSecenek], [Cevap]) VALUES (10, N'apa', 3, N'ada', N'aqa', N'apa', N'aba', N'apa')
INSERT [dbo].[SoruCevap] ([ID], [Soru], [Seviye], [BirinciSecenek], [IkinciSecenek], [UcuncuSecenek], [DorduncuSecenek], [Cevap]) VALUES (11, N'ada', 3, N'aqa', N'ada', N'aba', N'apa', N'ada')
INSERT [dbo].[SoruCevap] ([ID], [Soru], [Seviye], [BirinciSecenek], [IkinciSecenek], [UcuncuSecenek], [DorduncuSecenek], [Cevap]) VALUES (12, N'aqa', 3, N'apa', N'aba', N'ada', N'aqa', N'aqa')
INSERT [dbo].[SoruCevap] ([ID], [Soru], [Seviye], [BirinciSecenek], [IkinciSecenek], [UcuncuSecenek], [DorduncuSecenek], [Cevap]) VALUES (13, N'baba', 4, N'daba', N'baba', N'dada', N'abab', N'baba')
INSERT [dbo].[SoruCevap] ([ID], [Soru], [Seviye], [BirinciSecenek], [IkinciSecenek], [UcuncuSecenek], [DorduncuSecenek], [Cevap]) VALUES (14, N'dada', 4, N'dada', N'abab', N'daba', N'baba', N'dada')
INSERT [dbo].[SoruCevap] ([ID], [Soru], [Seviye], [BirinciSecenek], [IkinciSecenek], [UcuncuSecenek], [DorduncuSecenek], [Cevap]) VALUES (15, N'daba', 4, N'baba', N'dada', N'abab', N'daba', N'daba')
INSERT [dbo].[SoruCevap] ([ID], [Soru], [Seviye], [BirinciSecenek], [IkinciSecenek], [UcuncuSecenek], [DorduncuSecenek], [Cevap]) VALUES (16, N'abab', 4, N'daba', N'baba', N'abab', N'dada', N'abab')
INSERT [dbo].[SoruCevap] ([ID], [Soru], [Seviye], [BirinciSecenek], [IkinciSecenek], [UcuncuSecenek], [DorduncuSecenek], [Cevap]) VALUES (17, N'Babası çorba pişirdi.', 5, N'Babası çorba pişirdi.', N'Babası çorba bişirdi.', N'Badası çorba pişirdi.', N'Babası çorpa pişirdi.', N'Babası çorba pişirdi.')
INSERT [dbo].[SoruCevap] ([ID], [Soru], [Seviye], [BirinciSecenek], [IkinciSecenek], [UcuncuSecenek], [DorduncuSecenek], [Cevap]) VALUES (18, N'Babası çorba bişirdi.', 5, N'Badası çorba pişirdi.', N'Babası çorba pişirdi.', N'Babası çorba bişirdi.', N'Babası çorpa pişirdi.', N'Babası çorba bişirdi.')
INSERT [dbo].[SoruCevap] ([ID], [Soru], [Seviye], [BirinciSecenek], [IkinciSecenek], [UcuncuSecenek], [DorduncuSecenek], [Cevap]) VALUES (19, N'Babası çorpa pişirdi.', 5, N'Babası çorba pişirdi.', N'Babası çorpa pişirdi.', N'Badası çorba pişirdi.', N'Babası çorba bişirdi.', N'Babası çorpa pişirdi.')
INSERT [dbo].[SoruCevap] ([ID], [Soru], [Seviye], [BirinciSecenek], [IkinciSecenek], [UcuncuSecenek], [DorduncuSecenek], [Cevap]) VALUES (20, N'Badası çorba pişirdi.', 5, N'Babası çorpa pişirdi.', N'Babası çorba pişirdi.', N'Babası çorba bişirdi.', N'Badası çorba pişirdi.', N'Badası çorba pişirdi.')
SET IDENTITY_INSERT [dbo].[SoruCevap] OFF
USE [master]
GO
ALTER DATABASE [EsiniBulDB] SET  READ_WRITE 
GO
