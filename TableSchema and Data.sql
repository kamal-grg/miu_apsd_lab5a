USE [AdvantistDentalDB]
GO
/****** Object:  Table [dbo].[Appointment]    Script Date: 06/04/2024 8:21:13 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Appointment](
	[AppointmentID] [int] IDENTITY(1,201) NOT NULL,
	[AppointmentDate] [datetime] NULL,
	[DentistID] [int] NULL,
	[PatientID] [int] NULL,
	[AppointmentStatus] [varchar](50) NULL,
	[LocationID] [int] NULL,
 CONSTRAINT [PK_Appointment] PRIMARY KEY CLUSTERED 
(
	[AppointmentID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Dentist]    Script Date: 06/04/2024 8:21:13 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Dentist](
	[DentistID] [int] IDENTITY(1,1) NOT NULL,
	[FirstName] [varchar](50) NULL,
	[LastName] [varchar](50) NULL,
	[ContactNumber] [varchar](50) NULL,
	[Email] [varchar](50) NULL,
	[Specialization] [varchar](50) NULL,
 CONSTRAINT [PK_Dentist] PRIMARY KEY CLUSTERED 
(
	[DentistID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Location]    Script Date: 06/04/2024 8:21:13 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Location](
	[LocationID] [int] IDENTITY(1,101) NOT NULL,
	[City] [varchar](50) NULL,
	[Region] [varchar](50) NULL,
	[Phone] [varchar](50) NULL,
 CONSTRAINT [PK_Location] PRIMARY KEY CLUSTERED 
(
	[LocationID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Patient]    Script Date: 06/04/2024 8:21:13 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Patient](
	[PatientID] [int] IDENTITY(1,1001) NOT NULL,
	[FirstName] [varchar](50) NULL,
	[LastName] [varchar](50) NULL,
	[DOB] [date] NULL,
	[ContactNumber] [varchar](50) NULL,
	[MailingAddress] [varchar](50) NULL,
	[Email] [varchar](50) NULL,
 CONSTRAINT [PK_Patient] PRIMARY KEY CLUSTERED 
(
	[PatientID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[PatientSurgery]    Script Date: 06/04/2024 8:21:13 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PatientSurgery](
	[PatientSugeryID] [int] IDENTITY(1,3001) NOT NULL,
	[AppointmentID] [int] NULL,
	[SurgicalID] [int] NULL,
	[SurgicalDateTime] [datetime] NULL,
	[PatientID] [int] NULL,
	[LocationID] [int] NULL,
 CONSTRAINT [PK_PatientSurgery] PRIMARY KEY CLUSTERED 
(
	[PatientSugeryID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Payment]    Script Date: 06/04/2024 8:21:13 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Payment](
	[PaymentID] [int] NOT NULL,
	[PaymentDate] [datetime] NULL,
	[PatientSurgicalID] [int] NULL,
	[AmountPaid] [money] NULL,
	[PaymentMode] [varchar](50) NULL,
	[Note] [varchar](50) NULL,
 CONSTRAINT [PK_Payment] PRIMARY KEY CLUSTERED 
(
	[PaymentID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Surgery]    Script Date: 06/04/2024 8:21:13 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Surgery](
	[SurgeryID] [int] IDENTITY(1,10001) NOT NULL,
	[SurgeryName] [varchar](50) NULL,
	[Description] [varchar](50) NULL,
	[Fee] [money] NULL,
 CONSTRAINT [PK_Surgery] PRIMARY KEY CLUSTERED 
(
	[SurgeryID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[Appointment] ON 

GO
INSERT [dbo].[Appointment] ([AppointmentID], [AppointmentDate], [DentistID], [PatientID], [AppointmentStatus], [LocationID]) VALUES (1, CAST(0x000094C500000000 AS DateTime), 1, 1, N'confirm', 1)
GO
INSERT [dbo].[Appointment] ([AppointmentID], [AppointmentDate], [DentistID], [PatientID], [AppointmentStatus], [LocationID]) VALUES (202, CAST(0x000094C600000000 AS DateTime), 1, 1002, N'confirm', 1)
GO
INSERT [dbo].[Appointment] ([AppointmentID], [AppointmentDate], [DentistID], [PatientID], [AppointmentStatus], [LocationID]) VALUES (403, CAST(0x0000B14E00000000 AS DateTime), 2, 1, N'confirm', 203)
GO
INSERT [dbo].[Appointment] ([AppointmentID], [AppointmentDate], [DentistID], [PatientID], [AppointmentStatus], [LocationID]) VALUES (1006, CAST(0x0000B14E00000000 AS DateTime), 2, 1002, N'confirm', 102)
GO
SET IDENTITY_INSERT [dbo].[Appointment] OFF
GO
SET IDENTITY_INSERT [dbo].[Dentist] ON 

GO
INSERT [dbo].[Dentist] ([DentistID], [FirstName], [LastName], [ContactNumber], [Email], [Specialization]) VALUES (1, N'Jhon', N'Sina', N'2234989899', N'john@gmail.com', N'MBBS')
GO
INSERT [dbo].[Dentist] ([DentistID], [FirstName], [LastName], [ContactNumber], [Email], [Specialization]) VALUES (2, N'Raman', N'KG', N'2312343232', N'raman@gmail.com', N'MDDS')
GO
SET IDENTITY_INSERT [dbo].[Dentist] OFF
GO
SET IDENTITY_INSERT [dbo].[Location] ON 

GO
INSERT [dbo].[Location] ([LocationID], [City], [Region], [Phone]) VALUES (1, N'Fairfield', N'IOWA', N'5552223332')
GO
INSERT [dbo].[Location] ([LocationID], [City], [Region], [Phone]) VALUES (102, N'Denver', N'Colorado', N'1234567892')
GO
INSERT [dbo].[Location] ([LocationID], [City], [Region], [Phone]) VALUES (203, N'Irving', N'Taxes', N'4858586965')
GO
SET IDENTITY_INSERT [dbo].[Location] OFF
GO
SET IDENTITY_INSERT [dbo].[Patient] ON 

GO
INSERT [dbo].[Patient] ([PatientID], [FirstName], [LastName], [DOB], [ContactNumber], [MailingAddress], [Email]) VALUES (1, N'Kamal', N'Ggr', CAST(0x1C170B00 AS Date), N'737373738', N'1000 N 4th St Fairfield IoWA', NULL)
GO
INSERT [dbo].[Patient] ([PatientID], [FirstName], [LastName], [DOB], [ContactNumber], [MailingAddress], [Email]) VALUES (1002, N'Krish', N'Khan', CAST(0xD9080B00 AS Date), N'343434434', N'105 Erie, CO', NULL)
GO
SET IDENTITY_INSERT [dbo].[Patient] OFF
GO
SET IDENTITY_INSERT [dbo].[PatientSurgery] ON 

GO
INSERT [dbo].[PatientSurgery] ([PatientSugeryID], [AppointmentID], [SurgicalID], [SurgicalDateTime], [PatientID], [LocationID]) VALUES (1, 1, 1, CAST(0x0000B14E00000000 AS DateTime), 1, 1)
GO
INSERT [dbo].[PatientSurgery] ([PatientSugeryID], [AppointmentID], [SurgicalID], [SurgicalDateTime], [PatientID], [LocationID]) VALUES (3002, 202, 10002, CAST(0x0000B14F00000000 AS DateTime), 1002, 102)
GO
INSERT [dbo].[PatientSurgery] ([PatientSugeryID], [AppointmentID], [SurgicalID], [SurgicalDateTime], [PatientID], [LocationID]) VALUES (6003, 202, 1, CAST(0x0000B14E00000000 AS DateTime), 1, 102)
GO
SET IDENTITY_INSERT [dbo].[PatientSurgery] OFF
GO
SET IDENTITY_INSERT [dbo].[Surgery] ON 

GO
INSERT [dbo].[Surgery] ([SurgeryID], [SurgeryName], [Description], [Fee]) VALUES (1, N'Cannel Surgery', N'Description of Cannal surgerils is what ....', 1200.0000)
GO
INSERT [dbo].[Surgery] ([SurgeryID], [SurgeryName], [Description], [Fee]) VALUES (10002, N'Laser Cleaner', N'Laser Clearner is', 1300.0000)
GO
SET IDENTITY_INSERT [dbo].[Surgery] OFF
GO
ALTER TABLE [dbo].[Appointment]  WITH CHECK ADD  CONSTRAINT [FK_Appointment_Dentist] FOREIGN KEY([DentistID])
REFERENCES [dbo].[Dentist] ([DentistID])
GO
ALTER TABLE [dbo].[Appointment] CHECK CONSTRAINT [FK_Appointment_Dentist]
GO
ALTER TABLE [dbo].[Appointment]  WITH CHECK ADD  CONSTRAINT [FK_Appointment_Location] FOREIGN KEY([LocationID])
REFERENCES [dbo].[Location] ([LocationID])
GO
ALTER TABLE [dbo].[Appointment] CHECK CONSTRAINT [FK_Appointment_Location]
GO
ALTER TABLE [dbo].[Appointment]  WITH CHECK ADD  CONSTRAINT [FK_Appointment_Patient] FOREIGN KEY([PatientID])
REFERENCES [dbo].[Patient] ([PatientID])
GO
ALTER TABLE [dbo].[Appointment] CHECK CONSTRAINT [FK_Appointment_Patient]
GO
ALTER TABLE [dbo].[PatientSurgery]  WITH CHECK ADD  CONSTRAINT [FK_PatientSurgery_Appointment] FOREIGN KEY([AppointmentID])
REFERENCES [dbo].[Appointment] ([AppointmentID])
GO
ALTER TABLE [dbo].[PatientSurgery] CHECK CONSTRAINT [FK_PatientSurgery_Appointment]
GO
ALTER TABLE [dbo].[PatientSurgery]  WITH CHECK ADD  CONSTRAINT [FK_PatientSurgery_Location] FOREIGN KEY([LocationID])
REFERENCES [dbo].[Location] ([LocationID])
GO
ALTER TABLE [dbo].[PatientSurgery] CHECK CONSTRAINT [FK_PatientSurgery_Location]
GO
ALTER TABLE [dbo].[PatientSurgery]  WITH CHECK ADD  CONSTRAINT [FK_PatientSurgery_Patient] FOREIGN KEY([PatientID])
REFERENCES [dbo].[Patient] ([PatientID])
GO
ALTER TABLE [dbo].[PatientSurgery] CHECK CONSTRAINT [FK_PatientSurgery_Patient]
GO
ALTER TABLE [dbo].[PatientSurgery]  WITH CHECK ADD  CONSTRAINT [FK_PatientSurgery_Surgery] FOREIGN KEY([SurgicalID])
REFERENCES [dbo].[Surgery] ([SurgeryID])
GO
ALTER TABLE [dbo].[PatientSurgery] CHECK CONSTRAINT [FK_PatientSurgery_Surgery]
GO
ALTER TABLE [dbo].[Payment]  WITH CHECK ADD  CONSTRAINT [FK_Payment_PatientSurgery] FOREIGN KEY([PatientSurgicalID])
REFERENCES [dbo].[PatientSurgery] ([PatientSugeryID])
GO
ALTER TABLE [dbo].[Payment] CHECK CONSTRAINT [FK_Payment_PatientSurgery]
GO
