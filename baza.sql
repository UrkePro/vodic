USE [aspnetdb]
GO
/****** Object:  Schema [aspnet_Membership_BasicAccess]    Script Date: 4/27/2025 2:18:32 PM ******/
CREATE SCHEMA [aspnet_Membership_BasicAccess]
GO
/****** Object:  Schema [aspnet_Membership_FullAccess]    Script Date: 4/27/2025 2:18:32 PM ******/
CREATE SCHEMA [aspnet_Membership_FullAccess]
GO
/****** Object:  Schema [aspnet_Membership_ReportingAccess]    Script Date: 4/27/2025 2:18:32 PM ******/
CREATE SCHEMA [aspnet_Membership_ReportingAccess]
GO
/****** Object:  Schema [aspnet_Roles_BasicAccess]    Script Date: 4/27/2025 2:18:32 PM ******/
CREATE SCHEMA [aspnet_Roles_BasicAccess]
GO
/****** Object:  Schema [aspnet_Roles_FullAccess]    Script Date: 4/27/2025 2:18:32 PM ******/
CREATE SCHEMA [aspnet_Roles_FullAccess]
GO
/****** Object:  Schema [aspnet_Roles_ReportingAccess]    Script Date: 4/27/2025 2:18:32 PM ******/
CREATE SCHEMA [aspnet_Roles_ReportingAccess]
GO
/****** Object:  Table [dbo].[aspnet_Applications]    Script Date: 4/27/2025 2:18:32 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[aspnet_Applications](
	[ApplicationName] [nvarchar](256) NOT NULL,
	[LoweredApplicationName] [nvarchar](256) NOT NULL,
	[ApplicationId] [uniqueidentifier] NOT NULL,
	[Description] [nvarchar](256) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[aspnet_Membership]    Script Date: 4/27/2025 2:18:32 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[aspnet_Membership](
	[ApplicationId] [uniqueidentifier] NOT NULL,
	[UserId] [uniqueidentifier] NOT NULL,
	[Password] [nvarchar](128) NOT NULL,
	[PasswordFormat] [int] NOT NULL,
	[PasswordSalt] [nvarchar](128) NOT NULL,
	[MobilePIN] [nvarchar](16) NULL,
	[Email] [nvarchar](256) NULL,
	[LoweredEmail] [nvarchar](256) NULL,
	[PasswordQuestion] [nvarchar](256) NULL,
	[PasswordAnswer] [nvarchar](128) NULL,
	[IsApproved] [bit] NOT NULL,
	[IsLockedOut] [bit] NOT NULL,
	[CreateDate] [datetime] NOT NULL,
	[LastLoginDate] [datetime] NOT NULL,
	[LastPasswordChangedDate] [datetime] NOT NULL,
	[LastLockoutDate] [datetime] NOT NULL,
	[FailedPasswordAttemptCount] [int] NOT NULL,
	[FailedPasswordAttemptWindowStart] [datetime] NOT NULL,
	[FailedPasswordAnswerAttemptCount] [int] NOT NULL,
	[FailedPasswordAnswerAttemptWindowStart] [datetime] NOT NULL,
	[Comment] [ntext] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[aspnet_Roles]    Script Date: 4/27/2025 2:18:32 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[aspnet_Roles](
	[ApplicationId] [uniqueidentifier] NOT NULL,
	[RoleId] [uniqueidentifier] NOT NULL,
	[RoleName] [nvarchar](256) NOT NULL,
	[LoweredRoleName] [nvarchar](256) NOT NULL,
	[Description] [nvarchar](256) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[aspnet_SchemaVersions]    Script Date: 4/27/2025 2:18:32 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[aspnet_SchemaVersions](
	[Feature] [nvarchar](128) NOT NULL,
	[CompatibleSchemaVersion] [nvarchar](128) NOT NULL,
	[IsCurrentVersion] [bit] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Feature] ASC,
	[CompatibleSchemaVersion] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[aspnet_Users]    Script Date: 4/27/2025 2:18:32 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[aspnet_Users](
	[ApplicationId] [uniqueidentifier] NOT NULL,
	[UserId] [uniqueidentifier] NOT NULL,
	[UserName] [nvarchar](256) NOT NULL,
	[LoweredUserName] [nvarchar](256) NOT NULL,
	[MobileAlias] [nvarchar](16) NULL,
	[IsAnonymous] [bit] NOT NULL,
	[LastActivityDate] [datetime] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[aspnet_UsersInRoles]    Script Date: 4/27/2025 2:18:32 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[aspnet_UsersInRoles](
	[UserId] [uniqueidentifier] NOT NULL,
	[RoleId] [uniqueidentifier] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Drzave]    Script Date: 4/27/2025 2:18:32 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Drzave](
	[drzava_id] [nchar](10) NOT NULL,
	[naziv_drzave] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Drzave] PRIMARY KEY CLUSTERED 
(
	[drzava_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Gradovi]    Script Date: 4/27/2025 2:18:32 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Gradovi](
	[grad_id] [nchar](10) NOT NULL,
	[naziv_grada] [varchar](50) NOT NULL,
	[drzava_id] [nchar](10) NOT NULL,
 CONSTRAINT [PK_Gradovi] PRIMARY KEY CLUSTERED 
(
	[grad_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Hoteli]    Script Date: 4/27/2025 2:18:32 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Hoteli](
	[hotel_id] [nchar](10) NOT NULL,
	[naziv_hotela] [varchar](50) NOT NULL,
	[recenzija_hotela] [nchar](10) NOT NULL,
	[grad_id] [nchar](10) NOT NULL,
 CONSTRAINT [PK_Hoteli] PRIMARY KEY CLUSTERED 
(
	[hotel_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Restorani]    Script Date: 4/27/2025 2:18:32 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Restorani](
	[restoran_id] [nchar](10) NOT NULL,
	[naziv_restorana] [varchar](50) NOT NULL,
	[recenzija_restorana] [nchar](10) NOT NULL,
	[grad_id] [nchar](10) NOT NULL,
 CONSTRAINT [PK_Restorani] PRIMARY KEY CLUSTERED 
(
	[restoran_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Znamenitosti]    Script Date: 4/27/2025 2:18:32 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Znamenitosti](
	[znamenitost_id] [nchar](10) NOT NULL,
	[naziv_znamenitosti] [varchar](50) NOT NULL,
	[opis_znamenitosti] [text] NULL,
	[grad_id] [nchar](10) NOT NULL,
 CONSTRAINT [PK_Destinacije] PRIMARY KEY CLUSTERED 
(
	[znamenitost_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
INSERT [dbo].[aspnet_Applications] ([ApplicationName], [LoweredApplicationName], [ApplicationId], [Description]) VALUES (N'/', N'/', N'0994f652-f8bd-487a-b25c-a07898ca6111', NULL)
GO
INSERT [dbo].[aspnet_Membership] ([ApplicationId], [UserId], [Password], [PasswordFormat], [PasswordSalt], [MobilePIN], [Email], [LoweredEmail], [PasswordQuestion], [PasswordAnswer], [IsApproved], [IsLockedOut], [CreateDate], [LastLoginDate], [LastPasswordChangedDate], [LastLockoutDate], [FailedPasswordAttemptCount], [FailedPasswordAttemptWindowStart], [FailedPasswordAnswerAttemptCount], [FailedPasswordAnswerAttemptWindowStart], [Comment]) VALUES (N'0994f652-f8bd-487a-b25c-a07898ca6111', N'e6cae11a-5184-4e8f-903a-267cca9ba232', N'jnhHSL0CUmEILi1LajtXpxQ8URQ=', 1, N'CMuyxPohBCwa2mgT/514+Q==', NULL, N'izgorpederpornic@gmail.com', N'izgorpederpornic@gmail.com', N'broj', N'BjQo+a2gg1V5kFqfNTGi/xYdr6o=', 1, 0, CAST(N'2024-12-22T20:50:58.000' AS DateTime), CAST(N'2024-12-22T21:17:52.993' AS DateTime), CAST(N'2024-12-22T21:25:25.493' AS DateTime), CAST(N'1754-01-01T00:00:00.000' AS DateTime), 0, CAST(N'2025-04-26T19:05:26.890' AS DateTime), 0, CAST(N'1754-01-01T00:00:00.000' AS DateTime), NULL)
INSERT [dbo].[aspnet_Membership] ([ApplicationId], [UserId], [Password], [PasswordFormat], [PasswordSalt], [MobilePIN], [Email], [LoweredEmail], [PasswordQuestion], [PasswordAnswer], [IsApproved], [IsLockedOut], [CreateDate], [LastLoginDate], [LastPasswordChangedDate], [LastLockoutDate], [FailedPasswordAttemptCount], [FailedPasswordAttemptWindowStart], [FailedPasswordAnswerAttemptCount], [FailedPasswordAnswerAttemptWindowStart], [Comment]) VALUES (N'0994f652-f8bd-487a-b25c-a07898ca6111', N'd91dd17e-14e3-43ab-8c8e-8ec3813fd190', N'rRSU8mtjvco1ZinvDe7Lm2Lxr6A=', 1, N'S9oKP1p4x9pd/8MNWq2YOA==', NULL, N'ukinoob@gmail.com', N'ukinoob@gmail.com', N'broj', N'Y+TQ/ErBkl1DP2irDeleiGQK3GI=', 1, 0, CAST(N'2024-12-22T21:27:16.000' AS DateTime), CAST(N'2024-12-22T21:27:29.483' AS DateTime), CAST(N'2024-12-22T21:28:20.507' AS DateTime), CAST(N'1754-01-01T00:00:00.000' AS DateTime), 0, CAST(N'2025-04-26T19:04:56.227' AS DateTime), 0, CAST(N'1754-01-01T00:00:00.000' AS DateTime), NULL)
INSERT [dbo].[aspnet_Membership] ([ApplicationId], [UserId], [Password], [PasswordFormat], [PasswordSalt], [MobilePIN], [Email], [LoweredEmail], [PasswordQuestion], [PasswordAnswer], [IsApproved], [IsLockedOut], [CreateDate], [LastLoginDate], [LastPasswordChangedDate], [LastLockoutDate], [FailedPasswordAttemptCount], [FailedPasswordAttemptWindowStart], [FailedPasswordAnswerAttemptCount], [FailedPasswordAnswerAttemptWindowStart], [Comment]) VALUES (N'0994f652-f8bd-487a-b25c-a07898ca6111', N'18ca3950-ee40-4086-a134-2a16edcd47aa', N'V4Avgn39Tiz9sfV/1L/dYJkEd3A=', 1, N'R5Nygf29qcfdkQ2evIgt/Q==', NULL, N'uros.radovanovic.pro@gmail.com', N'uros.radovanovic.pro@gmail.com', N'broj', N'2yMymhnN/rwJ5MEKho1BEEGlYHM=', 1, 0, CAST(N'2025-04-23T17:55:37.000' AS DateTime), CAST(N'2025-04-27T12:07:34.400' AS DateTime), CAST(N'2025-04-26T20:13:21.303' AS DateTime), CAST(N'1754-01-01T00:00:00.000' AS DateTime), 0, CAST(N'1754-01-01T00:00:00.000' AS DateTime), 0, CAST(N'1754-01-01T00:00:00.000' AS DateTime), NULL)
INSERT [dbo].[aspnet_Membership] ([ApplicationId], [UserId], [Password], [PasswordFormat], [PasswordSalt], [MobilePIN], [Email], [LoweredEmail], [PasswordQuestion], [PasswordAnswer], [IsApproved], [IsLockedOut], [CreateDate], [LastLoginDate], [LastPasswordChangedDate], [LastLockoutDate], [FailedPasswordAttemptCount], [FailedPasswordAttemptWindowStart], [FailedPasswordAnswerAttemptCount], [FailedPasswordAnswerAttemptWindowStart], [Comment]) VALUES (N'0994f652-f8bd-487a-b25c-a07898ca6111', N'39d7471e-c94c-4ca0-915f-5ef37b31e31d', N'Hrm5hiqgcMx/uoaxubwmqw8nmfU=', 1, N'KxIeydU0A1HCsvefn/9RLg==', NULL, N'uros@gmail.com', N'uros@gmail.com', N'broj', N'W6FJS6Z/trCQcHePKlA/z02OvE0=', 1, 0, CAST(N'2025-04-23T17:55:08.000' AS DateTime), CAST(N'2025-04-23T17:55:08.740' AS DateTime), CAST(N'2025-04-23T17:55:08.000' AS DateTime), CAST(N'1754-01-01T00:00:00.000' AS DateTime), 0, CAST(N'1754-01-01T00:00:00.000' AS DateTime), 0, CAST(N'1754-01-01T00:00:00.000' AS DateTime), NULL)
INSERT [dbo].[aspnet_Membership] ([ApplicationId], [UserId], [Password], [PasswordFormat], [PasswordSalt], [MobilePIN], [Email], [LoweredEmail], [PasswordQuestion], [PasswordAnswer], [IsApproved], [IsLockedOut], [CreateDate], [LastLoginDate], [LastPasswordChangedDate], [LastLockoutDate], [FailedPasswordAttemptCount], [FailedPasswordAttemptWindowStart], [FailedPasswordAnswerAttemptCount], [FailedPasswordAnswerAttemptWindowStart], [Comment]) VALUES (N'0994f652-f8bd-487a-b25c-a07898ca6111', N'00c6dab9-f769-4e51-8728-ac21d2f8c778', N'zDVJmuDd5XF1tU5kWYaalDV22vU=', 1, N'JfXZjkrS4SdQzccR4CoJGg==', NULL, N'veljkosmrdaprda@gmail.com', N'veljkosmrdaprda@gmail.com', N'broj', N'83olWLWN34HG8lT+Soyj/B50T0k=', 1, 0, CAST(N'2024-12-22T20:59:14.000' AS DateTime), CAST(N'2024-12-22T20:59:15.360' AS DateTime), CAST(N'2024-12-22T20:59:14.000' AS DateTime), CAST(N'1754-01-01T00:00:00.000' AS DateTime), 0, CAST(N'1754-01-01T00:00:00.000' AS DateTime), 0, CAST(N'1754-01-01T00:00:00.000' AS DateTime), NULL)
GO
INSERT [dbo].[aspnet_SchemaVersions] ([Feature], [CompatibleSchemaVersion], [IsCurrentVersion]) VALUES (N'common', N'1', 1)
INSERT [dbo].[aspnet_SchemaVersions] ([Feature], [CompatibleSchemaVersion], [IsCurrentVersion]) VALUES (N'membership', N'1', 1)
INSERT [dbo].[aspnet_SchemaVersions] ([Feature], [CompatibleSchemaVersion], [IsCurrentVersion]) VALUES (N'role manager', N'1', 1)
GO
INSERT [dbo].[aspnet_Users] ([ApplicationId], [UserId], [UserName], [LoweredUserName], [MobileAlias], [IsAnonymous], [LastActivityDate]) VALUES (N'0994f652-f8bd-487a-b25c-a07898ca6111', N'e6cae11a-5184-4e8f-903a-267cca9ba232', N'izgorpeder', N'izgorpeder', NULL, 0, CAST(N'2024-12-22T21:17:52.993' AS DateTime))
INSERT [dbo].[aspnet_Users] ([ApplicationId], [UserId], [UserName], [LoweredUserName], [MobileAlias], [IsAnonymous], [LastActivityDate]) VALUES (N'0994f652-f8bd-487a-b25c-a07898ca6111', N'd91dd17e-14e3-43ab-8c8e-8ec3813fd190', N'uki.n00b', N'uki.n00b', NULL, 0, CAST(N'2024-12-22T21:27:29.483' AS DateTime))
INSERT [dbo].[aspnet_Users] ([ApplicationId], [UserId], [UserName], [LoweredUserName], [MobileAlias], [IsAnonymous], [LastActivityDate]) VALUES (N'0994f652-f8bd-487a-b25c-a07898ca6111', N'39d7471e-c94c-4ca0-915f-5ef37b31e31d', N'uros', N'uros', NULL, 0, CAST(N'2025-04-23T17:55:08.740' AS DateTime))
INSERT [dbo].[aspnet_Users] ([ApplicationId], [UserId], [UserName], [LoweredUserName], [MobileAlias], [IsAnonymous], [LastActivityDate]) VALUES (N'0994f652-f8bd-487a-b25c-a07898ca6111', N'18ca3950-ee40-4086-a134-2a16edcd47aa', N'uros123', N'uros123', NULL, 0, CAST(N'2025-04-27T12:07:34.400' AS DateTime))
INSERT [dbo].[aspnet_Users] ([ApplicationId], [UserId], [UserName], [LoweredUserName], [MobileAlias], [IsAnonymous], [LastActivityDate]) VALUES (N'0994f652-f8bd-487a-b25c-a07898ca6111', N'00c6dab9-f769-4e51-8728-ac21d2f8c778', N'veljko', N'veljko', NULL, 0, CAST(N'2024-12-22T20:59:15.360' AS DateTime))
GO
INSERT [dbo].[Drzave] ([drzava_id], [naziv_drzave]) VALUES (N'd1        ', N'Francuska')
INSERT [dbo].[Drzave] ([drzava_id], [naziv_drzave]) VALUES (N'd10       ', N'Japan')
INSERT [dbo].[Drzave] ([drzava_id], [naziv_drzave]) VALUES (N'd11       ', N'Indija')
INSERT [dbo].[Drzave] ([drzava_id], [naziv_drzave]) VALUES (N'd12       ', N'Egipat')
INSERT [dbo].[Drzave] ([drzava_id], [naziv_drzave]) VALUES (N'd13       ', N'Sjedinjene Americke Drzave')
INSERT [dbo].[Drzave] ([drzava_id], [naziv_drzave]) VALUES (N'd2        ', N'Italija')
INSERT [dbo].[Drzave] ([drzava_id], [naziv_drzave]) VALUES (N'd3        ', N'Spanija')
INSERT [dbo].[Drzave] ([drzava_id], [naziv_drzave]) VALUES (N'd4        ', N'Portugal')
INSERT [dbo].[Drzave] ([drzava_id], [naziv_drzave]) VALUES (N'd5        ', N'Nemacka')
INSERT [dbo].[Drzave] ([drzava_id], [naziv_drzave]) VALUES (N'd6        ', N'Velika Britanija')
INSERT [dbo].[Drzave] ([drzava_id], [naziv_drzave]) VALUES (N'd7        ', N'Austrija')
INSERT [dbo].[Drzave] ([drzava_id], [naziv_drzave]) VALUES (N'd8        ', N'Rusija')
INSERT [dbo].[Drzave] ([drzava_id], [naziv_drzave]) VALUES (N'd9        ', N'Kina')
GO
INSERT [dbo].[Gradovi] ([grad_id], [naziv_grada], [drzava_id]) VALUES (N'g1        ', N'Moskva ', N'd8        ')
INSERT [dbo].[Gradovi] ([grad_id], [naziv_grada], [drzava_id]) VALUES (N'g10       ', N'Berlin ', N'd5        ')
INSERT [dbo].[Gradovi] ([grad_id], [naziv_grada], [drzava_id]) VALUES (N'g11       ', N'Hamburg ', N'd5        ')
INSERT [dbo].[Gradovi] ([grad_id], [naziv_grada], [drzava_id]) VALUES (N'g12       ', N'Minhen ', N'd5        ')
INSERT [dbo].[Gradovi] ([grad_id], [naziv_grada], [drzava_id]) VALUES (N'g2        ', N'Sankt Peterburg', N'd8        ')
INSERT [dbo].[Gradovi] ([grad_id], [naziv_grada], [drzava_id]) VALUES (N'g3        ', N'Novosibirsk ', N'd8        ')
INSERT [dbo].[Gradovi] ([grad_id], [naziv_grada], [drzava_id]) VALUES (N'g4        ', N'Rim ', N'd2        ')
INSERT [dbo].[Gradovi] ([grad_id], [naziv_grada], [drzava_id]) VALUES (N'g5        ', N'Milano', N'd2        ')
INSERT [dbo].[Gradovi] ([grad_id], [naziv_grada], [drzava_id]) VALUES (N'g6        ', N'Napulj ', N'd3        ')
INSERT [dbo].[Gradovi] ([grad_id], [naziv_grada], [drzava_id]) VALUES (N'g7        ', N'Njujork ', N'd13       ')
INSERT [dbo].[Gradovi] ([grad_id], [naziv_grada], [drzava_id]) VALUES (N'g8        ', N'Los Andjeles', N'd13       ')
INSERT [dbo].[Gradovi] ([grad_id], [naziv_grada], [drzava_id]) VALUES (N'g9        ', N'Cikago', N'd13       ')
GO
INSERT [dbo].[Hoteli] ([hotel_id], [naziv_hotela], [recenzija_hotela], [grad_id]) VALUES (N'h1        ', N'Four Seasons Hotel ', N'4.7       ', N'g1        ')
INSERT [dbo].[Hoteli] ([hotel_id], [naziv_hotela], [recenzija_hotela], [grad_id]) VALUES (N'h10       ', N'Hotel Adlon Kempinski', N'4.7       ', N'g10       ')
INSERT [dbo].[Hoteli] ([hotel_id], [naziv_hotela], [recenzija_hotela], [grad_id]) VALUES (N'h11       ', N'SO/ Berlin Das Stue', N'4.6       ', N'g10       ')
INSERT [dbo].[Hoteli] ([hotel_id], [naziv_hotela], [recenzija_hotela], [grad_id]) VALUES (N'h12       ', N'Michelberger Hotel', N'4.5       ', N'g10       ')
INSERT [dbo].[Hoteli] ([hotel_id], [naziv_hotela], [recenzija_hotela], [grad_id]) VALUES (N'h2        ', N'Radisson Collection Hotel', N'4.7       ', N'g1        ')
INSERT [dbo].[Hoteli] ([hotel_id], [naziv_hotela], [recenzija_hotela], [grad_id]) VALUES (N'h3        ', N'Hotel National', N'4.6       ', N'g1        ')
INSERT [dbo].[Hoteli] ([hotel_id], [naziv_hotela], [recenzija_hotela], [grad_id]) VALUES (N'h4        ', N'Hotel de Russie', N'4.7       ', N'g4        ')
INSERT [dbo].[Hoteli] ([hotel_id], [naziv_hotela], [recenzija_hotela], [grad_id]) VALUES (N'h5        ', N'Bulgari Hotel', N'4.6       ', N'g4        ')
INSERT [dbo].[Hoteli] ([hotel_id], [naziv_hotela], [recenzija_hotela], [grad_id]) VALUES (N'h6        ', N'Hotel Eden', N'4.7       ', N'g4        ')
INSERT [dbo].[Hoteli] ([hotel_id], [naziv_hotela], [recenzija_hotela], [grad_id]) VALUES (N'h7        ', N'The Peninsula', N'4.7       ', N'g7        ')
INSERT [dbo].[Hoteli] ([hotel_id], [naziv_hotela], [recenzija_hotela], [grad_id]) VALUES (N'h8        ', N'The Langham', N'4.6       ', N'g7        ')
INSERT [dbo].[Hoteli] ([hotel_id], [naziv_hotela], [recenzija_hotela], [grad_id]) VALUES (N'h9        ', N'The Chatwal', N'4.6       ', N'g7        ')
GO
INSERT [dbo].[Restorani] ([restoran_id], [naziv_restorana], [recenzija_restorana], [grad_id]) VALUES (N'r1        ', N'White Rabbit', N'4.5       ', N'g1        ')
INSERT [dbo].[Restorani] ([restoran_id], [naziv_restorana], [recenzija_restorana], [grad_id]) VALUES (N'r10       ', N'Restaurant Tim Raue', N'4.7       ', N'g10       ')
INSERT [dbo].[Restorani] ([restoran_id], [naziv_restorana], [recenzija_restorana], [grad_id]) VALUES (N'r11       ', N'Nobelhart & Schmutzig', N'4.6       ', N'g10       ')
INSERT [dbo].[Restorani] ([restoran_id], [naziv_restorana], [recenzija_restorana], [grad_id]) VALUES (N'r12       ', N'Horvath', N'4.5       ', N'g10       ')
INSERT [dbo].[Restorani] ([restoran_id], [naziv_restorana], [recenzija_restorana], [grad_id]) VALUES (N'r2        ', N'SAVVA', N'4.5       ', N'g1        ')
INSERT [dbo].[Restorani] ([restoran_id], [naziv_restorana], [recenzija_restorana], [grad_id]) VALUES (N'r3        ', N'Sabor de la Vida', N'5         ', N'g1        ')
INSERT [dbo].[Restorani] ([restoran_id], [naziv_restorana], [recenzija_restorana], [grad_id]) VALUES (N'r4        ', N'Da Enzo al 29', N'4.8       ', N'g4        ')
INSERT [dbo].[Restorani] ([restoran_id], [naziv_restorana], [recenzija_restorana], [grad_id]) VALUES (N'r5        ', N'Tonnarello', N'4.7       ', N'g4        ')
INSERT [dbo].[Restorani] ([restoran_id], [naziv_restorana], [recenzija_restorana], [grad_id]) VALUES (N'r6        ', N'Ristorante Agrodolce', N'4.7       ', N'g4        ')
INSERT [dbo].[Restorani] ([restoran_id], [naziv_restorana], [recenzija_restorana], [grad_id]) VALUES (N'r7        ', N'Tatiana by Kwame Onwuachi', N'5         ', N'g7        ')
INSERT [dbo].[Restorani] ([restoran_id], [naziv_restorana], [recenzija_restorana], [grad_id]) VALUES (N'r8        ', N'Oxomoco', N'4.8       ', N'g7        ')
INSERT [dbo].[Restorani] ([restoran_id], [naziv_restorana], [recenzija_restorana], [grad_id]) VALUES (N'r9        ', N'Le Bernardin', N'4.7       ', N'g7        ')
GO
INSERT [dbo].[Znamenitosti] ([znamenitost_id], [naziv_znamenitosti], [opis_znamenitosti], [grad_id]) VALUES (N'de1       ', N'Kremlj', N' Kremlj je istorijska tvrdava u centru Moskve i jedan od najvažnijih simbola Rusije. Unutar njega se nalaze mnoge crkve, muzeji, i carske palate, ukljucujuci i Oružarnicu koja cuva carsku opremu i dragocenosti. Kremlj je i politicko sedište Rusije i predstavlja vrhunac ruske istorije i kulture.', N'g1        ')
INSERT [dbo].[Znamenitosti] ([znamenitost_id], [naziv_znamenitosti], [opis_znamenitosti], [grad_id]) VALUES (N'de10      ', N'Brandenburška kapija', N'Brandenburška kapija je jedan od najprepoznatljivijih simbola Berlina i Nemacke. Izgradena krajem 18. veka, ova neoklasicna kapija je bila deo gradskih zidina i danas se smatra simbolom ujedinjenja Nemacke. Smeštena na Pariser Platzu, u blizini su i brojne ambasade, luksuzni hoteli i kulturne institucije. ', N'g10       ')
INSERT [dbo].[Znamenitosti] ([znamenitost_id], [naziv_znamenitosti], [opis_znamenitosti], [grad_id]) VALUES (N'de11      ', N'Muzejski ostrvo', N'Muzejski ostrvo je UNESCO svetska baština i dom nekih od najvažnijih muzeja u Berlinu. Medu najpoznatijim su Pergamonmuseum, Altes Museum i Neues Museum. Ostrvo se nalazi na reci Spree i nudi bogatu kolekciju umetnickih dela, arheoloških nalaza i istorijskih eksponata. ', N'g10       ')
INSERT [dbo].[Znamenitosti] ([znamenitost_id], [naziv_znamenitosti], [opis_znamenitosti], [grad_id]) VALUES (N'de12      ', N'Berlinski TV toranj', N'Berlinski TV toranj je najviša gradevina u Nemackoj, sa visinom od 368 metara. Smešten je u blizini Alexanderplatza i nudi panoramski pogled na grad sa svoje posmatracke platforme na visini od 203 metra. U toranju se nalazi i rotirajuci restoran, što posetu cini još posebnijom.', N'g10       ')
INSERT [dbo].[Znamenitosti] ([znamenitost_id], [naziv_znamenitosti], [opis_znamenitosti], [grad_id]) VALUES (N'de2       ', N'Crkva Svetog Vasilija Blaženog', N'Smeštena na Crvenom trgu, ova crkva je poznata po svojim šarenim kupolama i karakteristicnoj arhitekturi. Izgradena u 16. veku, crkva je posvecena Svetom Vasiliju i danas je jedna od najpoznatijih turistickih atrakcija u Moskvi. Njena unutrašnjost je bogata freskama i ikona, a spoljni izgled cini je jedinstvenom na svetu.', N'g1        ')
INSERT [dbo].[Znamenitosti] ([znamenitost_id], [naziv_znamenitosti], [opis_znamenitosti], [grad_id]) VALUES (N'de3       ', N'Moskvarski metro', N'Moskvarski metro je poznat po svojim luksuznim, istorijskim stanicama, koje su prave umetnicke galerije. Mnoge stanice su ukrašene mozaicima, freskama i skulpturama, a arhitektura je velicanstvena. Vožnja metroom je jedinstveno iskustvo, koje omogucava turistima da uživaju u kulturnom nasledu Moskve.', N'g1        ')
INSERT [dbo].[Znamenitosti] ([znamenitost_id], [naziv_znamenitosti], [opis_znamenitosti], [grad_id]) VALUES (N'de4       ', N'Koloseum ', N'Jedan od najprepoznatljivijih simbola Rima i sveta, Koloseum je najveci amfiteatar iz rimskog perioda. Smešten u srcu grada, mogao je da primi do 50.000 gledalaca i bio je domacin gladijatorskih borbi i drugih javnih spektakla. Danas je to UNESCO svetska baština i najposecenija atrakcija u Italiji. ', N'g4        ')
INSERT [dbo].[Znamenitosti] ([znamenitost_id], [naziv_znamenitosti], [opis_znamenitosti], [grad_id]) VALUES (N'de5       ', N'Pantheon', N'Ovaj velicanstveni hram, posvecen svim rimskim bogovima, izgraden je u 2. veku nove ere. Njegova ogromna kupola sa otvorom na vrhu (oculus) i savršena simetrija cine ga jednim od najbolje ocuvanih spomenika iz rimskog perioda. Pantheon je danas aktivna crkva i popularno odredište za turiste. ?', N'g4        ')
INSERT [dbo].[Znamenitosti] ([znamenitost_id], [naziv_znamenitosti], [opis_znamenitosti], [grad_id]) VALUES (N'de6       ', N'Bazilika Svetog Petra', N'Smeštena u Vatikanu, ova monumentalna crkva je jedno od najvažnijih hodocasnickih mesta u katolickom svetu. Delo je velikih umetnika poput Mikelandela i Berninija. Posetioci mogu uživati u impresivnom enterijeru, posetiti grobove papa i, uz dodatni uspon, uživati u panoramskom pogledu sa kupole.', N'g4        ')
INSERT [dbo].[Znamenitosti] ([znamenitost_id], [naziv_znamenitosti], [opis_znamenitosti], [grad_id]) VALUES (N'de7       ', N'Statua Slobode i Ostrvo Elis', N'Statua Slobode, poklon Francuske Sjedinjenim Americkim Državama iz 1886. godine, simbolizuje slobodu i demokratiju. Smeštena na Liberty Islandu, lako je dostupna trajektom sa Battery Parka u Manhattanu. Ostrvo Elis je istorijsko imigrantsko pristanište i dom Nacionalnog muzeja imigracije, gde možete saznati više o istoriji imigracije u SAD. ', N'g7        ')
INSERT [dbo].[Znamenitosti] ([znamenitost_id], [naziv_znamenitosti], [opis_znamenitosti], [grad_id]) VALUES (N'de8       ', N'Central Park', N'Central Park je najveci gradski park u Njujorku i jedno od najposecenijih mesta u SAD-u. Prostire se na 341 hektaru i nudi brojne sadržaje, ukljucujuci šetališta, jezera, pozornice za koncerte, muzeje i restorane. Idealno je mesto za opuštanje, rekreaciju i uživanje u prirodi. ', N'g7        ')
INSERT [dbo].[Znamenitosti] ([znamenitost_id], [naziv_znamenitosti], [opis_znamenitosti], [grad_id]) VALUES (N'de9       ', N'Times Square', N'Times Square je živahno cvorište u centru Manhattana, poznato po svojim svetlecim reklamama, pozorištima i trgovinama. Ovaj trg je epicentar njujorške energije i cesto se koristi kao lokacija za filmske premijere i javne dogadaje. Posebno je impresivan tokom noci, kada je osvetljen brojnim LED ekranima. ', N'g7        ')
GO
/****** Object:  Index [PK__aspnet_A__C93A4C981CF467F2]    Script Date: 4/27/2025 2:18:32 PM ******/
ALTER TABLE [dbo].[aspnet_Applications] ADD PRIMARY KEY NONCLUSTERED 
(
	[ApplicationId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UQ__aspnet_A__17477DE40455DCA4]    Script Date: 4/27/2025 2:18:32 PM ******/
ALTER TABLE [dbo].[aspnet_Applications] ADD UNIQUE NONCLUSTERED 
(
	[LoweredApplicationName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UQ__aspnet_A__30910331D1CF46BC]    Script Date: 4/27/2025 2:18:32 PM ******/
ALTER TABLE [dbo].[aspnet_Applications] ADD UNIQUE NONCLUSTERED 
(
	[ApplicationName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [PK__aspnet_M__1788CC4DD763408A]    Script Date: 4/27/2025 2:18:32 PM ******/
ALTER TABLE [dbo].[aspnet_Membership] ADD PRIMARY KEY NONCLUSTERED 
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [PK__aspnet_R__8AFACE1BEC260D21]    Script Date: 4/27/2025 2:18:32 PM ******/
ALTER TABLE [dbo].[aspnet_Roles] ADD PRIMARY KEY NONCLUSTERED 
(
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [PK__aspnet_U__1788CC4DAED81AC6]    Script Date: 4/27/2025 2:18:32 PM ******/
ALTER TABLE [dbo].[aspnet_Users] ADD PRIMARY KEY NONCLUSTERED 
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
ALTER TABLE [dbo].[aspnet_Applications] ADD  DEFAULT (newid()) FOR [ApplicationId]
GO
ALTER TABLE [dbo].[aspnet_Membership] ADD  DEFAULT ((0)) FOR [PasswordFormat]
GO
ALTER TABLE [dbo].[aspnet_Roles] ADD  DEFAULT (newid()) FOR [RoleId]
GO
ALTER TABLE [dbo].[aspnet_Users] ADD  DEFAULT (newid()) FOR [UserId]
GO
ALTER TABLE [dbo].[aspnet_Users] ADD  DEFAULT (NULL) FOR [MobileAlias]
GO
ALTER TABLE [dbo].[aspnet_Users] ADD  DEFAULT ((0)) FOR [IsAnonymous]
GO
ALTER TABLE [dbo].[aspnet_Membership]  WITH CHECK ADD FOREIGN KEY([ApplicationId])
REFERENCES [dbo].[aspnet_Applications] ([ApplicationId])
GO
ALTER TABLE [dbo].[aspnet_Membership]  WITH CHECK ADD FOREIGN KEY([UserId])
REFERENCES [dbo].[aspnet_Users] ([UserId])
GO
ALTER TABLE [dbo].[aspnet_Roles]  WITH CHECK ADD FOREIGN KEY([ApplicationId])
REFERENCES [dbo].[aspnet_Applications] ([ApplicationId])
GO
ALTER TABLE [dbo].[aspnet_Users]  WITH CHECK ADD FOREIGN KEY([ApplicationId])
REFERENCES [dbo].[aspnet_Applications] ([ApplicationId])
GO
ALTER TABLE [dbo].[aspnet_UsersInRoles]  WITH CHECK ADD FOREIGN KEY([RoleId])
REFERENCES [dbo].[aspnet_Roles] ([RoleId])
GO
ALTER TABLE [dbo].[aspnet_UsersInRoles]  WITH CHECK ADD FOREIGN KEY([UserId])
REFERENCES [dbo].[aspnet_Users] ([UserId])
GO
ALTER TABLE [dbo].[Gradovi]  WITH CHECK ADD  CONSTRAINT [FK_Gradovi_Drzave] FOREIGN KEY([drzava_id])
REFERENCES [dbo].[Drzave] ([drzava_id])
GO
ALTER TABLE [dbo].[Gradovi] CHECK CONSTRAINT [FK_Gradovi_Drzave]
GO
ALTER TABLE [dbo].[Hoteli]  WITH CHECK ADD  CONSTRAINT [FK_Hoteli_Gradovi] FOREIGN KEY([grad_id])
REFERENCES [dbo].[Gradovi] ([grad_id])
GO
ALTER TABLE [dbo].[Hoteli] CHECK CONSTRAINT [FK_Hoteli_Gradovi]
GO
ALTER TABLE [dbo].[Restorani]  WITH CHECK ADD  CONSTRAINT [FK_Restorani_Gradovi] FOREIGN KEY([grad_id])
REFERENCES [dbo].[Gradovi] ([grad_id])
GO
ALTER TABLE [dbo].[Restorani] CHECK CONSTRAINT [FK_Restorani_Gradovi]
GO
ALTER TABLE [dbo].[Znamenitosti]  WITH CHECK ADD  CONSTRAINT [FK_Destinacije_Gradovi] FOREIGN KEY([grad_id])
REFERENCES [dbo].[Gradovi] ([grad_id])
GO
ALTER TABLE [dbo].[Znamenitosti] CHECK CONSTRAINT [FK_Destinacije_Gradovi]
GO
