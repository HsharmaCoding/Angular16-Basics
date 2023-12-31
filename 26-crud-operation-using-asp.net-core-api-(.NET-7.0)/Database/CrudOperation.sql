USE [master]
GO
/****** Object:  Database [CrudOperation]    Script Date: 11/05/2023 16:24:57 ******/
CREATE DATABASE [CrudOperation] ON  PRIMARY 
( NAME = N'CrudOperation', FILENAME = N'C:\Program Files (x86)\Microsoft SQL Server\MSSQL10_50.SQLEXPRESS\MSSQL\DATA\CrudOperation.mdf' , SIZE = 2304KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'CrudOperation_log', FILENAME = N'C:\Program Files (x86)\Microsoft SQL Server\MSSQL10_50.SQLEXPRESS\MSSQL\DATA\CrudOperation_log.LDF' , SIZE = 768KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [CrudOperation] SET COMPATIBILITY_LEVEL = 100
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [CrudOperation].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [CrudOperation] SET ANSI_NULL_DEFAULT OFF
GO
ALTER DATABASE [CrudOperation] SET ANSI_NULLS OFF
GO
ALTER DATABASE [CrudOperation] SET ANSI_PADDING OFF
GO
ALTER DATABASE [CrudOperation] SET ANSI_WARNINGS OFF
GO
ALTER DATABASE [CrudOperation] SET ARITHABORT OFF
GO
ALTER DATABASE [CrudOperation] SET AUTO_CLOSE ON
GO
ALTER DATABASE [CrudOperation] SET AUTO_CREATE_STATISTICS ON
GO
ALTER DATABASE [CrudOperation] SET AUTO_SHRINK OFF
GO
ALTER DATABASE [CrudOperation] SET AUTO_UPDATE_STATISTICS ON
GO
ALTER DATABASE [CrudOperation] SET CURSOR_CLOSE_ON_COMMIT OFF
GO
ALTER DATABASE [CrudOperation] SET CURSOR_DEFAULT  GLOBAL
GO
ALTER DATABASE [CrudOperation] SET CONCAT_NULL_YIELDS_NULL OFF
GO
ALTER DATABASE [CrudOperation] SET NUMERIC_ROUNDABORT OFF
GO
ALTER DATABASE [CrudOperation] SET QUOTED_IDENTIFIER OFF
GO
ALTER DATABASE [CrudOperation] SET RECURSIVE_TRIGGERS OFF
GO
ALTER DATABASE [CrudOperation] SET  ENABLE_BROKER
GO
ALTER DATABASE [CrudOperation] SET AUTO_UPDATE_STATISTICS_ASYNC OFF
GO
ALTER DATABASE [CrudOperation] SET DATE_CORRELATION_OPTIMIZATION OFF
GO
ALTER DATABASE [CrudOperation] SET TRUSTWORTHY OFF
GO
ALTER DATABASE [CrudOperation] SET ALLOW_SNAPSHOT_ISOLATION OFF
GO
ALTER DATABASE [CrudOperation] SET PARAMETERIZATION SIMPLE
GO
ALTER DATABASE [CrudOperation] SET READ_COMMITTED_SNAPSHOT ON
GO
ALTER DATABASE [CrudOperation] SET HONOR_BROKER_PRIORITY OFF
GO
ALTER DATABASE [CrudOperation] SET  READ_WRITE
GO
ALTER DATABASE [CrudOperation] SET RECOVERY SIMPLE
GO
ALTER DATABASE [CrudOperation] SET  MULTI_USER
GO
ALTER DATABASE [CrudOperation] SET PAGE_VERIFY CHECKSUM
GO
ALTER DATABASE [CrudOperation] SET DB_CHAINING OFF
GO
USE [CrudOperation]
GO
/****** Object:  Table [dbo].[AspNetUsers]    Script Date: 11/05/2023 16:24:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUsers](
	[Id] [nvarchar](450) NOT NULL,
	[FirstName] [nvarchar](max) NOT NULL,
	[LastName] [nvarchar](max) NOT NULL,
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
 CONSTRAINT [PK_AspNetUsers] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [EmailIndex] ON [dbo].[AspNetUsers] 
(
	[NormalizedEmail] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [UserNameIndex] ON [dbo].[AspNetUsers] 
(
	[NormalizedUserName] ASC
)
WHERE ([NormalizedUserName] IS NOT NULL)
WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
INSERT [dbo].[AspNetUsers] ([Id], [FirstName], [LastName], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'1707518b-47d1-46af-9ddc-387a51cda603', N'Ajit', N'Pawar', N'reader102@example.com', N'READER102@EXAMPLE.COM', N'reader102@example.com', N'READER102@EXAMPLE.COM', 0, N'AQAAAAIAAYagAAAAEFI6ZyDf89D0CipNHTsMj4+2vG7T3N42577ZmHYGa8s2QA5mvkgj5NG+CxYJJ6wi1Q==', N'RCPFBUTMBBTFUXOMJ73GZTO4PDBN4P22', N'64c8cf06-f00c-49eb-9cbb-d855cd8e2977', NULL, 0, 0, NULL, 1, 0)
INSERT [dbo].[AspNetUsers] ([Id], [FirstName], [LastName], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'24c6ece3-5957-4a86-a8c4-f4632780179c', N'string', N'string', N'user@example.com', N'USER@EXAMPLE.COM', N'user@example.com', N'USER@EXAMPLE.COM', 0, N'AQAAAAIAAYagAAAAEBXF56xKB/xoWX4sTtXXSEI8jPo7d3c6W1+CvJI7P9JwX6KHVjwQ7HCPFPkmz9SJYg==', N'TCM4FSPXMFFASVQUR646TJLOMU4CS2QD', N'ed40d244-38e1-4bb1-8c3b-450f93de7f37', NULL, 0, 0, NULL, 1, 0)
INSERT [dbo].[AspNetUsers] ([Id], [FirstName], [LastName], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'36ddf85b-4a4f-41d3-96c2-46aff5ee7bcc', N'Hitesh', N'Sharma', N'reader@example.com', N'READER@EXAMPLE.COM', N'reader@example.com', N'READER@EXAMPLE.COM', 0, N'AQAAAAIAAYagAAAAEDjmuI1QWBbnmVuL8PP3+SC4zJpayzwPJQ7++fHZk2tGZqB++ai8bZTMEza1QmGEkA==', N'DXHAQ4X5HKGSTRET7LYMKSXIGZVLJOZV', N'3643bd44-92ba-4d94-9379-195e809d5b9d', NULL, 0, 0, NULL, 1, 0)
INSERT [dbo].[AspNetUsers] ([Id], [FirstName], [LastName], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'40a6da83-87eb-4c92-83ea-196345a2d0ba', N'Mahesh', N'Yadav', N'reader101@example.com', N'READER101@EXAMPLE.COM', N'reader101@example.com', N'READER101@EXAMPLE.COM', 0, N'AQAAAAIAAYagAAAAENnnDPPnSjFV8rJCA7s2HEZFYMYzAFnxOFUTzPEKqlv/lg1UpJumsnKdwCBs1K0arg==', N'SOTSRM6CEJ6QLFBM4C7TFYQR74IQQ3L3', N'8cc5ec45-322f-4c72-8f50-d9b74881167d', NULL, 0, 0, NULL, 1, 0)
INSERT [dbo].[AspNetUsers] ([Id], [FirstName], [LastName], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'e1b67938-0d48-4f3e-ad22-3f0899a29120', N'string', N'string', N'user1@example.com', N'USER1@EXAMPLE.COM', N'user1@example.com', N'USER1@EXAMPLE.COM', 0, N'AQAAAAIAAYagAAAAEP+/c/1Nc46GLqgDjglHqwOSmJ1UIOrk4vS1x/akGu8SHLU5GWUWwGYFn5u9OpOS7Q==', N'7ZS5JP5NZJJ72K3NPGGWOSDP55SIAPQW', N'74e7693b-90e7-4562-bbf8-6f5be1e29097', NULL, 0, 0, NULL, 1, 0)
INSERT [dbo].[AspNetUsers] ([Id], [FirstName], [LastName], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'f3fa32fb-8257-4968-8911-de332db1047e', N'Mayur', N'Jain', N'writer102@example.com', N'WRITER102@EXAMPLE.COM', N'writer102@example.com', N'WRITER102@EXAMPLE.COM', 0, N'AQAAAAIAAYagAAAAEOlAyqQI6ZCU6iIQBJGpTdmrjD5mf29ST3ap5J67uQ2sr5bxKLDTzwG5H6q9/vZXgA==', N'6V5BD7AR2W5J4DMKLJ2ZLJLXDIS4XWEX', N'9fa25d7c-5daf-4a2d-be2f-e36beead4c61', NULL, 0, 0, NULL, 1, 0)
/****** Object:  Table [dbo].[AspNetRoles]    Script Date: 11/05/2023 16:24:58 ******/
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
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [RoleNameIndex] ON [dbo].[AspNetRoles] 
(
	[NormalizedName] ASC
)
WHERE ([NormalizedName] IS NOT NULL)
WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
INSERT [dbo].[AspNetRoles] ([Id], [Name], [NormalizedName], [ConcurrencyStamp]) VALUES (N'08f854ef-f494-43c8-9d49-eda1f0bb6ba6', N'Writer', N'WRITER', N'08f854ef-f494-43c8-9d49-eda1f0bb6ba6')
INSERT [dbo].[AspNetRoles] ([Id], [Name], [NormalizedName], [ConcurrencyStamp]) VALUES (N'43b875d4-c5f2-429e-af06-dd7265fead5e', N'Reader', N'READER', N'43b875d4-c5f2-429e-af06-dd7265fead5e')
/****** Object:  Table [dbo].[__EFMigrationsHistory]    Script Date: 11/05/2023 16:24:58 ******/
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
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20230828062607_Initial', N'7.0.10')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20230828062740_Update-Initial-Migration', N'7.0.10')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20230907124141_Add Department Table', N'7.0.10')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20230917074017_add-auth-tables', N'7.0.10')
/****** Object:  Table [dbo].[Employees]    Script Date: 11/05/2023 16:24:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Employees](
	[Id] [uniqueidentifier] NOT NULL,
	[FirstName] [nvarchar](50) NOT NULL,
	[Middlename] [nvarchar](50) NULL,
	[LastName] [nvarchar](50) NOT NULL,
	[Email] [nvarchar](50) NOT NULL,
	[Mobile] [nvarchar](10) NOT NULL,
	[Company] [nvarchar](50) NOT NULL,
	[Salary] [bigint] NOT NULL,
	[Country] [nvarchar](50) NOT NULL,
	[City] [nvarchar](50) NOT NULL,
	[State] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Employees] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[Employees] ([Id], [FirstName], [Middlename], [LastName], [Email], [Mobile], [Company], [Salary], [Country], [City], [State]) VALUES (N'0a538901-77af-48b8-96ac-304ab29724f6', N'Mahesh', N'Hari', N'Mehra', N'Mahesh@gmail.om', N'4561237891', N'ICICI', 66000, N'India ', N'Udaipur', N'Rajasthan')
INSERT [dbo].[Employees] ([Id], [FirstName], [Middlename], [LastName], [Email], [Mobile], [Company], [Salary], [Country], [City], [State]) VALUES (N'fdbc5cf0-d916-45f6-b80e-4a68e4ecd494', N'Ravi', N'Manish', N'Bishnoi', N'ravi@gmail.com', N'1234567891', N'JIO', 22000, N'USA', N'MM', N'JJ')
INSERT [dbo].[Employees] ([Id], [FirstName], [Middlename], [LastName], [Email], [Mobile], [Company], [Salary], [Country], [City], [State]) VALUES (N'fe24ff4c-367e-4344-9b4d-d76d301dffce', N'Virat', N'Ramesh', N'Kohli', N'virat@gmail.com', N'4561237891', N'HDFC', 25000, N'India', N'Ahmedabad', N'Gujarat')
/****** Object:  Table [dbo].[Departments]    Script Date: 11/05/2023 16:24:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Departments](
	[Id] [uniqueidentifier] NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[Description] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Departments] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[Departments] ([Id], [Name], [Description]) VALUES (N'82915553-773c-4355-bef7-d02ff678fafd', N'IT', N'Information Technology')
/****** Object:  Table [dbo].[AspNetUserTokens]    Script Date: 11/05/2023 16:24:58 ******/
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
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetRoleClaims]    Script Date: 11/05/2023 16:24:58 ******/
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
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_AspNetRoleClaims_RoleId] ON [dbo].[AspNetRoleClaims] 
(
	[RoleId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserRoles]    Script Date: 11/05/2023 16:24:58 ******/
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
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_AspNetUserRoles_RoleId] ON [dbo].[AspNetUserRoles] 
(
	[RoleId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'f3fa32fb-8257-4968-8911-de332db1047e', N'08f854ef-f494-43c8-9d49-eda1f0bb6ba6')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'1707518b-47d1-46af-9ddc-387a51cda603', N'43b875d4-c5f2-429e-af06-dd7265fead5e')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'36ddf85b-4a4f-41d3-96c2-46aff5ee7bcc', N'43b875d4-c5f2-429e-af06-dd7265fead5e')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'40a6da83-87eb-4c92-83ea-196345a2d0ba', N'43b875d4-c5f2-429e-af06-dd7265fead5e')
