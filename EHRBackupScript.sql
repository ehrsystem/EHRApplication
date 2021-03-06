USE [master]
GO
/****** Object:  Database [EHR-System]    Script Date: 12/28/2014 9:25:11 PM ******/
CREATE DATABASE [EHR-System]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'EHR-System', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL11.MSSQLSERVER\MSSQL\DATA\EHR-System.mdf' , SIZE = 3072KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'EHR-System_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL11.MSSQLSERVER\MSSQL\DATA\EHR-System_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [EHR-System] SET COMPATIBILITY_LEVEL = 110
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [EHR-System].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [EHR-System] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [EHR-System] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [EHR-System] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [EHR-System] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [EHR-System] SET ARITHABORT OFF 
GO
ALTER DATABASE [EHR-System] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [EHR-System] SET AUTO_CREATE_STATISTICS ON 
GO
ALTER DATABASE [EHR-System] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [EHR-System] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [EHR-System] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [EHR-System] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [EHR-System] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [EHR-System] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [EHR-System] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [EHR-System] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [EHR-System] SET  DISABLE_BROKER 
GO
ALTER DATABASE [EHR-System] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [EHR-System] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [EHR-System] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [EHR-System] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [EHR-System] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [EHR-System] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [EHR-System] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [EHR-System] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [EHR-System] SET  MULTI_USER 
GO
ALTER DATABASE [EHR-System] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [EHR-System] SET DB_CHAINING OFF 
GO
ALTER DATABASE [EHR-System] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [EHR-System] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
USE [EHR-System]
GO
/****** Object:  Table [dbo].[BloodGroup]    Script Date: 12/28/2014 9:25:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BloodGroup](
	[ID] [int] NOT NULL,
	[Name] [nchar](10) NOT NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[DoctorsPersonalInfo]    Script Date: 12/28/2014 9:25:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DoctorsPersonalInfo](
	[ID] [int] NOT NULL,
	[User Type ID] [int] NOT NULL,
	[First Name] [nchar](15) NOT NULL,
	[Last Name] [nchar](10) NOT NULL,
	[Identity] [nchar](10) NULL,
	[identity Type] [nchar](10) NULL,
	[RegistrationID] [nchar](15) NOT NULL,
	[Roll No] [nchar](15) NOT NULL,
	[Collage Name] [nchar](25) NULL,
	[Specialization] [nchar](20) NULL,
	[Gender] [nchar](10) NOT NULL,
	[DOB] [nchar](10) NULL,
	[Address] [nchar](50) NULL,
	[Phone] [int] NULL,
	[Mobile] [int] NULL,
	[EmailID] [nchar](50) NULL,
	[Photo] [image] NULL,
	[Others] [nchar](10) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[DoctorsProfile]    Script Date: 12/28/2014 9:25:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DoctorsProfile](
	[ID] [int] NOT NULL,
	[DoctorsPersonalInfoID] [int] NOT NULL,
	[Organization] [nchar](25) NOT NULL,
	[Skills] [nchar](100) NULL,
	[Qualifications] [nchar](50) NULL,
	[Certifications] [nchar](50) NULL,
	[Seminors] [nchar](100) NULL,
	[Experience] [int] NOT NULL,
	[Others] [nchar](10) NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Gender]    Script Date: 12/28/2014 9:25:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Gender](
	[ID] [int] NOT NULL,
	[Name] [nchar](10) NOT NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[IdentityType]    Script Date: 12/28/2014 9:25:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[IdentityType](
	[ID] [int] NOT NULL,
	[Name] [nvarchar](50) NOT NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[InvestigationDepartment]    Script Date: 12/28/2014 9:25:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[InvestigationDepartment](
	[ID] [int] NOT NULL,
	[DepartmentName] [nvarchar](50) NOT NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Investigations]    Script Date: 12/28/2014 9:25:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Investigations](
	[ID] [int] NOT NULL,
	[NameOfInvestigations] [nvarchar](50) NOT NULL,
	[Department] [nvarchar](50) NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Patient]    Script Date: 12/28/2014 9:25:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Patient](
	[ID] [int] NOT NULL,
	[Name] [nvarchar](50) NULL,
	[Age] [int] NULL,
	[Gender] [nchar](10) NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[PatientsHealthRecord]    Script Date: 12/28/2014 9:25:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PatientsHealthRecord](
	[ID] [int] NOT NULL,
	[PatientsPersonalInfoID] [int] NOT NULL,
	[Weight] [int] NULL,
	[Height] [int] NULL,
	[DateOfConsultation] [numeric](18, 0) NULL,
	[DoctorsName] [nchar](20) NULL,
	[HospitalName] [nchar](50) NULL,
	[Priscription] [image] NULL,
	[CaseStudy] [nchar](200) NULL,
	[Investigation] [image] NULL,
	[Others] [nchar](10) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[PatientsInvestigation]    Script Date: 12/28/2014 9:25:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PatientsInvestigation](
	[ID] [int] NOT NULL,
	[PatientsHealthRecordID] [int] NOT NULL,
	[InvestigationID] [int] NULL,
	[DateOfInvestigation] [numeric](18, 0) NULL,
	[Value] [int] NULL,
	[Others] [nchar](10) NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[PatientsPersonalInfo]    Script Date: 12/28/2014 9:25:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PatientsPersonalInfo](
	[ID] [int] NOT NULL,
	[First Name] [nchar](15) NOT NULL,
	[Last Name] [nchar](15) NOT NULL,
	[identity] [nchar](10) NULL,
	[identity type] [nchar](10) NULL,
	[gender] [nchar](10) NOT NULL,
	[DOB] [numeric](31, 12) NULL,
	[BloodGroup] [nchar](10) NULL,
	[Address] [nchar](50) NULL,
	[Phone] [int] NULL,
	[Mobile] [int] NULL,
	[EmailID] [nchar](10) NULL,
	[Emergency Contact Number] [int] NULL,
	[Photo] [image] NULL,
	[others] [nchar](10) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Users]    Script Date: 12/28/2014 9:25:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Users](
	[UserID] [int] NULL,
	[UserName] [nvarchar](max) NULL,
	[Password] [nvarchar](max) NULL,
	[UserType] [int] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[UserType]    Script Date: 12/28/2014 9:25:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UserType](
	[ID] [int] NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[LOV] [int] NOT NULL
) ON [PRIMARY]

GO
USE [master]
GO
ALTER DATABASE [EHR-System] SET  READ_WRITE 
GO
