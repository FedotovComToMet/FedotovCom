USE [master]
GO
/****** Object:  Database [Students]    Script Date: 07.05.2020 17:44:09 ******/
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
/****** Object:  Table [dbo].[Department1]    Script Date: 07.05.2020 17:44:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Department1](
	[NamberDepartment] [nchar](3) NOT NULL,
	[Year] [nchar](10) NOT NULL,
	[Manager] [nchar](10) NULL,
	[idManager] [nchar](10) NULL,
	[NumberGroup] [int] NOT NULL,
 CONSTRAINT [PK_Department1] PRIMARY KEY CLUSTERED 
(
	[NumberGroup] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Exam1]    Script Date: 07.05.2020 17:44:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Exam1](
	[NamberStudent] [nchar](15) NULL,
	[idExam] [int] NOT NULL,
	[idSubgect] [int] NULL,
	[Semester] [nchar](1) NULL,
	[Access] [float] NULL,
	[Estimation] [real] NULL,
	[DateDelivery] [date] NULL,
 CONSTRAINT [PK_Exam1] PRIMARY KEY CLUSTERED 
(
	[idExam] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Group]    Script Date: 07.05.2020 17:44:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Group](
	[NumberGroup] [int] NOT NULL,
	[Year] [nchar](10) NULL,
	[NumberDepartments] [nchar](10) NULL,
	[TypeGroup] [float] NULL,
	[idCurator] [nchar](10) NULL,
	[idSpecialties] [nchar](10) NULL,
 CONSTRAINT [PK_Группа] PRIMARY KEY CLUSTERED 
(
	[NumberGroup] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Rols]    Script Date: 07.05.2020 17:44:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Rols](
	[idTeacher] [int] NOT NULL,
	[Login] [nvarchar](15) NULL,
	[Password] [nvarchar](15) NULL,
	[NameRole] [nvarchar](15) NULL,
 CONSTRAINT [PK_Rols] PRIMARY KEY CLUSTERED 
(
	[idTeacher] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Specialty]    Script Date: 07.05.2020 17:44:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Specialty](
	[idSpecialties] [int] NOT NULL,
	[Year] [nchar](10) NOT NULL,
	[NameSpec] [nchar](10) NULL,
	[NumberDepartment] [nchar](1) NULL,
	[NumberGroup] [int] NULL,
	[Type] [nchar](8) NULL,
 CONSTRAINT [PK_Specialty] PRIMARY KEY CLUSTERED 
(
	[idSpecialties] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Student]    Script Date: 07.05.2020 17:44:09 ******/
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
	[PassportSeries] [int] NULL,
	[PassportNamber] [int] NULL,
 CONSTRAINT [PK_Student] PRIMARY KEY CLUSTERED 
