USE [master]
GO
/****** Object:  Database [db_Tech_Exactly]    Script Date: 6/18/2022 1:35:27 AM ******/
CREATE DATABASE [db_Tech_Exactly]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'db_Tech_Exactly', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.SQLEXPRESS\MSSQL\DATA\db_Tech_Exactly.mdf' , SIZE = 3264KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'db_Tech_Exactly_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.SQLEXPRESS\MSSQL\DATA\db_Tech_Exactly_log.ldf' , SIZE = 832KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [db_Tech_Exactly] SET COMPATIBILITY_LEVEL = 120
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [db_Tech_Exactly].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [db_Tech_Exactly] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [db_Tech_Exactly] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [db_Tech_Exactly] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [db_Tech_Exactly] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [db_Tech_Exactly] SET ARITHABORT OFF 
GO
ALTER DATABASE [db_Tech_Exactly] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [db_Tech_Exactly] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [db_Tech_Exactly] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [db_Tech_Exactly] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [db_Tech_Exactly] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [db_Tech_Exactly] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [db_Tech_Exactly] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [db_Tech_Exactly] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [db_Tech_Exactly] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [db_Tech_Exactly] SET  ENABLE_BROKER 
GO
ALTER DATABASE [db_Tech_Exactly] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [db_Tech_Exactly] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [db_Tech_Exactly] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [db_Tech_Exactly] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [db_Tech_Exactly] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [db_Tech_Exactly] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [db_Tech_Exactly] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [db_Tech_Exactly] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [db_Tech_Exactly] SET  MULTI_USER 
GO
ALTER DATABASE [db_Tech_Exactly] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [db_Tech_Exactly] SET DB_CHAINING OFF 
GO
ALTER DATABASE [db_Tech_Exactly] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [db_Tech_Exactly] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [db_Tech_Exactly] SET DELAYED_DURABILITY = DISABLED 
GO
USE [db_Tech_Exactly]
GO
/****** Object:  Table [dbo].[Login]    Script Date: 6/18/2022 1:35:27 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Login](
	[Login_Id] [int] IDENTITY(1,1) NOT NULL,
	[Username] [varchar](255) NULL,
	[Password] [varchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[Login_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[T_UserRegistration]    Script Date: 6/18/2022 1:35:27 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[T_UserRegistration](
	[User_Id] [int] IDENTITY(1,1) NOT NULL,
	[UserRole] [varchar](255) NULL,
	[Email] [varchar](255) NULL,
	[Password] [varchar](255) NULL,
	[IsApproved] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[User_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[T_UserRole]    Script Date: 6/18/2022 1:35:27 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[T_UserRole](
	[Role_id] [int] IDENTITY(1,1) NOT NULL,
	[UserRole] [varchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[Role_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[Login] ON 

INSERT [dbo].[Login] ([Login_Id], [Username], [Password]) VALUES (1, N'Master', N'123')
INSERT [dbo].[Login] ([Login_Id], [Username], [Password]) VALUES (2, N'Admin', N'123')
SET IDENTITY_INSERT [dbo].[Login] OFF
SET IDENTITY_INSERT [dbo].[T_UserRegistration] ON 

INSERT [dbo].[T_UserRegistration] ([User_Id], [UserRole], [Email], [Password], [IsApproved]) VALUES (3, N'Developer', N'saxenapriyanka95419@gmail.com', N'123', NULL)
INSERT [dbo].[T_UserRegistration] ([User_Id], [UserRole], [Email], [Password], [IsApproved]) VALUES (4, N'Designer', N'saxenapriyanka95419@gmail.com', N'123', 1)
INSERT [dbo].[T_UserRegistration] ([User_Id], [UserRole], [Email], [Password], [IsApproved]) VALUES (5, N'Developer', N'saxenapriyanka95419@gmail.com', N'123', 1)
INSERT [dbo].[T_UserRegistration] ([User_Id], [UserRole], [Email], [Password], [IsApproved]) VALUES (6, N'Developer', N'saxenapriyanka95419@gmail.com', N'123', 0)
INSERT [dbo].[T_UserRegistration] ([User_Id], [UserRole], [Email], [Password], [IsApproved]) VALUES (7, N'Developer', N'saxenapriyanka95419@gmail.com', N'123', 0)
INSERT [dbo].[T_UserRegistration] ([User_Id], [UserRole], [Email], [Password], [IsApproved]) VALUES (8, N'Developer', N'saxenapriyanka95419@gmail.com', N'123', 1)
INSERT [dbo].[T_UserRegistration] ([User_Id], [UserRole], [Email], [Password], [IsApproved]) VALUES (9, N'Designer', N'amit123@gmail.com', N'123456', 1)
SET IDENTITY_INSERT [dbo].[T_UserRegistration] OFF
SET IDENTITY_INSERT [dbo].[T_UserRole] ON 

INSERT [dbo].[T_UserRole] ([Role_id], [UserRole]) VALUES (1, N'Developer')
INSERT [dbo].[T_UserRole] ([Role_id], [UserRole]) VALUES (2, N'Designer')
INSERT [dbo].[T_UserRole] ([Role_id], [UserRole]) VALUES (3, N'Tester')
INSERT [dbo].[T_UserRole] ([Role_id], [UserRole]) VALUES (4, N'HR')
SET IDENTITY_INSERT [dbo].[T_UserRole] OFF
/****** Object:  StoredProcedure [dbo].[Proc_TechExactly_oper]    Script Date: 6/18/2022 1:35:27 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[Proc_TechExactly_oper]
(@Username nvarchar(255) = null,
@Password nvarchar(255) = null
)
As Begin 
Select * from Login where Username=@Username and Password=@Password
End
GO
/****** Object:  StoredProcedure [dbo].[Proc_UserDetails]    Script Date: 6/18/2022 1:35:27 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[Proc_UserDetails]
(
@Proc int=0,
@User_Id int=0,
@UserRole varchar(255)=null, 
@Email varchar(255)=null, 
@Password varchar(255)=null
)
As Begin 
if(@Proc=1)
begin
  declare   @msg VARCHAR(200)='0'  
insert into T_UserRegistration(UserRole,Email,Password,IsApproved) values(@UserRole,@Email,@Password,1)
 SET @msg = '1'       
      
    select @msg as msg  

	end
	if(@Proc=2)
begin
  declare   @msgs VARCHAR(200)='0'  
insert into T_UserRegistration(UserRole,Email,Password,IsApproved) values(@UserRole,@Email,@Password,0)
 SET @msgs = '1'       
      
    select @msgs as msgs 

	end
	if(@Proc=3)
begin
select Email,IsApproved ,case  WHEN isnull(IsApproved,0)=0 THEN 'Pending' ELSE 'Approve' end As status from T_UserRegistration 

	end

	if(@Proc=4)
begin
  declare   @msgv VARCHAR(200)='0'  
update T_UserRegistration set IsApproved=1 where User_Id=@User_Id
 SET @msgv = '1'       
      
    select @msgv as msgv

	end
End
GO
USE [master]
GO
ALTER DATABASE [db_Tech_Exactly] SET  READ_WRITE 
GO
