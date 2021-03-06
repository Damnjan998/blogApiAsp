USE [master]
GO
/****** Object:  Database [ProbaAsp]    Script Date: 7/1/2020 5:39:53 PM ******/
CREATE DATABASE [ProbaAsp]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'ProbaAsp', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.SQLEXPRESS\MSSQL\DATA\ProbaAsp.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'ProbaAsp_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.SQLEXPRESS\MSSQL\DATA\ProbaAsp_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [ProbaAsp] SET COMPATIBILITY_LEVEL = 140
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [ProbaAsp].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [ProbaAsp] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [ProbaAsp] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [ProbaAsp] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [ProbaAsp] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [ProbaAsp] SET ARITHABORT OFF 
GO
ALTER DATABASE [ProbaAsp] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [ProbaAsp] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [ProbaAsp] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [ProbaAsp] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [ProbaAsp] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [ProbaAsp] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [ProbaAsp] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [ProbaAsp] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [ProbaAsp] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [ProbaAsp] SET  ENABLE_BROKER 
GO
ALTER DATABASE [ProbaAsp] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [ProbaAsp] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [ProbaAsp] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [ProbaAsp] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [ProbaAsp] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [ProbaAsp] SET READ_COMMITTED_SNAPSHOT ON 
GO
ALTER DATABASE [ProbaAsp] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [ProbaAsp] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [ProbaAsp] SET  MULTI_USER 
GO
ALTER DATABASE [ProbaAsp] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [ProbaAsp] SET DB_CHAINING OFF 
GO
ALTER DATABASE [ProbaAsp] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [ProbaAsp] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [ProbaAsp] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [ProbaAsp] SET QUERY_STORE = OFF
GO
USE [ProbaAsp]
GO
/****** Object:  Table [dbo].[__EFMigrationsHistory]    Script Date: 7/1/2020 5:39:53 PM ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[BlogCategory]    Script Date: 7/1/2020 5:39:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BlogCategory](
	[BlogId] [int] NOT NULL,
	[CategoryId] [int] NOT NULL,
 CONSTRAINT [PK_BlogCategory] PRIMARY KEY CLUSTERED 
(
	[BlogId] ASC,
	[CategoryId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Blogs]    Script Date: 7/1/2020 5:39:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Blogs](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[CreatedAt] [datetime2](7) NOT NULL,
	[ModifiedAt] [datetime2](7) NULL,
	[IsDeleted] [bit] NOT NULL,
	[DeletedAt] [datetime2](7) NULL,
	[IsActive] [bit] NOT NULL,
	[Name] [nvarchar](30) NOT NULL,
	[Description] [nvarchar](max) NOT NULL,
	[UserId] [int] NOT NULL,
 CONSTRAINT [PK_Blogs] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Categories]    Script Date: 7/1/2020 5:39:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Categories](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](30) NOT NULL,
	[CreatedAt] [datetime2](7) NOT NULL,
	[DeletedAt] [datetime2](7) NULL,
	[IsActive] [bit] NOT NULL,
	[IsDeleted] [bit] NOT NULL,
	[ModifiedAt] [datetime2](7) NULL,
 CONSTRAINT [PK_Categories] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Comments]    Script Date: 7/1/2020 5:39:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Comments](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[CreatedAt] [datetime2](7) NOT NULL,
	[ModifiedAt] [datetime2](7) NULL,
	[IsDeleted] [bit] NOT NULL,
	[DeletedAt] [datetime2](7) NULL,
	[IsActive] [bit] NOT NULL,
	[Text] [nvarchar](max) NULL,
	[UserId] [int] NOT NULL,
	[BlogId] [int] NOT NULL,
 CONSTRAINT [PK_Comments] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Pictures]    Script Date: 7/1/2020 5:39:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Pictures](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Src] [nvarchar](max) NULL,
	[BlogId] [int] NOT NULL,
 CONSTRAINT [PK_Pictures] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[UseCaseLogs]    Script Date: 7/1/2020 5:39:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UseCaseLogs](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Date] [datetime2](7) NOT NULL,
	[UseCaseName] [nvarchar](max) NULL,
	[Data] [nvarchar](max) NULL,
	[Actor] [nvarchar](max) NULL,
 CONSTRAINT [PK_UseCaseLogs] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Users]    Script Date: 7/1/2020 5:39:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Users](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[CreatedAt] [datetime2](7) NOT NULL,
	[ModifiedAt] [datetime2](7) NULL,
	[IsDeleted] [bit] NOT NULL,
	[DeletedAt] [datetime2](7) NULL,
	[IsActive] [bit] NOT NULL,
	[FirstName] [nvarchar](15) NOT NULL,
	[LastName] [nvarchar](15) NOT NULL,
	[UserName] [nvarchar](20) NOT NULL,
	[Password] [nvarchar](15) NOT NULL,
	[Email] [nvarchar](max) NULL,
 CONSTRAINT [PK_Users] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[UserUseCase]    Script Date: 7/1/2020 5:39:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UserUseCase](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [int] NOT NULL,
	[UserUseCaseId] [int] NOT NULL,
 CONSTRAINT [PK_UserUseCase] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20200626130336_initial', N'3.1.5')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20200626160832_updated category table', N'3.1.5')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20200626162712_updated category table, make nullable collums', N'3.1.5')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20200626165755_updated category table, added two more columns', N'3.1.5')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20200626173143_updated category table, changed type of 2 columns', N'3.1.5')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20200626200820_updated table categories, add abstract entity', N'3.1.5')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20200628125458_set configuration for categories', N'3.1.5')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20200628131536_set configurations for category table', N'3.1.5')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20200628145036_added blog table', N'3.1.5')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20200628161741_added blog support table', N'3.1.5')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20200629093932_added for dbset', N'3.1.5')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20200629094505_added Id column in BlogCategory', N'3.1.5')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20200629094913_added Configuration for blogCategory table', N'3.1.5')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20200629095540_database update', N'3.1.5')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20200629170044_update BlogCategory table', N'3.1.5')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20200630095333_added table users and use-cases', N'3.1.5')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20200630111555_table usecaselogs', N'3.1.5')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20200630130819_added userId column', N'3.1.5')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20200630131357_added userId column', N'3.1.5')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20200630165552_added comment table', N'3.1.5')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20200701082650_added table Image', N'3.1.5')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20200701105303_configuration for user', N'3.1.5')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20200701140434_Table Picture', N'3.1.5')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20200701140700_Add constraint', N'3.1.5')
GO
INSERT [dbo].[BlogCategory] ([BlogId], [CategoryId]) VALUES (5, 1)
INSERT [dbo].[BlogCategory] ([BlogId], [CategoryId]) VALUES (6, 1)
INSERT [dbo].[BlogCategory] ([BlogId], [CategoryId]) VALUES (10, 1)
INSERT [dbo].[BlogCategory] ([BlogId], [CategoryId]) VALUES (11, 1)
INSERT [dbo].[BlogCategory] ([BlogId], [CategoryId]) VALUES (15, 1)
INSERT [dbo].[BlogCategory] ([BlogId], [CategoryId]) VALUES (18, 1)
INSERT [dbo].[BlogCategory] ([BlogId], [CategoryId]) VALUES (20, 1)
INSERT [dbo].[BlogCategory] ([BlogId], [CategoryId]) VALUES (24, 1)
INSERT [dbo].[BlogCategory] ([BlogId], [CategoryId]) VALUES (5, 2)
INSERT [dbo].[BlogCategory] ([BlogId], [CategoryId]) VALUES (6, 2)
INSERT [dbo].[BlogCategory] ([BlogId], [CategoryId]) VALUES (10, 2)
INSERT [dbo].[BlogCategory] ([BlogId], [CategoryId]) VALUES (11, 2)
INSERT [dbo].[BlogCategory] ([BlogId], [CategoryId]) VALUES (18, 2)
INSERT [dbo].[BlogCategory] ([BlogId], [CategoryId]) VALUES (21, 2)
INSERT [dbo].[BlogCategory] ([BlogId], [CategoryId]) VALUES (22, 2)
INSERT [dbo].[BlogCategory] ([BlogId], [CategoryId]) VALUES (10, 3)
INSERT [dbo].[BlogCategory] ([BlogId], [CategoryId]) VALUES (12, 3)
INSERT [dbo].[BlogCategory] ([BlogId], [CategoryId]) VALUES (16, 3)
INSERT [dbo].[BlogCategory] ([BlogId], [CategoryId]) VALUES (17, 3)
INSERT [dbo].[BlogCategory] ([BlogId], [CategoryId]) VALUES (26, 3)
INSERT [dbo].[BlogCategory] ([BlogId], [CategoryId]) VALUES (12, 4)
INSERT [dbo].[BlogCategory] ([BlogId], [CategoryId]) VALUES (17, 4)
INSERT [dbo].[BlogCategory] ([BlogId], [CategoryId]) VALUES (19, 4)
INSERT [dbo].[BlogCategory] ([BlogId], [CategoryId]) VALUES (23, 4)
INSERT [dbo].[BlogCategory] ([BlogId], [CategoryId]) VALUES (9, 5)
INSERT [dbo].[BlogCategory] ([BlogId], [CategoryId]) VALUES (12, 5)
INSERT [dbo].[BlogCategory] ([BlogId], [CategoryId]) VALUES (13, 5)
INSERT [dbo].[BlogCategory] ([BlogId], [CategoryId]) VALUES (14, 5)
INSERT [dbo].[BlogCategory] ([BlogId], [CategoryId]) VALUES (19, 5)
INSERT [dbo].[BlogCategory] ([BlogId], [CategoryId]) VALUES (20, 5)
INSERT [dbo].[BlogCategory] ([BlogId], [CategoryId]) VALUES (21, 5)
INSERT [dbo].[BlogCategory] ([BlogId], [CategoryId]) VALUES (25, 5)
GO
SET IDENTITY_INSERT [dbo].[Blogs] ON 

INSERT [dbo].[Blogs] ([Id], [CreatedAt], [ModifiedAt], [IsDeleted], [DeletedAt], [IsActive], [Name], [Description], [UserId]) VALUES (5, CAST(N'2020-06-30T15:37:53.6752353' AS DateTime2), NULL, 0, NULL, 1, N'Blog 1', N'Description 1', 5)
INSERT [dbo].[Blogs] ([Id], [CreatedAt], [ModifiedAt], [IsDeleted], [DeletedAt], [IsActive], [Name], [Description], [UserId]) VALUES (6, CAST(N'2020-07-01T13:20:39.5714011' AS DateTime2), NULL, 0, NULL, 1, N'Novi Blog', N'Tekstualno', 6)
INSERT [dbo].[Blogs] ([Id], [CreatedAt], [ModifiedAt], [IsDeleted], [DeletedAt], [IsActive], [Name], [Description], [UserId]) VALUES (9, CAST(N'2020-07-01T14:14:02.9094658' AS DateTime2), NULL, 0, NULL, 1, N'Blog novi', N'Opis novi', 6)
INSERT [dbo].[Blogs] ([Id], [CreatedAt], [ModifiedAt], [IsDeleted], [DeletedAt], [IsActive], [Name], [Description], [UserId]) VALUES (10, CAST(N'2020-07-01T17:06:53.9526935' AS DateTime2), NULL, 0, NULL, 1, N'Warmer', N'Dark Light is the fifth studio album by Finnish gothic rock band HIM.', 6)
INSERT [dbo].[Blogs] ([Id], [CreatedAt], [ModifiedAt], [IsDeleted], [DeletedAt], [IsActive], [Name], [Description], [UserId]) VALUES (11, CAST(N'2020-07-01T17:07:26.3797875' AS DateTime2), NULL, 0, NULL, 1, N'Indie', N'unnel of Love is the eighth studio album by Bruce Springsteen, released on October 9, 1987.', 6)
INSERT [dbo].[Blogs] ([Id], [CreatedAt], [ModifiedAt], [IsDeleted], [DeletedAt], [IsActive], [Name], [Description], [UserId]) VALUES (12, CAST(N'2020-07-01T17:08:19.7273653' AS DateTime2), NULL, 0, NULL, 1, N'Personality', N'Born to Run is the third studio album by American singer-songwriter Bruce Springsteen.', 6)
INSERT [dbo].[Blogs] ([Id], [CreatedAt], [ModifiedAt], [IsDeleted], [DeletedAt], [IsActive], [Name], [Description], [UserId]) VALUES (13, CAST(N'2020-07-01T17:08:45.0519769' AS DateTime2), NULL, 0, NULL, 1, N'Waterwall', N'The Wall is the eleventh studio album by English rock band Pink Floyd.', 6)
INSERT [dbo].[Blogs] ([Id], [CreatedAt], [ModifiedAt], [IsDeleted], [DeletedAt], [IsActive], [Name], [Description], [UserId]) VALUES (14, CAST(N'2020-07-01T17:09:07.6048656' AS DateTime2), NULL, 0, NULL, 1, N'Hello', N'Dark Light is the fifth studio album by Finnish gothic rock band HIM.', 6)
INSERT [dbo].[Blogs] ([Id], [CreatedAt], [ModifiedAt], [IsDeleted], [DeletedAt], [IsActive], [Name], [Description], [UserId]) VALUES (15, CAST(N'2020-07-01T17:09:31.1313380' AS DateTime2), NULL, 0, NULL, 1, N'Sweet Dreams', N'Sweet Dreams (Are Made of This) is a song by the British new wave music duo Eurythmics.', 6)
INSERT [dbo].[Blogs] ([Id], [CreatedAt], [ModifiedAt], [IsDeleted], [DeletedAt], [IsActive], [Name], [Description], [UserId]) VALUES (16, CAST(N'2020-07-01T17:09:58.6183541' AS DateTime2), NULL, 0, NULL, 1, N'Sweet Sounds', N'Sweet Dreams (Are Made of This) is a song by the British new wave music duo Eurythmics.', 6)
INSERT [dbo].[Blogs] ([Id], [CreatedAt], [ModifiedAt], [IsDeleted], [DeletedAt], [IsActive], [Name], [Description], [UserId]) VALUES (17, CAST(N'2020-07-01T17:10:58.6823119' AS DateTime2), NULL, 0, NULL, 1, N'La Casa', N'Since Let It Be was The Beatles last album, it made an appropriate statement about leaving problems.', 6)
INSERT [dbo].[Blogs] ([Id], [CreatedAt], [ModifiedAt], [IsDeleted], [DeletedAt], [IsActive], [Name], [Description], [UserId]) VALUES (18, CAST(N'2020-07-01T17:12:33.1391213' AS DateTime2), NULL, 0, NULL, 1, N'Simply the Best', N'Dark Light is the fifth studio album by Finnish gothic rock band HIM.', 6)
INSERT [dbo].[Blogs] ([Id], [CreatedAt], [ModifiedAt], [IsDeleted], [DeletedAt], [IsActive], [Name], [Description], [UserId]) VALUES (19, CAST(N'2020-07-01T17:13:37.8684456' AS DateTime2), NULL, 0, NULL, 1, N'CoolJazz', N'Tunnel of Love is the eighth studio album by Bruce Springsteen, released on October 9, 1987.', 6)
INSERT [dbo].[Blogs] ([Id], [CreatedAt], [ModifiedAt], [IsDeleted], [DeletedAt], [IsActive], [Name], [Description], [UserId]) VALUES (20, CAST(N'2020-07-01T17:13:55.4909623' AS DateTime2), NULL, 0, NULL, 1, N'Restricted', N'The Chronic is the debut studio album by American hip hop recording artist Dr. Dre.', 6)
INSERT [dbo].[Blogs] ([Id], [CreatedAt], [ModifiedAt], [IsDeleted], [DeletedAt], [IsActive], [Name], [Description], [UserId]) VALUES (21, CAST(N'2020-07-01T17:14:13.1776938' AS DateTime2), NULL, 0, NULL, 1, N'Domination', N'The Best (often called Simply the Best) is a song originally recorded by Bonnie Tyler on her 1988.', 6)
INSERT [dbo].[Blogs] ([Id], [CreatedAt], [ModifiedAt], [IsDeleted], [DeletedAt], [IsActive], [Name], [Description], [UserId]) VALUES (22, CAST(N'2020-07-01T17:14:39.2127421' AS DateTime2), NULL, 0, NULL, 1, N'Personality', N'Born to Run is the third studio album by American singer-songwriter Bruce Springsteen.', 6)
INSERT [dbo].[Blogs] ([Id], [CreatedAt], [ModifiedAt], [IsDeleted], [DeletedAt], [IsActive], [Name], [Description], [UserId]) VALUES (23, CAST(N'2020-07-01T17:16:12.6272125' AS DateTime2), NULL, 0, NULL, 1, N'Sweet Dreams', N'The Wall is the eleventh studio album by English rock band Pink Floyd.', 6)
INSERT [dbo].[Blogs] ([Id], [CreatedAt], [ModifiedAt], [IsDeleted], [DeletedAt], [IsActive], [Name], [Description], [UserId]) VALUES (24, CAST(N'2020-07-01T17:16:31.4847278' AS DateTime2), NULL, 0, NULL, 1, N'Domination', N'The Best (often called Simply the Best) is a song originally recorded by Bonnie Tyler.', 6)
INSERT [dbo].[Blogs] ([Id], [CreatedAt], [ModifiedAt], [IsDeleted], [DeletedAt], [IsActive], [Name], [Description], [UserId]) VALUES (25, CAST(N'2020-07-01T17:17:12.0011130' AS DateTime2), NULL, 0, NULL, 1, N'Emotions Notes', N'The Chronic is the debut studio album by American hip hop recording artist Dr. Dre.', 6)
INSERT [dbo].[Blogs] ([Id], [CreatedAt], [ModifiedAt], [IsDeleted], [DeletedAt], [IsActive], [Name], [Description], [UserId]) VALUES (26, CAST(N'2020-07-01T17:17:34.5526324' AS DateTime2), NULL, 0, NULL, 1, N'La Casa', N'Dark Light is the fifth studio album by Finnish gothic rock band HIM.', 6)
SET IDENTITY_INSERT [dbo].[Blogs] OFF
GO
SET IDENTITY_INSERT [dbo].[Categories] ON 

INSERT [dbo].[Categories] ([Id], [Name], [CreatedAt], [DeletedAt], [IsActive], [IsDeleted], [ModifiedAt]) VALUES (1, N'Rock', CAST(N'2020-07-01T16:07:00.0810539' AS DateTime2), NULL, 1, 0, NULL)
INSERT [dbo].[Categories] ([Id], [Name], [CreatedAt], [DeletedAt], [IsActive], [IsDeleted], [ModifiedAt]) VALUES (2, N'Country', CAST(N'2020-07-01T16:07:00.0834764' AS DateTime2), NULL, 1, 0, NULL)
INSERT [dbo].[Categories] ([Id], [Name], [CreatedAt], [DeletedAt], [IsActive], [IsDeleted], [ModifiedAt]) VALUES (3, N'Jazz', CAST(N'2020-07-01T16:07:00.0834801' AS DateTime2), NULL, 1, 0, NULL)
INSERT [dbo].[Categories] ([Id], [Name], [CreatedAt], [DeletedAt], [IsActive], [IsDeleted], [ModifiedAt]) VALUES (4, N'Children', CAST(N'2020-07-01T16:07:00.0834807' AS DateTime2), NULL, 1, 0, NULL)
INSERT [dbo].[Categories] ([Id], [Name], [CreatedAt], [DeletedAt], [IsActive], [IsDeleted], [ModifiedAt]) VALUES (5, N'Blues', CAST(N'2020-07-01T16:07:00.0834843' AS DateTime2), NULL, 1, 0, NULL)
SET IDENTITY_INSERT [dbo].[Categories] OFF
GO
SET IDENTITY_INSERT [dbo].[Comments] ON 

INSERT [dbo].[Comments] ([Id], [CreatedAt], [ModifiedAt], [IsDeleted], [DeletedAt], [IsActive], [Text], [UserId], [BlogId]) VALUES (1, CAST(N'2020-06-30T19:37:39.7273817' AS DateTime2), CAST(N'2020-06-30T20:06:34.7530500' AS DateTime2), 0, NULL, 1, N'Proba update', 6, 5)
INSERT [dbo].[Comments] ([Id], [CreatedAt], [ModifiedAt], [IsDeleted], [DeletedAt], [IsActive], [Text], [UserId], [BlogId]) VALUES (2, CAST(N'2020-06-30T19:48:41.6926248' AS DateTime2), CAST(N'2020-06-30T19:58:05.4387102' AS DateTime2), 0, NULL, 1, N'Pozdrav 1', 6, 5)
INSERT [dbo].[Comments] ([Id], [CreatedAt], [ModifiedAt], [IsDeleted], [DeletedAt], [IsActive], [Text], [UserId], [BlogId]) VALUES (3, CAST(N'2020-07-01T17:32:13.7945562' AS DateTime2), NULL, 0, NULL, 1, N'Zanimljiv blog', 15, 17)
INSERT [dbo].[Comments] ([Id], [CreatedAt], [ModifiedAt], [IsDeleted], [DeletedAt], [IsActive], [Text], [UserId], [BlogId]) VALUES (4, CAST(N'2020-07-01T17:33:13.4389497' AS DateTime2), NULL, 0, NULL, 1, N'Umetnost je cudo', 15, 10)
SET IDENTITY_INSERT [dbo].[Comments] OFF
GO
SET IDENTITY_INSERT [dbo].[Pictures] ON 

INSERT [dbo].[Pictures] ([Id], [Src], [BlogId]) VALUES (1, N'7dfeee68-8e1d-44e4-8ae2-332290dcb8d3.jpg', 5)
INSERT [dbo].[Pictures] ([Id], [Src], [BlogId]) VALUES (2, N'ecd7a7de-4548-453d-a397-78d00ea429cc.jpg', 14)
INSERT [dbo].[Pictures] ([Id], [Src], [BlogId]) VALUES (3, N'ecd7a7de-4548-453d-a397-78d00ea429cc.jpg', 12)
INSERT [dbo].[Pictures] ([Id], [Src], [BlogId]) VALUES (4, N'7dfeee68-8e1d-44e4-8ae2-332290dcb8d3.jpg', 18)
INSERT [dbo].[Pictures] ([Id], [Src], [BlogId]) VALUES (5, N'ecd7a7de-4548-453d-a397-78d00ea429cc.jpg', 26)
INSERT [dbo].[Pictures] ([Id], [Src], [BlogId]) VALUES (6, N'7dfeee68-8e1d-44e4-8ae2-332290dcb8d3.jpg', 15)
INSERT [dbo].[Pictures] ([Id], [Src], [BlogId]) VALUES (7, N'7dfeee68-8e1d-44e4-8ae2-332290dcb8d3.jpg', 17)
INSERT [dbo].[Pictures] ([Id], [Src], [BlogId]) VALUES (8, N'ecd7a7de-4548-453d-a397-78d00ea429cc.jpg', 20)
SET IDENTITY_INSERT [dbo].[Pictures] OFF
GO
SET IDENTITY_INSERT [dbo].[UseCaseLogs] ON 

INSERT [dbo].[UseCaseLogs] ([Id], [Date], [UseCaseName], [Data], [Actor]) VALUES (1, CAST(N'2020-06-30T11:35:33.2295623' AS DateTime2), N'User registration', N'{"FirstName":"Petar","LastName":"Peric","Username":"pera","Password":"sifra123","Email":"pera@gmail.com"}', N'Anonymus')
INSERT [dbo].[UseCaseLogs] ([Id], [Date], [UseCaseName], [Data], [Actor]) VALUES (2, CAST(N'2020-06-30T12:00:49.8404251' AS DateTime2), N'User registration', N'{"FirstName":"Branislav","LastName":"Ristivojevic","Username":"banega","Password":"sifra123","Email":"baneris95@gmail.com"}', N'Anonymus')
INSERT [dbo].[UseCaseLogs] ([Id], [Date], [UseCaseName], [Data], [Actor]) VALUES (3, CAST(N'2020-06-30T12:09:11.9022589' AS DateTime2), N'User registration', N'{"FirstName":"Branislav","LastName":"Ristivojevic","Username":"bane","Password":"sifra123","Email":"baneris95@gmail.com"}', N'Anonymus')
INSERT [dbo].[UseCaseLogs] ([Id], [Date], [UseCaseName], [Data], [Actor]) VALUES (4, CAST(N'2020-06-30T13:29:25.9114365' AS DateTime2), N'Create new Blog.', N'{"Id":0,"Name":"Blog 1","Description":"Description 1","CategoryIds":[1,2]}', N'Anonymus')
INSERT [dbo].[UseCaseLogs] ([Id], [Date], [UseCaseName], [Data], [Actor]) VALUES (5, CAST(N'2020-06-30T13:31:42.2490063' AS DateTime2), N'Create new Blog.', N'{"Id":0,"Name":"Blog 1","Description":"Description 1","CategoryIds":[1,2]}', N'Anonymus')
INSERT [dbo].[UseCaseLogs] ([Id], [Date], [UseCaseName], [Data], [Actor]) VALUES (6, CAST(N'2020-06-30T13:35:47.8708617' AS DateTime2), N'Create new Blog.', N'{"Id":0,"Name":"Blog 1","Description":"Description 1","CategoryIds":[1,2]}', N'nikola')
INSERT [dbo].[UseCaseLogs] ([Id], [Date], [UseCaseName], [Data], [Actor]) VALUES (7, CAST(N'2020-06-30T13:37:53.4984568' AS DateTime2), N'Create new Blog.', N'{"Id":0,"Name":"Blog 1","Description":"Description 1","CategoryIds":[1,2]}', N'nikola')
INSERT [dbo].[UseCaseLogs] ([Id], [Date], [UseCaseName], [Data], [Actor]) VALUES (8, CAST(N'2020-06-30T14:01:25.4661667' AS DateTime2), N'Delete user', N'6', N'Anonymus')
INSERT [dbo].[UseCaseLogs] ([Id], [Date], [UseCaseName], [Data], [Actor]) VALUES (9, CAST(N'2020-06-30T14:08:06.4510077' AS DateTime2), N'Delete user', N'6', N'Anonymus')
INSERT [dbo].[UseCaseLogs] ([Id], [Date], [UseCaseName], [Data], [Actor]) VALUES (10, CAST(N'2020-06-30T14:09:01.4063680' AS DateTime2), N'Delete user', N'6', N'laza')
INSERT [dbo].[UseCaseLogs] ([Id], [Date], [UseCaseName], [Data], [Actor]) VALUES (11, CAST(N'2020-06-30T14:09:28.9937692' AS DateTime2), N'Delete user', N'5', N'laza')
INSERT [dbo].[UseCaseLogs] ([Id], [Date], [UseCaseName], [Data], [Actor]) VALUES (12, CAST(N'2020-06-30T14:09:54.6652157' AS DateTime2), N'Delete user', N'9', N'Anonymus')
INSERT [dbo].[UseCaseLogs] ([Id], [Date], [UseCaseName], [Data], [Actor]) VALUES (13, CAST(N'2020-06-30T14:10:06.7139714' AS DateTime2), N'Delete user', N'9', N'laza')
INSERT [dbo].[UseCaseLogs] ([Id], [Date], [UseCaseName], [Data], [Actor]) VALUES (14, CAST(N'2020-06-30T14:28:21.2142914' AS DateTime2), N'Get users', N'{"FirstName":null,"PerPage":10,"Page":1}', N'laza')
INSERT [dbo].[UseCaseLogs] ([Id], [Date], [UseCaseName], [Data], [Actor]) VALUES (15, CAST(N'2020-06-30T14:28:38.4691329' AS DateTime2), N'Get users', N'{"FirstName":null,"PerPage":1,"Page":1}', N'laza')
INSERT [dbo].[UseCaseLogs] ([Id], [Date], [UseCaseName], [Data], [Actor]) VALUES (16, CAST(N'2020-06-30T14:29:01.6028415' AS DateTime2), N'Get users', N'{"FirstName":null,"PerPage":1,"Page":2}', N'laza')
INSERT [dbo].[UseCaseLogs] ([Id], [Date], [UseCaseName], [Data], [Actor]) VALUES (17, CAST(N'2020-06-30T14:29:05.6175322' AS DateTime2), N'Get users', N'{"FirstName":null,"PerPage":1,"Page":3}', N'laza')
INSERT [dbo].[UseCaseLogs] ([Id], [Date], [UseCaseName], [Data], [Actor]) VALUES (18, CAST(N'2020-06-30T14:29:17.6522292' AS DateTime2), N'Get users', N'{"FirstName":"branislav","PerPage":10,"Page":1}', N'laza')
INSERT [dbo].[UseCaseLogs] ([Id], [Date], [UseCaseName], [Data], [Actor]) VALUES (19, CAST(N'2020-06-30T14:29:24.0497840' AS DateTime2), N'Get users', N'{"FirstName":null,"PerPage":10,"Page":1}', N'laza')
INSERT [dbo].[UseCaseLogs] ([Id], [Date], [UseCaseName], [Data], [Actor]) VALUES (20, CAST(N'2020-06-30T14:56:20.6092282' AS DateTime2), N'Get users', N'{"FirstName":null,"PerPage":10,"Page":1}', N'laza')
INSERT [dbo].[UseCaseLogs] ([Id], [Date], [UseCaseName], [Data], [Actor]) VALUES (21, CAST(N'2020-06-30T14:58:02.8352708' AS DateTime2), N'Get users', N'{"FirstName":null,"PerPage":10,"Page":1}', N'laza')
INSERT [dbo].[UseCaseLogs] ([Id], [Date], [UseCaseName], [Data], [Actor]) VALUES (22, CAST(N'2020-06-30T15:00:52.7907345' AS DateTime2), N'Get users', N'{"FirstName":null,"PerPage":10,"Page":1}', N'laza')
INSERT [dbo].[UseCaseLogs] ([Id], [Date], [UseCaseName], [Data], [Actor]) VALUES (23, CAST(N'2020-06-30T15:01:00.0437564' AS DateTime2), N'Get One User', N'5', N'laza')
INSERT [dbo].[UseCaseLogs] ([Id], [Date], [UseCaseName], [Data], [Actor]) VALUES (24, CAST(N'2020-06-30T15:02:22.5568165' AS DateTime2), N'Get One User', N'5', N'laza')
INSERT [dbo].[UseCaseLogs] ([Id], [Date], [UseCaseName], [Data], [Actor]) VALUES (25, CAST(N'2020-06-30T15:57:19.6168085' AS DateTime2), N'Update user', N'{"FirstName":"Damnjan","LastName":"Askovic","Username":"damnjan","Email":"damnjan123@gmail.com"}', N'laza')
INSERT [dbo].[UseCaseLogs] ([Id], [Date], [UseCaseName], [Data], [Actor]) VALUES (26, CAST(N'2020-06-30T17:37:39.5697948' AS DateTime2), N'Create comment', N'{"Text":"Pozdrav"}', N'laza')
INSERT [dbo].[UseCaseLogs] ([Id], [Date], [UseCaseName], [Data], [Actor]) VALUES (27, CAST(N'2020-06-30T17:48:41.5366568' AS DateTime2), N'Create comment', N'{"Text":"Pozdrav 1"}', N'laza')
INSERT [dbo].[UseCaseLogs] ([Id], [Date], [UseCaseName], [Data], [Actor]) VALUES (28, CAST(N'2020-06-30T17:58:05.2703298' AS DateTime2), N'Delete comment', N'2', N'laza')
INSERT [dbo].[UseCaseLogs] ([Id], [Date], [UseCaseName], [Data], [Actor]) VALUES (29, CAST(N'2020-06-30T18:06:34.5752594' AS DateTime2), N'Update comment', N'{"Text":"Proba update"}', N'laza')
INSERT [dbo].[UseCaseLogs] ([Id], [Date], [UseCaseName], [Data], [Actor]) VALUES (30, CAST(N'2020-06-30T18:37:57.7138057' AS DateTime2), N'Display coments by blog.', N'5', N'laza')
INSERT [dbo].[UseCaseLogs] ([Id], [Date], [UseCaseName], [Data], [Actor]) VALUES (31, CAST(N'2020-06-30T18:39:54.6379501' AS DateTime2), N'Display coments by blog.', N'2', N'laza')
INSERT [dbo].[UseCaseLogs] ([Id], [Date], [UseCaseName], [Data], [Actor]) VALUES (32, CAST(N'2020-06-30T18:40:04.5949229' AS DateTime2), N'Display coments by blog.', N'1', N'laza')
INSERT [dbo].[UseCaseLogs] ([Id], [Date], [UseCaseName], [Data], [Actor]) VALUES (33, CAST(N'2020-06-30T19:05:37.7130799' AS DateTime2), N'Get Logs by search', N'{"UseCaseName":null,"PerPage":10,"Page":1}', N'laza')
INSERT [dbo].[UseCaseLogs] ([Id], [Date], [UseCaseName], [Data], [Actor]) VALUES (34, CAST(N'2020-06-30T19:05:53.2701830' AS DateTime2), N'Get Logs by search', N'{"UseCaseName":"delete","PerPage":10,"Page":1}', N'laza')
INSERT [dbo].[UseCaseLogs] ([Id], [Date], [UseCaseName], [Data], [Actor]) VALUES (35, CAST(N'2020-06-30T19:06:06.0980172' AS DateTime2), N'Get Logs by search', N'{"UseCaseName":"delete","PerPage":2,"Page":1}', N'laza')
INSERT [dbo].[UseCaseLogs] ([Id], [Date], [UseCaseName], [Data], [Actor]) VALUES (36, CAST(N'2020-06-30T19:06:17.0923080' AS DateTime2), N'Get Logs by search', N'{"UseCaseName":"delete","PerPage":2,"Page":2}', N'laza')
INSERT [dbo].[UseCaseLogs] ([Id], [Date], [UseCaseName], [Data], [Actor]) VALUES (37, CAST(N'2020-06-30T19:06:22.5236393' AS DateTime2), N'Get Logs by search', N'{"UseCaseName":"delete","PerPage":2,"Page":3}', N'laza')
INSERT [dbo].[UseCaseLogs] ([Id], [Date], [UseCaseName], [Data], [Actor]) VALUES (38, CAST(N'2020-06-30T19:06:25.4643364' AS DateTime2), N'Get Logs by search', N'{"UseCaseName":"delete","PerPage":2,"Page":4}', N'laza')
INSERT [dbo].[UseCaseLogs] ([Id], [Date], [UseCaseName], [Data], [Actor]) VALUES (39, CAST(N'2020-06-30T19:06:28.5929454' AS DateTime2), N'Get Logs by search', N'{"UseCaseName":"delete","PerPage":2,"Page":5}', N'laza')
INSERT [dbo].[UseCaseLogs] ([Id], [Date], [UseCaseName], [Data], [Actor]) VALUES (40, CAST(N'2020-07-01T07:27:31.8096586' AS DateTime2), N'User registration', N'{"FirstName":"Ognjen","LastName":"Askovic","Username":"ogi","Password":"sifra123","Email":"askovico@gmail.com"}', N'Anonymus')
INSERT [dbo].[UseCaseLogs] ([Id], [Date], [UseCaseName], [Data], [Actor]) VALUES (41, CAST(N'2020-07-01T07:27:57.6965508' AS DateTime2), N'User registration', N'{"FirstName":"Ognjen","LastName":"Askovic","Username":"ogi92","Password":"sifra123","Email":"askovico@gmail.com"}', N'Anonymus')
INSERT [dbo].[UseCaseLogs] ([Id], [Date], [UseCaseName], [Data], [Actor]) VALUES (42, CAST(N'2020-07-01T08:12:24.1392428' AS DateTime2), N'User registration', N'{"FirstName":"Mika","LastName":"Mikic","Username":"mika","Password":"sifra123","Email":"mika@gmail.com","UseCasesIds":[1,2,3]}', N'Anonymus')
INSERT [dbo].[UseCaseLogs] ([Id], [Date], [UseCaseName], [Data], [Actor]) VALUES (43, CAST(N'2020-07-01T08:20:06.5205566' AS DateTime2), N'User registration', N'{"FirstName":"Pera","LastName":"Peric","Username":"pera","Password":"sifra123","Email":"pera@gmail.com","UseCasesIds":[1,2,3]}', N'Anonymus')
INSERT [dbo].[UseCaseLogs] ([Id], [Date], [UseCaseName], [Data], [Actor]) VALUES (44, CAST(N'2020-07-01T08:20:49.3271345' AS DateTime2), N'User registration', N'{"FirstName":"Pera","LastName":"Peric","Username":"pera12","Password":"sifra123","Email":"pera@gmail.com","UseCasesIds":[1,2,3]}', N'Anonymus')
INSERT [dbo].[UseCaseLogs] ([Id], [Date], [UseCaseName], [Data], [Actor]) VALUES (45, CAST(N'2020-07-01T09:15:52.1721465' AS DateTime2), N'User registration', N'{"FirstName":"Pera","LastName":"Peric","Username":"pera12","Password":"sifra123","Email":"pera@gmail.com","UseCasesIds":[1,2,3]}', N'Anonymus')
INSERT [dbo].[UseCaseLogs] ([Id], [Date], [UseCaseName], [Data], [Actor]) VALUES (46, CAST(N'2020-07-01T09:16:02.8780237' AS DateTime2), N'User registration', N'{"FirstName":"Pera","LastName":"Peric","Username":"pera123","Password":"sifra123","Email":"pera@gmail.com","UseCasesIds":[1,2,3]}', N'Anonymus')
INSERT [dbo].[UseCaseLogs] ([Id], [Date], [UseCaseName], [Data], [Actor]) VALUES (47, CAST(N'2020-07-01T11:20:39.3881310' AS DateTime2), N'Create new Blog.', N'{"Id":0,"Name":"Novi Blog","Description":"Tekstualno","CategoryIds":[1,2]}', N'laza')
INSERT [dbo].[UseCaseLogs] ([Id], [Date], [UseCaseName], [Data], [Actor]) VALUES (48, CAST(N'2020-07-01T11:54:23.3042812' AS DateTime2), N'Blog search', N'{"Name":null,"PerPage":10,"Page":1}', N'Anonymus')
INSERT [dbo].[UseCaseLogs] ([Id], [Date], [UseCaseName], [Data], [Actor]) VALUES (49, CAST(N'2020-07-01T12:09:26.4600058' AS DateTime2), N'Create new Blog.', N'{"Id":0,"Name":"Blog novi","Description":"Opis novi","CategoryIds":[5,6,7]}', N'laza')
INSERT [dbo].[UseCaseLogs] ([Id], [Date], [UseCaseName], [Data], [Actor]) VALUES (50, CAST(N'2020-07-01T12:12:37.0158295' AS DateTime2), N'Create new Blog.', N'{"Id":0,"Name":"Blog novi","Description":"Opis novi","CategoryIds":[5,6,7]}', N'laza')
INSERT [dbo].[UseCaseLogs] ([Id], [Date], [UseCaseName], [Data], [Actor]) VALUES (51, CAST(N'2020-07-01T12:14:02.7286093' AS DateTime2), N'Create new Blog.', N'{"Id":0,"Name":"Blog novi","Description":"Opis novi","CategoryIds":[5]}', N'laza')
INSERT [dbo].[UseCaseLogs] ([Id], [Date], [UseCaseName], [Data], [Actor]) VALUES (52, CAST(N'2020-07-01T12:46:51.6143358' AS DateTime2), N'Create new Blog.', N'{"Id":0,"Name":"Blog novi sa slikom","Description":"Opis novog bloga sa slikom","CategoryIds":[2],"ImageDto":null}', N'laza')
INSERT [dbo].[UseCaseLogs] ([Id], [Date], [UseCaseName], [Data], [Actor]) VALUES (53, CAST(N'2020-07-01T12:48:16.6545769' AS DateTime2), N'Create new Blog.', N'{"Id":0,"Name":"Blog novi sa slikom","Description":"Opis novog bloga sa slikom","CategoryIds":[2],"ImageDto":null}', N'laza')
INSERT [dbo].[UseCaseLogs] ([Id], [Date], [UseCaseName], [Data], [Actor]) VALUES (54, CAST(N'2020-07-01T14:24:17.8776788' AS DateTime2), N'Blog search', N'{"Name":null,"PerPage":10,"Page":1}', N'Anonymus')
INSERT [dbo].[UseCaseLogs] ([Id], [Date], [UseCaseName], [Data], [Actor]) VALUES (55, CAST(N'2020-07-01T14:28:23.2044762' AS DateTime2), N'Display one blog.', N'5', N'Anonymus')
INSERT [dbo].[UseCaseLogs] ([Id], [Date], [UseCaseName], [Data], [Actor]) VALUES (56, CAST(N'2020-07-01T15:06:53.7769712' AS DateTime2), N'Create new Blog.', N'{"Id":0,"Name":"Warmer","Description":"Dark Light is the fifth studio album by Finnish gothic rock band HIM.","CategoryIds":[1,2,3],"Images":null}', N'laza')
INSERT [dbo].[UseCaseLogs] ([Id], [Date], [UseCaseName], [Data], [Actor]) VALUES (57, CAST(N'2020-07-01T15:07:26.3732611' AS DateTime2), N'Create new Blog.', N'{"Id":0,"Name":"Indie","Description":"unnel of Love is the eighth studio album by Bruce Springsteen, released on October 9, 1987.","CategoryIds":[1,2],"Images":null}', N'laza')
INSERT [dbo].[UseCaseLogs] ([Id], [Date], [UseCaseName], [Data], [Actor]) VALUES (58, CAST(N'2020-07-01T15:08:19.7184483' AS DateTime2), N'Create new Blog.', N'{"Id":0,"Name":"Personality","Description":"Born to Run is the third studio album by American singer-songwriter Bruce Springsteen.","CategoryIds":[3,4,5],"Images":null}', N'laza')
INSERT [dbo].[UseCaseLogs] ([Id], [Date], [UseCaseName], [Data], [Actor]) VALUES (59, CAST(N'2020-07-01T15:08:45.0468499' AS DateTime2), N'Create new Blog.', N'{"Id":0,"Name":"Waterwall","Description":"The Wall is the eleventh studio album by English rock band Pink Floyd.","CategoryIds":[5],"Images":null}', N'laza')
INSERT [dbo].[UseCaseLogs] ([Id], [Date], [UseCaseName], [Data], [Actor]) VALUES (60, CAST(N'2020-07-01T15:09:07.6013563' AS DateTime2), N'Create new Blog.', N'{"Id":0,"Name":"Hello","Description":"Dark Light is the fifth studio album by Finnish gothic rock band HIM.","CategoryIds":[5],"Images":null}', N'laza')
INSERT [dbo].[UseCaseLogs] ([Id], [Date], [UseCaseName], [Data], [Actor]) VALUES (61, CAST(N'2020-07-01T15:09:31.1261553' AS DateTime2), N'Create new Blog.', N'{"Id":0,"Name":"Sweet Dreams","Description":"Sweet Dreams (Are Made of This) is a song by the British new wave music duo Eurythmics.","CategoryIds":[1],"Images":null}', N'laza')
INSERT [dbo].[UseCaseLogs] ([Id], [Date], [UseCaseName], [Data], [Actor]) VALUES (62, CAST(N'2020-07-01T15:09:58.6118806' AS DateTime2), N'Create new Blog.', N'{"Id":0,"Name":"Sweet Sounds","Description":"Sweet Dreams (Are Made of This) is a song by the British new wave music duo Eurythmics.","CategoryIds":[3],"Images":null}', N'laza')
INSERT [dbo].[UseCaseLogs] ([Id], [Date], [UseCaseName], [Data], [Actor]) VALUES (63, CAST(N'2020-07-01T15:10:58.6730678' AS DateTime2), N'Create new Blog.', N'{"Id":0,"Name":"La Casa","Description":"Since Let It Be was The Beatles last album, it made an appropriate statement about leaving problems.","CategoryIds":[3,4],"Images":null}', N'laza')
INSERT [dbo].[UseCaseLogs] ([Id], [Date], [UseCaseName], [Data], [Actor]) VALUES (64, CAST(N'2020-07-01T15:12:33.1318805' AS DateTime2), N'Create new Blog.', N'{"Id":0,"Name":"Simply the Best","Description":"Dark Light is the fifth studio album by Finnish gothic rock band HIM.","CategoryIds":[1,2],"Images":null}', N'laza')
INSERT [dbo].[UseCaseLogs] ([Id], [Date], [UseCaseName], [Data], [Actor]) VALUES (65, CAST(N'2020-07-01T15:13:37.8608226' AS DateTime2), N'Create new Blog.', N'{"Id":0,"Name":"CoolJazz","Description":"Tunnel of Love is the eighth studio album by Bruce Springsteen, released on October 9, 1987.","CategoryIds":[4,5],"Images":null}', N'laza')
INSERT [dbo].[UseCaseLogs] ([Id], [Date], [UseCaseName], [Data], [Actor]) VALUES (66, CAST(N'2020-07-01T15:13:55.4843007' AS DateTime2), N'Create new Blog.', N'{"Id":0,"Name":"Restricted","Description":"The Chronic is the debut studio album by American hip hop recording artist Dr. Dre.","CategoryIds":[1,5],"Images":null}', N'laza')
INSERT [dbo].[UseCaseLogs] ([Id], [Date], [UseCaseName], [Data], [Actor]) VALUES (67, CAST(N'2020-07-01T15:14:13.1728886' AS DateTime2), N'Create new Blog.', N'{"Id":0,"Name":"Domination","Description":"The Best (often called Simply the Best) is a song originally recorded by Bonnie Tyler on her 1988.","CategoryIds":[2,5],"Images":null}', N'laza')
INSERT [dbo].[UseCaseLogs] ([Id], [Date], [UseCaseName], [Data], [Actor]) VALUES (68, CAST(N'2020-07-01T15:14:39.2089297' AS DateTime2), N'Create new Blog.', N'{"Id":0,"Name":"Personality","Description":"Born to Run is the third studio album by American singer-songwriter Bruce Springsteen.","CategoryIds":[2],"Images":null}', N'laza')
INSERT [dbo].[UseCaseLogs] ([Id], [Date], [UseCaseName], [Data], [Actor]) VALUES (69, CAST(N'2020-07-01T15:16:12.6178378' AS DateTime2), N'Create new Blog.', N'{"Id":0,"Name":"Sweet Dreams","Description":"The Wall is the eleventh studio album by English rock band Pink Floyd.","CategoryIds":[4],"Images":null}', N'laza')
INSERT [dbo].[UseCaseLogs] ([Id], [Date], [UseCaseName], [Data], [Actor]) VALUES (70, CAST(N'2020-07-01T15:16:31.4799667' AS DateTime2), N'Create new Blog.', N'{"Id":0,"Name":"Domination","Description":"The Best (often called Simply the Best) is a song originally recorded by Bonnie Tyler.","CategoryIds":[1],"Images":null}', N'laza')
INSERT [dbo].[UseCaseLogs] ([Id], [Date], [UseCaseName], [Data], [Actor]) VALUES (71, CAST(N'2020-07-01T15:17:11.9968479' AS DateTime2), N'Create new Blog.', N'{"Id":0,"Name":"Emotions Notes","Description":"The Chronic is the debut studio album by American hip hop recording artist Dr. Dre.","CategoryIds":[5],"Images":null}', N'laza')
INSERT [dbo].[UseCaseLogs] ([Id], [Date], [UseCaseName], [Data], [Actor]) VALUES (72, CAST(N'2020-07-01T15:17:34.5476578' AS DateTime2), N'Create new Blog.', N'{"Id":0,"Name":"La Casa","Description":"Dark Light is the fifth studio album by Finnish gothic rock band HIM.","CategoryIds":[3],"Images":null}', N'laza')
INSERT [dbo].[UseCaseLogs] ([Id], [Date], [UseCaseName], [Data], [Actor]) VALUES (73, CAST(N'2020-07-01T15:25:24.1160850' AS DateTime2), N'User registration', N'{"FirstName":"Jovan","LastName":"Jovanovic","Username":"joca2","Password":"sifra123","Email":"joca@gmail.com","UseCasesIds":[5,7,10,11,17,20]}', N'laza')
INSERT [dbo].[UseCaseLogs] ([Id], [Date], [UseCaseName], [Data], [Actor]) VALUES (74, CAST(N'2020-07-01T15:26:02.0682510' AS DateTime2), N'User registration', N'{"FirstName":"Marko","LastName":"Markovic","Username":"mare1","Password":"sifra123","Email":"mare@gmail.com","UseCasesIds":[5,7,10,11,17,20]}', N'laza')
INSERT [dbo].[UseCaseLogs] ([Id], [Date], [UseCaseName], [Data], [Actor]) VALUES (75, CAST(N'2020-07-01T15:26:47.1648559' AS DateTime2), N'User registration', N'{"FirstName":"Filip","LastName":"Filipovic","Username":"fica92","Password":"pass12","Email":"fica@gmail.com","UseCasesIds":[5,7,10,11,17,20]}', N'laza')
INSERT [dbo].[UseCaseLogs] ([Id], [Date], [UseCaseName], [Data], [Actor]) VALUES (76, CAST(N'2020-07-01T15:27:14.4486698' AS DateTime2), N'User registration', N'{"FirstName":"Mirko","LastName":"Mirkovic","Username":"mire28","Password":"pass123","Email":"mire@gmail.com","UseCasesIds":[5,7,10,11,17,20]}', N'laza')
INSERT [dbo].[UseCaseLogs] ([Id], [Date], [UseCaseName], [Data], [Actor]) VALUES (77, CAST(N'2020-07-01T15:27:29.5380574' AS DateTime2), N'User registration', N'{"FirstName":"Janko","LastName":"Jankovic","Username":"janko123","Password":"pass123","Email":"janko@gmail.com","UseCasesIds":[5,7,10,11,17,20]}', N'laza')
INSERT [dbo].[UseCaseLogs] ([Id], [Date], [UseCaseName], [Data], [Actor]) VALUES (78, CAST(N'2020-07-01T15:32:13.7770169' AS DateTime2), N'Create comment', N'{"Text":"Zanimljiv blog"}', N'fica92')
INSERT [dbo].[UseCaseLogs] ([Id], [Date], [UseCaseName], [Data], [Actor]) VALUES (79, CAST(N'2020-07-01T15:33:13.4314902' AS DateTime2), N'Create comment', N'{"Text":"Umetnost je cudo"}', N'fica92')
SET IDENTITY_INSERT [dbo].[UseCaseLogs] OFF
GO
SET IDENTITY_INSERT [dbo].[Users] ON 

INSERT [dbo].[Users] ([Id], [CreatedAt], [ModifiedAt], [IsDeleted], [DeletedAt], [IsActive], [FirstName], [LastName], [UserName], [Password], [Email]) VALUES (5, CAST(N'2020-06-29T19:01:46.5455800' AS DateTime2), CAST(N'2020-06-30T17:57:19.7944277' AS DateTime2), 0, CAST(N'2020-06-30T16:09:29.0077227' AS DateTime2), 1, N'Damnjan', N'Askovic', N'damnjan', N'sifra123', N'damnjan123@gmail.com')
INSERT [dbo].[Users] ([Id], [CreatedAt], [ModifiedAt], [IsDeleted], [DeletedAt], [IsActive], [FirstName], [LastName], [UserName], [Password], [Email]) VALUES (6, CAST(N'2020-06-29T19:01:46.5455800' AS DateTime2), NULL, 0, NULL, 1, N'Lazar', N'Lazarevic', N'laza', N'sifra123', NULL)
INSERT [dbo].[Users] ([Id], [CreatedAt], [ModifiedAt], [IsDeleted], [DeletedAt], [IsActive], [FirstName], [LastName], [UserName], [Password], [Email]) VALUES (7, CAST(N'2020-06-30T13:35:37.0979474' AS DateTime2), NULL, 0, NULL, 1, N'Petar', N'Peric', N'pera', N'sifra123', N'pera@gmail.com')
INSERT [dbo].[Users] ([Id], [CreatedAt], [ModifiedAt], [IsDeleted], [DeletedAt], [IsActive], [FirstName], [LastName], [UserName], [Password], [Email]) VALUES (8, CAST(N'2020-06-30T14:00:51.0005480' AS DateTime2), NULL, 0, NULL, 1, N'Branislav', N'Ristivojevic', N'banega', N'sifra123', N'baneris95@gmail.com')
INSERT [dbo].[Users] ([Id], [CreatedAt], [ModifiedAt], [IsDeleted], [DeletedAt], [IsActive], [FirstName], [LastName], [UserName], [Password], [Email]) VALUES (9, CAST(N'2020-06-30T14:09:13.0318509' AS DateTime2), CAST(N'2020-06-30T16:10:06.7262935' AS DateTime2), 0, CAST(N'2020-06-30T16:10:06.7260943' AS DateTime2), 1, N'Branislav', N'Ristivojevic', N'bane', N'sifra123', N'baneris95@gmail.com')
INSERT [dbo].[Users] ([Id], [CreatedAt], [ModifiedAt], [IsDeleted], [DeletedAt], [IsActive], [FirstName], [LastName], [UserName], [Password], [Email]) VALUES (10, CAST(N'2020-07-01T09:27:57.7328150' AS DateTime2), NULL, 0, NULL, 1, N'Ognjen', N'Askovic', N'ogi92', N'sifra123', N'askovico@gmail.com')
INSERT [dbo].[Users] ([Id], [CreatedAt], [ModifiedAt], [IsDeleted], [DeletedAt], [IsActive], [FirstName], [LastName], [UserName], [Password], [Email]) VALUES (11, CAST(N'2020-07-01T10:12:25.3471596' AS DateTime2), NULL, 0, NULL, 1, N'Mika', N'Mikic', N'mika', N'sifra123', N'mika@gmail.com')
INSERT [dbo].[Users] ([Id], [CreatedAt], [ModifiedAt], [IsDeleted], [DeletedAt], [IsActive], [FirstName], [LastName], [UserName], [Password], [Email]) VALUES (12, CAST(N'2020-07-01T10:20:49.3802467' AS DateTime2), NULL, 0, NULL, 1, N'Pera', N'Peric', N'pera12', N'sifra123', N'pera@gmail.com')
INSERT [dbo].[Users] ([Id], [CreatedAt], [ModifiedAt], [IsDeleted], [DeletedAt], [IsActive], [FirstName], [LastName], [UserName], [Password], [Email]) VALUES (13, CAST(N'2020-07-01T17:25:25.2683775' AS DateTime2), NULL, 0, NULL, 1, N'Jovan', N'Jovanovic', N'joca2', N'sifra123', N'joca@gmail.com')
INSERT [dbo].[Users] ([Id], [CreatedAt], [ModifiedAt], [IsDeleted], [DeletedAt], [IsActive], [FirstName], [LastName], [UserName], [Password], [Email]) VALUES (14, CAST(N'2020-07-01T17:26:02.0781363' AS DateTime2), NULL, 0, NULL, 1, N'Marko', N'Markovic', N'mare1', N'sifra123', N'mare@gmail.com')
INSERT [dbo].[Users] ([Id], [CreatedAt], [ModifiedAt], [IsDeleted], [DeletedAt], [IsActive], [FirstName], [LastName], [UserName], [Password], [Email]) VALUES (15, CAST(N'2020-07-01T17:26:47.1770074' AS DateTime2), NULL, 0, NULL, 1, N'Filip', N'Filipovic', N'fica92', N'pass12', N'fica@gmail.com')
INSERT [dbo].[Users] ([Id], [CreatedAt], [ModifiedAt], [IsDeleted], [DeletedAt], [IsActive], [FirstName], [LastName], [UserName], [Password], [Email]) VALUES (16, CAST(N'2020-07-01T17:27:14.4612778' AS DateTime2), NULL, 0, NULL, 1, N'Mirko', N'Mirkovic', N'mire28', N'pass123', N'mire@gmail.com')
INSERT [dbo].[Users] ([Id], [CreatedAt], [ModifiedAt], [IsDeleted], [DeletedAt], [IsActive], [FirstName], [LastName], [UserName], [Password], [Email]) VALUES (17, CAST(N'2020-07-01T17:27:29.5484185' AS DateTime2), NULL, 0, NULL, 1, N'Janko', N'Jankovic', N'janko123', N'pass123', N'janko@gmail.com')
SET IDENTITY_INSERT [dbo].[Users] OFF
GO
SET IDENTITY_INSERT [dbo].[UserUseCase] ON 

INSERT [dbo].[UserUseCase] ([Id], [UserId], [UserUseCaseId]) VALUES (4, 5, 5)
INSERT [dbo].[UserUseCase] ([Id], [UserId], [UserUseCaseId]) VALUES (5, 6, 1)
INSERT [dbo].[UserUseCase] ([Id], [UserId], [UserUseCaseId]) VALUES (6, 6, 2)
INSERT [dbo].[UserUseCase] ([Id], [UserId], [UserUseCaseId]) VALUES (7, 5, 7)
INSERT [dbo].[UserUseCase] ([Id], [UserId], [UserUseCaseId]) VALUES (8, 6, 3)
INSERT [dbo].[UserUseCase] ([Id], [UserId], [UserUseCaseId]) VALUES (9, 6, 4)
INSERT [dbo].[UserUseCase] ([Id], [UserId], [UserUseCaseId]) VALUES (10, 6, 5)
INSERT [dbo].[UserUseCase] ([Id], [UserId], [UserUseCaseId]) VALUES (11, 6, 6)
INSERT [dbo].[UserUseCase] ([Id], [UserId], [UserUseCaseId]) VALUES (12, 6, 7)
INSERT [dbo].[UserUseCase] ([Id], [UserId], [UserUseCaseId]) VALUES (13, 6, 8)
INSERT [dbo].[UserUseCase] ([Id], [UserId], [UserUseCaseId]) VALUES (14, 6, 9)
INSERT [dbo].[UserUseCase] ([Id], [UserId], [UserUseCaseId]) VALUES (15, 6, 10)
INSERT [dbo].[UserUseCase] ([Id], [UserId], [UserUseCaseId]) VALUES (16, 6, 11)
INSERT [dbo].[UserUseCase] ([Id], [UserId], [UserUseCaseId]) VALUES (17, 6, 12)
INSERT [dbo].[UserUseCase] ([Id], [UserId], [UserUseCaseId]) VALUES (18, 6, 13)
INSERT [dbo].[UserUseCase] ([Id], [UserId], [UserUseCaseId]) VALUES (19, 6, 14)
INSERT [dbo].[UserUseCase] ([Id], [UserId], [UserUseCaseId]) VALUES (20, 6, 15)
INSERT [dbo].[UserUseCase] ([Id], [UserId], [UserUseCaseId]) VALUES (21, 6, 16)
INSERT [dbo].[UserUseCase] ([Id], [UserId], [UserUseCaseId]) VALUES (22, 6, 17)
INSERT [dbo].[UserUseCase] ([Id], [UserId], [UserUseCaseId]) VALUES (23, 6, 18)
INSERT [dbo].[UserUseCase] ([Id], [UserId], [UserUseCaseId]) VALUES (24, 6, 19)
INSERT [dbo].[UserUseCase] ([Id], [UserId], [UserUseCaseId]) VALUES (25, 6, 20)
INSERT [dbo].[UserUseCase] ([Id], [UserId], [UserUseCaseId]) VALUES (26, 6, 21)
INSERT [dbo].[UserUseCase] ([Id], [UserId], [UserUseCaseId]) VALUES (27, 12, 1)
INSERT [dbo].[UserUseCase] ([Id], [UserId], [UserUseCaseId]) VALUES (28, 12, 2)
INSERT [dbo].[UserUseCase] ([Id], [UserId], [UserUseCaseId]) VALUES (29, 12, 3)
INSERT [dbo].[UserUseCase] ([Id], [UserId], [UserUseCaseId]) VALUES (30, 13, 5)
INSERT [dbo].[UserUseCase] ([Id], [UserId], [UserUseCaseId]) VALUES (31, 13, 7)
INSERT [dbo].[UserUseCase] ([Id], [UserId], [UserUseCaseId]) VALUES (32, 13, 10)
INSERT [dbo].[UserUseCase] ([Id], [UserId], [UserUseCaseId]) VALUES (33, 13, 11)
INSERT [dbo].[UserUseCase] ([Id], [UserId], [UserUseCaseId]) VALUES (34, 13, 17)
INSERT [dbo].[UserUseCase] ([Id], [UserId], [UserUseCaseId]) VALUES (35, 13, 20)
INSERT [dbo].[UserUseCase] ([Id], [UserId], [UserUseCaseId]) VALUES (36, 14, 5)
INSERT [dbo].[UserUseCase] ([Id], [UserId], [UserUseCaseId]) VALUES (37, 14, 7)
INSERT [dbo].[UserUseCase] ([Id], [UserId], [UserUseCaseId]) VALUES (38, 14, 10)
INSERT [dbo].[UserUseCase] ([Id], [UserId], [UserUseCaseId]) VALUES (39, 14, 11)
INSERT [dbo].[UserUseCase] ([Id], [UserId], [UserUseCaseId]) VALUES (40, 14, 17)
INSERT [dbo].[UserUseCase] ([Id], [UserId], [UserUseCaseId]) VALUES (41, 14, 20)
INSERT [dbo].[UserUseCase] ([Id], [UserId], [UserUseCaseId]) VALUES (42, 15, 5)
INSERT [dbo].[UserUseCase] ([Id], [UserId], [UserUseCaseId]) VALUES (43, 15, 7)
INSERT [dbo].[UserUseCase] ([Id], [UserId], [UserUseCaseId]) VALUES (44, 15, 10)
INSERT [dbo].[UserUseCase] ([Id], [UserId], [UserUseCaseId]) VALUES (45, 15, 11)
INSERT [dbo].[UserUseCase] ([Id], [UserId], [UserUseCaseId]) VALUES (46, 15, 17)
INSERT [dbo].[UserUseCase] ([Id], [UserId], [UserUseCaseId]) VALUES (47, 15, 20)
INSERT [dbo].[UserUseCase] ([Id], [UserId], [UserUseCaseId]) VALUES (48, 16, 5)
INSERT [dbo].[UserUseCase] ([Id], [UserId], [UserUseCaseId]) VALUES (49, 16, 7)
INSERT [dbo].[UserUseCase] ([Id], [UserId], [UserUseCaseId]) VALUES (50, 16, 10)
INSERT [dbo].[UserUseCase] ([Id], [UserId], [UserUseCaseId]) VALUES (51, 16, 11)
INSERT [dbo].[UserUseCase] ([Id], [UserId], [UserUseCaseId]) VALUES (52, 16, 17)
INSERT [dbo].[UserUseCase] ([Id], [UserId], [UserUseCaseId]) VALUES (53, 16, 20)
INSERT [dbo].[UserUseCase] ([Id], [UserId], [UserUseCaseId]) VALUES (54, 17, 5)
INSERT [dbo].[UserUseCase] ([Id], [UserId], [UserUseCaseId]) VALUES (55, 17, 7)
INSERT [dbo].[UserUseCase] ([Id], [UserId], [UserUseCaseId]) VALUES (56, 17, 10)
INSERT [dbo].[UserUseCase] ([Id], [UserId], [UserUseCaseId]) VALUES (57, 17, 11)
INSERT [dbo].[UserUseCase] ([Id], [UserId], [UserUseCaseId]) VALUES (58, 17, 17)
INSERT [dbo].[UserUseCase] ([Id], [UserId], [UserUseCaseId]) VALUES (59, 17, 20)
SET IDENTITY_INSERT [dbo].[UserUseCase] OFF
GO
/****** Object:  Index [IX_BlogCategory_CategoryId]    Script Date: 7/1/2020 5:39:53 PM ******/
CREATE NONCLUSTERED INDEX [IX_BlogCategory_CategoryId] ON [dbo].[BlogCategory]
(
	[CategoryId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_Blogs_Id]    Script Date: 7/1/2020 5:39:53 PM ******/
CREATE UNIQUE NONCLUSTERED INDEX [IX_Blogs_Id] ON [dbo].[Blogs]
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_Blogs_UserId]    Script Date: 7/1/2020 5:39:53 PM ******/
CREATE NONCLUSTERED INDEX [IX_Blogs_UserId] ON [dbo].[Blogs]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_Categories_Id]    Script Date: 7/1/2020 5:39:53 PM ******/
CREATE UNIQUE NONCLUSTERED INDEX [IX_Categories_Id] ON [dbo].[Categories]
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_Comments_BlogId]    Script Date: 7/1/2020 5:39:53 PM ******/
CREATE NONCLUSTERED INDEX [IX_Comments_BlogId] ON [dbo].[Comments]
(
	[BlogId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_Comments_UserId]    Script Date: 7/1/2020 5:39:53 PM ******/
CREATE NONCLUSTERED INDEX [IX_Comments_UserId] ON [dbo].[Comments]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_Pictures_BlogId]    Script Date: 7/1/2020 5:39:53 PM ******/
CREATE NONCLUSTERED INDEX [IX_Pictures_BlogId] ON [dbo].[Pictures]
(
	[BlogId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_Users_Id]    Script Date: 7/1/2020 5:39:53 PM ******/
CREATE UNIQUE NONCLUSTERED INDEX [IX_Users_Id] ON [dbo].[Users]
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_UserUseCase_UserId]    Script Date: 7/1/2020 5:39:53 PM ******/
CREATE NONCLUSTERED INDEX [IX_UserUseCase_UserId] ON [dbo].[UserUseCase]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Blogs] ADD  DEFAULT ((0)) FOR [UserId]
GO
ALTER TABLE [dbo].[Categories] ADD  DEFAULT ('0001-01-01T00:00:00.0000000') FOR [CreatedAt]
GO
ALTER TABLE [dbo].[Pictures] ADD  DEFAULT ((0)) FOR [BlogId]
GO
ALTER TABLE [dbo].[BlogCategory]  WITH CHECK ADD  CONSTRAINT [FK_BlogCategory_Blogs_BlogId] FOREIGN KEY([BlogId])
REFERENCES [dbo].[Blogs] ([Id])
GO
ALTER TABLE [dbo].[BlogCategory] CHECK CONSTRAINT [FK_BlogCategory_Blogs_BlogId]
GO
ALTER TABLE [dbo].[BlogCategory]  WITH CHECK ADD  CONSTRAINT [FK_BlogCategory_Categories_CategoryId] FOREIGN KEY([CategoryId])
REFERENCES [dbo].[Categories] ([Id])
GO
ALTER TABLE [dbo].[BlogCategory] CHECK CONSTRAINT [FK_BlogCategory_Categories_CategoryId]
GO
ALTER TABLE [dbo].[Blogs]  WITH CHECK ADD  CONSTRAINT [FK_Blogs_Users_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[Users] ([Id])
GO
ALTER TABLE [dbo].[Blogs] CHECK CONSTRAINT [FK_Blogs_Users_UserId]
GO
ALTER TABLE [dbo].[Comments]  WITH CHECK ADD  CONSTRAINT [FK_Comments_Blogs_BlogId] FOREIGN KEY([BlogId])
REFERENCES [dbo].[Blogs] ([Id])
GO
ALTER TABLE [dbo].[Comments] CHECK CONSTRAINT [FK_Comments_Blogs_BlogId]
GO
ALTER TABLE [dbo].[Comments]  WITH CHECK ADD  CONSTRAINT [FK_Comments_Users_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[Users] ([Id])
GO
ALTER TABLE [dbo].[Comments] CHECK CONSTRAINT [FK_Comments_Users_UserId]
GO
ALTER TABLE [dbo].[Pictures]  WITH CHECK ADD  CONSTRAINT [FK_Pictures_Blogs_BlogId] FOREIGN KEY([BlogId])
REFERENCES [dbo].[Blogs] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Pictures] CHECK CONSTRAINT [FK_Pictures_Blogs_BlogId]
GO
ALTER TABLE [dbo].[UserUseCase]  WITH CHECK ADD  CONSTRAINT [FK_UserUseCase_Users_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[Users] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[UserUseCase] CHECK CONSTRAINT [FK_UserUseCase_Users_UserId]
GO
USE [master]
GO
ALTER DATABASE [ProbaAsp] SET  READ_WRITE 
GO
