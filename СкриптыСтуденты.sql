USE [master]
GO
/****** Object:  Database [Students]    Script Date: 17.05.2020 21:46:09 ******/
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
/****** Object:  Table [dbo].[Department1]    Script Date: 17.05.2020 21:46:10 ******/
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
/****** Object:  Table [dbo].[Exam1]    Script Date: 17.05.2020 21:46:10 ******/
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
/****** Object:  Table [dbo].[Group]    Script Date: 17.05.2020 21:46:10 ******/
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
/****** Object:  Table [dbo].[Rols]    Script Date: 17.05.2020 21:46:10 ******/
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
/****** Object:  Table [dbo].[Specialty]    Script Date: 17.05.2020 21:46:10 ******/
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
/****** Object:  Table [dbo].[Student]    Script Date: 17.05.2020 21:46:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Student](
	[NamberStudent] [nchar](15) NOT NULL,
	[LastName] [nvarchar](50) NULL,
	[FerstName] [nvarchar](50) NULL,
	[MiddleName] [nvarchar](50) NULL,
	[Bithday] [date] NULL,
	[Adress] [nvarchar](50) NULL,
	[PhoneNumber] [nvarchar](50) NULL,
	[PassportSeries] [int] NULL,
	[PassportNumber] [int] NULL,
 CONSTRAINT [PK_Student] PRIMARY KEY CLUSTERED 
(
	[NamberStudent] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Studying]    Script Date: 17.05.2020 21:46:10 ******/
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
/****** Object:  Table [dbo].[Subject]    Script Date: 17.05.2020 21:46:10 ******/
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
/****** Object:  Table [dbo].[SubSpec]    Script Date: 17.05.2020 21:46:10 ******/
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
/****** Object:  Table [dbo].[Teacher]    Script Date: 17.05.2020 21:46:10 ******/
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
/****** Object:  Table [dbo].[TS]    Script Date: 17.05.2020 21:46:10 ******/
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
INSERT [dbo].[Department1] ([NamberDepartment], [Year], [Manager], [idManager], [NumberGroup]) VALUES (N'1  ', N'2020      ', N'Конова    ', N'1         ', 300)
INSERT [dbo].[Department1] ([NamberDepartment], [Year], [Manager], [idManager], [NumberGroup]) VALUES (N'2  ', N'2020      ', N'Миланова  ', N'2         ', 302)
INSERT [dbo].[Department1] ([NamberDepartment], [Year], [Manager], [idManager], [NumberGroup]) VALUES (N'3  ', N'2020      ', N'Гусева    ', N'3         ', 304)
INSERT [dbo].[Exam1] ([NamberStudent], [idExam], [idSubgect], [Semester], [Access], [Estimation], [DateDelivery]) VALUES (N'1              ', 1, 1, N'6', 1, 5, CAST(N'2020-06-25' AS Date))
INSERT [dbo].[Exam1] ([NamberStudent], [idExam], [idSubgect], [Semester], [Access], [Estimation], [DateDelivery]) VALUES (N'1              ', 2, 2, N'6', 1, 4, CAST(N'2020-06-24' AS Date))
INSERT [dbo].[Exam1] ([NamberStudent], [idExam], [idSubgect], [Semester], [Access], [Estimation], [DateDelivery]) VALUES (N'1              ', 3, 3, N'6', 1, 5, CAST(N'2020-06-22' AS Date))
INSERT [dbo].[Exam1] ([NamberStudent], [idExam], [idSubgect], [Semester], [Access], [Estimation], [DateDelivery]) VALUES (N'1              ', 4, 4, N'6', 1, 5, CAST(N'2020-06-20' AS Date))
INSERT [dbo].[Exam1] ([NamberStudent], [idExam], [idSubgect], [Semester], [Access], [Estimation], [DateDelivery]) VALUES (N'1              ', 5, 5, N'6', 1, 5, CAST(N'2020-06-19' AS Date))
INSERT [dbo].[Exam1] ([NamberStudent], [idExam], [idSubgect], [Semester], [Access], [Estimation], [DateDelivery]) VALUES (N'2              ', 6, 1, N'6', 1, 5, CAST(N'2020-06-25' AS Date))
INSERT [dbo].[Exam1] ([NamberStudent], [idExam], [idSubgect], [Semester], [Access], [Estimation], [DateDelivery]) VALUES (N'2              ', 7, 2, N'6', 1, 5, CAST(N'2020-06-24' AS Date))
INSERT [dbo].[Exam1] ([NamberStudent], [idExam], [idSubgect], [Semester], [Access], [Estimation], [DateDelivery]) VALUES (N'2              ', 8, 3, N'6', 1, 5, CAST(N'2020-06-22' AS Date))
INSERT [dbo].[Exam1] ([NamberStudent], [idExam], [idSubgect], [Semester], [Access], [Estimation], [DateDelivery]) VALUES (N'2              ', 9, 4, N'6', 1, 5, CAST(N'2020-06-20' AS Date))
INSERT [dbo].[Exam1] ([NamberStudent], [idExam], [idSubgect], [Semester], [Access], [Estimation], [DateDelivery]) VALUES (N'2              ', 10, 5, N'6', 1, 5, CAST(N'2020-06-19' AS Date))
INSERT [dbo].[Exam1] ([NamberStudent], [idExam], [idSubgect], [Semester], [Access], [Estimation], [DateDelivery]) VALUES (N'3              ', 11, 1, N'6', 1, 5, CAST(N'2020-06-25' AS Date))
INSERT [dbo].[Exam1] ([NamberStudent], [idExam], [idSubgect], [Semester], [Access], [Estimation], [DateDelivery]) VALUES (N'3              ', 12, 2, N'6', 1, 4, CAST(N'2020-06-24' AS Date))
INSERT [dbo].[Exam1] ([NamberStudent], [idExam], [idSubgect], [Semester], [Access], [Estimation], [DateDelivery]) VALUES (N'3              ', 13, 3, N'6', 0, 2, CAST(N'2020-06-22' AS Date))
INSERT [dbo].[Exam1] ([NamberStudent], [idExam], [idSubgect], [Semester], [Access], [Estimation], [DateDelivery]) VALUES (N'3              ', 14, 4, N'6', 1, 5, CAST(N'2020-06-20' AS Date))
INSERT [dbo].[Exam1] ([NamberStudent], [idExam], [idSubgect], [Semester], [Access], [Estimation], [DateDelivery]) VALUES (N'3              ', 15, 5, N'6', 1, 4, CAST(N'2020-06-19' AS Date))
INSERT [dbo].[Exam1] ([NamberStudent], [idExam], [idSubgect], [Semester], [Access], [Estimation], [DateDelivery]) VALUES (N'4              ', 16, 1, N'6', 0, 2, CAST(N'2020-06-25' AS Date))
INSERT [dbo].[Exam1] ([NamberStudent], [idExam], [idSubgect], [Semester], [Access], [Estimation], [DateDelivery]) VALUES (N'4              ', 17, 2, N'6', 0, 2, CAST(N'2020-06-24' AS Date))
INSERT [dbo].[Exam1] ([NamberStudent], [idExam], [idSubgect], [Semester], [Access], [Estimation], [DateDelivery]) VALUES (N'4              ', 18, 3, N'6', 1, 4, CAST(N'2020-06-22' AS Date))
INSERT [dbo].[Exam1] ([NamberStudent], [idExam], [idSubgect], [Semester], [Access], [Estimation], [DateDelivery]) VALUES (N'4              ', 19, 4, N'6', 1, 5, CAST(N'2020-06-20' AS Date))
INSERT [dbo].[Exam1] ([NamberStudent], [idExam], [idSubgect], [Semester], [Access], [Estimation], [DateDelivery]) VALUES (N'4              ', 20, 5, N'6', 0, 2, CAST(N'2020-06-19' AS Date))
INSERT [dbo].[Exam1] ([NamberStudent], [idExam], [idSubgect], [Semester], [Access], [Estimation], [DateDelivery]) VALUES (N'5              ', 21, 1, N'6', 1, 3, CAST(N'2020-06-25' AS Date))
INSERT [dbo].[Exam1] ([NamberStudent], [idExam], [idSubgect], [Semester], [Access], [Estimation], [DateDelivery]) VALUES (N'5              ', 22, 2, N'6', 0, 2, CAST(N'2020-06-24' AS Date))
INSERT [dbo].[Exam1] ([NamberStudent], [idExam], [idSubgect], [Semester], [Access], [Estimation], [DateDelivery]) VALUES (N'5              ', 23, 3, N'6', 0, 2, CAST(N'2020-06-22' AS Date))
INSERT [dbo].[Exam1] ([NamberStudent], [idExam], [idSubgect], [Semester], [Access], [Estimation], [DateDelivery]) VALUES (N'5              ', 24, 4, N'6', 1, 4, CAST(N'2020-06-20' AS Date))
INSERT [dbo].[Exam1] ([NamberStudent], [idExam], [idSubgect], [Semester], [Access], [Estimation], [DateDelivery]) VALUES (N'5              ', 25, 5, N'6', 1, 3, CAST(N'2020-06-19' AS Date))
INSERT [dbo].[Group] ([NumberGroup], [Year], [NumberDepartments], [TypeGroup], [idCurator], [idSpecialties]) VALUES (300, N'2020      ', N'2         ', 0, N'2         ', N'2         ')
INSERT [dbo].[Group] ([NumberGroup], [Year], [NumberDepartments], [TypeGroup], [idCurator], [idSpecialties]) VALUES (302, N'2020      ', N'2         ', 1, N'3         ', N'1         ')
INSERT [dbo].[Group] ([NumberGroup], [Year], [NumberDepartments], [TypeGroup], [idCurator], [idSpecialties]) VALUES (304, N'2020      ', N'3         ', 1, N'4         ', N'1         ')
INSERT [dbo].[Rols] ([idTeacher], [Login], [Password], [NameRole]) VALUES (1, N'Глускер', N'qwerty', N'Админ')
INSERT [dbo].[Rols] ([idTeacher], [Login], [Password], [NameRole]) VALUES (2, N'Ларионова      ', N'qwerty2', N'Модератор')
INSERT [dbo].[Rols] ([idTeacher], [Login], [Password], [NameRole]) VALUES (3, N'Доррер', N'qwerty3', N'Пользователь')
INSERT [dbo].[Rols] ([idTeacher], [Login], [Password], [NameRole]) VALUES (4, N'Надаева', N'qwerty4', N'Пользователь')
INSERT [dbo].[Rols] ([idTeacher], [Login], [Password], [NameRole]) VALUES (5, N'Гусева', N'qwerty5', N'Модератор')
INSERT [dbo].[Rols] ([idTeacher], [Login], [Password], [NameRole]) VALUES (6, N'Федотов', N'92Alisa2012', N'Админ')
INSERT [dbo].[Rols] ([idTeacher], [Login], [Password], [NameRole]) VALUES (8, N'Fedotov.lox', N'ufdyj', N'Пользователь')
INSERT [dbo].[Specialty] ([idSpecialties], [Year], [NameSpec], [NumberDepartment], [NumberGroup], [Type]) VALUES (1, N'2020-01-01', N'ПКС       ', N'3', 304, N'очная   ')
INSERT [dbo].[Specialty] ([idSpecialties], [Year], [NameSpec], [NumberDepartment], [NumberGroup], [Type]) VALUES (2, N'2020-01-01', N'КС        ', N'2', 302, N'очная   ')
INSERT [dbo].[Specialty] ([idSpecialties], [Year], [NameSpec], [NumberDepartment], [NumberGroup], [Type]) VALUES (3, N'2020-01-01', N'ИБ        ', N'1', 300, N'очная   ')
INSERT [dbo].[Student] ([NamberStudent], [LastName], [FerstName], [MiddleName], [Bithday], [Adress], [PhoneNumber], [PassportSeries], [PassportNumber]) VALUES (N'1              ', N'Алексашенков   ', N'Никита         ', N'Петрович       ', CAST(N'2001-12-12' AS Date), N'Тушино         ', N'89153253434 ', 4563, 343432)
INSERT [dbo].[Student] ([NamberStudent], [LastName], [FerstName], [MiddleName], [Bithday], [Adress], [PhoneNumber], [PassportSeries], [PassportNumber]) VALUES (N'10             ', N'Зайцев', N'Александр', N'Евгеньевич', CAST(N'2001-09-13' AS Date), N'Москва', N'89153253434 ', 4321, 356433)
INSERT [dbo].[Student] ([NamberStudent], [LastName], [FerstName], [MiddleName], [Bithday], [Adress], [PhoneNumber], [PassportSeries], [PassportNumber]) VALUES (N'11             ', N'Кувшинов', N'Михаил', N'Валерьевич', CAST(N'2001-09-13' AS Date), N'Москва', N'89153253434 ', 2345, 574744)
INSERT [dbo].[Student] ([NamberStudent], [LastName], [FerstName], [MiddleName], [Bithday], [Adress], [PhoneNumber], [PassportSeries], [PassportNumber]) VALUES (N'12             ', N'Кулиничев', N'Павел', N'Валерьевич', CAST(N'2001-09-13' AS Date), N'Москва', N'89153253434 ', 4622, 457444)
INSERT [dbo].[Student] ([NamberStudent], [LastName], [FerstName], [MiddleName], [Bithday], [Adress], [PhoneNumber], [PassportSeries], [PassportNumber]) VALUES (N'13             ', N'Лопаткин', N'Виталий', N'Владимирович', CAST(N'2001-09-13' AS Date), N'Ногинск', N'89153253434 ', 8543, 467867)
INSERT [dbo].[Student] ([NamberStudent], [LastName], [FerstName], [MiddleName], [Bithday], [Adress], [PhoneNumber], [PassportSeries], [PassportNumber]) VALUES (N'14             ', N'Маиров', N'Джамбулат', N'Залимович', CAST(N'2001-09-13' AS Date), N'Москва', N'89153253434 ', 4343, 756667)
INSERT [dbo].[Student] ([NamberStudent], [LastName], [FerstName], [MiddleName], [Bithday], [Adress], [PhoneNumber], [PassportSeries], [PassportNumber]) VALUES (N'15             ', N'Малинин', N'Никита', N'Сергеевич', CAST(N'2001-09-13' AS Date), N'Москва', N'89153253434 ', 3456, 675854)
INSERT [dbo].[Student] ([NamberStudent], [LastName], [FerstName], [MiddleName], [Bithday], [Adress], [PhoneNumber], [PassportSeries], [PassportNumber]) VALUES (N'16             ', N'Медведева', N'Елизавета', N'Константиновна', CAST(N'2001-09-13' AS Date), N'Москва', N'89153253434 ', 3432, 477544)
INSERT [dbo].[Student] ([NamberStudent], [LastName], [FerstName], [MiddleName], [Bithday], [Adress], [PhoneNumber], [PassportSeries], [PassportNumber]) VALUES (N'17             ', N'Морозов', N'Югорь', N'Михайлович', CAST(N'2001-09-13' AS Date), N'Люблино', N'89153253434 ', 3434, 475455)
INSERT [dbo].[Student] ([NamberStudent], [LastName], [FerstName], [MiddleName], [Bithday], [Adress], [PhoneNumber], [PassportSeries], [PassportNumber]) VALUES (N'18             ', N'Мочалова', N'Екатерина', N'Вячеславовна', CAST(N'2001-09-13' AS Date), N'Павловский Пасад', N'89153253434 ', 4543, 753356)
INSERT [dbo].[Student] ([NamberStudent], [LastName], [FerstName], [MiddleName], [Bithday], [Adress], [PhoneNumber], [PassportSeries], [PassportNumber]) VALUES (N'19             ', N'Полозов', N'Виталий', N'Сергеевич', CAST(N'2001-09-13' AS Date), N'Зеленогорск', N'89153253434 ', 4544, 355464)
INSERT [dbo].[Student] ([NamberStudent], [LastName], [FerstName], [MiddleName], [Bithday], [Adress], [PhoneNumber], [PassportSeries], [PassportNumber]) VALUES (N'2              ', N'Алигин', N'Максим', N'Игоревич', CAST(N'2001-09-13' AS Date), N'Сергеев Пасад', N'89153253434 ', 4654, 345355)
INSERT [dbo].[Student] ([NamberStudent], [LastName], [FerstName], [MiddleName], [Bithday], [Adress], [PhoneNumber], [PassportSeries], [PassportNumber]) VALUES (N'20             ', N'Попов', N'Никита', N'Сергеевич', CAST(N'2001-09-13' AS Date), N'Ногинск', N'89153253434 ', 4654, 334534)
INSERT [dbo].[Student] ([NamberStudent], [LastName], [FerstName], [MiddleName], [Bithday], [Adress], [PhoneNumber], [PassportSeries], [PassportNumber]) VALUES (N'21             ', N'Посысаев', N'Владислав', N'Вячеславович', CAST(N'2001-09-13' AS Date), N'Томбов', N'89153253434 ', 3443, 356643)
INSERT [dbo].[Student] ([NamberStudent], [LastName], [FerstName], [MiddleName], [Bithday], [Adress], [PhoneNumber], [PassportSeries], [PassportNumber]) VALUES (N'22             ', N'Томский', N'Николай', N'Алексеевич', CAST(N'2001-09-13' AS Date), N'Ногинск', N'89153253434 ', 4343, 547432)
INSERT [dbo].[Student] ([NamberStudent], [LastName], [FerstName], [MiddleName], [Bithday], [Adress], [PhoneNumber], [PassportSeries], [PassportNumber]) VALUES (N'23             ', N'Улендеев', N'Дмитрий', N'Юрьевич', CAST(N'2001-09-13' AS Date), N'Неверленд', N'89153253434 ', 3444, 134536)
INSERT [dbo].[Student] ([NamberStudent], [LastName], [FerstName], [MiddleName], [Bithday], [Adress], [PhoneNumber], [PassportSeries], [PassportNumber]) VALUES (N'24             ', N'Устинов', N'Сергей', N'Сергеевич', CAST(N'2001-09-13' AS Date), N'Ногинск', N'89153253434 ', 3433, 564747)
INSERT [dbo].[Student] ([NamberStudent], [LastName], [FerstName], [MiddleName], [Bithday], [Adress], [PhoneNumber], [PassportSeries], [PassportNumber]) VALUES (N'25             ', N'Федотов', N'Федор', N'Андреевич', CAST(N'2001-09-13' AS Date), N'Подольск', N'89153253434 ', 4534, 346336)
INSERT [dbo].[Student] ([NamberStudent], [LastName], [FerstName], [MiddleName], [Bithday], [Adress], [PhoneNumber], [PassportSeries], [PassportNumber]) VALUES (N'26             ', N'Шорохов', N'Дмитрий', N'Валерьевич', CAST(N'2001-09-13' AS Date), N'Ногинск', N'89153253434 ', 3432, 230932)
INSERT [dbo].[Student] ([NamberStudent], [LastName], [FerstName], [MiddleName], [Bithday], [Adress], [PhoneNumber], [PassportSeries], [PassportNumber]) VALUES (N'3              ', N'Березников', N'Василий', N'Павлович', CAST(N'2001-09-13' AS Date), N'Балашиха', N'89153253434 ', 2345, 346363)
INSERT [dbo].[Student] ([NamberStudent], [LastName], [FerstName], [MiddleName], [Bithday], [Adress], [PhoneNumber], [PassportSeries], [PassportNumber]) VALUES (N'4              ', N'Большанов', N'Сергей', N'Алексеевич', CAST(N'2001-09-13' AS Date), N'Бутово', N'89153253434 ', 4651, 634344)
INSERT [dbo].[Student] ([NamberStudent], [LastName], [FerstName], [MiddleName], [Bithday], [Adress], [PhoneNumber], [PassportSeries], [PassportNumber]) VALUES (N'5              ', N'Борисов', N'Иван', N'Сергеевич', CAST(N'2001-09-13' AS Date), N'Ногинск', N'89153253434 ', 6544, 346456)
INSERT [dbo].[Student] ([NamberStudent], [LastName], [FerstName], [MiddleName], [Bithday], [Adress], [PhoneNumber], [PassportSeries], [PassportNumber]) VALUES (N'6              ', N'Бурханов', N'Никита', N'Алексеевич', CAST(N'2001-09-13' AS Date), N'Электросталь', N'89153253434 ', 4325, 436366)
INSERT [dbo].[Student] ([NamberStudent], [LastName], [FerstName], [MiddleName], [Bithday], [Adress], [PhoneNumber], [PassportSeries], [PassportNumber]) VALUES (N'7              ', N'Громов', N'Павел', N'Дмитриевич', CAST(N'2001-09-13' AS Date), N'Бутово', N'89153253434 ', 3456, 436363)
INSERT [dbo].[Student] ([NamberStudent], [LastName], [FerstName], [MiddleName], [Bithday], [Adress], [PhoneNumber], [PassportSeries], [PassportNumber]) VALUES (N'8              ', N'Дулова', N'Дарья', N'Павловна', CAST(N'2001-09-13' AS Date), N'Москва', N'89153253434 ', 3456, 675646)
INSERT [dbo].[Student] ([NamberStudent], [LastName], [FerstName], [MiddleName], [Bithday], [Adress], [PhoneNumber], [PassportSeries], [PassportNumber]) VALUES (N'9              ', N'Евдокимов', N'Юрий', N'Олегович', CAST(N'2001-09-13' AS Date), N'Балашиха', N'89153253434 ', 5764, 456575)
INSERT [dbo].[Studying] ([NamberStudent], [NumberGroup], [Year], [Admission], [Allocation]) VALUES (N'1              ', 304, 2020, CAST(N'2016-09-01' AS Date), CAST(N'2021-06-25' AS Date))
INSERT [dbo].[Studying] ([NamberStudent], [NumberGroup], [Year], [Admission], [Allocation]) VALUES (N'10             ', 304, 2020, CAST(N'2016-09-01' AS Date), CAST(N'2021-06-25' AS Date))
INSERT [dbo].[Studying] ([NamberStudent], [NumberGroup], [Year], [Admission], [Allocation]) VALUES (N'11             ', 304, 2020, CAST(N'2016-09-01' AS Date), CAST(N'2021-06-25' AS Date))
INSERT [dbo].[Studying] ([NamberStudent], [NumberGroup], [Year], [Admission], [Allocation]) VALUES (N'12             ', 304, 2020, CAST(N'2016-09-01' AS Date), CAST(N'2021-06-25' AS Date))
INSERT [dbo].[Studying] ([NamberStudent], [NumberGroup], [Year], [Admission], [Allocation]) VALUES (N'13             ', 304, 2020, CAST(N'2016-09-01' AS Date), CAST(N'2021-06-25' AS Date))
INSERT [dbo].[Studying] ([NamberStudent], [NumberGroup], [Year], [Admission], [Allocation]) VALUES (N'14             ', 304, 2020, CAST(N'2016-09-01' AS Date), CAST(N'2021-06-25' AS Date))
INSERT [dbo].[Studying] ([NamberStudent], [NumberGroup], [Year], [Admission], [Allocation]) VALUES (N'15             ', 304, 2020, CAST(N'2016-09-01' AS Date), CAST(N'2021-06-25' AS Date))
INSERT [dbo].[Studying] ([NamberStudent], [NumberGroup], [Year], [Admission], [Allocation]) VALUES (N'16             ', 304, 2020, CAST(N'2016-09-01' AS Date), CAST(N'2021-06-25' AS Date))
INSERT [dbo].[Studying] ([NamberStudent], [NumberGroup], [Year], [Admission], [Allocation]) VALUES (N'17             ', 304, 2020, CAST(N'2016-09-01' AS Date), CAST(N'2021-06-25' AS Date))
INSERT [dbo].[Studying] ([NamberStudent], [NumberGroup], [Year], [Admission], [Allocation]) VALUES (N'18             ', 304, 2020, CAST(N'2016-09-01' AS Date), CAST(N'2021-06-25' AS Date))
INSERT [dbo].[Studying] ([NamberStudent], [NumberGroup], [Year], [Admission], [Allocation]) VALUES (N'19             ', 304, 2020, CAST(N'2016-09-01' AS Date), CAST(N'2021-06-25' AS Date))
INSERT [dbo].[Studying] ([NamberStudent], [NumberGroup], [Year], [Admission], [Allocation]) VALUES (N'2              ', 304, 2020, CAST(N'2016-09-01' AS Date), CAST(N'2021-06-25' AS Date))
INSERT [dbo].[Studying] ([NamberStudent], [NumberGroup], [Year], [Admission], [Allocation]) VALUES (N'20             ', 304, 2020, CAST(N'2016-09-01' AS Date), CAST(N'2021-06-25' AS Date))
INSERT [dbo].[Studying] ([NamberStudent], [NumberGroup], [Year], [Admission], [Allocation]) VALUES (N'21             ', 304, 2020, CAST(N'2016-09-01' AS Date), CAST(N'2021-06-25' AS Date))
INSERT [dbo].[Studying] ([NamberStudent], [NumberGroup], [Year], [Admission], [Allocation]) VALUES (N'22             ', 304, 2020, CAST(N'2016-09-01' AS Date), CAST(N'2021-06-25' AS Date))
INSERT [dbo].[Studying] ([NamberStudent], [NumberGroup], [Year], [Admission], [Allocation]) VALUES (N'23             ', 304, 2020, CAST(N'2016-09-01' AS Date), CAST(N'2021-06-25' AS Date))
INSERT [dbo].[Studying] ([NamberStudent], [NumberGroup], [Year], [Admission], [Allocation]) VALUES (N'24             ', 304, 2020, CAST(N'2016-09-01' AS Date), CAST(N'2021-06-25' AS Date))
INSERT [dbo].[Studying] ([NamberStudent], [NumberGroup], [Year], [Admission], [Allocation]) VALUES (N'25             ', 304, 2020, CAST(N'2016-09-01' AS Date), CAST(N'2021-06-25' AS Date))
INSERT [dbo].[Studying] ([NamberStudent], [NumberGroup], [Year], [Admission], [Allocation]) VALUES (N'26             ', 304, 2020, CAST(N'2016-09-01' AS Date), CAST(N'2021-06-25' AS Date))
INSERT [dbo].[Studying] ([NamberStudent], [NumberGroup], [Year], [Admission], [Allocation]) VALUES (N'3              ', 304, 2020, CAST(N'2016-09-01' AS Date), CAST(N'2021-06-25' AS Date))
INSERT [dbo].[Studying] ([NamberStudent], [NumberGroup], [Year], [Admission], [Allocation]) VALUES (N'4              ', 304, 2020, CAST(N'2016-09-01' AS Date), CAST(N'2021-06-25' AS Date))
INSERT [dbo].[Studying] ([NamberStudent], [NumberGroup], [Year], [Admission], [Allocation]) VALUES (N'5              ', 304, 2020, CAST(N'2016-09-01' AS Date), CAST(N'2021-06-25' AS Date))
INSERT [dbo].[Studying] ([NamberStudent], [NumberGroup], [Year], [Admission], [Allocation]) VALUES (N'6              ', 304, 2020, CAST(N'2016-09-01' AS Date), CAST(N'2021-06-25' AS Date))
INSERT [dbo].[Studying] ([NamberStudent], [NumberGroup], [Year], [Admission], [Allocation]) VALUES (N'7              ', 304, 2020, CAST(N'2016-09-01' AS Date), CAST(N'2021-06-25' AS Date))
INSERT [dbo].[Studying] ([NamberStudent], [NumberGroup], [Year], [Admission], [Allocation]) VALUES (N'8              ', 304, 2020, CAST(N'2016-09-01' AS Date), CAST(N'2021-06-25' AS Date))
INSERT [dbo].[Studying] ([NamberStudent], [NumberGroup], [Year], [Admission], [Allocation]) VALUES (N'9              ', 304, 2020, CAST(N'2016-09-01' AS Date), CAST(N'2021-06-25' AS Date))
INSERT [dbo].[Subject] ([idSubject], [nameSubject], [idSpecialties], [Time], [idTeacher]) VALUES (1, N'ПП        ', N'1         ', N'30        ', N'1         ')
INSERT [dbo].[Subject] ([idSubject], [nameSubject], [idSpecialties], [Time], [idTeacher]) VALUES (2, N'БД        ', N'1         ', N'50        ', N'2         ')
INSERT [dbo].[Subject] ([idSubject], [nameSubject], [idSpecialties], [Time], [idTeacher]) VALUES (3, N'УП        ', N'1         ', N'35        ', N'3         ')
INSERT [dbo].[Subject] ([idSubject], [nameSubject], [idSpecialties], [Time], [idTeacher]) VALUES (4, N'Физра     ', N'1         ', N'35        ', N'4         ')
INSERT [dbo].[Subject] ([idSubject], [nameSubject], [idSpecialties], [Time], [idTeacher]) VALUES (5, N'СП        ', N'1         ', N'40        ', N'3         ')
INSERT [dbo].[SubSpec] ([IdSubject], [idTeacher]) VALUES (1, N'1         ')
INSERT [dbo].[SubSpec] ([IdSubject], [idTeacher]) VALUES (2, N'2         ')
INSERT [dbo].[SubSpec] ([IdSubject], [idTeacher]) VALUES (3, N'3         ')
INSERT [dbo].[SubSpec] ([IdSubject], [idTeacher]) VALUES (1, N'4         ')
INSERT [dbo].[Teacher] ([idTeacher], [LastName], [FerstName], [MiddleName], [Experience], [Discharge], [Category], [Bithday]) VALUES (1, N'Глускер        ', N'Александр      ', N'Игоревич       ', N'7         ', N'1         ', N'первая    ', CAST(N'1980-01-20' AS Date))
INSERT [dbo].[Teacher] ([idTeacher], [LastName], [FerstName], [MiddleName], [Experience], [Discharge], [Category], [Bithday]) VALUES (2, N'Ларионова      ', N'Елена          ', N'Анатольевна    ', N'33        ', N'1         ', N'высшая    ', CAST(N'1975-05-13' AS Date))
INSERT [dbo].[Teacher] ([idTeacher], [LastName], [FerstName], [MiddleName], [Experience], [Discharge], [Category], [Bithday]) VALUES (3, N'Доррер         ', N'Татьяна        ', N'Васильевна     ', N'18        ', N'1         ', N'высшая    ', CAST(N'1970-10-12' AS Date))
INSERT [dbo].[Teacher] ([idTeacher], [LastName], [FerstName], [MiddleName], [Experience], [Discharge], [Category], [Bithday]) VALUES (4, N'Надаева        ', N'Нина           ', N'Владимировна   ', N'20        ', N'1         ', N'высшая    ', CAST(N'1974-09-21' AS Date))
INSERT [dbo].[TS] ([idTeacher], [Year], [idSubgect], [Salary], [Time]) VALUES (1, N'2020 ', 1, N'30000     ', 30)
INSERT [dbo].[TS] ([idTeacher], [Year], [idSubgect], [Salary], [Time]) VALUES (2, N'2020 ', 2, N'35000     ', 35)
INSERT [dbo].[TS] ([idTeacher], [Year], [idSubgect], [Salary], [Time]) VALUES (3, N'2020 ', 3, N'35000     ', 35)
INSERT [dbo].[TS] ([idTeacher], [Year], [idSubgect], [Salary], [Time]) VALUES (4, N'2020 ', 4, N'30000     ', 30)
INSERT [dbo].[TS] ([idTeacher], [Year], [idSubgect], [Salary], [Time]) VALUES (5, N'2020 ', 5, N'35000     ', 30)
ALTER TABLE [dbo].[Exam1]  WITH CHECK ADD  CONSTRAINT [FK_Exam1_Studying] FOREIGN KEY([NamberStudent])
REFERENCES [dbo].[Studying] ([NamberStudent])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Exam1] CHECK CONSTRAINT [FK_Exam1_Studying]
GO
ALTER TABLE [dbo].[Rols]  WITH NOCHECK ADD  CONSTRAINT [FK_Rols_Teacher] FOREIGN KEY([idTeacher])
REFERENCES [dbo].[Teacher] ([idTeacher])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Rols] NOCHECK CONSTRAINT [FK_Rols_Teacher]
GO
ALTER TABLE [dbo].[Specialty]  WITH CHECK ADD  CONSTRAINT [FK_Specialty_Department1] FOREIGN KEY([NumberGroup])
REFERENCES [dbo].[Department1] ([NumberGroup])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Specialty] CHECK CONSTRAINT [FK_Specialty_Department1]
GO
ALTER TABLE [dbo].[Specialty]  WITH CHECK ADD  CONSTRAINT [FK_Specialty_Group] FOREIGN KEY([NumberGroup])
REFERENCES [dbo].[Group] ([NumberGroup])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Specialty] CHECK CONSTRAINT [FK_Specialty_Group]
GO
ALTER TABLE [dbo].[Studying]  WITH CHECK ADD  CONSTRAINT [FK_Studying_Group] FOREIGN KEY([NumberGroup])
REFERENCES [dbo].[Group] ([NumberGroup])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Studying] CHECK CONSTRAINT [FK_Studying_Group]
GO
ALTER TABLE [dbo].[Studying]  WITH CHECK ADD  CONSTRAINT [FK_Studying_Student] FOREIGN KEY([NamberStudent])
REFERENCES [dbo].[Student] ([NamberStudent])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Studying] CHECK CONSTRAINT [FK_Studying_Student]
GO
ALTER TABLE [dbo].[SubSpec]  WITH CHECK ADD  CONSTRAINT [FK_SubSpec_Specialty1] FOREIGN KEY([IdSubject])
REFERENCES [dbo].[Specialty] ([idSpecialties])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[SubSpec] CHECK CONSTRAINT [FK_SubSpec_Specialty1]
GO
ALTER TABLE [dbo].[SubSpec]  WITH CHECK ADD  CONSTRAINT [FK_SubSpec_Subject] FOREIGN KEY([IdSubject])
REFERENCES [dbo].[Subject] ([idSubject])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[SubSpec] CHECK CONSTRAINT [FK_SubSpec_Subject]
GO
ALTER TABLE [dbo].[TS]  WITH CHECK ADD  CONSTRAINT [FK_TS_Exam11] FOREIGN KEY([idSubgect])
REFERENCES [dbo].[Exam1] ([idExam])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[TS] CHECK CONSTRAINT [FK_TS_Exam11]
GO
ALTER TABLE [dbo].[TS]  WITH CHECK ADD  CONSTRAINT [FK_TS_Subject] FOREIGN KEY([idSubgect])
REFERENCES [dbo].[Subject] ([idSubject])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[TS] CHECK CONSTRAINT [FK_TS_Subject]
GO
ALTER TABLE [dbo].[TS]  WITH NOCHECK ADD  CONSTRAINT [FK_TS_Teacher] FOREIGN KEY([idSubgect])
REFERENCES [dbo].[Teacher] ([idTeacher])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[TS] NOCHECK CONSTRAINT [FK_TS_Teacher]
GO
USE [master]
GO
ALTER DATABASE [Students] SET  READ_WRITE 
GO