(
	[NamberStudent] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Studying]    Script Date: 07.05.2020 17:44:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Studying](
	[NamberStudent] [nchar](15) NOT NULL,
	[NumberGroup] [int] NULL,
	[Year] [int] NULL,
	[Admission] [date] NULL,
	[Allocation] [date] NULL,
 CONSTRAINT [PK_учащийся] PRIMARY KEY CLUSTERED 
(
	[NamberStudent] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Subject]    Script Date: 07.05.2020 17:44:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Subject](
	[idSubject] [int] NOT NULL,
	[nameSubject] [nchar](10) NULL,
	[idSpecialties] [nchar](10) NULL,
	[Time] [nchar](10) NULL,
	[idTeacher] [nchar](10) NOT NULL,
 CONSTRAINT [PK_Subject] PRIMARY KEY CLUSTERED 
(
	[idSubject] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SubSpec]    Script Date: 07.05.2020 17:44:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SubSpec](
	[IdSubject] [int] NOT NULL,
	[idTeacher] [nchar](10) NOT NULL,
 CONSTRAINT [PK_SubSpec_1] PRIMARY KEY CLUSTERED 
(
	[idTeacher] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Teacher]    Script Date: 07.05.2020 17:44:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Teacher](
	[idTeacher] [int] NOT NULL,
	[LastName] [nchar](15) NULL,
	[FerstName] [nchar](15) NULL,
	[MiddleName] [nchar](15) NULL,
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
/****** Object:  Table [dbo].[TS]    Script Date: 07.05.2020 17:44:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TS](
	[idTeacher] [int] NOT NULL,
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
INSERT [dbo].[Department1] ([NamberDepartment], [Year], [Manager], [idManager], [NumberGroup]) VALUES (N'3  ', N'2016      ', N'Гусева    ', N'1         ', 103)
INSERT [dbo].[Department1] ([NamberDepartment], [Year], [Manager], [idManager], [NumberGroup]) VALUES (N'2  ', N'2018      ', N'Конова    ', N'3         ', 200)
INSERT [dbo].[Department1] ([NamberDepartment], [Year], [Manager], [idManager], [NumberGroup]) VALUES (N'1  ', N'2018      ', N'Миланова  ', N'2         ', 202)
INSERT [dbo].[Department1] ([NamberDepartment], [Year], [Manager], [idManager], [NumberGroup]) VALUES (N'3  ', N'2018      ', N'Гусева    ', N'1         ', 204)
INSERT [dbo].[Department1] ([NamberDepartment], [Year], [Manager], [idManager], [NumberGroup]) VALUES (N'2  ', N'2017      ', N'Конова    ', N'3         ', 300)
INSERT [dbo].[Department1] ([NamberDepartment], [Year], [Manager], [idManager], [NumberGroup]) VALUES (N'1  ', N'2017      ', N'Миланова  ', N'2         ', 302)
INSERT [dbo].[Department1] ([NamberDepartment], [Year], [Manager], [idManager], [NumberGroup]) VALUES (N'3  ', N'2017      ', N'Гусева    ', N'1         ', 304)
INSERT [dbo].[Exam1] ([NamberStudent], [idExam], [idSubgect], [Semester], [Access], [Estimation], [DateDelivery]) VALUES (N'1              ', 1, 1, N'6', 1, 5, CAST(N'2020-06-25' AS Date))
INSERT [dbo].[Exam1] ([NamberStudent], [idExam], [idSubgect], [Semester], [Access], [Estimation], [DateDelivery]) VALUES (N'1              ', 2, 2, N'6', 1, 4, CAST(N'2020-06-24' AS Date))
INSERT [dbo].[Exam1] ([NamberStudent], [idExam], [idSubgect], [Semester], [Access], [Estimation], [DateDelivery]) VALUES (N'1              ', 3, 3, N'6', 1, 5, CAST(N'2020-06-22' AS Date))
INSERT [dbo].[Exam1] ([NamberStudent], [idExam], [idSubgect], [Semester], [Access], [Estimation], [DateDelivery]) VALUES (N'2              ', 4, 1, N'6', 1, 5, CAST(N'2020-06-25' AS Date))
INSERT [dbo].[Exam1] ([NamberStudent], [idExam], [idSubgect], [Semester], [Access], [Estimation], [DateDelivery]) VALUES (N'2              ', 5, 2, N'6', 1, 3, CAST(N'2020-06-24' AS Date))
INSERT [dbo].[Exam1] ([NamberStudent], [idExam], [idSubgect], [Semester], [Access], [Estimation], [DateDelivery]) VALUES (N'2              ', 6, 3, N'6', 1, 4, CAST(N'2020-06-22' AS Date))
INSERT [dbo].[Exam1] ([NamberStudent], [idExam], [idSubgect], [Semester], [Access], [Estimation], [DateDelivery]) VALUES (N'3              ', 7, 1, N'6', 0, 0, CAST(N'2020-06-25' AS Date))
INSERT [dbo].[Exam1] ([NamberStudent], [idExam], [idSubgect], [Semester], [Access], [Estimation], [DateDelivery]) VALUES (N'3              ', 8, 2, N'6', 1, 5, CAST(N'2020-06-24' AS Date))
INSERT [dbo].[Exam1] ([NamberStudent], [idExam], [idSubgect], [Semester], [Access], [Estimation], [DateDelivery]) VALUES (N'3              ', 9, 3, N'6', 1, 5, CAST(N'2020-06-22' AS Date))
INSERT [dbo].[Exam1] ([NamberStudent], [idExam], [idSubgect], [Semester], [Access], [Estimation], [DateDelivery]) VALUES (N'4              ', 10, 1, N'6', 1, 3, CAST(N'2020-06-25' AS Date))
INSERT [dbo].[Exam1] ([NamberStudent], [idExam], [idSubgect], [Semester], [Access], [Estimation], [DateDelivery]) VALUES (N'4              ', 11, 2, N'6', 1, 4, CAST(N'2020-06-24' AS Date))
INSERT [dbo].[Exam1] ([NamberStudent], [idExam], [idSubgect], [Semester], [Access], [Estimation], [DateDelivery]) VALUES (N'4              ', 12, 3, N'6', 1, 5, CAST(N'2020-06-22' AS Date))
INSERT [dbo].[Exam1] ([NamberStudent], [idExam], [idSubgect], [Semester], [Access], [Estimation], [DateDelivery]) VALUES (N'5              ', 13, 1, N'6', 0, 0, CAST(N'2020-06-25' AS Date))
INSERT [dbo].[Exam1] ([NamberStudent], [idExam], [idSubgect], [Semester], [Access], [Estimation], [DateDelivery]) VALUES (N'5              ', 14, 2, N'6', 1, 5, CAST(N'2020-06-24' AS Date))
INSERT [dbo].[Exam1] ([NamberStudent], [idExam], [idSubgect], [Semester], [Access], [Estimation], [DateDelivery]) VALUES (N'5              ', 15, 3, N'6', 1, 3, CAST(N'2020-06-22' AS Date))
INSERT [dbo].[Group] ([NumberGroup], [Year], [NumberDepartments], [TypeGroup], [idCurator], [idSpecialties]) VALUES (300, N'2020      ', N'2         ', 0, N'3         ', N'345-900   ')
INSERT [dbo].[Group] ([NumberGroup], [Year], [NumberDepartments], [TypeGroup], [idCurator], [idSpecialties]) VALUES (302, N'2020      ', N'3         ', 1, N'2         ', N'111-222   ')
INSERT [dbo].[Group] ([NumberGroup], [Year], [NumberDepartments], [TypeGroup], [idCurator], [idSpecialties]) VALUES (304, N'2020      ', N'3         ', 1, N'1         ', N'111-222   ')
INSERT [dbo].[Rols] ([idTeacher], [Login], [Password], [NameRole]) VALUES (1, N'Глускер', N'qwerty', N'Админ          ')
INSERT [dbo].[Rols] ([idTeacher], [Login], [Password], [NameRole]) VALUES (2, N'Ларионова      ', N'qwerty2    ', N'Пользователь   ')
INSERT [dbo].[Rols] ([idTeacher], [Login], [Password], [NameRole]) VALUES (3, N'Доррер         ', N'qwerty3    ', N'Пользователь   ')
INSERT [dbo].[Specialty] ([idSpecialties], [Year], [NameSpec], [NumberDepartment], [NumberGroup], [Type]) VALUES (1, N'2018-01-01', N'ПКС       ', N'3', 304, N'очная   ')
INSERT [dbo].[Specialty] ([idSpecialties], [Year], [NameSpec], [NumberDepartment], [NumberGroup], [Type]) VALUES (2, N'2018-01-01', N'КС        ', N'3', 302, N'очная   ')
INSERT [dbo].[Specialty] ([idSpecialties], [Year], [NameSpec], [NumberDepartment], [NumberGroup], [Type]) VALUES (3, N'2018-01-01', N'ИБ        ', N'2', 300, N'очная   ')
INSERT [dbo].[Student] ([NamberStudent], [LastName], [FerstName], [MiddleName], [Bithday], [Adddress], [PhoneNumber], [PassportSeries], [PassportNamber]) VALUES (N'1              ', N'Алексашенков   ', N'Никита         ', N'Петрович       ', CAST(N'2001-05-27' AS Date), N'Улица Победы   ', N'89153257915 ', 4615, 345676)
INSERT [dbo].[Student] ([NamberStudent], [LastName], [FerstName], [MiddleName], [Bithday], [Adddress], [PhoneNumber], [PassportSeries], [PassportNamber]) VALUES (N'10             ', N'Зайев          ', N'Александр      ', N'Евгеньевич     ', CAST(N'2001-02-02' AS Date), N'Москва         ', N'81534685945 ', 1515, 663344)
INSERT [dbo].[Student] ([NamberStudent], [LastName], [FerstName], [MiddleName], [Bithday], [Adddress], [PhoneNumber], [PassportSeries], [PassportNamber]) VALUES (N'11             ', N'Кувшинов       ', N'Михаил         ', N'Валерьевич     ', CAST(N'2001-04-13' AS Date), N'Москва         ', N'84536579465 ', 6615, 774466)
INSERT [dbo].[Student] ([NamberStudent], [LastName], [FerstName], [MiddleName], [Bithday], [Adddress], [PhoneNumber], [PassportSeries], [PassportNamber]) VALUES (N'12             ', N'Кулинечев      ', N'Павел          ', N'Вальрьевич     ', CAST(N'2001-09-30' AS Date), N'Москва         ', N'89453748573 ', 3415, 558877)
INSERT [dbo].[Student] ([NamberStudent], [LastName], [FerstName], [MiddleName], [Bithday], [Adddress], [PhoneNumber], [PassportSeries], [PassportNamber]) VALUES (N'13             ', N'Лопаткин       ', N'Виталий        ', N'Владимирович   ', CAST(N'2001-01-17' AS Date), N'Ногинск        ', N'84653782940 ', 8715, 884455)
INSERT [dbo].[Student] ([NamberStudent], [LastName], [FerstName], [MiddleName], [Bithday], [Adddress], [PhoneNumber], [PassportSeries], [PassportNamber]) VALUES (N'14             ', N'Маиров         ', N'Джамбулат      ', N'Залимович      ', CAST(N'2001-05-20' AS Date), N'Москва         ', N'89153685914 ', 8915, 446655)
INSERT [dbo].[Student] ([NamberStudent], [LastName], [FerstName], [MiddleName], [Bithday], [Adddress], [PhoneNumber], [PassportSeries], [PassportNamber]) VALUES (N'15             ', N'Малинин        ', N'Никита         ', N'Сергеевич      ', CAST(N'1999-04-18' AS Date), N'Москва         ', N'893546710725', 8815, 665577)
INSERT [dbo].[Student] ([NamberStudent], [LastName], [FerstName], [MiddleName], [Bithday], [Adddress], [PhoneNumber], [PassportSeries], [PassportNamber]) VALUES (N'16             ', N'Медведева      ', N'Елизовета      ', N'Константиновна ', CAST(N'2001-08-25' AS Date), N'Павловский     ', N'83254809856 ', 4415, 887799)
INSERT [dbo].[Student] ([NamberStudent], [LastName], [FerstName], [MiddleName], [Bithday], [Adddress], [PhoneNumber], [PassportSeries], [PassportNamber]) VALUES (N'17             ', N'Морозов        ', N'Игорь          ', N'Михайлович     ', CAST(N'2001-11-30' AS Date), N'Москва         ', N'89325679166 ', 7615, 552244)
INSERT [dbo].[Student] ([NamberStudent], [LastName], [FerstName], [MiddleName], [Bithday], [Adddress], [PhoneNumber], [PassportSeries], [PassportNamber]) VALUES (N'18             ', N'Мочалова       ', N'Екатерина      ', N'Вячеславовна   ', CAST(N'2001-07-15' AS Date), N'Сергеев        ', N'89167438061 ', 2015, 778866)
INSERT [dbo].[Student] ([NamberStudent], [LastName], [FerstName], [MiddleName], [Bithday], [Adddress], [PhoneNumber], [PassportSeries], [PassportNamber]) VALUES (N'19             ', N'Полозов        ', N'Виталий        ', N'Сергеевич      ', CAST(N'2001-06-14' AS Date), N'Зеленогорск    ', N'89156378692 ', 5515, 556644)
INSERT [dbo].[Student] ([NamberStudent], [LastName], [FerstName], [MiddleName], [Bithday], [Adddress], [PhoneNumber], [PassportSeries], [PassportNamber]) VALUES (N'2              ', N'Алигин         ', N'Максим         ', N'Игоревич       ', CAST(N'2001-06-01' AS Date), N'Улица Дружбы 34', N'89163457693 ', 4515, 546787)
INSERT [dbo].[Student] ([NamberStudent], [LastName], [FerstName], [MiddleName], [Bithday], [Adddress], [PhoneNumber], [PassportSeries], [PassportNamber]) VALUES (N'20             ', N'Попов          ', N'Никита         ', N'Сергеевич      ', CAST(N'2001-08-30' AS Date), N'Ногинск        ', N'89163057824 ', 9415, 334466)
INSERT [dbo].[Student] ([NamberStudent], [LastName], [FerstName], [MiddleName], [Bithday], [Adddress], [PhoneNumber], [PassportSeries], [PassportNamber]) VALUES (N'21             ', N'Посысаев       ', N'Владислав      ', N'Вячеславович   ', CAST(N'2001-10-10' AS Date), N'Томбов         ', N'8918657491  ', 9015, 990088)
INSERT [dbo].[Student] ([NamberStudent], [LastName], [FerstName], [MiddleName], [Bithday], [Adddress], [PhoneNumber], [PassportSeries], [PassportNamber]) VALUES (N'22             ', N'Томский        ', N'Николай        ', N'Алексеевич     ', CAST(N'2001-05-16' AS Date), N'Ногинск        ', N'88453754671 ', 4015, 556677)
INSERT [dbo].[Student] ([NamberStudent], [LastName], [FerstName], [MiddleName], [Bithday], [Adddress], [PhoneNumber], [PassportSeries], [PassportNamber]) VALUES (N'23             ', N'Улендеев       ', N'Дмитрий        ', N'Юрьевич        ', CAST(N'2001-08-19' AS Date), N'Неверленд      ', N'893454789016', 7716, 887766)
INSERT [dbo].[Student] ([NamberStudent], [LastName], [FerstName], [MiddleName], [Bithday], [Adddress], [PhoneNumber], [PassportSeries], [PassportNamber]) VALUES (N'24             ', N'Устинов        ', N'Сергей         ', N'Сергеевич      ', CAST(N'2001-09-25' AS Date), N'Ногинск        ', N'89453675815 ', 8915, 445566)
INSERT [dbo].[Student] ([NamberStudent], [LastName], [FerstName], [MiddleName], [Bithday], [Adddress], [PhoneNumber], [PassportSeries], [PassportNamber]) VALUES (N'25             ', N'Федотов        ', N'Федор          ', N'Андреевич      ', CAST(N'2001-09-13' AS Date), N'Подольск       ', N'89153257916 ', 4515, 334455)
INSERT [dbo].[Student] ([NamberStudent], [LastName], [FerstName], [MiddleName], [Bithday], [Adddress], [PhoneNumber], [PassportSeries], [PassportNamber]) VALUES (N'26             ', N'Шорохов        ', N'Дмитрий        ', N'Валерьевич     ', CAST(N'2000-02-04' AS Date), N'Ногинск        ', N'89345673891 ', 4515, 556677)
INSERT [dbo].[Student] ([NamberStudent], [LastName], [FerstName], [MiddleName], [Bithday], [Adddress], [PhoneNumber], [PassportSeries], [PassportNamber]) VALUES (N'3              ', N'Березников     ', N'Василий        ', N'Павлович       ', CAST(N'2001-12-05' AS Date), N'Балашиха       ', N'89093638473 ', 4315, 657893)
INSERT [dbo].[Student] ([NamberStudent], [LastName], [FerstName], [MiddleName], [Bithday], [Adddress], [PhoneNumber], [PassportSeries], [PassportNamber]) VALUES (N'4              ', N'Большанов      ', N'Сергей         ', N'Алексеевич     ', CAST(N'2001-05-06' AS Date), N'Москва         ', N'89154783957 ', 2315, 456780)
INSERT [dbo].[Student] ([NamberStudent], [LastName], [FerstName], [MiddleName], [Bithday], [Adddress], [PhoneNumber], [PassportSeries], [PassportNamber]) VALUES (N'5              ', N'Борисов        ', N'Иван           ', N'Сергеевич      ', CAST(N'2001-10-07' AS Date), N'Ногинск        ', N'84937384794 ', 1415, 456376)
INSERT [dbo].[Student] ([NamberStudent], [LastName], [FerstName], [MiddleName], [Bithday], [Adddress], [PhoneNumber], [PassportSeries], [PassportNamber]) VALUES (N'6              ', N'Бурханов       ', N'Никита         ', N'Алексеевич     ', CAST(N'2001-09-06' AS Date), N'Электросталь   ', N'89164736547 ', 2615, 123456)
INSERT [dbo].[Student] ([NamberStudent], [LastName], [FerstName], [MiddleName], [Bithday], [Adddress], [PhoneNumber], [PassportSeries], [PassportNamber]) VALUES (N'7              ', N'Громов         ', N'Павел          ', N'Дмитриевич     ', CAST(N'2001-10-12' AS Date), N'Бутово         ', N'89543685936 ', 4715, 456789)
INSERT [dbo].[Student] ([NamberStudent], [LastName], [FerstName], [MiddleName], [Bithday], [Adddress], [PhoneNumber], [PassportSeries], [PassportNamber]) VALUES (N'8              ', N'Дулова         ', N'Дарья          ', N'Павловна       ', CAST(N'2001-06-21' AS Date), N'Москва         ', N'89132456789 ', 2615, 998833)
INSERT [dbo].[Student] ([NamberStudent], [LastName], [FerstName], [MiddleName], [Bithday], [Adddress], [PhoneNumber], [PassportSeries], [PassportNamber]) VALUES (N'9              ', N'Евдокимов      ', N'Юрий           ', N'Олегович       ', CAST(N'2001-07-18' AS Date), N'Балашиха       ', N'81326584967 ', 3815, 559900)
INSERT [dbo].[Studying] ([NamberStudent], [NumberGroup], [Year], [Admission], [Allocation]) VALUES (N'1              ', 304, 2020, CAST(N'2017-09-01' AS Date), CAST(N'2022-06-25' AS Date))
INSERT [dbo].[Studying] ([NamberStudent], [NumberGroup], [Year], [Admission], [Allocation]) VALUES (N'10             ', 304, 2020, CAST(N'2017-09-01' AS Date), CAST(N'2022-06-25' AS Date))
INSERT [dbo].[Studying] ([NamberStudent], [NumberGroup], [Year], [Admission], [Allocation]) VALUES (N'11             ', 304, 2020, CAST(N'2017-09-01' AS Date), CAST(N'2022-06-25' AS Date))
INSERT [dbo].[Studying] ([NamberStudent], [NumberGroup], [Year], [Admission], [Allocation]) VALUES (N'12             ', 304, 2020, CAST(N'2017-09-01' AS Date), CAST(N'2022-06-25' AS Date))
INSERT [dbo].[Studying] ([NamberStudent], [NumberGroup], [Year], [Admission], [Allocation]) VALUES (N'13             ', 304, 2020, CAST(N'2017-09-01' AS Date), CAST(N'2022-06-25' AS Date))
INSERT [dbo].[Studying] ([NamberStudent], [NumberGroup], [Year], [Admission], [Allocation]) VALUES (N'14             ', 304, 2020, CAST(N'2017-09-01' AS Date), CAST(N'2022-06-25' AS Date))
INSERT [dbo].[Studying] ([NamberStudent], [NumberGroup], [Year], [Admission], [Allocation]) VALUES (N'15             ', 304, 2020, CAST(N'2017-09-01' AS Date), CAST(N'2022-06-25' AS Date))
INSERT [dbo].[Studying] ([NamberStudent], [NumberGroup], [Year], [Admission], [Allocation]) VALUES (N'16             ', 304, 2020, CAST(N'2017-09-01' AS Date), CAST(N'2022-06-25' AS Date))
INSERT [dbo].[Studying] ([NamberStudent], [NumberGroup], [Year], [Admission], [Allocation]) VALUES (N'17             ', 304, 2020, CAST(N'2017-09-01' AS Date), CAST(N'2022-06-25' AS Date))
INSERT [dbo].[Studying] ([NamberStudent], [NumberGroup], [Year], [Admission], [Allocation]) VALUES (N'18             ', 304, 2020, CAST(N'2017-09-01' AS Date), CAST(N'2022-06-25' AS Date))
INSERT [dbo].[Studying] ([NamberStudent], [NumberGroup], [Year], [Admission], [Allocation]) VALUES (N'19             ', 304, 2020, CAST(N'2017-09-01' AS Date), CAST(N'2022-06-25' AS Date))
INSERT [dbo].[Studying] ([NamberStudent], [NumberGroup], [Year], [Admission], [Allocation]) VALUES (N'2              ', 304, 2020, CAST(N'2017-09-01' AS Date), CAST(N'2022-06-25' AS Date))
INSERT [dbo].[Studying] ([NamberStudent], [NumberGroup], [Year], [Admission], [Allocation]) VALUES (N'20             ', 304, 2020, CAST(N'2017-09-01' AS Date), CAST(N'2022-06-25' AS Date))
INSERT [dbo].[Studying] ([NamberStudent], [NumberGroup], [Year], [Admission], [Allocation]) VALUES (N'21             ', 304, 2020, CAST(N'2017-09-01' AS Date), CAST(N'2022-06-25' AS Date))
INSERT [dbo].[Studying] ([NamberStudent], [NumberGroup], [Year], [Admission], [Allocation]) VALUES (N'22             ', 304, 2020, CAST(N'2017-09-01' AS Date), CAST(N'2022-06-25' AS Date))
INSERT [dbo].[Studying] ([NamberStudent], [NumberGroup], [Year], [Admission], [Allocation]) VALUES (N'23             ', 304, 2020, CAST(N'2017-09-01' AS Date), CAST(N'2022-06-25' AS Date))
INSERT [dbo].[Studying] ([NamberStudent], [NumberGroup], [Year], [Admission], [Allocation]) VALUES (N'24             ', 304, 2020, CAST(N'2017-09-01' AS Date), CAST(N'2022-06-25' AS Date))
INSERT [dbo].[Studying] ([NamberStudent], [NumberGroup], [Year], [Admission], [Allocation]) VALUES (N'25             ', 304, 2020, CAST(N'2017-09-01' AS Date), CAST(N'2022-06-25' AS Date))
INSERT [dbo].[Studying] ([NamberStudent], [NumberGroup], [Year], [Admission], [Allocation]) VALUES (N'26             ', 304, 2020, CAST(N'2017-09-01' AS Date), CAST(N'2022-06-25' AS Date))
INSERT [dbo].[Studying] ([NamberStudent], [NumberGroup], [Year], [Admission], [Allocation]) VALUES (N'3              ', 304, 2020, CAST(N'2017-09-01' AS Date), CAST(N'2022-06-25' AS Date))
INSERT [dbo].[Studying] ([NamberStudent], [NumberGroup], [Year], [Admission], [Allocation]) VALUES (N'4              ', 304, 2020, CAST(N'2017-09-01' AS Date), CAST(N'2022-06-25' AS Date))
INSERT [dbo].[Studying] ([NamberStudent], [NumberGroup], [Year], [Admission], [Allocation]) VALUES (N'5              ', 304, 2020, CAST(N'2017-09-01' AS Date), CAST(N'2022-06-25' AS Date))
INSERT [dbo].[Studying] ([NamberStudent], [NumberGroup], [Year], [Admission], [Allocation]) VALUES (N'6              ', 304, 2020, CAST(N'2017-09-01' AS Date), CAST(N'2022-06-25' AS Date))
INSERT [dbo].[Studying] ([NamberStudent], [NumberGroup], [Year], [Admission], [Allocation]) VALUES (N'7              ', 304, 2020, CAST(N'2017-09-01' AS Date), CAST(N'2022-06-25' AS Date))
INSERT [dbo].[Studying] ([NamberStudent], [NumberGroup], [Year], [Admission], [Allocation]) VALUES (N'8              ', 304, 2020, CAST(N'2017-09-01' AS Date), CAST(N'2022-06-25' AS Date))
INSERT [dbo].[Studying] ([NamberStudent], [NumberGroup], [Year], [Admission], [Allocation]) VALUES (N'9              ', 304, 2020, CAST(N'2017-09-01' AS Date), CAST(N'2022-06-25' AS Date))
INSERT [dbo].[Subject] ([idSubject], [nameSubject], [idSpecialties], [Time], [idTeacher]) VALUES (1, N'ПП        ', N'111       ', N'30        ', N'1         ')
INSERT [dbo].[Subject] ([idSubject], [nameSubject], [idSpecialties], [Time], [idTeacher]) VALUES (2, N'БД        ', N'111       ', N'50        ', N'2         ')
INSERT [dbo].[Subject] ([idSubject], [nameSubject], [idSpecialties], [Time], [idTeacher]) VALUES (3, N'УП        ', N'111       ', N'35        ', N'3         ')
INSERT [dbo].[SubSpec] ([IdSubject], [idTeacher]) VALUES (1, N'1         ')
INSERT [dbo].[SubSpec] ([IdSubject], [idTeacher]) VALUES (2, N'2         ')
INSERT [dbo].[SubSpec] ([IdSubject], [idTeacher]) VALUES (3, N'3         ')
INSERT [dbo].[Teacher] ([idTeacher], [LastName], [FerstName], [MiddleName], [Experience], [Discharge], [Category], [Bithday]) VALUES (1, N'Глускер        ', N'Александр      ', N'Игоревич       ', N'7         ', N'1         ', N'первая    ', CAST(N'1980-01-20' AS Date))
INSERT [dbo].[Teacher] ([idTeacher], [LastName], [FerstName], [MiddleName], [Experience], [Discharge], [Category], [Bithday]) VALUES (2, N'Ларионова      ', N'Елена          ', N'Анатольевна    ', N'33        ', N'1         ', N'высшая    ', CAST(N'1975-05-13' AS Date))
INSERT [dbo].[Teacher] ([idTeacher], [LastName], [FerstName], [MiddleName], [Experience], [Discharge], [Category], [Bithday]) VALUES (3, N'Доррер         ', N'Татьяна        ', N'Васильевна     ', N'18        ', N'1         ', N'высшая    ', CAST(N'1970-10-12' AS Date))
INSERT [dbo].[TS] ([idTeacher], [Year], [idSubgect], [Salary], [Time]) VALUES (1, N'2020 ', 1, N'200000    ', 12)
INSERT [dbo].[TS] ([idTeacher], [Year], [idSubgect], [Salary], [Time]) VALUES (2, N'2020 ', 2, N'300000    ', 15)
INSERT [dbo].[TS] ([idTeacher], [Year], [idSubgect], [Salary], [Time]) VALUES (3, N'2020 ', 3, N'200000    ', 10)
ALTER TABLE [dbo].[Exam1]  WITH CHECK ADD  CONSTRAINT [FK_Exam1_Student] FOREIGN KEY([NamberStudent])
REFERENCES [dbo].[Student] ([NamberStudent])
GO
ALTER TABLE [dbo].[Exam1] CHECK CONSTRAINT [FK_Exam1_Student]
GO
ALTER TABLE [dbo].[Rols]  WITH NOCHECK ADD  CONSTRAINT [FK_Rols_Teacher] FOREIGN KEY([idTeacher])
REFERENCES [dbo].[Teacher] ([idTeacher])
GO
ALTER TABLE [dbo].[Rols] NOCHECK CONSTRAINT [FK_Rols_Teacher]
GO
ALTER TABLE [dbo].[Specialty]  WITH CHECK ADD  CONSTRAINT [FK_Specialty_Department1] FOREIGN KEY([NumberGroup])
REFERENCES [dbo].[Department1] ([NumberGroup])
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
ALTER TABLE [dbo].[SubSpec]  WITH CHECK ADD  CONSTRAINT [FK_SubSpec_Specialty1] FOREIGN KEY([IdSubject])
REFERENCES [dbo].[Specialty] ([idSpecialties])
GO
ALTER TABLE [dbo].[SubSpec] CHECK CONSTRAINT [FK_SubSpec_Specialty1]
GO
ALTER TABLE [dbo].[SubSpec]  WITH CHECK ADD  CONSTRAINT [FK_SubSpec_Subject] FOREIGN KEY([IdSubject])
REFERENCES [dbo].[Subject] ([idSubject])
GO
ALTER TABLE [dbo].[SubSpec] CHECK CONSTRAINT [FK_SubSpec_Subject]
GO
ALTER TABLE [dbo].[TS]  WITH CHECK ADD  CONSTRAINT [FK_TS_Exam11] FOREIGN KEY([idSubgect])
REFERENCES [dbo].[Exam1] ([idExam])
GO
ALTER TABLE [dbo].[TS] CHECK CONSTRAINT [FK_TS_Exam11]
GO
ALTER TABLE [dbo].[TS]  WITH CHECK ADD  CONSTRAINT [FK_TS_Subject] FOREIGN KEY([idSubgect])
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
