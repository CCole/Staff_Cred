USE [SQM_DB]
GO
/****** Object:  Table [dbo].[Background_Check]    Script Date: 1/7/2016 10:42:56 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Background_Check](
	[SQM_Staff_Background_Check_ID] [int] NOT NULL,
	[SQM_STAFF_ID] [int] NOT NULL,
	[Status] [tinyint] NULL,
	[Background_Check_Description] [varchar](max) NULL,
	[Background_Check_Date] [date] NOT NULL,
	[Background_Check_Type] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Background_Check] PRIMARY KEY CLUSTERED 
(
	[SQM_Staff_Background_Check_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Background_Check_Status]    Script Date: 1/7/2016 10:42:56 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Background_Check_Status](
	[Status] [tinyint] NULL,
	[Status_Type] [varchar](50) NULL,
	[Description] [varchar](max) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Campus]    Script Date: 1/7/2016 10:42:56 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Campus](
	[SQM_CAMPUS_ID] [int] IDENTITY(1,1) NOT NULL,
	[SQM_SCHOOL_ID] [int] NOT NULL,
	[QB_Campus_ID] [varchar](255) NULL,
	[QB_School_ID] [varchar](255) NULL,
	[QB_School_Type] [varchar](255) NULL,
	[Campus_Code] [varchar](255) NULL,
	[Campus_Name] [varchar](255) NOT NULL,
	[Campus_Address] [varchar](255) NULL,
	[Campus_City] [varchar](255) NULL,
	[Campus_Zip] [varchar](255) NULL,
	[Campus_State] [varchar](255) NULL,
	[website] [varchar](255) NULL,
	[Telephone] [varchar](255) NULL,
 CONSTRAINT [PK_Campuses] PRIMARY KEY CLUSTERED 
(
	[SQM_CAMPUS_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Credential_IMGs]    Script Date: 1/7/2016 10:42:56 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Credential_IMGs](
	[SQM_CREDENTIAL_IMG_ID] [int] IDENTITY(1,1) NOT NULL,
	[SQM_CREDENTIAL_ID] [int] NOT NULL,
	[QB_Credential_IMG_ID] [varchar](255) NULL,
	[QB_Credential_ID] [varchar](255) NULL,
	[Credential_IMG] [image] NULL,
	[Supporting_Documentation] [image] NULL,
 CONSTRAINT [PK_Credential_IMGs] PRIMARY KEY CLUSTERED 
(
	[SQM_CREDENTIAL_IMG_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Credential_Renewal]    Script Date: 1/7/2016 10:42:56 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Credential_Renewal](
	[SQM_CREDENTIAL_RENEWAL_ID] [int] NOT NULL,
	[SQM_CREDENTIAL_ID] [int] NOT NULL,
	[QB_Credential_Expiration_Date_ID] [varchar](255) NULL,
	[QB_Credential_ID] [varchar](255) NULL,
	[Expiration_Date] [date] NOT NULL,
 CONSTRAINT [PK_Credential_Renewals] PRIMARY KEY CLUSTERED 
(
	[SQM_CREDENTIAL_RENEWAL_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Credential_Status]    Script Date: 1/7/2016 10:42:56 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Credential_Status](
	[Status] [tinyint] NOT NULL,
	[Status_Type] [varchar](50) NOT NULL,
	[Status_Description] [varchar](max) NOT NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Restraint_Seclusion]    Script Date: 1/7/2016 10:42:56 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Restraint_Seclusion](
	[Restraint_Seclusion_Certification_ID] [int] NOT NULL,
	[SQM_STAFF_ID] [int] NOT NULL,
	[Status] [tinyint] NOT NULL,
	[Notes] [varchar](max) NULL,
	[Acquisition_Date] [date] NULL,
 CONSTRAINT [PK_Restraint_Seclusion] PRIMARY KEY CLUSTERED 
(
	[Restraint_Seclusion_Certification_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Restraint_Seclusion_Status]    Script Date: 1/7/2016 10:42:56 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Restraint_Seclusion_Status](
	[Status] [tinyint] NOT NULL,
	[Status_Type] [varchar](50) NOT NULL,
	[Status_Description] [varchar](max) NOT NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Sanction]    Script Date: 1/7/2016 10:42:56 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Sanction](
	[SQM_SANCTION_ID] [int] NOT NULL,
	[SQM_CREDENTIAL_ID] [int] NOT NULL,
	[QB_Sanction_ID] [varchar](255) NULL,
	[QB_Credential_ID] [varchar](255) NULL,
	[Sanction_Start_Date] [date] NOT NULL,
	[Sanction_End_Date] [date] NULL,
 CONSTRAINT [PK_Sanction] PRIMARY KEY CLUSTERED 
(
	[SQM_SANCTION_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[School]    Script Date: 1/7/2016 10:42:56 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[School](
	[SQM_SCHOOL_ID] [int] IDENTITY(1,1) NOT NULL,
	[QB_School_ID] [varchar](255) NULL,
	[School_Name] [varchar](255) NOT NULL,
	[ORG_School_Code] [varchar](255) NULL,
 CONSTRAINT [PK_School] PRIMARY KEY CLUSTERED 
(
	[SQM_SCHOOL_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Staff]    Script Date: 1/7/2016 10:42:56 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Staff](
	[SQM_STAFF_ID] [int] IDENTITY(1,1) NOT NULL,
	[QB_Staff_ID] [varchar](255) NULL,
	[Staff_Type] [varchar](255) NULL,
	[NPI_Number] [varchar](255) NULL,
	[First_Name] [varchar](255) NULL,
	[Last_Name] [varchar](255) NULL,
	[Middle_Name] [varchar](255) NULL,
	[DOB] [date] NULL,
 CONSTRAINT [PK_Staff] PRIMARY KEY CLUSTERED 
(
	[SQM_STAFF_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Staff_Campus_Assignment]    Script Date: 1/7/2016 10:42:56 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Staff_Campus_Assignment](
	[SQM_STAFF_ASSIGNMENT_ID] [int] IDENTITY(1,1) NOT NULL,
	[SQM_STAFF_ID] [int] NOT NULL,
	[SQM_CAMPUS_ID] [int] NOT NULL,
	[QB_Staff_Assignment_ID] [varchar](255) NULL,
	[QB_Staff_ID] [varchar](255) NULL,
	[QB_Campus_ID] [varchar](255) NULL,
 CONSTRAINT [PK_Staff_School_Assignment] PRIMARY KEY CLUSTERED 
(
	[SQM_STAFF_ASSIGNMENT_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Staff_Credential]    Script Date: 1/7/2016 10:42:56 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Staff_Credential](
	[SQM_CREDENTIAL_ID] [int] IDENTITY(1,1) NOT NULL,
	[SQM_STAFF_SPECIALTY_ID] [int] NOT NULL,
	[QB_credential_id] [varchar](255) NULL,
	[QB_specialty_id] [varchar](255) NULL,
	[QB_application_in_process] [tinyint] NULL,
	[QB_Explanation] [varchar](max) NULL,
	[Credential_Number] [varchar](255) NULL,
	[Credential_Acquisition_Date] [date] NULL,
	[Issuing_State] [varchar](255) NULL,
	[Issuing_Organization] [varchar](255) NULL,
	[Status] [tinyint] NULL,
	[QB_Issuing_Organization_Other] [varchar](255) NULL,
 CONSTRAINT [PK_Credentials_1] PRIMARY KEY CLUSTERED 
(
	[SQM_CREDENTIAL_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Staff_Employment]    Script Date: 1/7/2016 10:42:56 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Staff_Employment](
	[SQM_EMPLOYMENT_ID] [int] NOT NULL,
	[SQM_STAFF_ASSIGNMENT_ID] [int] NOT NULL,
	[QB_Employment_ID] [varchar](255) NULL,
	[QB_Staff_Assignment_ID] [varchar](255) NULL,
	[Hours] [varchar](50) NOT NULL,
	[Employment_Start_Date] [date] NULL,
	[Employment_End_Date] [date] NULL,
 CONSTRAINT [PK_Staff_Employment] PRIMARY KEY CLUSTERED 
(
	[SQM_EMPLOYMENT_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Staff_Position_Held]    Script Date: 1/7/2016 10:42:56 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Staff_Position_Held](
	[SQM_POSITION_ID] [int] IDENTITY(1,1) NOT NULL,
	[SQM_STAFF_ASSIGNMENT_ID] [int] NOT NULL,
	[QB_Position_ID] [varchar](255) NULL,
	[QB_Staff_Assignment_ID] [varchar](255) NULL,
	[Position_Held] [varchar](255) NULL,
	[Subjects_Grades_Taught] [varchar](255) NULL,
	[Position_other] [varchar](255) NULL,
 CONSTRAINT [PK_Staff_Positions_Held] PRIMARY KEY CLUSTERED 
(
	[SQM_POSITION_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Staff_Specialty]    Script Date: 1/7/2016 10:42:56 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Staff_Specialty](
	[SQM_STAFF_SPECIALTY_ID] [int] IDENTITY(1,1) NOT NULL,
	[SQM_STAFF_ID] [int] NOT NULL,
	[QB_Specialty_ID] [varchar](255) NOT NULL,
	[QB_Staff_ID] [varchar](255) NOT NULL,
	[Specialty] [varchar](255) NULL,
	[Description] [varchar](max) NULL,
 CONSTRAINT [PK_Staff_Specialty_1] PRIMARY KEY CLUSTERED 
(
	[SQM_STAFF_SPECIALTY_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Supervision]    Script Date: 1/7/2016 10:42:56 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Supervision](
	[SQM_SUPERVISION_ID] [int] NOT NULL,
	[SQM_CREDENTIAL_ID] [int] NOT NULL,
	[QB_credential_id] [varchar](255) NULL,
	[Description] [varchar](max) NULL,
	[Supervision_start_date] [date] NOT NULL,
	[Supervision_end_date] [date] NULL,
	[Relationship_Verification_Status] [tinyint] NULL,
 CONSTRAINT [PK_Supervision] PRIMARY KEY CLUSTERED 
(
	[SQM_SUPERVISION_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Verification_Status]    Script Date: 1/7/2016 10:42:56 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Verification_Status](
	[Status] [tinyint] NOT NULL,
	[Status_Type] [varchar](50) NOT NULL,
	[Status_Description] [varchar](max) NOT NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
ALTER TABLE [dbo].[Background_Check]  WITH CHECK ADD  CONSTRAINT [FK_Background_Check_Staff] FOREIGN KEY([SQM_STAFF_ID])
REFERENCES [dbo].[Staff] ([SQM_STAFF_ID])
GO
ALTER TABLE [dbo].[Background_Check] CHECK CONSTRAINT [FK_Background_Check_Staff]
GO
ALTER TABLE [dbo].[Campus]  WITH CHECK ADD  CONSTRAINT [FK_Campus_School] FOREIGN KEY([SQM_SCHOOL_ID])
REFERENCES [dbo].[School] ([SQM_SCHOOL_ID])
GO
ALTER TABLE [dbo].[Campus] CHECK CONSTRAINT [FK_Campus_School]
GO
ALTER TABLE [dbo].[Credential_IMGs]  WITH CHECK ADD  CONSTRAINT [FK_Credential_Credential_IMG] FOREIGN KEY([SQM_CREDENTIAL_ID])
REFERENCES [dbo].[Staff_Credential] ([SQM_CREDENTIAL_ID])
GO
ALTER TABLE [dbo].[Credential_IMGs] CHECK CONSTRAINT [FK_Credential_Credential_IMG]
GO
ALTER TABLE [dbo].[Credential_Renewal]  WITH CHECK ADD  CONSTRAINT [FK_Credential_Renewal] FOREIGN KEY([SQM_CREDENTIAL_ID])
REFERENCES [dbo].[Staff_Credential] ([SQM_CREDENTIAL_ID])
GO
ALTER TABLE [dbo].[Credential_Renewal] CHECK CONSTRAINT [FK_Credential_Renewal]
GO
ALTER TABLE [dbo].[Restraint_Seclusion]  WITH CHECK ADD  CONSTRAINT [FK_Restraint_Seclusion_Staff] FOREIGN KEY([SQM_STAFF_ID])
REFERENCES [dbo].[Staff] ([SQM_STAFF_ID])
GO
ALTER TABLE [dbo].[Restraint_Seclusion] CHECK CONSTRAINT [FK_Restraint_Seclusion_Staff]
GO
ALTER TABLE [dbo].[Sanction]  WITH CHECK ADD  CONSTRAINT [FK_Sanction_Sanction] FOREIGN KEY([SQM_CREDENTIAL_ID])
REFERENCES [dbo].[Staff_Credential] ([SQM_CREDENTIAL_ID])
GO
ALTER TABLE [dbo].[Sanction] CHECK CONSTRAINT [FK_Sanction_Sanction]
GO
ALTER TABLE [dbo].[Staff_Campus_Assignment]  WITH CHECK ADD  CONSTRAINT [FK__Staff_School_Assignment] FOREIGN KEY([SQM_STAFF_ID])
REFERENCES [dbo].[Staff] ([SQM_STAFF_ID])
GO
ALTER TABLE [dbo].[Staff_Campus_Assignment] CHECK CONSTRAINT [FK__Staff_School_Assignment]
GO
ALTER TABLE [dbo].[Staff_Campus_Assignment]  WITH CHECK ADD  CONSTRAINT [FK_Staff_School_Assignment_Staff_School_Assignment] FOREIGN KEY([SQM_CAMPUS_ID])
REFERENCES [dbo].[Campus] ([SQM_CAMPUS_ID])
GO
ALTER TABLE [dbo].[Staff_Campus_Assignment] CHECK CONSTRAINT [FK_Staff_School_Assignment_Staff_School_Assignment]
GO
ALTER TABLE [dbo].[Staff_Credential]  WITH CHECK ADD  CONSTRAINT [FK_Specialty_Credential] FOREIGN KEY([SQM_STAFF_SPECIALTY_ID])
REFERENCES [dbo].[Staff_Specialty] ([SQM_STAFF_SPECIALTY_ID])
GO
ALTER TABLE [dbo].[Staff_Credential] CHECK CONSTRAINT [FK_Specialty_Credential]
GO
ALTER TABLE [dbo].[Staff_Employment]  WITH CHECK ADD  CONSTRAINT [FK_Staff_Employment_Staff_Campus_Assignment] FOREIGN KEY([SQM_STAFF_ASSIGNMENT_ID])
REFERENCES [dbo].[Staff_Campus_Assignment] ([SQM_STAFF_ASSIGNMENT_ID])
GO
ALTER TABLE [dbo].[Staff_Employment] CHECK CONSTRAINT [FK_Staff_Employment_Staff_Campus_Assignment]
GO
ALTER TABLE [dbo].[Staff_Position_Held]  WITH CHECK ADD  CONSTRAINT [FK_School_Assignment_Position] FOREIGN KEY([SQM_STAFF_ASSIGNMENT_ID])
REFERENCES [dbo].[Staff_Campus_Assignment] ([SQM_STAFF_ASSIGNMENT_ID])
GO
ALTER TABLE [dbo].[Staff_Position_Held] CHECK CONSTRAINT [FK_School_Assignment_Position]
GO
ALTER TABLE [dbo].[Staff_Specialty]  WITH CHECK ADD  CONSTRAINT [FK_Staff_Specialty] FOREIGN KEY([SQM_STAFF_ID])
REFERENCES [dbo].[Staff] ([SQM_STAFF_ID])
GO
ALTER TABLE [dbo].[Staff_Specialty] CHECK CONSTRAINT [FK_Staff_Specialty]
GO
ALTER TABLE [dbo].[Supervision]  WITH CHECK ADD  CONSTRAINT [FK_Supervision_Staff_Credential] FOREIGN KEY([SQM_CREDENTIAL_ID])
REFERENCES [dbo].[Staff_Credential] ([SQM_CREDENTIAL_ID])
GO
ALTER TABLE [dbo].[Supervision] CHECK CONSTRAINT [FK_Supervision_Staff_Credential]
GO
