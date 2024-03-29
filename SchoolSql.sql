USE [School]
GO
/****** Object:  UserDefinedFunction [dbo].[func_CalculateStudentAge]    Script Date: 15.07.2022 22:40:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create FUNCTION [dbo].[func_CalculateStudentAge]
(
		@birthDate datetime
)

Returns int
AS
BEGIN
	DECLARE @age as int
	set @age = (SELECT DATEDIFF(YEAR, @birthDate, GETDATE()));
	return @age
END

GO
/****** Object:  Table [dbo].[Students]    Script Date: 15.07.2022 22:40:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Students](
	[StudentID] [int] IDENTITY(1,1) NOT NULL,
	[LastName] [nvarchar](20) NOT NULL,
	[FirstName] [nvarchar](30) NOT NULL,
	[StudentNo] [nvarchar](30) NULL,
	[LessonsID] [int] NOT NULL,
	[DepartmentID] [int] NOT NULL,
	[BirthDate] [datetime] NULL,
	[City] [nvarchar](15) NULL,
	[PostalCode] [nvarchar](10) NULL,
	[Country] [nvarchar](15) NULL,
	[Phone] [nvarchar](20) NULL
) ON [PRIMARY]
GO
/****** Object:  UserDefinedFunction [dbo].[func_StudentInformation]    Script Date: 15.07.2022 22:40:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create FUNCTION [dbo].[func_StudentInformation]
(
		@StudetsID int
)

Returns table
AS
RETURN 
(
	Select
	LastName, FirstName, StudentNo, LessonsID, DepartmentID,Phone 
	from Students
	where StudentID = @StudetsID
)
GO
/****** Object:  Table [dbo].[Department]    Script Date: 15.07.2022 22:40:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Department](
	[DepartmentID] [int] IDENTITY(1,1) NOT NULL,
	[DepartmentCode] [nvarchar](50) NOT NULL,
	[DepartmentName] [nvarchar](40) NOT NULL,
	[FacultyName] [nvarchar](70) NOT NULL,
	[HeadOfDepartment] [nvarchar](30) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Lessons]    Script Date: 15.07.2022 22:40:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Lessons](
	[LessonsID] [int] IDENTITY(1,1) NOT NULL,
	[LessonsName] [nvarchar](30) NOT NULL,
	[LessonsCode] [nvarchar](20) NOT NULL,
	[BolumID] [int] NOT NULL
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Department] ON 

INSERT [dbo].[Department] ([DepartmentID], [DepartmentCode], [DepartmentName], [FacultyName], [HeadOfDepartment]) VALUES (1, N'64276427', N'Electric-Electrical Engineering', N'Engineer and Natural Science Faculty', N'Rıza Şahin')
INSERT [dbo].[Department] ([DepartmentID], [DepartmentCode], [DepartmentName], [FacultyName], [HeadOfDepartment]) VALUES (2, N'4734633', N'Conservatory', N'Conservatory', N'Rıza Şahin')
INSERT [dbo].[Department] ([DepartmentID], [DepartmentCode], [DepartmentName], [FacultyName], [HeadOfDepartment]) VALUES (3, N'32652374', N'Computer Engineering', N'Engineer and Natural Science Faculty', N'Yakup Kutlu')
INSERT [dbo].[Department] ([DepartmentID], [DepartmentCode], [DepartmentName], [FacultyName], [HeadOfDepartment]) VALUES (4, N'847284623', N'Faculty of fine arts', N'Faculty of fine arts', N'İbrahim Çallı')
INSERT [dbo].[Department] ([DepartmentID], [DepartmentCode], [DepartmentName], [FacultyName], [HeadOfDepartment]) VALUES (5, N'9839427', N'Civil Engineering', N'Engineer and Natural Science Faculty', N'Rıza Şahin')
INSERT [dbo].[Department] ([DepartmentID], [DepartmentCode], [DepartmentName], [FacultyName], [HeadOfDepartment]) VALUES (6, N'49094335', N'Mechanical Engineering', N'Engineer and Natural Science Faculty', N'Rıza Şahin')
INSERT [dbo].[Department] ([DepartmentID], [DepartmentCode], [DepartmentName], [FacultyName], [HeadOfDepartment]) VALUES (7, N'73464376', N'Industrial Engineering', N'Engineer and Natural Science Faculty', N'Rıza Şahin')
INSERT [dbo].[Department] ([DepartmentID], [DepartmentCode], [DepartmentName], [FacultyName], [HeadOfDepartment]) VALUES (8, N'64276427', N'Electric-Electrical Engineering', N'Engineer and Natural Science Faculty', N'Rıza Şahin')
INSERT [dbo].[Department] ([DepartmentID], [DepartmentCode], [DepartmentName], [FacultyName], [HeadOfDepartment]) VALUES (9, N'4734633', N'Conservatory', N'Conservatory', N'Rıza Şahin')
INSERT [dbo].[Department] ([DepartmentID], [DepartmentCode], [DepartmentName], [FacultyName], [HeadOfDepartment]) VALUES (10, N'32652374', N'Computer Engineering', N'Engineer and Natural Science Faculty', N'Yakup Kutlu')
INSERT [dbo].[Department] ([DepartmentID], [DepartmentCode], [DepartmentName], [FacultyName], [HeadOfDepartment]) VALUES (11, N'847284623', N'Faculty of fine arts', N'Faculty of fine arts', N'İbrahim Çallı')
INSERT [dbo].[Department] ([DepartmentID], [DepartmentCode], [DepartmentName], [FacultyName], [HeadOfDepartment]) VALUES (12, N'9839427', N'Civil Engineering', N'Engineer and Natural Science Faculty', N'Rıza Şahin')
INSERT [dbo].[Department] ([DepartmentID], [DepartmentCode], [DepartmentName], [FacultyName], [HeadOfDepartment]) VALUES (13, N'49094335', N'Mechanical Engineering', N'Engineer and Natural Science Faculty', N'Rıza Şahin')
INSERT [dbo].[Department] ([DepartmentID], [DepartmentCode], [DepartmentName], [FacultyName], [HeadOfDepartment]) VALUES (14, N'73464376', N'Industrial Engineering', N'Engineer and Natural Science Faculty', N'Rıza Şahin')
SET IDENTITY_INSERT [dbo].[Department] OFF
GO
SET IDENTITY_INSERT [dbo].[Lessons] ON 

INSERT [dbo].[Lessons] ([LessonsID], [LessonsName], [LessonsCode], [BolumID]) VALUES (1, N'Algorithms', N'2647634', 3)
INSERT [dbo].[Lessons] ([LessonsID], [LessonsName], [LessonsCode], [BolumID]) VALUES (2, N'Communication System', N'42873642', 1)
INSERT [dbo].[Lessons] ([LessonsID], [LessonsName], [LessonsCode], [BolumID]) VALUES (3, N'Chamber music', N'42764823', 2)
INSERT [dbo].[Lessons] ([LessonsID], [LessonsName], [LessonsCode], [BolumID]) VALUES (4, N'Painting Education', N'239480423', 4)
INSERT [dbo].[Lessons] ([LessonsID], [LessonsName], [LessonsCode], [BolumID]) VALUES (5, N'Resistance', N'23748273', 5)
INSERT [dbo].[Lessons] ([LessonsID], [LessonsName], [LessonsCode], [BolumID]) VALUES (6, N'Career Planning', N'32489239', 6)
INSERT [dbo].[Lessons] ([LessonsID], [LessonsName], [LessonsCode], [BolumID]) VALUES (7, N'Algorithms', N'2647634', 3)
INSERT [dbo].[Lessons] ([LessonsID], [LessonsName], [LessonsCode], [BolumID]) VALUES (8, N'Communication System', N'42873642', 1)
INSERT [dbo].[Lessons] ([LessonsID], [LessonsName], [LessonsCode], [BolumID]) VALUES (9, N'Chamber music', N'42764823', 2)
INSERT [dbo].[Lessons] ([LessonsID], [LessonsName], [LessonsCode], [BolumID]) VALUES (10, N'Painting Education', N'239480423', 4)
INSERT [dbo].[Lessons] ([LessonsID], [LessonsName], [LessonsCode], [BolumID]) VALUES (11, N'Resistance', N'23748273', 5)
INSERT [dbo].[Lessons] ([LessonsID], [LessonsName], [LessonsCode], [BolumID]) VALUES (12, N'Career Planning', N'32489239', 6)
SET IDENTITY_INSERT [dbo].[Lessons] OFF
GO
SET IDENTITY_INSERT [dbo].[Students] ON 

INSERT [dbo].[Students] ([StudentID], [LastName], [FirstName], [StudentNo], [LessonsID], [DepartmentID], [BirthDate], [City], [PostalCode], [Country], [Phone]) VALUES (1, N'DİNLER', N'Büşra Betül', N'123456789', 2, 3, CAST(N'1996-05-24T00:00:00.000' AS DateTime), N'Adana', N'2144', N'Türkiye', N'5555555')
INSERT [dbo].[Students] ([StudentID], [LastName], [FirstName], [StudentNo], [LessonsID], [DepartmentID], [BirthDate], [City], [PostalCode], [Country], [Phone]) VALUES (2, N'DİNLER', N'Eren', N'23456789', 1, 3, CAST(N'1998-02-24T00:00:00.000' AS DateTime), N'Eskişehir', N'1064', N'Türkiye', N'1111111111')
INSERT [dbo].[Students] ([StudentID], [LastName], [FirstName], [StudentNo], [LessonsID], [DepartmentID], [BirthDate], [City], [PostalCode], [Country], [Phone]) VALUES (3, N'ULUTAŞ', N'Eray', N'2754365459', 2, 4, CAST(N'2000-11-04T00:00:00.000' AS DateTime), N'Muğla', N'2367', N'Türkiye', N'222222222')
INSERT [dbo].[Students] ([StudentID], [LastName], [FirstName], [StudentNo], [LessonsID], [DepartmentID], [BirthDate], [City], [PostalCode], [Country], [Phone]) VALUES (5, N'DİNO', N'Abidin', N'427437265237', 1, 3, CAST(N'1913-03-23T00:00:00.000' AS DateTime), N'İstanbul', N'4567', N'Türkiye', N'444444')
INSERT [dbo].[Students] ([StudentID], [LastName], [FirstName], [StudentNo], [LessonsID], [DepartmentID], [BirthDate], [City], [PostalCode], [Country], [Phone]) VALUES (6, N'KINIK', N'Celal Kadri', N'1209843409', 5, 2, CAST(N'1964-12-16T00:00:00.000' AS DateTime), N'İstanbul', N'8774', N'Türkiye', N'66666666666')
INSERT [dbo].[Students] ([StudentID], [LastName], [FirstName], [StudentNo], [LessonsID], [DepartmentID], [BirthDate], [City], [PostalCode], [Country], [Phone]) VALUES (7, N'AVCILAR', N'Yiğit Kayra', N'8276434523542', 6, 7, CAST(N'2000-11-04T00:00:00.000' AS DateTime), N'Muğla', N'2367', N'Türkiye', N'7777777777')
SET IDENTITY_INSERT [dbo].[Students] OFF
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UQ__Students__32C4C02B7F517EFC]    Script Date: 15.07.2022 22:40:34 ******/
ALTER TABLE [dbo].[Students] ADD UNIQUE NONCLUSTERED 
(
	[StudentNo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UQ__Students__32C4C02B8E46E4AC]    Script Date: 15.07.2022 22:40:34 ******/
ALTER TABLE [dbo].[Students] ADD UNIQUE NONCLUSTERED 
(
	[StudentNo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  StoredProcedure [dbo].[spUpdateLessonsID]    Script Date: 15.07.2022 22:40:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[spUpdateLessonsID] 
	@LessonsID int,
	@StudentNo nvarchar(30)
AS
BEGIN
	UPDATE Students
	SET LessonsID = @LessonsID
	WHERE StudentNo = @StudentNo;

	SELECT * FROM Students
END
GO
