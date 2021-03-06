USE [master]
GO
/****** Object:  Database [Students]    Script Date: 04.05.2020 21:10:49 ******/
CREATE DATABASE [Students]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'БД_Студентов', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.SQLEXPRESS\MSSQL\DATA\БД_Студентов.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'БД_Студентов_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.SQLEXPRESS\MSSQL\DATA\БД_Студентов_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [Students] SET COMPATIBILITY_LEVEL = 140
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Students].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Students] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Students] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Students] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Students] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Students] SET ARITHABORT OFF 
GO
ALTER DATABASE [Students] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [Students] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Students] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Students] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Students] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Students] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Students] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Students] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Students] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Students] SET  DISABLE_BROKER 
GO
ALTER DATABASE [Students] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Students] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Students] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Students] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Students] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Students] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Students] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Students] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [Students] SET  MULTI_USER 
GO
ALTER DATABASE [Students] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Students] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Students] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Students] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [Students] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [Students] SET QUERY_STORE = OFF
GO
USE [Students]
GO
/****** Object:  Table [dbo].[Department1]    Script Date: 04.05.2020 21:10:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Department1](
	[NamberDepartment] [nchar](3) NOT NULL,
	[Year] [date] NOT NULL,
	[Manager] [nchar](10) NULL,
	[idManager] [nchar](10) NULL,
	[NumberGroup] [nchar](4) NULL,
 CONSTRAINT [PK_Department1] PRIMARY KEY CLUSTERED 
(
	[Year] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Deparyament1]    Script Date: 04.05.2020 21:10:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Deparyament1](
	[NamberDepartment] [nchar](5) NULL,
	[Year] [nchar](10) NULL,
	[Manager] [nchar](45) NULL,
	[NumberGroup] [nchar](5) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[exam]    Script Date: 04.05.2020 21:10:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[exam](
	[NamberStudent] [nchar](15) NOT NULL,
	[idSubgect] [nchar](10) NOT NULL,
	[Semester] [nchar](10) NULL,
	[Access] [float] NULL,
	[Estimation] [real] NULL,
	[DateDelivery] [date] NULL,
 CONSTRAINT [PK_exam] PRIMARY KEY CLUSTERED 
(
	[NamberStudent] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Group]    Script Date: 04.05.2020 21:10:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Group](
	[NumberGroup] [nchar](4) NOT NULL,
	[Year] [nchar](10) NULL,
	[NumberDepartments] [nchar](10) NULL,
	[TypeGroup] [float] NULL,
	[idCurator] [nchar](10) NULL,
	[idSpecialties] [nchar](10) NULL,
	[NamberStudent] [nchar](10) NULL,
 CONSTRAINT [PK_Группа] PRIMARY KEY CLUSTERED 
(
	[NumberGroup] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Rols]    Script Date: 04.05.2020 21:10:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Rols](
	[idTeacher] [int] NOT NULL,
	[Login] [nchar](10) NULL,
	[Passwort] [nchar](10) NULL,
	[NameRole] [nchar](10) NULL,
 CONSTRAINT [PK_Rols] PRIMARY KEY CLUSTERED 
(
	[idTeacher] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Specialty]    Script Date: 04.05.2020 21:10:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Specialty](
	[idSpecialties] [nchar](15) NOT NULL,
	[Year] [date] NOT NULL,
	[NameSpec] [nchar](10) NULL,
	[NumberDepartment] [nchar](1) NULL,
	[NumberGroup] [nchar](4) NULL,
	[Type] [float] NULL,
 CONSTRAINT [PK_Specialty] PRIMARY KEY CLUSTERED 
(
	[idSpecialties] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Student]    Script Date: 04.05.2020 21:10:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Student](
	[NamberStudent] [nchar](15) NOT NULL,
	[LastName] [nchar](15) NULL,
	[FerstName] [nchar](15) NULL,
	[MiddleName] [nchar](15) NULL,
	[Bithday] [date] NULL,
	[Adddress] [nchar](15) NULL,
	[PhoneNumber] [nchar](12) NULL,
	[PassportSeries] [nchar](4) NULL,
	[PassportNamber] [nchar](6) NULL,
 CONSTRAINT [PK_Student] PRIMARY KEY CLUSTERED 
(
	[NamberStudent] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Students]    Script Date: 04.05.2020 21:10:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Students](
	[Фамилия] [nchar](15) NULL,
	[Имя] [nchar](15) NULL,
	[Отчество] [nchar](15) NULL,
	[ДР] [date] NULL,
	[Адрес] [nchar](15) NULL,
	[Телефон] [nchar](12) NULL,
	[СерияПаспорта] [nchar](4) NULL,
	[НомерПаспорта] [nchar](6) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Studying]    Script Date: 04.05.2020 21:10:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Studying](
	[NamberStudent] [nchar](15) NOT NULL,
	[NumberGroup] [nchar](4) NULL,
	[Year] [date] NULL,
	[Admission] [date] NULL,
	[Allocation] [date] NULL,
 CONSTRAINT [PK_учащийся] PRIMARY KEY CLUSTERED 
(
	[NamberStudent] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Subject]    Script Date: 04.05.2020 21:10:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Subject](
	[idSubject] [nchar](15) NOT NULL,
	[nameSubject] [nchar](10) NULL,
	[idSpecialties] [nchar](10) NULL,
	[Time] [nchar](10) NULL,
	[idTeacher] [nchar](10) NULL,
 CONSTRAINT [PK_Subject] PRIMARY KEY CLUSTERED 
(
	[idSubject] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SubSpec]    Script Date: 04.05.2020 21:10:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SubSpec](
	[IdSubgect] [nchar](10) NOT NULL,
	[idSpecialties] [nchar](15) NOT NULL,
 CONSTRAINT [PK_SubSpec] PRIMARY KEY CLUSTERED 
(
	[IdSubgect] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Teacher]    Script Date: 04.05.2020 21:10:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Teacher](
	[idTeacher] [int] NOT NULL,
	[LastName] [nchar](10) NULL,
	[FerstName] [nchar](10) NULL,
	[MiddleName] [nchar](10) NULL,
	[Experience] [nchar](10) NULL,
	[Discharge] [nchar](10) NULL,
	[Category] [nchar](10) NULL,
	[Bithday] [date] NULL,
 CONSTRAINT [PK_Teacher] PRIMARY KEY CLUSTERED 
(
	[idTeacher] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TS]    Script Date: 04.05.2020 21:10:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TS](
	[idTeacher] [nchar](15) NOT NULL,
	[Year] [nchar](5) NULL,
	[idSubgect] [int] NOT NULL,
	[Salary] [nchar](10) NULL,
	[Time] [int] NOT NULL,
 CONSTRAINT [PK_TS] PRIMARY KEY CLUSTERED 
(
	[idTeacher] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[Department1] ([NamberDepartment], [Year], [Manager], [idManager], [NumberGroup]) VALUES (N'3  ', CAST(N'2018-01-01' AS Date), N'Гусева    ', N'1         ', N'304 ')
INSERT [dbo].[Department1] ([NamberDepartment], [Year], [Manager], [idManager], [NumberGroup]) VALUES (N'1  ', CAST(N'2018-01-02' AS Date), N'Миланова  ', N'2         ', N'302 ')
INSERT [dbo].[Department1] ([NamberDepartment], [Year], [Manager], [idManager], [NumberGroup]) VALUES (N'2  ', CAST(N'2018-01-03' AS Date), N'Конова    ', N'3         ', N'300 ')
INSERT [dbo].[exam] ([NamberStudent], [idSubgect], [Semester], [Access], [Estimation], [DateDelivery]) VALUES (N'1              ', N'1         ', N'6         ', 1, 5, CAST(N'2020-06-20' AS Date))
INSERT [dbo].[exam] ([NamberStudent], [idSubgect], [Semester], [Access], [Estimation], [DateDelivery]) VALUES (N'10             ', N'1         ', N'6         ', 0, 0, CAST(N'2020-06-20' AS Date))
INSERT [dbo].[exam] ([NamberStudent], [idSubgect], [Semester], [Access], [Estimation], [DateDelivery]) VALUES (N'11             ', N'1         ', N'6         ', 1, 3, CAST(N'2020-06-20' AS Date))
INSERT [dbo].[exam] ([NamberStudent], [idSubgect], [Semester], [Access], [Estimation], [DateDelivery]) VALUES (N'12             ', N'1         ', N'6         ', 1, 3, CAST(N'2020-06-20' AS Date))
INSERT [dbo].[exam] ([NamberStudent], [idSubgect], [Semester], [Access], [Estimation], [DateDelivery]) VALUES (N'13             ', N'1         ', N'6         ', 1, 3, CAST(N'2020-06-20' AS Date))
INSERT [dbo].[exam] ([NamberStudent], [idSubgect], [Semester], [Access], [Estimation], [DateDelivery]) VALUES (N'2              ', N'1         ', N'6         ', 1, 5, CAST(N'2020-06-20' AS Date))
INSERT [dbo].[exam] ([NamberStudent], [idSubgect], [Semester], [Access], [Estimation], [DateDelivery]) VALUES (N'3              ', N'1         ', N'6         ', 1, 4, CAST(N'2020-06-20' AS Date))
INSERT [dbo].[exam] ([NamberStudent], [idSubgect], [Semester], [Access], [Estimation], [DateDelivery]) VALUES (N'4              ', N'1         ', N'6         ', 0, 0, CAST(N'2020-06-20' AS Date))
INSERT [dbo].[exam] ([NamberStudent], [idSubgect], [Semester], [Access], [Estimation], [DateDelivery]) VALUES (N'5              ', N'1         ', N'6         ', 1, 3, CAST(N'2020-06-20' AS Date))
INSERT [dbo].[exam] ([NamberStudent], [idSubgect], [Semester], [Access], [Estimation], [DateDelivery]) VALUES (N'6              ', N'1         ', N'6         ', 1, 4, CAST(N'2020-06-20' AS Date))
INSERT [dbo].[exam] ([NamberStudent], [idSubgect], [Semester], [Access], [Estimation], [DateDelivery]) VALUES (N'7              ', N'1         ', N'6         ', 1, 5, CAST(N'2020-06-20' AS Date))
INSERT [dbo].[exam] ([NamberStudent], [idSubgect], [Semester], [Access], [Estimation], [DateDelivery]) VALUES (N'9              ', N'1         ', N'6         ', 1, 4, CAST(N'2020-06-20' AS Date))
INSERT [dbo].[Group] ([NumberGroup], [Year], [NumberDepartments], [TypeGroup], [idCurator], [idSpecialties], [NamberStudent]) VALUES (N'101 ', N'2019-01-01', N'1         ', 1, N'2360      ', N'360-500   ', N'6         ')
INSERT [dbo].[Group] ([NumberGroup], [Year], [NumberDepartments], [TypeGroup], [idCurator], [idSpecialties], [NamberStudent]) VALUES (N'102 ', N'2019-01-01', N'2         ', 1, N'2459      ', N'400-000   ', N'7         ')
INSERT [dbo].[Group] ([NumberGroup], [Year], [NumberDepartments], [TypeGroup], [idCurator], [idSpecialties], [NamberStudent]) VALUES (N'103 ', N'2019-01-01', N'3         ', 2, N'4356      ', N'345-900   ', N'8         ')
INSERT [dbo].[Group] ([NumberGroup], [Year], [NumberDepartments], [TypeGroup], [idCurator], [idSpecialties], [NamberStudent]) VALUES (N'201 ', N'2019-01-01', N'1         ', 1, N'2347      ', N'345-900   ', N'2         ')
INSERT [dbo].[Group] ([NumberGroup], [Year], [NumberDepartments], [TypeGroup], [idCurator], [idSpecialties], [NamberStudent]) VALUES (N'202 ', N'2019-01-01', N'2         ', 1, N'2348      ', N'345-755   ', N'3         ')
INSERT [dbo].[Group] ([NumberGroup], [Year], [NumberDepartments], [TypeGroup], [idCurator], [idSpecialties], [NamberStudent]) VALUES (N'203 ', N'2019-01-01', N'3         ', 1, N'2349      ', N'345-900   ', N'4         ')
INSERT [dbo].[Group] ([NumberGroup], [Year], [NumberDepartments], [TypeGroup], [idCurator], [idSpecialties], [NamberStudent]) VALUES (N'204 ', N'2019-01-01', N'3         ', 2, N'2350      ', N'345-755   ', N'5         ')
INSERT [dbo].[Group] ([NumberGroup], [Year], [NumberDepartments], [TypeGroup], [idCurator], [idSpecialties], [NamberStudent]) VALUES (N'208 ', N'2019-01-01', N'2         ', 2, N'5000      ', N'345-100   ', N'9         ')
INSERT [dbo].[Group] ([NumberGroup], [Year], [NumberDepartments], [TypeGroup], [idCurator], [idSpecialties], [NamberStudent]) VALUES (N'210 ', N'2019-01-01', N'1         ', 2, N'9000      ', N'300-200   ', N'10        ')
INSERT [dbo].[Group] ([NumberGroup], [Year], [NumberDepartments], [TypeGroup], [idCurator], [idSpecialties], [NamberStudent]) VALUES (N'304 ', N'2019-01-01', N'1         ', 1, N'2344      ', N'345-755   ', N'1         ')
INSERT [dbo].[Group] ([NumberGroup], [Year], [NumberDepartments], [TypeGroup], [idCurator], [idSpecialties], [NamberStudent]) VALUES (N'305 ', N'2018-01-01', N'2         ', 2, N'2345      ', N'345-900   ', N'2         ')
INSERT [dbo].[Group] ([NumberGroup], [Year], [NumberDepartments], [TypeGroup], [idCurator], [idSpecialties], [NamberStudent]) VALUES (N'306 ', N'2018-01-01', N'3         ', 1, N'2346      ', N'345-900   ', N'3         ')
INSERT [dbo].[Student] ([NamberStudent], [LastName], [FerstName], [MiddleName], [Bithday], [Adddress], [PhoneNumber], [PassportSeries], [PassportNamber]) VALUES (N'1              ', N'Алексашенков   ', N'Никита         ', N'Петрович       ', CAST(N'2001-05-27' AS Date), N'Улица Победы   ', N'89153257915 ', N'4615', N'345676')
INSERT [dbo].[Student] ([NamberStudent], [LastName], [FerstName], [MiddleName], [Bithday], [Adddress], [PhoneNumber], [PassportSeries], [PassportNamber]) VALUES (N'10             ', N'Зайев          ', N'Александр      ', N'Евгеньевич     ', CAST(N'2001-02-02' AS Date), N'Москва         ', N'81534685945 ', N'1515', N'663344')
INSERT [dbo].[Student] ([NamberStudent], [LastName], [FerstName], [MiddleName], [Bithday], [Adddress], [PhoneNumber], [PassportSeries], [PassportNamber]) VALUES (N'11             ', N'Кувшинов       ', N'Михаил         ', N'Валерьевич     ', CAST(N'2001-04-13' AS Date), N'Москва         ', N'84536579465 ', N'6615', N'774466')
INSERT [dbo].[Student] ([NamberStudent], [LastName], [FerstName], [MiddleName], [Bithday], [Adddress], [PhoneNumber], [PassportSeries], [PassportNamber]) VALUES (N'12             ', N'Кулинечев      ', N'Павел          ', N'Вальрьевич     ', CAST(N'2001-09-30' AS Date), N'Москва         ', N'89453748573 ', N'3415', N'558877')
INSERT [dbo].[Student] ([NamberStudent], [LastName], [FerstName], [MiddleName], [Bithday], [Adddress], [PhoneNumber], [PassportSeries], [PassportNamber]) VALUES (N'13             ', N'Лопаткин       ', N'Виталий        ', N'Владимирович   ', CAST(N'2001-01-17' AS Date), N'Ногинск        ', N'84653782940 ', N'8715', N'884455')
INSERT [dbo].[Student] ([NamberStudent], [LastName], [FerstName], [MiddleName], [Bithday], [Adddress], [PhoneNumber], [PassportSeries], [PassportNamber]) VALUES (N'14             ', N'Маиров         ', N'Джамбулат      ', N'Залимович      ', CAST(N'2001-05-20' AS Date), N'Москва         ', N'89153685914 ', N'8915', N'446655')
INSERT [dbo].[Student] ([NamberStudent], [LastName], [FerstName], [MiddleName], [Bithday], [Adddress], [PhoneNumber], [PassportSeries], [PassportNamber]) VALUES (N'15             ', N'Малинин        ', N'Никита         ', N'Сергеевич      ', CAST(N'1999-04-18' AS Date), N'Москва         ', N'893546710725', N'8815', N'665577')
INSERT [dbo].[Student] ([NamberStudent], [LastName], [FerstName], [MiddleName], [Bithday], [Adddress], [PhoneNumber], [PassportSeries], [PassportNamber]) VALUES (N'16             ', N'Медведева      ', N'Елизовета      ', N'Константиновна ', CAST(N'2001-08-25' AS Date), N'Павловский     ', N'83254809856 ', N'4415', N'887799')
INSERT [dbo].[Student] ([NamberStudent], [LastName], [FerstName], [MiddleName], [Bithday], [Adddress], [PhoneNumber], [PassportSeries], [PassportNamber]) VALUES (N'17             ', N'Морозов        ', N'Игорь          ', N'Михайлович     ', CAST(N'2001-11-30' AS Date), N'Москва         ', N'89325679166 ', N'7615', N'552244')
INSERT [dbo].[Student] ([NamberStudent], [LastName], [FerstName], [MiddleName], [Bithday], [Adddress], [PhoneNumber], [PassportSeries], [PassportNamber]) VALUES (N'18             ', N'Мочалова       ', N'Екатерина      ', N'Вячеславовна   ', CAST(N'2001-07-15' AS Date), N'Сергеев        ', N'89167438061 ', N'2015', N'778866')
INSERT [dbo].[Student] ([NamberStudent], [LastName], [FerstName], [MiddleName], [Bithday], [Adddress], [PhoneNumber], [PassportSeries], [PassportNamber]) VALUES (N'19             ', N'Полозов        ', N'Виталий        ', N'Сергеевич      ', CAST(N'2001-06-14' AS Date), N'Зеленогорск    ', N'89156378692 ', N'5515', N'556644')
INSERT [dbo].[Student] ([NamberStudent], [LastName], [FerstName], [MiddleName], [Bithday], [Adddress], [PhoneNumber], [PassportSeries], [PassportNamber]) VALUES (N'2              ', N'Алигин         ', N'Максим         ', N'Игоревич       ', CAST(N'2001-06-01' AS Date), N'Улица Дружбы 34', N'89163457693 ', N'4515', N'546787')
INSERT [dbo].[Student] ([NamberStudent], [LastName], [FerstName], [MiddleName], [Bithday], [Adddress], [PhoneNumber], [PassportSeries], [PassportNamber]) VALUES (N'20             ', N'Попов          ', N'Никита         ', N'Сергеевич      ', CAST(N'2001-08-30' AS Date), N'Ногинск        ', N'89163057824 ', N'9415', N'334466')
INSERT [dbo].[Student] ([NamberStudent], [LastName], [FerstName], [MiddleName], [Bithday], [Adddress], [PhoneNumber], [PassportSeries], [PassportNamber]) VALUES (N'21             ', N'Посысаев       ', N'Владислав      ', N'Вячеславович   ', CAST(N'2001-10-10' AS Date), N'Томбов         ', N'8918657491  ', N'9015', N'990088')
INSERT [dbo].[Student] ([NamberStudent], [LastName], [FerstName], [MiddleName], [Bithday], [Adddress], [PhoneNumber], [PassportSeries], [PassportNamber]) VALUES (N'22             ', N'Томский        ', N'Николай        ', N'Алексеевич     ', CAST(N'2001-05-16' AS Date), N'Ногинск        ', N'88453754671 ', N'4015', N'556677')
INSERT [dbo].[Student] ([NamberStudent], [LastName], [FerstName], [MiddleName], [Bithday], [Adddress], [PhoneNumber], [PassportSeries], [PassportNamber]) VALUES (N'23             ', N'Улендеев       ', N'Дмитрий        ', N'Юрьевич        ', CAST(N'2001-08-19' AS Date), N'Неверленд      ', N'893454789016', N'7716', N'887766')
INSERT [dbo].[Student] ([NamberStudent], [LastName], [FerstName], [MiddleName], [Bithday], [Adddress], [PhoneNumber], [PassportSeries], [PassportNamber]) VALUES (N'24             ', N'Устинов        ', N'Сергей         ', N'Сергеевич      ', CAST(N'2001-09-25' AS Date), N'Ногинск        ', N'89453675815 ', N'8915', N'445566')
INSERT [dbo].[Student] ([NamberStudent], [LastName], [FerstName], [MiddleName], [Bithday], [Adddress], [PhoneNumber], [PassportSeries], [PassportNamber]) VALUES (N'25             ', N'Федотов        ', N'Федор          ', N'Андреевич      ', CAST(N'2001-09-13' AS Date), N'Подольск       ', N'89153257916 ', N'4515', N'334455')
INSERT [dbo].[Student] ([NamberStudent], [LastName], [FerstName], [MiddleName], [Bithday], [Adddress], [PhoneNumber], [PassportSeries], [PassportNamber]) VALUES (N'26             ', N'Шорохов        ', N'Дмитрий        ', N'Валерьевич     ', CAST(N'2000-02-04' AS Date), N'Ногинск        ', N'89345673891 ', N'4515', N'556677')
INSERT [dbo].[Student] ([NamberStudent], [LastName], [FerstName], [MiddleName], [Bithday], [Adddress], [PhoneNumber], [PassportSeries], [PassportNamber]) VALUES (N'3              ', N'Березников     ', N'Василий        ', N'Павлович       ', CAST(N'2001-12-05' AS Date), N'Балашиха       ', N'89093638473 ', N'4315', N'657893')
INSERT [dbo].[Student] ([NamberStudent], [LastName], [FerstName], [MiddleName], [Bithday], [Adddress], [PhoneNumber], [PassportSeries], [PassportNamber]) VALUES (N'4              ', N'Большанов      ', N'Сергей         ', N'Алексеевич     ', CAST(N'2001-05-06' AS Date), N'Москва         ', N'89154783957 ', N'2315', N'456780')
INSERT [dbo].[Student] ([NamberStudent], [LastName], [FerstName], [MiddleName], [Bithday], [Adddress], [PhoneNumber], [PassportSeries], [PassportNamber]) VALUES (N'5              ', N'Борисов        ', N'Иван           ', N'Сергеевич      ', CAST(N'2001-10-07' AS Date), N'Ногинск        ', N'84937384794 ', N'1415', N'456376')
INSERT [dbo].[Student] ([NamberStudent], [LastName], [FerstName], [MiddleName], [Bithday], [Adddress], [PhoneNumber], [PassportSeries], [PassportNamber]) VALUES (N'6              ', N'Бурханов       ', N'Никита         ', N'Алексеевич     ', CAST(N'2001-09-06' AS Date), N'Электросталь   ', N'89164736547 ', N'2615', N'123456')
INSERT [dbo].[Student] ([NamberStudent], [LastName], [FerstName], [MiddleName], [Bithday], [Adddress], [PhoneNumber], [PassportSeries], [PassportNamber]) VALUES (N'7              ', N'Громов         ', N'Павел          ', N'Дмитриевич     ', CAST(N'2001-10-12' AS Date), N'Бутово         ', N'89543685936 ', N'4715', N'456789')
INSERT [dbo].[Student] ([NamberStudent], [LastName], [FerstName], [MiddleName], [Bithday], [Adddress], [PhoneNumber], [PassportSeries], [PassportNamber]) VALUES (N'8              ', N'Дулова         ', N'Дарья          ', N'Павловна       ', CAST(N'2001-06-21' AS Date), N'Москва         ', N'89132456789 ', N'2615', N'998833')
INSERT [dbo].[Student] ([NamberStudent], [LastName], [FerstName], [MiddleName], [Bithday], [Adddress], [PhoneNumber], [PassportSeries], [PassportNamber]) VALUES (N'9              ', N'Евдокимов      ', N'Юрий           ', N'Олегович       ', CAST(N'2001-07-18' AS Date), N'Балашиха       ', N'81326584967 ', N'3815', N'559900')
INSERT [dbo].[Subject] ([idSubject], [nameSubject], [idSpecialties], [Time], [idTeacher]) VALUES (N'100            ', N'ПП        ', N'345-755   ', N'30        ', N'111       ')
INSERT [dbo].[Subject] ([idSubject], [nameSubject], [idSpecialties], [Time], [idTeacher]) VALUES (N'111            ', N'ТРЗБД     ', N'345-755   ', N'50        ', N'300       ')
INSERT [dbo].[Subject] ([idSubject], [nameSubject], [idSpecialties], [Time], [idTeacher]) VALUES (N'120            ', N'УП        ', N'345-755   ', N'35        ', N'222       ')
INSERT [dbo].[Subject] ([idSubject], [nameSubject], [idSpecialties], [Time], [idTeacher]) VALUES (N'123            ', N'Русский.яз', N'345-900   ', N'50        ', N'100       ')
INSERT [dbo].[Subject] ([idSubject], [nameSubject], [idSpecialties], [Time], [idTeacher]) VALUES (N'130            ', N'Математика', N'345-900   ', N'60        ', N'333       ')
INSERT [dbo].[Subject] ([idSubject], [nameSubject], [idSpecialties], [Time], [idTeacher]) VALUES (N'150            ', N'Физ-ра    ', N'345-755   ', N'40        ', N'150       ')
INSERT [dbo].[Subject] ([idSubject], [nameSubject], [idSpecialties], [Time], [idTeacher]) VALUES (N'200            ', N'СП        ', N'345-755   ', N'60        ', N'110       ')
INSERT [dbo].[Subject] ([idSubject], [nameSubject], [idSpecialties], [Time], [idTeacher]) VALUES (N'201            ', N'СИ        ', N'300-200   ', N'30        ', N'112       ')
INSERT [dbo].[Subject] ([idSubject], [nameSubject], [idSpecialties], [Time], [idTeacher]) VALUES (N'250            ', N'Англ.яз   ', N'345-755   ', N'50        ', N'160       ')
INSERT [dbo].[Subject] ([idSubject], [nameSubject], [idSpecialties], [Time], [idTeacher]) VALUES (N'350            ', N'ИБ        ', N'345-900   ', N'60        ', N'170       ')
INSERT [dbo].[Teacher] ([idTeacher], [LastName], [FerstName], [MiddleName], [Experience], [Discharge], [Category], [Bithday]) VALUES (100, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Teacher] ([idTeacher], [LastName], [FerstName], [MiddleName], [Experience], [Discharge], [Category], [Bithday]) VALUES (110, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Teacher] ([idTeacher], [LastName], [FerstName], [MiddleName], [Experience], [Discharge], [Category], [Bithday]) VALUES (111, N'Гускер    ', N'Александр ', N'Игоревич  ', N'100       ', N'3         ', N'крутая    ', CAST(N'1978-01-19' AS Date))
INSERT [dbo].[Teacher] ([idTeacher], [LastName], [FerstName], [MiddleName], [Experience], [Discharge], [Category], [Bithday]) VALUES (112, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Teacher] ([idTeacher], [LastName], [FerstName], [MiddleName], [Experience], [Discharge], [Category], [Bithday]) VALUES (150, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Teacher] ([idTeacher], [LastName], [FerstName], [MiddleName], [Experience], [Discharge], [Category], [Bithday]) VALUES (160, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Teacher] ([idTeacher], [LastName], [FerstName], [MiddleName], [Experience], [Discharge], [Category], [Bithday]) VALUES (170, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Teacher] ([idTeacher], [LastName], [FerstName], [MiddleName], [Experience], [Discharge], [Category], [Bithday]) VALUES (222, N'Зайцева   ', N'Екатерина ', N'Васильевна', NULL, NULL, NULL, NULL)
INSERT [dbo].[Teacher] ([idTeacher], [LastName], [FerstName], [MiddleName], [Experience], [Discharge], [Category], [Bithday]) VALUES (300, N'Степанова ', N'Татьяна   ', N'Александр ', N'10        ', NULL, NULL, NULL)
INSERT [dbo].[Teacher] ([idTeacher], [LastName], [FerstName], [MiddleName], [Experience], [Discharge], [Category], [Bithday]) VALUES (333, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
ALTER TABLE [dbo].[exam]  WITH CHECK ADD  CONSTRAINT [FK_exam_Student] FOREIGN KEY([NamberStudent])
REFERENCES [dbo].[Student] ([NamberStudent])
GO
ALTER TABLE [dbo].[exam] CHECK CONSTRAINT [FK_exam_Student]
GO
ALTER TABLE [dbo].[Rols]  WITH NOCHECK ADD  CONSTRAINT [FK_Rols_Teacher] FOREIGN KEY([idTeacher])
REFERENCES [dbo].[Teacher] ([idTeacher])
GO
ALTER TABLE [dbo].[Rols] NOCHECK CONSTRAINT [FK_Rols_Teacher]
GO
ALTER TABLE [dbo].[Specialty]  WITH CHECK ADD  CONSTRAINT [FK_Specialty_Department1] FOREIGN KEY([Year])
REFERENCES [dbo].[Department1] ([Year])
GO
ALTER TABLE [dbo].[Specialty] CHECK CONSTRAINT [FK_Specialty_Department1]
GO
ALTER TABLE [dbo].[Specialty]  WITH CHECK ADD  CONSTRAINT [FK_Specialty_Group] FOREIGN KEY([NumberGroup])
REFERENCES [dbo].[Group] ([NumberGroup])
GO
ALTER TABLE [dbo].[Specialty] CHECK CONSTRAINT [FK_Specialty_Group]
GO
ALTER TABLE [dbo].[Studying]  WITH CHECK ADD  CONSTRAINT [FK_Studying_Group] FOREIGN KEY([NumberGroup])
REFERENCES [dbo].[Group] ([NumberGroup])
GO
ALTER TABLE [dbo].[Studying] CHECK CONSTRAINT [FK_Studying_Group]
GO
ALTER TABLE [dbo].[Studying]  WITH CHECK ADD  CONSTRAINT [FK_Studying_Student1] FOREIGN KEY([NamberStudent])
REFERENCES [dbo].[Student] ([NamberStudent])
GO
ALTER TABLE [dbo].[Studying] CHECK CONSTRAINT [FK_Studying_Student1]
GO
ALTER TABLE [dbo].[SubSpec]  WITH CHECK ADD  CONSTRAINT [FK_SubSpec_Specialty] FOREIGN KEY([idSpecialties])
REFERENCES [dbo].[Specialty] ([idSpecialties])
GO
ALTER TABLE [dbo].[SubSpec] CHECK CONSTRAINT [FK_SubSpec_Specialty]
GO
ALTER TABLE [dbo].[SubSpec]  WITH CHECK ADD  CONSTRAINT [FK_SubSpec_Subject] FOREIGN KEY([idSpecialties])
REFERENCES [dbo].[Subject] ([idSubject])
GO
ALTER TABLE [dbo].[SubSpec] CHECK CONSTRAINT [FK_SubSpec_Subject]
GO
ALTER TABLE [dbo].[TS]  WITH CHECK ADD  CONSTRAINT [FK_TS_exam1] FOREIGN KEY([idTeacher])
REFERENCES [dbo].[exam] ([NamberStudent])
GO
ALTER TABLE [dbo].[TS] CHECK CONSTRAINT [FK_TS_exam1]
GO
ALTER TABLE [dbo].[TS]  WITH CHECK ADD  CONSTRAINT [FK_TS_Subject] FOREIGN KEY([idTeacher])
REFERENCES [dbo].[Subject] ([idSubject])
GO
ALTER TABLE [dbo].[TS] CHECK CONSTRAINT [FK_TS_Subject]
GO
ALTER TABLE [dbo].[TS]  WITH NOCHECK ADD  CONSTRAINT [FK_TS_Teacher] FOREIGN KEY([idSubgect])
REFERENCES [dbo].[Teacher] ([idTeacher])
GO
ALTER TABLE [dbo].[TS] NOCHECK CONSTRAINT [FK_TS_Teacher]
GO
USE [master]
GO
ALTER DATABASE [Students] SET  READ_WRITE 
GO