/****** Object:  Table [dbo].[AspNetUserLogins]    Script Date: 11/05/2023 16:24:58 ******/
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
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_AspNetUserLogins_UserId] ON [dbo].[AspNetUserLogins] 
(
	[UserId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserClaims]    Script Date: 11/05/2023 16:24:58 ******/
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
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_AspNetUserClaims_UserId] ON [dbo].[AspNetUserClaims] 
(
	[UserId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
/****** Object:  ForeignKey [FK_AspNetUserTokens_AspNetUsers_UserId]    Script Date: 11/05/2023 16:24:58 ******/
ALTER TABLE [dbo].[AspNetUserTokens]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserTokens_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserTokens] CHECK CONSTRAINT [FK_AspNetUserTokens_AspNetUsers_UserId]
GO
/****** Object:  ForeignKey [FK_AspNetRoleClaims_AspNetRoles_RoleId]    Script Date: 11/05/2023 16:24:58 ******/
ALTER TABLE [dbo].[AspNetRoleClaims]  WITH CHECK ADD  CONSTRAINT [FK_AspNetRoleClaims_AspNetRoles_RoleId] FOREIGN KEY([RoleId])
REFERENCES [dbo].[AspNetRoles] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetRoleClaims] CHECK CONSTRAINT [FK_AspNetRoleClaims_AspNetRoles_RoleId]
GO
/****** Object:  ForeignKey [FK_AspNetUserRoles_AspNetRoles_RoleId]    Script Date: 11/05/2023 16:24:58 ******/
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserRoles_AspNetRoles_RoleId] FOREIGN KEY([RoleId])
REFERENCES [dbo].[AspNetRoles] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_AspNetUserRoles_AspNetRoles_RoleId]
GO
/****** Object:  ForeignKey [FK_AspNetUserRoles_AspNetUsers_UserId]    Script Date: 11/05/2023 16:24:58 ******/
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserRoles_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_AspNetUserRoles_AspNetUsers_UserId]
GO
/****** Object:  ForeignKey [FK_AspNetUserLogins_AspNetUsers_UserId]    Script Date: 11/05/2023 16:24:58 ******/
ALTER TABLE [dbo].[AspNetUserLogins]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserLogins_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserLogins] CHECK CONSTRAINT [FK_AspNetUserLogins_AspNetUsers_UserId]
GO
/****** Object:  ForeignKey [FK_AspNetUserClaims_AspNetUsers_UserId]    Script Date: 11/05/2023 16:24:58 ******/
ALTER TABLE [dbo].[AspNetUserClaims]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserClaims_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserClaims] CHECK CONSTRAINT [FK_AspNetUserClaims_AspNetUsers_UserId]
GO
