
CREATE TABLE [dbo].[AccountInfor](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Fullname] [nvarchar](max) NULL,
	[Shortname] [nvarchar](max) NULL,
	[ChannelID] [int] NOT NULL,
	[Status] [bit] NULL,
 CONSTRAINT [PK_AccountInfor] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AnswerInfor]    Script Date: 12/7/2020 8:12:11 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AnswerInfor](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[CheckinInforID] [bigint] NOT NULL,
	[Score] [decimal](18, 0) NULL,
	[Datetime] [datetime] NULL,
 CONSTRAINT [PK_AnswerInfor] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AnswerRecord]    Script Date: 12/7/2020 8:12:11 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AnswerRecord](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[AnswerID] [int] NOT NULL,
	[QuesionID] [int] NOT NULL,
	[AnswerOption] [char](10) NULL,
	[Datetime] [datetime] NULL,
 CONSTRAINT [PK_AnswerRecord] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AreaInfor]    Script Date: 12/7/2020 8:12:11 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AreaInfor](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[NameVN] [nvarchar](max) NULL,
	[NameEN] [nvarchar](max) NULL,
 CONSTRAINT [PK_AreaInfor] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CatInfor]    Script Date: 12/7/2020 8:12:11 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CatInfor](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NULL,
	[Status] [bit] NULL,
 CONSTRAINT [PK_CatInfor] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ChannelInfor]    Script Date: 12/7/2020 8:12:11 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ChannelInfor](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](max) NULL,
 CONSTRAINT [PK_ChannelInfor] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CheckinImageRecord]    Script Date: 12/7/2020 8:12:11 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CheckinImageRecord](
	[ID] [bigint] IDENTITY(1,1) NOT NULL,
	[CheckinID] [bigint] NOT NULL,
	[ImageID] [bigint] NULL,
 CONSTRAINT [PK_CheckinImageRecord] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CheckinInfor]    Script Date: 12/7/2020 8:12:11 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CheckinInfor](
	[ID] [bigint] IDENTITY(1,1) NOT NULL,
	[UserID] [int] NOT NULL,
	[RoomID] [int] NOT NULL,
	[Signature] [image] NULL,
	[IsMotivationGift] [bit] NULL,
	[IsMotivationActive] [bit] NULL,
	[IsDoorGift] [bit] NULL,
	[IsRecheckAnswer] [bit] NULL,
	[Datetime] [datetime] NOT NULL,
 CONSTRAINT [PK_CheckinInfor] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CityRuralInfor]    Script Date: 12/7/2020 8:12:11 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CityRuralInfor](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](max) NULL,
 CONSTRAINT [PK_CityRuralInfor] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ContentCourseRecord]    Script Date: 12/7/2020 8:12:11 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ContentCourseRecord](
	[ID] [bigint] IDENTITY(1,1) NOT NULL,
	[CourseID] [int] NULL,
	[ContentID] [int] NULL,
	[Datetime] [datetime] NULL,
 CONSTRAINT [PK_ContentCourseRecord] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ContentInfor]    Script Date: 12/7/2020 8:12:11 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ContentInfor](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](max) NULL,
	[FileUrl] [nvarchar](max) NULL,
	[Datetime] [datetime] NULL,
	[Status] [bit] NULL,
 CONSTRAINT [PK_ContentInfor] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ContentModelRecord]    Script Date: 12/7/2020 8:12:11 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ContentModelRecord](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[ContentID] [int] NULL,
	[ModelID] [int] NULL,
 CONSTRAINT [PK_ContentModelRecord] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CourseInfor]    Script Date: 12/7/2020 8:12:11 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CourseInfor](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](max) NOT NULL,
	[PlatformID] [int] NOT NULL,
	[Datetime] [datetime] NOT NULL,
	[Status] [bit] NULL,
 CONSTRAINT [PK_CourseInfor] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CourseTestRecord]    Script Date: 12/7/2020 8:12:11 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CourseTestRecord](
	[ID] [bigint] IDENTITY(1,1) NOT NULL,
	[TestID] [int] NOT NULL,
	[CourseID] [int] NOT NULL,
	[Status] [bit] NULL,
 CONSTRAINT [PK_CourseTestRecord] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DistrictInfor]    Script Date: 12/7/2020 8:12:11 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DistrictInfor](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](max) NOT NULL,
	[ProvinceID] [int] NOT NULL,
 CONSTRAINT [PK_DistrictInfor] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[EmployeeInfor]    Script Date: 12/7/2020 8:12:11 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EmployeeInfor](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[MNV] [nvarchar](50) NOT NULL,
	[Fullname] [nvarchar](50) NOT NULL,
	[StoreID] [int] NOT NULL,
 CONSTRAINT [PK_EmployeeInfor] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[GiftCourseRecord]    Script Date: 12/7/2020 8:12:11 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[GiftCourseRecord](
	[ID] [bigint] IDENTITY(1,1) NOT NULL,
	[CourseID] [int] NULL,
	[GiftInforID] [int] NULL,
	[GiftTypeID] [int] NULL,
	[Datetime] [datetime] NULL,
 CONSTRAINT [PK_GiftCourseRecord] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[GiftInfor]    Script Date: 12/7/2020 8:12:11 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[GiftInfor](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[ImageID] [bigint] NOT NULL,
	[Name] [nvarchar](50) NULL,
	[Amount] [money] NULL,
	[Datetime] [datetime] NULL,
	[Status] [bit] NULL,
 CONSTRAINT [PK_GiftInfor] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[GiftType]    Script Date: 12/7/2020 8:12:11 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[GiftType](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NULL,
 CONSTRAINT [PK_GiftType] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ImageInfor]    Script Date: 12/7/2020 8:12:11 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ImageInfor](
	[ID] [bigint] IDENTITY(1,1) NOT NULL,
	[UrlThumbnail] [nvarchar](max) NULL,
	[UrlFullsize] [nvarchar](max) NULL,
	[Datetime] [datetime] NULL,
 CONSTRAINT [PK_ImageInfor] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LevelInfor]    Script Date: 12/7/2020 8:12:11 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LevelInfor](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nchar](10) NULL,
 CONSTRAINT [PK_LevelInfor] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LoginInfor]    Script Date: 12/7/2020 8:12:11 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LoginInfor](
	[ID] [bigint] IDENTITY(1,1) NOT NULL,
	[UserID] [int] NOT NULL,
	[Token] [nvarchar](max) NULL,
	[Timestamp] [timestamp] NULL,
	[Status] [bit] NULL,
 CONSTRAINT [PK_LoginInfor] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ModelInfor]    Script Date: 12/7/2020 8:12:11 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ModelInfor](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[CatID] [int] NOT NULL,
	[Modelcode] [nvarchar](max) NULL,
	[Status] [bit] NULL,
 CONSTRAINT [PK_ModelInfro] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PermissionInfor]    Script Date: 12/7/2020 8:12:11 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PermissionInfor](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](250) NULL,
	[Status] [bit] NULL,
 CONSTRAINT [PK_PermissionInfor] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PlatformInfor]    Script Date: 12/7/2020 8:12:11 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PlatformInfor](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NULL,
	[Description] [nvarchar](max) NULL,
 CONSTRAINT [PK_PlatformInfor] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PositionInfor]    Script Date: 12/7/2020 8:12:11 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PositionInfor](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](max) NULL,
 CONSTRAINT [PK_PositionInfor] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ProvinceInfor]    Script Date: 12/7/2020 8:12:11 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProvinceInfor](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[NameVN] [nvarchar](max) NULL,
	[NameEN] [nvarchar](max) NULL,
	[RegionID] [int] NOT NULL,
	[CityRuralID] [int] NULL,
 CONSTRAINT [PK_ProvinceInfor] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[QuestionInfor]    Script Date: 12/7/2020 8:12:11 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[QuestionInfor](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[CatID] [int] NOT NULL,
	[LevelID] [int] NOT NULL,
	[QuestionContent] [nvarchar](max) NULL,
	[TrueChoose] [nchar](10) NULL,
	[Choose1] [nvarchar](max) NULL,
	[Choose2] [nvarchar](max) NULL,
	[Choose3] [nvarchar](max) NULL,
	[Choose4] [nvarchar](max) NULL,
	[Datetime] [datetime] NULL,
	[Status] [bit] NULL,
 CONSTRAINT [PK_QuestionInfor] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[RegionInfor]    Script Date: 12/7/2020 8:12:11 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RegionInfor](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[AreaID] [int] NOT NULL,
	[NameVN] [nvarchar](max) NULL,
	[NameEN] [nvarchar](max) NULL,
 CONSTRAINT [PK_RegionInfor] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[RoomInfor]    Script Date: 12/7/2020 8:12:11 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RoomInfor](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[CourseID] [int] NOT NULL,
	[VenueID] [int] NOT NULL,
	[Name] [nvarchar](max) NOT NULL,
	[RoomUrl] [nvarchar](max) NOT NULL,
	[QRCodeImage] [image] NOT NULL,
	[RoomFee] [money] NULL,
	[TeabreakFee] [money] NULL,
	[Status] [bit] NULL,
	[NoDaysGetGift] [int] NULL,
	[Datetime] [datetime] NOT NULL,
	[Guid] [uniqueidentifier] NOT NULL,
 CONSTRAINT [PK_RoomInfor] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[StoreInfor]    Script Date: 12/7/2020 8:12:11 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[StoreInfor](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[AccountID] [int] NOT NULL,
	[DistrictID] [int] NOT NULL,
	[Name] [nvarchar](max) NULL,
	[Address] [nvarchar](max) NULL,
	[MCScode] [nvarchar](50) NULL,
	[DealeCode] [nvarchar](50) NULL,
	[Status] [bit] NULL,
	[ContactName] [nvarchar](50) NULL,
	[ContactTel] [nvarchar](50) NULL,
	[PlatformID] [int] NOT NULL,
 CONSTRAINT [PK_StoreInfor] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TestInfor]    Script Date: 12/7/2020 8:12:11 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TestInfor](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](max) NULL,
	[Score] [int] NULL,
	[datetime] [datetime] NULL,
 CONSTRAINT [PK_TestInfor] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TestQuestionRecord]    Script Date: 12/7/2020 8:12:11 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TestQuestionRecord](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[TestID] [int] NOT NULL,
	[QuestionID] [int] NOT NULL,
	[Status] [bit] NULL,
 CONSTRAINT [PK_TestQuestionRecord] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TrainerRoomRecord]    Script Date: 12/7/2020 8:12:11 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TrainerRoomRecord](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[RoomID] [int] NOT NULL,
	[TrainerID] [int] NOT NULL,
	[Datetime] [datetime] NULL,
 CONSTRAINT [PK_RoomTrainerRecord] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[UserInfor]    Script Date: 12/7/2020 8:12:11 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UserInfor](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[PositionID] [int] NOT NULL,
	[Tel] [nvarchar](20) NOT NULL,
	[Password] [nvarchar](500) NULL,
	[Status] [bit] NOT NULL,
	[IsDeleted] [bit] NULL,
	[EmployeeID] [int] NOT NULL,
	[PermissionID] [int] NOT NULL,
 CONSTRAINT [PK_UserInfor] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[AccountInfor] ON 
GO
INSERT [dbo].[AccountInfor] ([ID], [Fullname], [Shortname], [ChannelID], [Status]) VALUES (1, N'Khác', N'Khác', 1, NULL)
GO
INSERT [dbo].[AccountInfor] ([ID], [Fullname], [Shortname], [ChannelID], [Status]) VALUES (2, N'Công Ty TNHH Thế Giới Di Động', N'DMX', 2, NULL)
GO
INSERT [dbo].[AccountInfor] ([ID], [Fullname], [Shortname], [ChannelID], [Status]) VALUES (3, N'STDM Chợ Lớn Group', N'CP', 3, NULL)
GO
INSERT [dbo].[AccountInfor] ([ID], [Fullname], [Shortname], [ChannelID], [Status]) VALUES (4, N'Nguyễn Kim', N'NK', 4, NULL)
GO
INSERT [dbo].[AccountInfor] ([ID], [Fullname], [Shortname], [ChannelID], [Status]) VALUES (5, N'Media Mart Group', N'MM', 5, NULL)
GO
INSERT [dbo].[AccountInfor] ([ID], [Fullname], [Shortname], [ChannelID], [Status]) VALUES (6, N'VHC Group', N'VHC', 6, NULL)
GO
INSERT [dbo].[AccountInfor] ([ID], [Fullname], [Shortname], [ChannelID], [Status]) VALUES (7, N'PICO', N'PC', 7, NULL)
GO
INSERT [dbo].[AccountInfor] ([ID], [Fullname], [Shortname], [ChannelID], [Status]) VALUES (8, N'Ánh Chinh - Thái Bình', N'Ánh Chinh - Thái Bình', 8, NULL)
GO
INSERT [dbo].[AccountInfor] ([ID], [Fullname], [Shortname], [ChannelID], [Status]) VALUES (9, N'Cao Thanh Liêm (Cửa Hàng Tường)', N'Cao Thanh Liêm (Cửa Hàng Tường)', 10, NULL)
GO
INSERT [dbo].[AccountInfor] ([ID], [Fullname], [Shortname], [ChannelID], [Status]) VALUES (10, N'CK', N'CK', 8, NULL)
GO
INSERT [dbo].[AccountInfor] ([ID], [Fullname], [Shortname], [ChannelID], [Status]) VALUES (11, N'CPN Vietnam Group', N'CPN Vietnam Group', 8, NULL)
GO
INSERT [dbo].[AccountInfor] ([ID], [Fullname], [Shortname], [ChannelID], [Status]) VALUES (12, N'CTY CP ĐT & PT TM Eco-mart VN', N'CTY CP ĐT & PT TM Eco-mart VN', 8, NULL)
GO
INSERT [dbo].[AccountInfor] ([ID], [Fullname], [Shortname], [ChannelID], [Status]) VALUES (13, N'CTy CP Tập Đoàn Intimex', N'CTy CP Tập Đoàn Intimex', 9, NULL)
GO
INSERT [dbo].[AccountInfor] ([ID], [Fullname], [Shortname], [ChannelID], [Status]) VALUES (14, N'CTy TNHH Quang Phương', N'CTy TNHH Quang Phương', 10, NULL)
GO
INSERT [dbo].[AccountInfor] ([ID], [Fullname], [Shortname], [ChannelID], [Status]) VALUES (15, N'Cty TNHH Tín Dũng', N'Cty TNHH Tín Dũng', 10, NULL)
GO
INSERT [dbo].[AccountInfor] ([ID], [Fullname], [Shortname], [ChannelID], [Status]) VALUES (16, N'CTy TNHH TM & DV Việt Dũng', N'CTy TNHH TM & DV Việt Dũng', 10, NULL)
GO
INSERT [dbo].[AccountInfor] ([ID], [Fullname], [Shortname], [ChannelID], [Status]) VALUES (17, N'CTy TNHH TM Đại Nam', N'CTy TNHH TM Đại Nam', 8, NULL)
GO
INSERT [dbo].[AccountInfor] ([ID], [Fullname], [Shortname], [ChannelID], [Status]) VALUES (18, N'CTY TNHH TM LÊ THỊ NGỌC LAN', N'CTY TNHH TM LÊ THỊ NGỌC LAN', 9, NULL)
GO
INSERT [dbo].[AccountInfor] ([ID], [Fullname], [Shortname], [ChannelID], [Status]) VALUES (19, N'Cường Thịnh - Bắc Giang', N'Cường Thịnh - Bắc Giang', 8, NULL)
GO
INSERT [dbo].[AccountInfor] ([ID], [Fullname], [Shortname], [ChannelID], [Status]) VALUES (20, N'Đại Thanh - Nha Trang', N'Đại Thanh - Nha Trang', 9, NULL)
GO
INSERT [dbo].[AccountInfor] ([ID], [Fullname], [Shortname], [ChannelID], [Status]) VALUES (21, N'Điện máy Tấn', N'Điện máy Tấn', 10, NULL)
GO
INSERT [dbo].[AccountInfor] ([ID], [Fullname], [Shortname], [ChannelID], [Status]) VALUES (22, N'ĐiỆN TƯ VÀ TIN HỌC ĐÀ NẴNG', N'ĐiỆN TƯ VÀ TIN HỌC ĐÀ NẴNG', 9, NULL)
GO
INSERT [dbo].[AccountInfor] ([ID], [Fullname], [Shortname], [ChannelID], [Status]) VALUES (23, N'DNTN Ba Sang', N'DNTN Ba Sang', 9, NULL)
GO
INSERT [dbo].[AccountInfor] ([ID], [Fullname], [Shortname], [ChannelID], [Status]) VALUES (24, N'DNTN Đức Thanh - GL', N'DNTN Đức Thanh - GL', 9, NULL)
GO
INSERT [dbo].[AccountInfor] ([ID], [Fullname], [Shortname], [ChannelID], [Status]) VALUES (25, N'Doanh Minh Huy - Quang Doanh', N'Doanh Minh Huy - Quang Doanh', 10, NULL)
GO
INSERT [dbo].[AccountInfor] ([ID], [Fullname], [Shortname], [ChannelID], [Status]) VALUES (26, N'Đông Lý', N'Đông Lý', 8, NULL)
GO
INSERT [dbo].[AccountInfor] ([ID], [Fullname], [Shortname], [ChannelID], [Status]) VALUES (27, N'Dũng Loan - Quảng Bình', N'Dũng Loan - Quảng Bình', 9, NULL)
GO
INSERT [dbo].[AccountInfor] ([ID], [Fullname], [Shortname], [ChannelID], [Status]) VALUES (28, N'Dung Tân (Digicity)', N'Dung Tân (Digicity)', 8, NULL)
GO
INSERT [dbo].[AccountInfor] ([ID], [Fullname], [Shortname], [ChannelID], [Status]) VALUES (29, N'Dũng Tuyên - Nha Trang', N'Dũng Tuyên - Nha Trang', 9, NULL)
GO
INSERT [dbo].[AccountInfor] ([ID], [Fullname], [Shortname], [ChannelID], [Status]) VALUES (30, N'Dũng Vân', N'Dũng Vân', 8, NULL)
GO
INSERT [dbo].[AccountInfor] ([ID], [Fullname], [Shortname], [ChannelID], [Status]) VALUES (31, N'DV Linh', N'DV Linh', 10, NULL)
GO
INSERT [dbo].[AccountInfor] ([ID], [Fullname], [Shortname], [ChannelID], [Status]) VALUES (32, N'Gia Thành Group', N'Gia Thành Group', 10, NULL)
GO
INSERT [dbo].[AccountInfor] ([ID], [Fullname], [Shortname], [ChannelID], [Status]) VALUES (33, N'Giang Nam', N'Giang Nam', 8, NULL)
GO
INSERT [dbo].[AccountInfor] ([ID], [Fullname], [Shortname], [ChannelID], [Status]) VALUES (34, N'Hali', N'Hali', 8, NULL)
GO
INSERT [dbo].[AccountInfor] ([ID], [Fullname], [Shortname], [ChannelID], [Status]) VALUES (35, N'Hoàng Gia - Hải Phòng', N'Hoàng Gia - Hải Phòng', 8, NULL)
GO
INSERT [dbo].[AccountInfor] ([ID], [Fullname], [Shortname], [ChannelID], [Status]) VALUES (36, N'Hồng Hà', N'Hồng Hà', 8, NULL)
GO
INSERT [dbo].[AccountInfor] ([ID], [Fullname], [Shortname], [ChannelID], [Status]) VALUES (37, N'Khai Trí (Lê Thị Sen)', N'Khai Trí (Lê Thị Sen)', 10, NULL)
GO
INSERT [dbo].[AccountInfor] ([ID], [Fullname], [Shortname], [ChannelID], [Status]) VALUES (38, N'Lan Đài - Gia Lai', N'Lan Đài - Gia Lai', 9, NULL)
GO
INSERT [dbo].[AccountInfor] ([ID], [Fullname], [Shortname], [ChannelID], [Status]) VALUES (39, N'LÊ DŨNG', N'LÊ DŨNG', 9, NULL)
GO
INSERT [dbo].[AccountInfor] ([ID], [Fullname], [Shortname], [ChannelID], [Status]) VALUES (40, N'Lý Liên', N'Lý Liên', 8, NULL)
GO
INSERT [dbo].[AccountInfor] ([ID], [Fullname], [Shortname], [ChannelID], [Status]) VALUES (41, N'Ngô Phúc Vinh - Daklak', N'Ngô Phúc Vinh - Daklak', 9, NULL)
GO
INSERT [dbo].[AccountInfor] ([ID], [Fullname], [Shortname], [ChannelID], [Status]) VALUES (42, N'Ngọc Huyền', N'Ngọc Huyền', 9, NULL)
GO
INSERT [dbo].[AccountInfor] ([ID], [Fullname], [Shortname], [ChannelID], [Status]) VALUES (43, N'Ngọc Nam', N'Ngọc Nam', 9, NULL)
GO
INSERT [dbo].[AccountInfor] ([ID], [Fullname], [Shortname], [ChannelID], [Status]) VALUES (44, N'Nguyên Anh', N'Nguyên Anh', 10, NULL)
GO
INSERT [dbo].[AccountInfor] ([ID], [Fullname], [Shortname], [ChannelID], [Status]) VALUES (45, N'Nguyen Hue AG', N'Nguyen Hue AG', 10, NULL)
GO
INSERT [dbo].[AccountInfor] ([ID], [Fullname], [Shortname], [ChannelID], [Status]) VALUES (46, N'Oanh Sơn - Quảng Ninh', N'Oanh Sơn - Quảng Ninh', 8, NULL)
GO
INSERT [dbo].[AccountInfor] ([ID], [Fullname], [Shortname], [ChannelID], [Status]) VALUES (47, N'Phú Thu', N'Phú Thu', 9, NULL)
GO
INSERT [dbo].[AccountInfor] ([ID], [Fullname], [Shortname], [ChannelID], [Status]) VALUES (48, N'Quang Lợi - Quảng Ngãi', N'Quang Lợi - Quảng Ngãi', 9, NULL)
GO
INSERT [dbo].[AccountInfor] ([ID], [Fullname], [Shortname], [ChannelID], [Status]) VALUES (49, N'QUỐC ANH', N'QUỐC ANH', 8, NULL)
GO
INSERT [dbo].[AccountInfor] ([ID], [Fullname], [Shortname], [ChannelID], [Status]) VALUES (50, N'Samnec HP', N'Samnec HP', 8, NULL)
GO
INSERT [dbo].[AccountInfor] ([ID], [Fullname], [Shortname], [ChannelID], [Status]) VALUES (51, N'Tâm Hằng', N'Tâm Hằng', 8, NULL)
GO
INSERT [dbo].[AccountInfor] ([ID], [Fullname], [Shortname], [ChannelID], [Status]) VALUES (52, N'Tám Oanh', N'Tám Oanh', 8, NULL)
GO
INSERT [dbo].[AccountInfor] ([ID], [Fullname], [Shortname], [ChannelID], [Status]) VALUES (53, N'Tân Nhật Thanh', N'Tân Nhật Thanh', 9, NULL)
GO
INSERT [dbo].[AccountInfor] ([ID], [Fullname], [Shortname], [ChannelID], [Status]) VALUES (54, N'Tân Nhật Việt', N'Tân Nhật Việt', 8, NULL)
GO
INSERT [dbo].[AccountInfor] ([ID], [Fullname], [Shortname], [ChannelID], [Status]) VALUES (55, N'Thái Nguyên (Trần Cao Sơn) - Biên Hòa', N'Thái Nguyên (Trần Cao Sơn) - Biên Hòa', 10, NULL)
GO
INSERT [dbo].[AccountInfor] ([ID], [Fullname], [Shortname], [ChannelID], [Status]) VALUES (56, N'Thiên Phú Cường', N'Thiên Phú Cường', 10, NULL)
GO
INSERT [dbo].[AccountInfor] ([ID], [Fullname], [Shortname], [ChannelID], [Status]) VALUES (57, N'Thuơng Nghiệp Cà Mau', N'Thuơng Nghiệp Cà Mau', 10, NULL)
GO
INSERT [dbo].[AccountInfor] ([ID], [Fullname], [Shortname], [ChannelID], [Status]) VALUES (58, N'Toàn anh', N'Toàn anh', 8, NULL)
GO
INSERT [dbo].[AccountInfor] ([ID], [Fullname], [Shortname], [ChannelID], [Status]) VALUES (59, N'Từ Sơn', N'Từ Sơn', 9, NULL)
GO
INSERT [dbo].[AccountInfor] ([ID], [Fullname], [Shortname], [ChannelID], [Status]) VALUES (60, N'Văn Chiến - Bắc Giang', N'Văn Chiến - Bắc Giang', 8, NULL)
GO
INSERT [dbo].[AccountInfor] ([ID], [Fullname], [Shortname], [ChannelID], [Status]) VALUES (61, N'Việt Hàn - HN', N'Việt Hàn - HN', 8, NULL)
GO
SET IDENTITY_INSERT [dbo].[AccountInfor] OFF
GO
SET IDENTITY_INSERT [dbo].[AreaInfor] ON 
GO
INSERT [dbo].[AreaInfor] ([ID], [NameVN], [NameEN]) VALUES (1, N'Cả nước', N'Nationwide')
GO
INSERT [dbo].[AreaInfor] ([ID], [NameVN], [NameEN]) VALUES (2, N'Miền Bắc', N'Noth')
GO
INSERT [dbo].[AreaInfor] ([ID], [NameVN], [NameEN]) VALUES (3, N'Miền Trung', N'Central')
GO
INSERT [dbo].[AreaInfor] ([ID], [NameVN], [NameEN]) VALUES (4, N'Miền Nam', N'South')
GO
INSERT [dbo].[AreaInfor] ([ID], [NameVN], [NameEN]) VALUES (5, N'Cả nước', N'Nationwide')
GO
INSERT [dbo].[AreaInfor] ([ID], [NameVN], [NameEN]) VALUES (6, N'Miền Bắc', N'Noth')
GO
INSERT [dbo].[AreaInfor] ([ID], [NameVN], [NameEN]) VALUES (7, N'Miền Trung', N'Central')
GO
INSERT [dbo].[AreaInfor] ([ID], [NameVN], [NameEN]) VALUES (8, N'Miền Nam', N'South')
GO
SET IDENTITY_INSERT [dbo].[AreaInfor] OFF
GO
SET IDENTITY_INSERT [dbo].[CatInfor] ON 
GO
INSERT [dbo].[CatInfor] ([ID], [Name], [Status]) VALUES (1, N'REF', 1)
GO
INSERT [dbo].[CatInfor] ([ID], [Name], [Status]) VALUES (2, N'WM', 1)
GO
INSERT [dbo].[CatInfor] ([ID], [Name], [Status]) VALUES (3, N'RAC', 1)
GO
INSERT [dbo].[CatInfor] ([ID], [Name], [Status]) VALUES (4, N'ACP', 1)
GO
INSERT [dbo].[CatInfor] ([ID], [Name], [Status]) VALUES (5, N'VC', 1)
GO
INSERT [dbo].[CatInfor] ([ID], [Name], [Status]) VALUES (6, N'MWO', 1)
GO
SET IDENTITY_INSERT [dbo].[CatInfor] OFF
GO
SET IDENTITY_INSERT [dbo].[ChannelInfor] ON 
GO
INSERT [dbo].[ChannelInfor] ([ID], [Name]) VALUES (1, N'Khác')
GO
INSERT [dbo].[ChannelInfor] ([ID], [Name]) VALUES (2, N'Công Ty TNHH Thế Giới Di Động')
GO
INSERT [dbo].[ChannelInfor] ([ID], [Name]) VALUES (3, N'STDM Chợ Lớn Group')
GO
INSERT [dbo].[ChannelInfor] ([ID], [Name]) VALUES (4, N'Nguyễn Kim')
GO
INSERT [dbo].[ChannelInfor] ([ID], [Name]) VALUES (5, N'Media Mart Group')
GO
INSERT [dbo].[ChannelInfor] ([ID], [Name]) VALUES (6, N'VHC Group')
GO
INSERT [dbo].[ChannelInfor] ([ID], [Name]) VALUES (7, N'PICO')
GO
INSERT [dbo].[ChannelInfor] ([ID], [Name]) VALUES (8, N'IND NORTH')
GO
INSERT [dbo].[ChannelInfor] ([ID], [Name]) VALUES (9, N'IND CENTRAL')
GO
INSERT [dbo].[ChannelInfor] ([ID], [Name]) VALUES (10, N'IND SOUTH')
GO
SET IDENTITY_INSERT [dbo].[ChannelInfor] OFF
GO
SET IDENTITY_INSERT [dbo].[CityRuralInfor] ON 
GO
INSERT [dbo].[CityRuralInfor] ([ID], [Name]) VALUES (1, N'Khác')
GO
INSERT [dbo].[CityRuralInfor] ([ID], [Name]) VALUES (2, N'City')
GO
INSERT [dbo].[CityRuralInfor] ([ID], [Name]) VALUES (3, N'Rural')
GO
SET IDENTITY_INSERT [dbo].[CityRuralInfor] OFF
GO
SET IDENTITY_INSERT [dbo].[ContentCourseRecord] ON 
GO
INSERT [dbo].[ContentCourseRecord] ([ID], [CourseID], [ContentID], [Datetime]) VALUES (1, 1, 1, CAST(N'2020-12-06T00:00:00.000' AS DateTime))
GO
SET IDENTITY_INSERT [dbo].[ContentCourseRecord] OFF
GO
SET IDENTITY_INSERT [dbo].[ContentInfor] ON 
GO
INSERT [dbo].[ContentInfor] ([ID], [Name], [FileUrl], [Datetime], [Status]) VALUES (1, N'checkinapp.bak', N'/UploadedFiles/checkinapp.bak', CAST(N'2020-12-06T00:00:00.000' AS DateTime), 1)
GO
SET IDENTITY_INSERT [dbo].[ContentInfor] OFF
GO
SET IDENTITY_INSERT [dbo].[ContentModelRecord] ON 
GO
INSERT [dbo].[ContentModelRecord] ([ID], [ContentID], [ModelID]) VALUES (1, 1, 2)
GO
SET IDENTITY_INSERT [dbo].[ContentModelRecord] OFF
GO
SET IDENTITY_INSERT [dbo].[CourseInfor] ON 
GO
INSERT [dbo].[CourseInfor] ([ID], [Name], [PlatformID], [Datetime], [Status]) VALUES (1, N'Onsite Dec', 2, CAST(N'2020-12-16T00:00:00.000' AS DateTime), 1)
GO
SET IDENTITY_INSERT [dbo].[CourseInfor] OFF
GO
SET IDENTITY_INSERT [dbo].[DistrictInfor] ON 
GO
INSERT [dbo].[DistrictInfor] ([ID], [Name], [ProvinceID]) VALUES (1, N'Khác', 1)
GO
INSERT [dbo].[DistrictInfor] ([ID], [Name], [ProvinceID]) VALUES (2, N'Bảo Lộc', 40)
GO
INSERT [dbo].[DistrictInfor] ([ID], [Name], [ProvinceID]) VALUES (3, N'Hà Đông', 28)
GO
INSERT [dbo].[DistrictInfor] ([ID], [Name], [ProvinceID]) VALUES (4, N'Đông Triều', 55)
GO
INSERT [dbo].[DistrictInfor] ([ID], [Name], [ProvinceID]) VALUES (5, N'Đống Đa', 28)
GO
INSERT [dbo].[DistrictInfor] ([ID], [Name], [ProvinceID]) VALUES (6, N'Đăk Mil', 19)
GO
INSERT [dbo].[DistrictInfor] ([ID], [Name], [ProvinceID]) VALUES (7, N'Ngã Bảy', 32)
GO
INSERT [dbo].[DistrictInfor] ([ID], [Name], [ProvinceID]) VALUES (8, N'Định Quán', 22)
GO
INSERT [dbo].[DistrictInfor] ([ID], [Name], [ProvinceID]) VALUES (9, N'Lê Chân', 31)
GO
INSERT [dbo].[DistrictInfor] ([ID], [Name], [ProvinceID]) VALUES (10, N'Hồng Bàng', 31)
GO
INSERT [dbo].[DistrictInfor] ([ID], [Name], [ProvinceID]) VALUES (11, N'Huế', 64)
GO
INSERT [dbo].[DistrictInfor] ([ID], [Name], [ProvinceID]) VALUES (12, N'Hạ Long', 26)
GO
INSERT [dbo].[DistrictInfor] ([ID], [Name], [ProvinceID]) VALUES (13, N'Vĩnh Bảo', 31)
GO
INSERT [dbo].[DistrictInfor] ([ID], [Name], [ProvinceID]) VALUES (14, N'Gò Vấp', 33)
GO
INSERT [dbo].[DistrictInfor] ([ID], [Name], [ProvinceID]) VALUES (15, N'Bình Long', 12)
GO
INSERT [dbo].[DistrictInfor] ([ID], [Name], [ProvinceID]) VALUES (16, N'Hai Bà Trưng', 28)
GO
INSERT [dbo].[DistrictInfor] ([ID], [Name], [ProvinceID]) VALUES (17, N'Quận 2', 33)
GO
INSERT [dbo].[DistrictInfor] ([ID], [Name], [ProvinceID]) VALUES (18, N'Chí Linh', 30)
GO
INSERT [dbo].[DistrictInfor] ([ID], [Name], [ProvinceID]) VALUES (19, N'Bà Rịa', 14)
GO
INSERT [dbo].[DistrictInfor] ([ID], [Name], [ProvinceID]) VALUES (20, N'Biên Hòa', 9)
GO
INSERT [dbo].[DistrictInfor] ([ID], [Name], [ProvinceID]) VALUES (21, N'Dĩ An', 11)
GO
INSERT [dbo].[DistrictInfor] ([ID], [Name], [ProvinceID]) VALUES (22, N'Cao Lãnh', 23)
GO
INSERT [dbo].[DistrictInfor] ([ID], [Name], [ProvinceID]) VALUES (23, N'Cẩm Lệ', 18)
GO
INSERT [dbo].[DistrictInfor] ([ID], [Name], [ProvinceID]) VALUES (24, N'Đồng Xoài', 12)
GO
INSERT [dbo].[DistrictInfor] ([ID], [Name], [ProvinceID]) VALUES (25, N'Mỹ Tho', 65)
GO
INSERT [dbo].[DistrictInfor] ([ID], [Name], [ProvinceID]) VALUES (26, N'Long Xuyên', 44)
GO
INSERT [dbo].[DistrictInfor] ([ID], [Name], [ProvinceID]) VALUES (27, N'Rạch Giá', 37)
GO
INSERT [dbo].[DistrictInfor] ([ID], [Name], [ProvinceID]) VALUES (28, N'Thái Nguyên', 61)
GO
INSERT [dbo].[DistrictInfor] ([ID], [Name], [ProvinceID]) VALUES (29, N'Hoàng Mai', 28)
GO
INSERT [dbo].[DistrictInfor] ([ID], [Name], [ProvinceID]) VALUES (30, N'Hóc Môn', 33)
GO
INSERT [dbo].[DistrictInfor] ([ID], [Name], [ProvinceID]) VALUES (31, N'Quảng Ngãi', 54)
GO
INSERT [dbo].[DistrictInfor] ([ID], [Name], [ProvinceID]) VALUES (32, N'Vĩnh Long', 69)
GO
INSERT [dbo].[DistrictInfor] ([ID], [Name], [ProvinceID]) VALUES (33, N'Từ Liêm ', 28)
GO
INSERT [dbo].[DistrictInfor] ([ID], [Name], [ProvinceID]) VALUES (34, N'Tân Phú', 33)
GO
INSERT [dbo].[DistrictInfor] ([ID], [Name], [ProvinceID]) VALUES (35, N'Tam Kỳ', 53)
GO
INSERT [dbo].[DistrictInfor] ([ID], [Name], [ProvinceID]) VALUES (36, N'Ba Đình', 28)
GO
INSERT [dbo].[DistrictInfor] ([ID], [Name], [ProvinceID]) VALUES (37, N'Cà Mau', 15)
GO
INSERT [dbo].[DistrictInfor] ([ID], [Name], [ProvinceID]) VALUES (38, N'Củ Chi', 33)
GO
INSERT [dbo].[DistrictInfor] ([ID], [Name], [ProvinceID]) VALUES (39, N'Đức Hòa', 43)
GO
INSERT [dbo].[DistrictInfor] ([ID], [Name], [ProvinceID]) VALUES (40, N'Tuyên Quang', 67)
GO
INSERT [dbo].[DistrictInfor] ([ID], [Name], [ProvinceID]) VALUES (41, N'Hưng Yên', 35)
GO
INSERT [dbo].[DistrictInfor] ([ID], [Name], [ProvinceID]) VALUES (42, N'Hội An ', 53)
GO
INSERT [dbo].[DistrictInfor] ([ID], [Name], [ProvinceID]) VALUES (43, N'Lào Cai', 42)
GO
INSERT [dbo].[DistrictInfor] ([ID], [Name], [ProvinceID]) VALUES (44, N'Đồng Hới', 52)
GO
INSERT [dbo].[DistrictInfor] ([ID], [Name], [ProvinceID]) VALUES (45, N'Thuận An', 11)
GO
INSERT [dbo].[DistrictInfor] ([ID], [Name], [ProvinceID]) VALUES (46, N'Sơn Trà', 18)
GO
INSERT [dbo].[DistrictInfor] ([ID], [Name], [ProvinceID]) VALUES (47, N'Nam Định', 45)
GO
INSERT [dbo].[DistrictInfor] ([ID], [Name], [ProvinceID]) VALUES (48, N'Diên Khánh', 36)
GO
INSERT [dbo].[DistrictInfor] ([ID], [Name], [ProvinceID]) VALUES (49, N'Chợ Gạo', 65)
GO
INSERT [dbo].[DistrictInfor] ([ID], [Name], [ProvinceID]) VALUES (50, N'Bỉm Sơn', 62)
GO
INSERT [dbo].[DistrictInfor] ([ID], [Name], [ProvinceID]) VALUES (51, N'Mạo Khê', 55)
GO
INSERT [dbo].[DistrictInfor] ([ID], [Name], [ProvinceID]) VALUES (52, N'Việt Trì', 50)
GO
INSERT [dbo].[DistrictInfor] ([ID], [Name], [ProvinceID]) VALUES (53, N'Vinh Cửu', 22)
GO
INSERT [dbo].[DistrictInfor] ([ID], [Name], [ProvinceID]) VALUES (54, N'Sơn Tây', 28)
GO
INSERT [dbo].[DistrictInfor] ([ID], [Name], [ProvinceID]) VALUES (55, N'Hòa Bình', 34)
GO
INSERT [dbo].[DistrictInfor] ([ID], [Name], [ProvinceID]) VALUES (56, N'Thanh Hóa', 62)
GO
INSERT [dbo].[DistrictInfor] ([ID], [Name], [ProvinceID]) VALUES (57, N'La Gi', 13)
GO
INSERT [dbo].[DistrictInfor] ([ID], [Name], [ProvinceID]) VALUES (58, N'Liên Chiểu', 18)
GO
INSERT [dbo].[DistrictInfor] ([ID], [Name], [ProvinceID]) VALUES (59, N'Thủ Dầu Một', 63)
GO
INSERT [dbo].[DistrictInfor] ([ID], [Name], [ProvinceID]) VALUES (60, N'Ngọc Lặc', 62)
GO
INSERT [dbo].[DistrictInfor] ([ID], [Name], [ProvinceID]) VALUES (61, N'Phú Nhuận', 33)
GO
INSERT [dbo].[DistrictInfor] ([ID], [Name], [ProvinceID]) VALUES (62, N'Qui Nhơn', 10)
GO
INSERT [dbo].[DistrictInfor] ([ID], [Name], [ProvinceID]) VALUES (63, N'Sầm Sơn', 62)
GO
INSERT [dbo].[DistrictInfor] ([ID], [Name], [ProvinceID]) VALUES (64, N'Thanh Khê', 18)
GO
INSERT [dbo].[DistrictInfor] ([ID], [Name], [ProvinceID]) VALUES (65, N'Tháp Mười', 23)
GO
INSERT [dbo].[DistrictInfor] ([ID], [Name], [ProvinceID]) VALUES (66, N'Tây Ninh', 59)
GO
INSERT [dbo].[DistrictInfor] ([ID], [Name], [ProvinceID]) VALUES (67, N'Châu Thành', 32)
GO
INSERT [dbo].[DistrictInfor] ([ID], [Name], [ProvinceID]) VALUES (68, N'Lâm Thao', 50)
GO
INSERT [dbo].[DistrictInfor] ([ID], [Name], [ProvinceID]) VALUES (69, N'Pleiku', 24)
GO
INSERT [dbo].[DistrictInfor] ([ID], [Name], [ProvinceID]) VALUES (70, N'Bình Thạnh', 33)
GO
INSERT [dbo].[DistrictInfor] ([ID], [Name], [ProvinceID]) VALUES (71, N'Hương Thủy', 64)
GO
INSERT [dbo].[DistrictInfor] ([ID], [Name], [ProvinceID]) VALUES (72, N'Tân Yên', 5)
GO
INSERT [dbo].[DistrictInfor] ([ID], [Name], [ProvinceID]) VALUES (73, N'Bạc Liêu', 6)
GO
INSERT [dbo].[DistrictInfor] ([ID], [Name], [ProvinceID]) VALUES (74, N'Quận 12', 33)
GO
INSERT [dbo].[DistrictInfor] ([ID], [Name], [ProvinceID]) VALUES (75, N'Đăk Hà', 38)
GO
INSERT [dbo].[DistrictInfor] ([ID], [Name], [ProvinceID]) VALUES (76, N'Tân Thành', 43)
GO
INSERT [dbo].[DistrictInfor] ([ID], [Name], [ProvinceID]) VALUES (77, N'Đức Huệ', 43)
GO
INSERT [dbo].[DistrictInfor] ([ID], [Name], [ProvinceID]) VALUES (78, N'Vinh', 68)
GO
INSERT [dbo].[DistrictInfor] ([ID], [Name], [ProvinceID]) VALUES (79, N'Quận 1', 33)
GO
INSERT [dbo].[DistrictInfor] ([ID], [Name], [ProvinceID]) VALUES (80, N'Tân Hiệp', 37)
GO
INSERT [dbo].[DistrictInfor] ([ID], [Name], [ProvinceID]) VALUES (81, N'Mai Sơn', 58)
GO
INSERT [dbo].[DistrictInfor] ([ID], [Name], [ProvinceID]) VALUES (82, N'Nha Trang', 47)
GO
INSERT [dbo].[DistrictInfor] ([ID], [Name], [ProvinceID]) VALUES (83, N'Phan Rang - Tháp Chàm', 49)
GO
INSERT [dbo].[DistrictInfor] ([ID], [Name], [ProvinceID]) VALUES (84, N'Phước Long', 6)
GO
INSERT [dbo].[DistrictInfor] ([ID], [Name], [ProvinceID]) VALUES (85, N'Cao Bằng', 17)
GO
INSERT [dbo].[DistrictInfor] ([ID], [Name], [ProvinceID]) VALUES (86, N'Vĩnh Thuận', 37)
GO
INSERT [dbo].[DistrictInfor] ([ID], [Name], [ProvinceID]) VALUES (87, N'Bến Lức', 43)
GO
INSERT [dbo].[DistrictInfor] ([ID], [Name], [ProvinceID]) VALUES (88, N'Quận 9', 33)
GO
INSERT [dbo].[DistrictInfor] ([ID], [Name], [ProvinceID]) VALUES (89, N'Đoan Hùng', 50)
GO
INSERT [dbo].[DistrictInfor] ([ID], [Name], [ProvinceID]) VALUES (90, N'Thủ Đức', 33)
GO
INSERT [dbo].[DistrictInfor] ([ID], [Name], [ProvinceID]) VALUES (91, N'Thanh Xuân', 28)
GO
INSERT [dbo].[DistrictInfor] ([ID], [Name], [ProvinceID]) VALUES (92, N'Hải Hậu', 45)
GO
INSERT [dbo].[DistrictInfor] ([ID], [Name], [ProvinceID]) VALUES (93, N'Tiền Hải', 60)
GO
INSERT [dbo].[DistrictInfor] ([ID], [Name], [ProvinceID]) VALUES (94, N'Cầu Giấy', 28)
GO
INSERT [dbo].[DistrictInfor] ([ID], [Name], [ProvinceID]) VALUES (95, N'Đồ Sơn', 31)
GO
INSERT [dbo].[DistrictInfor] ([ID], [Name], [ProvinceID]) VALUES (96, N'Phủ Lý', 27)
GO
INSERT [dbo].[DistrictInfor] ([ID], [Name], [ProvinceID]) VALUES (97, N'Duy Xuyên', 53)
GO
INSERT [dbo].[DistrictInfor] ([ID], [Name], [ProvinceID]) VALUES (98, N'Kim Động', 35)
GO
INSERT [dbo].[DistrictInfor] ([ID], [Name], [ProvinceID]) VALUES (99, N'Tuy Hòa', 51)
GO
INSERT [dbo].[DistrictInfor] ([ID], [Name], [ProvinceID]) VALUES (100, N'Long Biên', 28)
GO
INSERT [dbo].[DistrictInfor] ([ID], [Name], [ProvinceID]) VALUES (101, N'Tuần Giáo', 21)
GO
INSERT [dbo].[DistrictInfor] ([ID], [Name], [ProvinceID]) VALUES (102, N'Nghĩa Lộ', 72)
GO
INSERT [dbo].[DistrictInfor] ([ID], [Name], [ProvinceID]) VALUES (103, N'Gò Công', 65)
GO
INSERT [dbo].[DistrictInfor] ([ID], [Name], [ProvinceID]) VALUES (104, N'Thanh Trì', 28)
GO
INSERT [dbo].[DistrictInfor] ([ID], [Name], [ProvinceID]) VALUES (105, N'Lương Sơn', 34)
GO
INSERT [dbo].[DistrictInfor] ([ID], [Name], [ProvinceID]) VALUES (106, N'Ea H`Leo', 20)
GO
INSERT [dbo].[DistrictInfor] ([ID], [Name], [ProvinceID]) VALUES (107, N'Nhà Bè', 33)
GO
INSERT [dbo].[DistrictInfor] ([ID], [Name], [ProvinceID]) VALUES (108, N'Di Linh', 40)
GO
INSERT [dbo].[DistrictInfor] ([ID], [Name], [ProvinceID]) VALUES (109, N'Trảng Bom', 22)
GO
INSERT [dbo].[DistrictInfor] ([ID], [Name], [ProvinceID]) VALUES (110, N'Tân Châu', 2)
GO
INSERT [dbo].[DistrictInfor] ([ID], [Name], [ProvinceID]) VALUES (111, N'Bắc Giang', 5)
GO
INSERT [dbo].[DistrictInfor] ([ID], [Name], [ProvinceID]) VALUES (112, N'Đông Hà', 56)
GO
INSERT [dbo].[DistrictInfor] ([ID], [Name], [ProvinceID]) VALUES (113, N'Chương Mỹ', 28)
GO
INSERT [dbo].[DistrictInfor] ([ID], [Name], [ProvinceID]) VALUES (114, N'Lạng Sơn', 41)
GO
INSERT [dbo].[DistrictInfor] ([ID], [Name], [ProvinceID]) VALUES (115, N'Tân Biên', 59)
GO
INSERT [dbo].[DistrictInfor] ([ID], [Name], [ProvinceID]) VALUES (116, N'Bình Thủy', 16)
GO
INSERT [dbo].[DistrictInfor] ([ID], [Name], [ProvinceID]) VALUES (117, N'Ninh Kiều', 16)
GO
INSERT [dbo].[DistrictInfor] ([ID], [Name], [ProvinceID]) VALUES (118, N'Thuận Thành', 7)
GO
INSERT [dbo].[DistrictInfor] ([ID], [Name], [ProvinceID]) VALUES (119, N'Phổ Yên', 61)
GO
INSERT [dbo].[DistrictInfor] ([ID], [Name], [ProvinceID]) VALUES (120, N'An Dương', 31)
GO
INSERT [dbo].[DistrictInfor] ([ID], [Name], [ProvinceID]) VALUES (121, N'Bắc Quang', 25)
GO
INSERT [dbo].[DistrictInfor] ([ID], [Name], [ProvinceID]) VALUES (122, N'Gò Công Tây', 65)
GO
INSERT [dbo].[DistrictInfor] ([ID], [Name], [ProvinceID]) VALUES (123, N'Sa Đéc', 23)
GO
INSERT [dbo].[DistrictInfor] ([ID], [Name], [ProvinceID]) VALUES (124, N'Gia Rai', 6)
GO
INSERT [dbo].[DistrictInfor] ([ID], [Name], [ProvinceID]) VALUES (125, N'Cẩm Phả', 55)
GO
INSERT [dbo].[DistrictInfor] ([ID], [Name], [ProvinceID]) VALUES (126, N'Vĩnh Yên', 70)
GO
INSERT [dbo].[DistrictInfor] ([ID], [Name], [ProvinceID]) VALUES (127, N'Càng Long', 66)
GO
INSERT [dbo].[DistrictInfor] ([ID], [Name], [ProvinceID]) VALUES (128, N'Ngô Quyền', 31)
GO
INSERT [dbo].[DistrictInfor] ([ID], [Name], [ProvinceID]) VALUES (129, N'Thạch Thất', 28)
GO
INSERT [dbo].[DistrictInfor] ([ID], [Name], [ProvinceID]) VALUES (130, N'Thái Bình', 60)
GO
INSERT [dbo].[DistrictInfor] ([ID], [Name], [ProvinceID]) VALUES (131, N'Chợ Mới ', 2)
GO
INSERT [dbo].[DistrictInfor] ([ID], [Name], [ProvinceID]) VALUES (132, N'Yên Bái', 72)
GO
INSERT [dbo].[DistrictInfor] ([ID], [Name], [ProvinceID]) VALUES (133, N'Cao Phong', 34)
GO
INSERT [dbo].[DistrictInfor] ([ID], [Name], [ProvinceID]) VALUES (134, N'Hoàn Kiếm', 28)
GO
INSERT [dbo].[DistrictInfor] ([ID], [Name], [ProvinceID]) VALUES (135, N'Vị Thanh', 32)
GO
INSERT [dbo].[DistrictInfor] ([ID], [Name], [ProvinceID]) VALUES (136, N'Sóc Sơn', 28)
GO
INSERT [dbo].[DistrictInfor] ([ID], [Name], [ProvinceID]) VALUES (137, N'Ứng Hòa', 28)
GO
INSERT [dbo].[DistrictInfor] ([ID], [Name], [ProvinceID]) VALUES (138, N'Trà Vinh', 66)
GO
INSERT [dbo].[DistrictInfor] ([ID], [Name], [ProvinceID]) VALUES (139, N'Uông Bí', 55)
GO
INSERT [dbo].[DistrictInfor] ([ID], [Name], [ProvinceID]) VALUES (140, N'B.M.Thuột', 3)
GO
INSERT [dbo].[DistrictInfor] ([ID], [Name], [ProvinceID]) VALUES (141, N'Bắc Ninh', 7)
GO
INSERT [dbo].[DistrictInfor] ([ID], [Name], [ProvinceID]) VALUES (142, N'Mộc Hóa', 43)
GO
INSERT [dbo].[DistrictInfor] ([ID], [Name], [ProvinceID]) VALUES (143, N'Phú Cát', 10)
GO
INSERT [dbo].[DistrictInfor] ([ID], [Name], [ProvinceID]) VALUES (144, N'Sóc Trăng', 57)
GO
INSERT [dbo].[DistrictInfor] ([ID], [Name], [ProvinceID]) VALUES (145, N'Kiến Lương', 37)
GO
INSERT [dbo].[DistrictInfor] ([ID], [Name], [ProvinceID]) VALUES (146, N'Trà Ôn', 69)
GO
INSERT [dbo].[DistrictInfor] ([ID], [Name], [ProvinceID]) VALUES (147, N'Nam Đàn', 46)
GO
INSERT [dbo].[DistrictInfor] ([ID], [Name], [ProvinceID]) VALUES (148, N'Lập Thạch', 70)
GO
INSERT [dbo].[DistrictInfor] ([ID], [Name], [ProvinceID]) VALUES (149, N'Vị Xuyên ', 25)
GO
INSERT [dbo].[DistrictInfor] ([ID], [Name], [ProvinceID]) VALUES (150, N'Bắc Cạn', 4)
GO
INSERT [dbo].[DistrictInfor] ([ID], [Name], [ProvinceID]) VALUES (151, N'Bình Tân', 33)
GO
INSERT [dbo].[DistrictInfor] ([ID], [Name], [ProvinceID]) VALUES (152, N'Quận 3', 33)
GO
INSERT [dbo].[DistrictInfor] ([ID], [Name], [ProvinceID]) VALUES (153, N'Trảng Bàng', 59)
GO
INSERT [dbo].[DistrictInfor] ([ID], [Name], [ProvinceID]) VALUES (154, N'Lương Tài', 7)
GO
INSERT [dbo].[DistrictInfor] ([ID], [Name], [ProvinceID]) VALUES (155, N'Ninh Bình', 48)
GO
INSERT [dbo].[DistrictInfor] ([ID], [Name], [ProvinceID]) VALUES (156, N'Phú Lương', 61)
GO
INSERT [dbo].[DistrictInfor] ([ID], [Name], [ProvinceID]) VALUES (157, N'Kỳ Anh', 29)
GO
INSERT [dbo].[DistrictInfor] ([ID], [Name], [ProvinceID]) VALUES (158, N'Yên Dũng', 5)
GO
INSERT [dbo].[DistrictInfor] ([ID], [Name], [ProvinceID]) VALUES (159, N'Thanh Chương', 46)
GO
INSERT [dbo].[DistrictInfor] ([ID], [Name], [ProvinceID]) VALUES (160, N'Sơn La', 58)
GO
INSERT [dbo].[DistrictInfor] ([ID], [Name], [ProvinceID]) VALUES (161, N'Giao Thủy', 45)
GO
INSERT [dbo].[DistrictInfor] ([ID], [Name], [ProvinceID]) VALUES (162, N'Từ Sơn', 7)
GO
INSERT [dbo].[DistrictInfor] ([ID], [Name], [ProvinceID]) VALUES (163, N'Hương Khê', 29)
GO
INSERT [dbo].[DistrictInfor] ([ID], [Name], [ProvinceID]) VALUES (164, N'Cai Lậy', 65)
GO
INSERT [dbo].[DistrictInfor] ([ID], [Name], [ProvinceID]) VALUES (165, N'Cam Ranh', 36)
GO
INSERT [dbo].[DistrictInfor] ([ID], [Name], [ProvinceID]) VALUES (166, N'Lai Châu', 39)
GO
INSERT [dbo].[DistrictInfor] ([ID], [Name], [ProvinceID]) VALUES (167, N'Phúc Yên', 70)
GO
INSERT [dbo].[DistrictInfor] ([ID], [Name], [ProvinceID]) VALUES (168, N'Hướng Hóa', 56)
GO
INSERT [dbo].[DistrictInfor] ([ID], [Name], [ProvinceID]) VALUES (169, N'Thanh Ba ', 50)
GO
INSERT [dbo].[DistrictInfor] ([ID], [Name], [ProvinceID]) VALUES (170, N'Hương Sơn', 29)
GO
INSERT [dbo].[DistrictInfor] ([ID], [Name], [ProvinceID]) VALUES (171, N'Tĩnh Gia', 62)
GO
INSERT [dbo].[DistrictInfor] ([ID], [Name], [ProvinceID]) VALUES (172, N'Sông Cầu', 51)
GO
INSERT [dbo].[DistrictInfor] ([ID], [Name], [ProvinceID]) VALUES (173, N'Vũng Liêm', 69)
GO
INSERT [dbo].[DistrictInfor] ([ID], [Name], [ProvinceID]) VALUES (174, N'Gò Quao', 37)
GO
INSERT [dbo].[DistrictInfor] ([ID], [Name], [ProvinceID]) VALUES (175, N'Tân Phước', 65)
GO
INSERT [dbo].[DistrictInfor] ([ID], [Name], [ProvinceID]) VALUES (176, N'Yên Bình', 72)
GO
INSERT [dbo].[DistrictInfor] ([ID], [Name], [ProvinceID]) VALUES (177, N'Thống Nhất', 22)
GO
INSERT [dbo].[DistrictInfor] ([ID], [Name], [ProvinceID]) VALUES (178, N'Bình Chánh', 33)
GO
INSERT [dbo].[DistrictInfor] ([ID], [Name], [ProvinceID]) VALUES (179, N'Tam Bình', 69)
GO
INSERT [dbo].[DistrictInfor] ([ID], [Name], [ProvinceID]) VALUES (180, N'Hòa Thành', 59)
GO
INSERT [dbo].[DistrictInfor] ([ID], [Name], [ProvinceID]) VALUES (181, N'Đông Anh', 28)
GO
INSERT [dbo].[DistrictInfor] ([ID], [Name], [ProvinceID]) VALUES (182, N'Bến Cát', 11)
GO
INSERT [dbo].[DistrictInfor] ([ID], [Name], [ProvinceID]) VALUES (183, N'Yên Mô', 48)
GO
INSERT [dbo].[DistrictInfor] ([ID], [Name], [ProvinceID]) VALUES (184, N'Hậu Lộc', 62)
GO
INSERT [dbo].[DistrictInfor] ([ID], [Name], [ProvinceID]) VALUES (185, N'Tây Sơn', 10)
GO
INSERT [dbo].[DistrictInfor] ([ID], [Name], [ProvinceID]) VALUES (186, N'Điện Bàn', 53)
GO
INSERT [dbo].[DistrictInfor] ([ID], [Name], [ProvinceID]) VALUES (187, N'An Lão', 31)
GO
INSERT [dbo].[DistrictInfor] ([ID], [Name], [ProvinceID]) VALUES (188, N'Gò Dâu', 59)
GO
INSERT [dbo].[DistrictInfor] ([ID], [Name], [ProvinceID]) VALUES (189, N'Bá Thước', 62)
GO
INSERT [dbo].[DistrictInfor] ([ID], [Name], [ProvinceID]) VALUES (190, N'Ayun Pa', 24)
GO
INSERT [dbo].[DistrictInfor] ([ID], [Name], [ProvinceID]) VALUES (191, N'Phú Quốc', 37)
GO
INSERT [dbo].[DistrictInfor] ([ID], [Name], [ProvinceID]) VALUES (192, N'Mỹ Đức', 28)
GO
INSERT [dbo].[DistrictInfor] ([ID], [Name], [ProvinceID]) VALUES (193, N'Thanh Bình', 23)
GO
INSERT [dbo].[DistrictInfor] ([ID], [Name], [ProvinceID]) VALUES (194, N'Định Hóa', 61)
GO
INSERT [dbo].[DistrictInfor] ([ID], [Name], [ProvinceID]) VALUES (195, N'Thạch Thành', 62)
GO
INSERT [dbo].[DistrictInfor] ([ID], [Name], [ProvinceID]) VALUES (196, N'Phan Thiết', 13)
GO
INSERT [dbo].[DistrictInfor] ([ID], [Name], [ProvinceID]) VALUES (197, N'Đức Thọ', 29)
GO
INSERT [dbo].[DistrictInfor] ([ID], [Name], [ProvinceID]) VALUES (198, N'Hải Châu', 18)
GO
INSERT [dbo].[DistrictInfor] ([ID], [Name], [ProvinceID]) VALUES (199, N'Ba Vì', 28)
GO
INSERT [dbo].[DistrictInfor] ([ID], [Name], [ProvinceID]) VALUES (200, N'Hà Giang', 25)
GO
INSERT [dbo].[DistrictInfor] ([ID], [Name], [ProvinceID]) VALUES (201, N'Lạng Giang', 5)
GO
INSERT [dbo].[DistrictInfor] ([ID], [Name], [ProvinceID]) VALUES (202, N'Đông Hưng', 60)
GO
INSERT [dbo].[DistrictInfor] ([ID], [Name], [ProvinceID]) VALUES (203, N'An Biên', 37)
GO
INSERT [dbo].[DistrictInfor] ([ID], [Name], [ProvinceID]) VALUES (204, N'Hà Tĩnh', 29)
GO
INSERT [dbo].[DistrictInfor] ([ID], [Name], [ProvinceID]) VALUES (205, N'Phú Bình', 61)
GO
INSERT [dbo].[DistrictInfor] ([ID], [Name], [ProvinceID]) VALUES (206, N'Gia Nghĩa', 19)
GO
INSERT [dbo].[DistrictInfor] ([ID], [Name], [ProvinceID]) VALUES (207, N'Thoại Sơn ', 2)
GO
INSERT [dbo].[DistrictInfor] ([ID], [Name], [ProvinceID]) VALUES (208, N'Hàm Thuận Bắc', 13)
GO
INSERT [dbo].[DistrictInfor] ([ID], [Name], [ProvinceID]) VALUES (209, N'Tiên Lãng', 31)
GO
INSERT [dbo].[DistrictInfor] ([ID], [Name], [ProvinceID]) VALUES (210, N'Cái Nước', 15)
GO
INSERT [dbo].[DistrictInfor] ([ID], [Name], [ProvinceID]) VALUES (211, N'Đan Phượng', 28)
GO
INSERT [dbo].[DistrictInfor] ([ID], [Name], [ProvinceID]) VALUES (212, N'Duy Tiên', 27)
GO
INSERT [dbo].[DistrictInfor] ([ID], [Name], [ProvinceID]) VALUES (213, N'Tịnh Biên', 2)
GO
INSERT [dbo].[DistrictInfor] ([ID], [Name], [ProvinceID]) VALUES (214, N'Tân Uyên', 39)
GO
INSERT [dbo].[DistrictInfor] ([ID], [Name], [ProvinceID]) VALUES (215, N'Duyên Hải', 66)
GO
INSERT [dbo].[DistrictInfor] ([ID], [Name], [ProvinceID]) VALUES (216, N'Mê Linh', 28)
GO
INSERT [dbo].[DistrictInfor] ([ID], [Name], [ProvinceID]) VALUES (217, N'Kiến Thụy', 31)
GO
INSERT [dbo].[DistrictInfor] ([ID], [Name], [ProvinceID]) VALUES (218, N'Mỹ Hào', 35)
GO
INSERT [dbo].[DistrictInfor] ([ID], [Name], [ProvinceID]) VALUES (219, N'Tiểu Cần', 66)
GO
INSERT [dbo].[DistrictInfor] ([ID], [Name], [ProvinceID]) VALUES (220, N'Mộ Đức', 54)
GO
INSERT [dbo].[DistrictInfor] ([ID], [Name], [ProvinceID]) VALUES (221, N'Xuyên Mộc', 14)
GO
INSERT [dbo].[DistrictInfor] ([ID], [Name], [ProvinceID]) VALUES (222, N'Quận 8', 33)
GO
INSERT [dbo].[DistrictInfor] ([ID], [Name], [ProvinceID]) VALUES (223, N'Quế Sơn', 53)
GO
INSERT [dbo].[DistrictInfor] ([ID], [Name], [ProvinceID]) VALUES (224, N'Tiên Phước', 53)
GO
INSERT [dbo].[DistrictInfor] ([ID], [Name], [ProvinceID]) VALUES (225, N'Diễn Châu', 46)
GO
INSERT [dbo].[DistrictInfor] ([ID], [Name], [ProvinceID]) VALUES (226, N'Hoài Đức', 28)
GO
INSERT [dbo].[DistrictInfor] ([ID], [Name], [ProvinceID]) VALUES (227, N'Bến Tre', 8)
GO
INSERT [dbo].[DistrictInfor] ([ID], [Name], [ProvinceID]) VALUES (228, N'Krong Nang', 20)
GO
INSERT [dbo].[DistrictInfor] ([ID], [Name], [ProvinceID]) VALUES (229, N'Quận 10', 33)
GO
INSERT [dbo].[DistrictInfor] ([ID], [Name], [ProvinceID]) VALUES (230, N'Phú Thọ', 50)
GO
INSERT [dbo].[DistrictInfor] ([ID], [Name], [ProvinceID]) VALUES (231, N'Trí Tôn', 2)
GO
INSERT [dbo].[DistrictInfor] ([ID], [Name], [ProvinceID]) VALUES (232, N'Lộc Ninh', 12)
GO
INSERT [dbo].[DistrictInfor] ([ID], [Name], [ProvinceID]) VALUES (233, N'Nam Can', 15)
GO
INSERT [dbo].[DistrictInfor] ([ID], [Name], [ProvinceID]) VALUES (234, N'Mỹ Xuyên', 57)
GO
INSERT [dbo].[DistrictInfor] ([ID], [Name], [ProvinceID]) VALUES (235, N'Bến Cầu', 59)
GO
INSERT [dbo].[DistrictInfor] ([ID], [Name], [ProvinceID]) VALUES (236, N'Cái Bè', 65)
GO
INSERT [dbo].[DistrictInfor] ([ID], [Name], [ProvinceID]) VALUES (237, N'Lâm Hà', 40)
GO
INSERT [dbo].[DistrictInfor] ([ID], [Name], [ProvinceID]) VALUES (238, N'Thủy Nguyên', 31)
GO
INSERT [dbo].[DistrictInfor] ([ID], [Name], [ProvinceID]) VALUES (239, N'Vũng Tàu', 71)
GO
INSERT [dbo].[DistrictInfor] ([ID], [Name], [ProvinceID]) VALUES (240, N'Đà Lạt', 40)
GO
INSERT [dbo].[DistrictInfor] ([ID], [Name], [ProvinceID]) VALUES (241, N'Núi Thành', 53)
GO
INSERT [dbo].[DistrictInfor] ([ID], [Name], [ProvinceID]) VALUES (242, N'Cu M`Gar', 20)
GO
INSERT [dbo].[DistrictInfor] ([ID], [Name], [ProvinceID]) VALUES (243, N'Tuy Phong', 13)
GO
INSERT [dbo].[DistrictInfor] ([ID], [Name], [ProvinceID]) VALUES (244, N'Phú Giao', 11)
GO
INSERT [dbo].[DistrictInfor] ([ID], [Name], [ProvinceID]) VALUES (245, N'Dak R`Lap', 19)
GO
INSERT [dbo].[DistrictInfor] ([ID], [Name], [ProvinceID]) VALUES (246, N'Lạc Thủy', 34)
GO
INSERT [dbo].[DistrictInfor] ([ID], [Name], [ProvinceID]) VALUES (247, N'Móng Cái', 55)
GO
INSERT [dbo].[DistrictInfor] ([ID], [Name], [ProvinceID]) VALUES (248, N'Hải Dương', 30)
GO
INSERT [dbo].[DistrictInfor] ([ID], [Name], [ProvinceID]) VALUES (249, N'Đức Phổ', 54)
GO
INSERT [dbo].[DistrictInfor] ([ID], [Name], [ProvinceID]) VALUES (250, N'Quận 7', 33)
GO
INSERT [dbo].[DistrictInfor] ([ID], [Name], [ProvinceID]) VALUES (251, N'Quốc Oai', 28)
GO
INSERT [dbo].[DistrictInfor] ([ID], [Name], [ProvinceID]) VALUES (252, N'Gia Lâm', 28)
GO
INSERT [dbo].[DistrictInfor] ([ID], [Name], [ProvinceID]) VALUES (253, N'Kim Thành', 30)
GO
INSERT [dbo].[DistrictInfor] ([ID], [Name], [ProvinceID]) VALUES (254, N'Bảo Thắng', 42)
GO
INSERT [dbo].[DistrictInfor] ([ID], [Name], [ProvinceID]) VALUES (255, N'Trần Văn Thời', 15)
GO
INSERT [dbo].[DistrictInfor] ([ID], [Name], [ProvinceID]) VALUES (256, N'Chơn Thành', 12)
GO
INSERT [dbo].[DistrictInfor] ([ID], [Name], [ProvinceID]) VALUES (257, N'Cam Lâm', 36)
GO
INSERT [dbo].[DistrictInfor] ([ID], [Name], [ProvinceID]) VALUES (258, N'Thanh Sơn ', 50)
GO
INSERT [dbo].[DistrictInfor] ([ID], [Name], [ProvinceID]) VALUES (259, N'Xuân Lộc', 22)
GO
INSERT [dbo].[DistrictInfor] ([ID], [Name], [ProvinceID]) VALUES (260, N'Phù Ninh', 50)
GO
INSERT [dbo].[DistrictInfor] ([ID], [Name], [ProvinceID]) VALUES (261, N'Bình Minh', 69)
GO
INSERT [dbo].[DistrictInfor] ([ID], [Name], [ProvinceID]) VALUES (262, N'Quận 6', 33)
GO
INSERT [dbo].[DistrictInfor] ([ID], [Name], [ProvinceID]) VALUES (263, N'Nhơn Trạch', 22)
GO
INSERT [dbo].[DistrictInfor] ([ID], [Name], [ProvinceID]) VALUES (264, N'Đại Lộc', 53)
GO
INSERT [dbo].[DistrictInfor] ([ID], [Name], [ProvinceID]) VALUES (265, N'Ba Tri', 8)
GO
INSERT [dbo].[DistrictInfor] ([ID], [Name], [ProvinceID]) VALUES (266, N'Châu Đức', 14)
GO
INSERT [dbo].[DistrictInfor] ([ID], [Name], [ProvinceID]) VALUES (267, N'Krong Pak', 20)
GO
INSERT [dbo].[DistrictInfor] ([ID], [Name], [ProvinceID]) VALUES (268, N'Kim Sơn ', 48)
GO
INSERT [dbo].[DistrictInfor] ([ID], [Name], [ProvinceID]) VALUES (269, N'Phú Xuyên', 28)
GO
INSERT [dbo].[DistrictInfor] ([ID], [Name], [ProvinceID]) VALUES (270, N'Mường Khương', 42)
GO
INSERT [dbo].[DistrictInfor] ([ID], [Name], [ProvinceID]) VALUES (271, N'Đại Từ', 61)
GO
INSERT [dbo].[DistrictInfor] ([ID], [Name], [ProvinceID]) VALUES (272, N'Thới Bình', 15)
GO
INSERT [dbo].[DistrictInfor] ([ID], [Name], [ProvinceID]) VALUES (273, N'Cư Jut', 19)
GO
INSERT [dbo].[DistrictInfor] ([ID], [Name], [ProvinceID]) VALUES (274, N'Chư Prong', 24)
GO
INSERT [dbo].[DistrictInfor] ([ID], [Name], [ProvinceID]) VALUES (275, N'Dầu Tiếng', 11)
GO
INSERT [dbo].[DistrictInfor] ([ID], [Name], [ProvinceID]) VALUES (276, N'Sông Công', 61)
GO
INSERT [dbo].[DistrictInfor] ([ID], [Name], [ProvinceID]) VALUES (277, N'Cờ Đỏ', 16)
GO
INSERT [dbo].[DistrictInfor] ([ID], [Name], [ProvinceID]) VALUES (278, N'Cần Đước', 43)
GO
INSERT [dbo].[DistrictInfor] ([ID], [Name], [ProvinceID]) VALUES (279, N'Giồng Riềng', 37)
GO
INSERT [dbo].[DistrictInfor] ([ID], [Name], [ProvinceID]) VALUES (280, N'Đạ Tẻh', 40)
GO
INSERT [dbo].[DistrictInfor] ([ID], [Name], [ProvinceID]) VALUES (281, N'Long Thành', 22)
GO
INSERT [dbo].[DistrictInfor] ([ID], [Name], [ProvinceID]) VALUES (282, N'Long Điền', 14)
GO
INSERT [dbo].[DistrictInfor] ([ID], [Name], [ProvinceID]) VALUES (283, N'Văn Yên', 72)
GO
INSERT [dbo].[DistrictInfor] ([ID], [Name], [ProvinceID]) VALUES (284, N'Lai Vung', 23)
GO
INSERT [dbo].[DistrictInfor] ([ID], [Name], [ProvinceID]) VALUES (285, N'Mang Yang', 24)
GO
INSERT [dbo].[DistrictInfor] ([ID], [Name], [ProvinceID]) VALUES (286, N'Hữu Lũng', 41)
GO
INSERT [dbo].[DistrictInfor] ([ID], [Name], [ProvinceID]) VALUES (287, N'Kinh Môn', 30)
GO
INSERT [dbo].[DistrictInfor] ([ID], [Name], [ProvinceID]) VALUES (288, N'Cần Giờ', 33)
GO
INSERT [dbo].[DistrictInfor] ([ID], [Name], [ProvinceID]) VALUES (289, N'Ea Kar', 20)
GO
INSERT [dbo].[DistrictInfor] ([ID], [Name], [ProvinceID]) VALUES (290, N'Đức Linh', 13)
GO
INSERT [dbo].[DistrictInfor] ([ID], [Name], [ProvinceID]) VALUES (291, N'Vĩnh Tường', 70)
GO
INSERT [dbo].[DistrictInfor] ([ID], [Name], [ProvinceID]) VALUES (292, N'Văn Lâm', 35)
GO
INSERT [dbo].[DistrictInfor] ([ID], [Name], [ProvinceID]) VALUES (293, N'Tản Lĩnh', 13)
GO
INSERT [dbo].[DistrictInfor] ([ID], [Name], [ProvinceID]) VALUES (294, N'Trấn Yên', 72)
GO
INSERT [dbo].[DistrictInfor] ([ID], [Name], [ProvinceID]) VALUES (295, N'Kon Tum', 38)
GO
INSERT [dbo].[DistrictInfor] ([ID], [Name], [ProvinceID]) VALUES (296, N'Ba Bể', 4)
GO
INSERT [dbo].[DistrictInfor] ([ID], [Name], [ProvinceID]) VALUES (297, N'Ninh Hòa', 36)
GO
INSERT [dbo].[DistrictInfor] ([ID], [Name], [ProvinceID]) VALUES (298, N'Điện Biên', 21)
GO
INSERT [dbo].[DistrictInfor] ([ID], [Name], [ProvinceID]) VALUES (299, N'Phú Tân', 2)
GO
INSERT [dbo].[DistrictInfor] ([ID], [Name], [ProvinceID]) VALUES (300, N'Yên Mĩ', 35)
GO
INSERT [dbo].[DistrictInfor] ([ID], [Name], [ProvinceID]) VALUES (301, N'Vĩnh Châu', 57)
GO
INSERT [dbo].[DistrictInfor] ([ID], [Name], [ProvinceID]) VALUES (302, N'Bình Đại', 8)
GO
INSERT [dbo].[DistrictInfor] ([ID], [Name], [ProvinceID]) VALUES (303, N'Hoài Nhơn', 10)
GO
INSERT [dbo].[DistrictInfor] ([ID], [Name], [ProvinceID]) VALUES (304, N'Chư Puh', 24)
GO
INSERT [dbo].[DistrictInfor] ([ID], [Name], [ProvinceID]) VALUES (305, N'Thường Tín', 28)
GO
INSERT [dbo].[DistrictInfor] ([ID], [Name], [ProvinceID]) VALUES (306, N'Hiệp Hòa', 5)
GO
INSERT [dbo].[DistrictInfor] ([ID], [Name], [ProvinceID]) VALUES (307, N'Chư Sê', 24)
GO
INSERT [dbo].[DistrictInfor] ([ID], [Name], [ProvinceID]) VALUES (308, N'Nghĩa Hành', 54)
GO
INSERT [dbo].[DistrictInfor] ([ID], [Name], [ProvinceID]) VALUES (309, N'Chiêm Hóa', 67)
GO
INSERT [dbo].[DistrictInfor] ([ID], [Name], [ProvinceID]) VALUES (310, N'Phù Cừ', 35)
GO
INSERT [dbo].[DistrictInfor] ([ID], [Name], [ProvinceID]) VALUES (311, N'Vĩnh Lộc', 62)
GO
INSERT [dbo].[DistrictInfor] ([ID], [Name], [ProvinceID]) VALUES (312, N'Như Thanh', 62)
GO
INSERT [dbo].[DistrictInfor] ([ID], [Name], [ProvinceID]) VALUES (313, N'Đồng Phú', 12)
GO
INSERT [dbo].[DistrictInfor] ([ID], [Name], [ProvinceID]) VALUES (314, N'Bù Đốp', 12)
GO
INSERT [dbo].[DistrictInfor] ([ID], [Name], [ProvinceID]) VALUES (315, N'Dương Minh Châu', 59)
GO
INSERT [dbo].[DistrictInfor] ([ID], [Name], [ProvinceID]) VALUES (316, N'Mỏ Cày Nam', 8)
GO
INSERT [dbo].[DistrictInfor] ([ID], [Name], [ProvinceID]) VALUES (317, N'An Khê', 24)
GO
INSERT [dbo].[DistrictInfor] ([ID], [Name], [ProvinceID]) VALUES (318, N'Thanh Oai', 28)
GO
INSERT [dbo].[DistrictInfor] ([ID], [Name], [ProvinceID]) VALUES (319, N'Cần Giuộc', 43)
GO
INSERT [dbo].[DistrictInfor] ([ID], [Name], [ProvinceID]) VALUES (320, N'Bình Sơn', 54)
GO
INSERT [dbo].[DistrictInfor] ([ID], [Name], [ProvinceID]) VALUES (321, N'Quảng Yên', 55)
GO
INSERT [dbo].[DistrictInfor] ([ID], [Name], [ProvinceID]) VALUES (322, N'An Nhơn', 10)
GO
INSERT [dbo].[DistrictInfor] ([ID], [Name], [ProvinceID]) VALUES (323, N'Ngũ Hành Sơn', 18)
GO
INSERT [dbo].[DistrictInfor] ([ID], [Name], [ProvinceID]) VALUES (324, N'Sơn Dương', 67)
GO
INSERT [dbo].[DistrictInfor] ([ID], [Name], [ProvinceID]) VALUES (325, N'Đức Cơ', 24)
GO
INSERT [dbo].[DistrictInfor] ([ID], [Name], [ProvinceID]) VALUES (326, N'Mang Thít ', 69)
GO
INSERT [dbo].[DistrictInfor] ([ID], [Name], [ProvinceID]) VALUES (327, N'Lục Nam', 5)
GO
INSERT [dbo].[DistrictInfor] ([ID], [Name], [ProvinceID]) VALUES (328, N'Lục Ngạn', 5)
GO
INSERT [dbo].[DistrictInfor] ([ID], [Name], [ProvinceID]) VALUES (329, N'Yên Phong', 7)
GO
INSERT [dbo].[DistrictInfor] ([ID], [Name], [ProvinceID]) VALUES (330, N'Tam Điệp', 48)
GO
INSERT [dbo].[DistrictInfor] ([ID], [Name], [ProvinceID]) VALUES (331, N'Sơn Hòa', 51)
GO
INSERT [dbo].[DistrictInfor] ([ID], [Name], [ProvinceID]) VALUES (332, N'Thái Hòa', 46)
GO
INSERT [dbo].[DistrictInfor] ([ID], [Name], [ProvinceID]) VALUES (333, N'Khoái Châu', 35)
GO
INSERT [dbo].[DistrictInfor] ([ID], [Name], [ProvinceID]) VALUES (334, N'Hàm Thuận Nam', 13)
GO
INSERT [dbo].[DistrictInfor] ([ID], [Name], [ProvinceID]) VALUES (335, N'Sa Thầy', 38)
GO
INSERT [dbo].[DistrictInfor] ([ID], [Name], [ProvinceID]) VALUES (336, N'Sơn Dương', 40)
GO
INSERT [dbo].[DistrictInfor] ([ID], [Name], [ProvinceID]) VALUES (337, N'Thái Thụy', 60)
GO
INSERT [dbo].[DistrictInfor] ([ID], [Name], [ProvinceID]) VALUES (338, N'Hà Trung', 62)
GO
INSERT [dbo].[DistrictInfor] ([ID], [Name], [ProvinceID]) VALUES (339, N'Quế Võ', 7)
GO
INSERT [dbo].[DistrictInfor] ([ID], [Name], [ProvinceID]) VALUES (340, N'Kbang', 24)
GO
INSERT [dbo].[DistrictInfor] ([ID], [Name], [ProvinceID]) VALUES (341, N'Thạnh Phú', 8)
GO
INSERT [dbo].[DistrictInfor] ([ID], [Name], [ProvinceID]) VALUES (342, N'Bát Xát', 42)
GO
INSERT [dbo].[DistrictInfor] ([ID], [Name], [ProvinceID]) VALUES (343, N'Buôn Hồ', 20)
GO
INSERT [dbo].[DistrictInfor] ([ID], [Name], [ProvinceID]) VALUES (344, N'Quảng Xương', 62)
GO
INSERT [dbo].[DistrictInfor] ([ID], [Name], [ProvinceID]) VALUES (345, N'Lý Nhân', 27)
GO
INSERT [dbo].[DistrictInfor] ([ID], [Name], [ProvinceID]) VALUES (346, N'Cao Lộc', 41)
GO
INSERT [dbo].[DistrictInfor] ([ID], [Name], [ProvinceID]) VALUES (347, N'Yên Định', 62)
GO
INSERT [dbo].[DistrictInfor] ([ID], [Name], [ProvinceID]) VALUES (348, N'Ninh Giang', 30)
GO
INSERT [dbo].[DistrictInfor] ([ID], [Name], [ProvinceID]) VALUES (349, N'Phú Vang', 64)
GO
INSERT [dbo].[DistrictInfor] ([ID], [Name], [ProvinceID]) VALUES (350, N'Quý Châu', 46)
GO
INSERT [dbo].[DistrictInfor] ([ID], [Name], [ProvinceID]) VALUES (351, N'Krong Nô', 19)
GO
INSERT [dbo].[DistrictInfor] ([ID], [Name], [ProvinceID]) VALUES (352, N'Thanh Hà', 30)
GO
INSERT [dbo].[DistrictInfor] ([ID], [Name], [ProvinceID]) VALUES (353, N'Lộc Bình', 41)
GO
INSERT [dbo].[DistrictInfor] ([ID], [Name], [ProvinceID]) VALUES (354, N'Krong Bông', 20)
GO
INSERT [dbo].[DistrictInfor] ([ID], [Name], [ProvinceID]) VALUES (355, N'Châu Đốc', 2)
GO
INSERT [dbo].[DistrictInfor] ([ID], [Name], [ProvinceID]) VALUES (356, N'Bình Giang', 30)
GO
INSERT [dbo].[DistrictInfor] ([ID], [Name], [ProvinceID]) VALUES (357, N'Chợ Lách', 8)
GO
INSERT [dbo].[DistrictInfor] ([ID], [Name], [ProvinceID]) VALUES (358, N'Tứ Kỳ', 30)
GO
INSERT [dbo].[DistrictInfor] ([ID], [Name], [ProvinceID]) VALUES (359, N'Phú Yên', 58)
GO
INSERT [dbo].[DistrictInfor] ([ID], [Name], [ProvinceID]) VALUES (360, N'Phú Lộc', 64)
GO
INSERT [dbo].[DistrictInfor] ([ID], [Name], [ProvinceID]) VALUES (361, N'Sơn Hà', 54)
GO
INSERT [dbo].[DistrictInfor] ([ID], [Name], [ProvinceID]) VALUES (362, N'Cu Kuin', 20)
GO
INSERT [dbo].[DistrictInfor] ([ID], [Name], [ProvinceID]) VALUES (363, N'Tam Nông', 23)
GO
INSERT [dbo].[DistrictInfor] ([ID], [Name], [ProvinceID]) VALUES (364, N'Tân Bình', 33)
GO
INSERT [dbo].[DistrictInfor] ([ID], [Name], [ProvinceID]) VALUES (365, N'Tiên Yên', 55)
GO
INSERT [dbo].[DistrictInfor] ([ID], [Name], [ProvinceID]) VALUES (366, N'Thăng Bình', 53)
GO
INSERT [dbo].[DistrictInfor] ([ID], [Name], [ProvinceID]) VALUES (367, N'Ninh Sơn', 49)
GO
INSERT [dbo].[DistrictInfor] ([ID], [Name], [ProvinceID]) VALUES (368, N'Cẩm Mỹ', 22)
GO
INSERT [dbo].[DistrictInfor] ([ID], [Name], [ProvinceID]) VALUES (369, N'Tân An', 43)
GO
INSERT [dbo].[DistrictInfor] ([ID], [Name], [ProvinceID]) VALUES (370, N'Long Phú', 57)
GO
INSERT [dbo].[DistrictInfor] ([ID], [Name], [ProvinceID]) VALUES (371, N'Sơn Đông', 5)
GO
INSERT [dbo].[DistrictInfor] ([ID], [Name], [ProvinceID]) VALUES (372, N'Thọ Xuân', 62)
GO
INSERT [dbo].[DistrictInfor] ([ID], [Name], [ProvinceID]) VALUES (373, N'Hoài Ân', 10)
GO
INSERT [dbo].[DistrictInfor] ([ID], [Name], [ProvinceID]) VALUES (374, N'Dak Song', 19)
GO
INSERT [dbo].[DistrictInfor] ([ID], [Name], [ProvinceID]) VALUES (375, N'An Phú', 2)
GO
INSERT [dbo].[DistrictInfor] ([ID], [Name], [ProvinceID]) VALUES (376, N'Sa Pa', 42)
GO
INSERT [dbo].[DistrictInfor] ([ID], [Name], [ProvinceID]) VALUES (377, N'Hải Lăng', 56)
GO
INSERT [dbo].[DistrictInfor] ([ID], [Name], [ProvinceID]) VALUES (378, N'Quảng Trị', 56)
GO
INSERT [dbo].[DistrictInfor] ([ID], [Name], [ProvinceID]) VALUES (379, N'Bắc Bình', 13)
GO
INSERT [dbo].[DistrictInfor] ([ID], [Name], [ProvinceID]) VALUES (380, N'Phú Thiên', 24)
GO
INSERT [dbo].[DistrictInfor] ([ID], [Name], [ProvinceID]) VALUES (381, N'Lấp Vò', 23)
GO
INSERT [dbo].[DistrictInfor] ([ID], [Name], [ProvinceID]) VALUES (382, N'Cái Răng', 16)
GO
INSERT [dbo].[DistrictInfor] ([ID], [Name], [ProvinceID]) VALUES (383, N'Long Mỹ', 32)
GO
INSERT [dbo].[DistrictInfor] ([ID], [Name], [ProvinceID]) VALUES (384, N'Quảng Điền', 64)
GO
INSERT [dbo].[DistrictInfor] ([ID], [Name], [ProvinceID]) VALUES (385, N'Phú Mỹ', 10)
GO
INSERT [dbo].[DistrictInfor] ([ID], [Name], [ProvinceID]) VALUES (386, N'Hòn Đất', 37)
GO
INSERT [dbo].[DistrictInfor] ([ID], [Name], [ProvinceID]) VALUES (387, N'Thanh Miện', 30)
GO
INSERT [dbo].[DistrictInfor] ([ID], [Name], [ProvinceID]) VALUES (388, N'Vân Đồn', 55)
GO
INSERT [dbo].[DistrictInfor] ([ID], [Name], [ProvinceID]) VALUES (389, N'Đầm Dơi', 15)
GO
INSERT [dbo].[DistrictInfor] ([ID], [Name], [ProvinceID]) VALUES (390, N'U Minh', 15)
GO
INSERT [dbo].[DistrictInfor] ([ID], [Name], [ProvinceID]) VALUES (391, N'Yên Thế', 5)
GO
INSERT [dbo].[DistrictInfor] ([ID], [Name], [ProvinceID]) VALUES (392, N'Tân Kỳ', 46)
GO
INSERT [dbo].[DistrictInfor] ([ID], [Name], [ProvinceID]) VALUES (393, N'Ba Đồn', 52)
GO
INSERT [dbo].[DistrictInfor] ([ID], [Name], [ProvinceID]) VALUES (394, N'Bố Trạch', 52)
GO
INSERT [dbo].[DistrictInfor] ([ID], [Name], [ProvinceID]) VALUES (395, N'Bình Xuyên', 70)
GO
INSERT [dbo].[DistrictInfor] ([ID], [Name], [ProvinceID]) VALUES (396, N'Bù Đăng', 12)
GO
INSERT [dbo].[DistrictInfor] ([ID], [Name], [ProvinceID]) VALUES (397, N'Ea Sup', 20)
GO
INSERT [dbo].[DistrictInfor] ([ID], [Name], [ProvinceID]) VALUES (398, N'Tư Nghĩa', 54)
GO
INSERT [dbo].[DistrictInfor] ([ID], [Name], [ProvinceID]) VALUES (399, N'Tản Hồng', 23)
GO
INSERT [dbo].[DistrictInfor] ([ID], [Name], [ProvinceID]) VALUES (400, N'Hoằng Hóa', 62)
GO
INSERT [dbo].[DistrictInfor] ([ID], [Name], [ProvinceID]) VALUES (401, N'Cam Lộ', 56)
GO
INSERT [dbo].[DistrictInfor] ([ID], [Name], [ProvinceID]) VALUES (402, N'Đức Trọng', 40)
GO
INSERT [dbo].[DistrictInfor] ([ID], [Name], [ProvinceID]) VALUES (403, N'Cầu Ngang', 66)
GO
INSERT [dbo].[DistrictInfor] ([ID], [Name], [ProvinceID]) VALUES (404, N'Thốt Nốt', 16)
GO
INSERT [dbo].[DistrictInfor] ([ID], [Name], [ProvinceID]) VALUES (405, N'Quảng Uyên', 17)
GO
INSERT [dbo].[DistrictInfor] ([ID], [Name], [ProvinceID]) VALUES (406, N'Lệ Thủy', 52)
GO
INSERT [dbo].[DistrictInfor] ([ID], [Name], [ProvinceID]) VALUES (407, N'Phú Riềng', 12)
GO
INSERT [dbo].[DistrictInfor] ([ID], [Name], [ProvinceID]) VALUES (408, N'Tuyên Hóa', 52)
GO
INSERT [dbo].[DistrictInfor] ([ID], [Name], [ProvinceID]) VALUES (409, N'Bàu Bàng', 11)
GO
INSERT [dbo].[DistrictInfor] ([ID], [Name], [ProvinceID]) VALUES (410, N'Giồng Trôm', 8)
GO
INSERT [dbo].[DistrictInfor] ([ID], [Name], [ProvinceID]) VALUES (411, N'Tuy An', 51)
GO
INSERT [dbo].[DistrictInfor] ([ID], [Name], [ProvinceID]) VALUES (412, N'Ninh Hải', 49)
GO
INSERT [dbo].[DistrictInfor] ([ID], [Name], [ProvinceID]) VALUES (413, N'Thủ Thừa', 43)
GO
INSERT [dbo].[DistrictInfor] ([ID], [Name], [ProvinceID]) VALUES (414, N'Tiên Du', 7)
GO
INSERT [dbo].[DistrictInfor] ([ID], [Name], [ProvinceID]) VALUES (415, N'Quảng Ninh', 52)
GO
INSERT [dbo].[DistrictInfor] ([ID], [Name], [ProvinceID]) VALUES (416, N'Quảng Trạch', 52)
GO
INSERT [dbo].[DistrictInfor] ([ID], [Name], [ProvinceID]) VALUES (417, N'Gio Linh', 56)
GO
INSERT [dbo].[DistrictInfor] ([ID], [Name], [ProvinceID]) VALUES (418, N'Mộc Châu', 58)
GO
INSERT [dbo].[DistrictInfor] ([ID], [Name], [ProvinceID]) VALUES (419, N'Ô Môn', 16)
GO
INSERT [dbo].[DistrictInfor] ([ID], [Name], [ProvinceID]) VALUES (420, N'Vĩnh Linh', 56)
GO
INSERT [dbo].[DistrictInfor] ([ID], [Name], [ProvinceID]) VALUES (421, N'Cù Lao Dung', 57)
GO
INSERT [dbo].[DistrictInfor] ([ID], [Name], [ProvinceID]) VALUES (422, N'Cẩm Khê', 50)
GO
INSERT [dbo].[DistrictInfor] ([ID], [Name], [ProvinceID]) VALUES (423, N'Đạ Huoai', 40)
GO
INSERT [dbo].[DistrictInfor] ([ID], [Name], [ProvinceID]) VALUES (424, N'Tân Trụ', 43)
GO
INSERT [dbo].[DistrictInfor] ([ID], [Name], [ProvinceID]) VALUES (425, N'Vĩnh Thạnh', 16)
GO
INSERT [dbo].[DistrictInfor] ([ID], [Name], [ProvinceID]) VALUES (426, N'Như Xuân', 62)
GO
INSERT [dbo].[DistrictInfor] ([ID], [Name], [ProvinceID]) VALUES (427, N'Ba Tơ', 54)
GO
INSERT [dbo].[DistrictInfor] ([ID], [Name], [ProvinceID]) VALUES (428, N'Châu Phú', 2)
GO
INSERT [dbo].[DistrictInfor] ([ID], [Name], [ProvinceID]) VALUES (429, N'Thanh Thủy', 50)
GO
INSERT [dbo].[DistrictInfor] ([ID], [Name], [ProvinceID]) VALUES (430, N'Mỏ Cày Bắc', 8)
GO
INSERT [dbo].[DistrictInfor] ([ID], [Name], [ProvinceID]) VALUES (431, N'Phong Điền', 64)
GO
INSERT [dbo].[DistrictInfor] ([ID], [Name], [ProvinceID]) VALUES (432, N'Vĩnh Lợi', 6)
GO
INSERT [dbo].[DistrictInfor] ([ID], [Name], [ProvinceID]) VALUES (433, N'Gia Lộc', 30)
GO
INSERT [dbo].[DistrictInfor] ([ID], [Name], [ProvinceID]) VALUES (434, N'Long Hồ', 69)
GO
INSERT [dbo].[DistrictInfor] ([ID], [Name], [ProvinceID]) VALUES (435, N'Triệu Sơn', 62)
GO
INSERT [dbo].[DistrictInfor] ([ID], [Name], [ProvinceID]) VALUES (436, N'Tân Lạc', 34)
GO
INSERT [dbo].[DistrictInfor] ([ID], [Name], [ProvinceID]) VALUES (437, N'Kiến An', 31)
GO
INSERT [dbo].[DistrictInfor] ([ID], [Name], [ProvinceID]) VALUES (438, N'Vạn Ninh', 36)
GO
INSERT [dbo].[DistrictInfor] ([ID], [Name], [ProvinceID]) VALUES (439, N'Việt Yên', 5)
GO
INSERT [dbo].[DistrictInfor] ([ID], [Name], [ProvinceID]) VALUES (440, N'Hồng Ngự', 23)
GO
INSERT [dbo].[DistrictInfor] ([ID], [Name], [ProvinceID]) VALUES (441, N'Nam Trực', 45)
GO
INSERT [dbo].[DistrictInfor] ([ID], [Name], [ProvinceID]) VALUES (442, N'Quỳnh Lưu', 46)
GO
INSERT [dbo].[DistrictInfor] ([ID], [Name], [ProvinceID]) VALUES (443, N'Quận 4', 33)
GO
INSERT [dbo].[DistrictInfor] ([ID], [Name], [ProvinceID]) VALUES (444, N'Kim Bôi', 34)
GO
INSERT [dbo].[DistrictInfor] ([ID], [Name], [ProvinceID]) VALUES (445, N'Nông Cống', 62)
GO
INSERT [dbo].[DistrictInfor] ([ID], [Name], [ProvinceID]) VALUES (446, N'Nho Quan', 48)
GO
INSERT [dbo].[DistrictInfor] ([ID], [Name], [ProvinceID]) VALUES (447, N'Quận 5', 33)
GO
INSERT [dbo].[DistrictInfor] ([ID], [Name], [ProvinceID]) VALUES (448, N'Lạc Sơn', 34)
GO
INSERT [dbo].[DistrictInfor] ([ID], [Name], [ProvinceID]) VALUES (449, N'Bảo Lâm', 40)
GO
INSERT [dbo].[DistrictInfor] ([ID], [Name], [ProvinceID]) VALUES (450, N'Hạ Hòa', 50)
GO
INSERT [dbo].[DistrictInfor] ([ID], [Name], [ProvinceID]) VALUES (451, N'Hàm Yên', 67)
GO
INSERT [dbo].[DistrictInfor] ([ID], [Name], [ProvinceID]) VALUES (452, N'Lạc Dương', 40)
GO
INSERT [dbo].[DistrictInfor] ([ID], [Name], [ProvinceID]) VALUES (453, N'Gia Bình', 7)
GO
INSERT [dbo].[DistrictInfor] ([ID], [Name], [ProvinceID]) VALUES (454, N'Hưng Hà', 60)
GO
INSERT [dbo].[DistrictInfor] ([ID], [Name], [ProvinceID]) VALUES (455, N'Nga Sơn', 62)
GO
INSERT [dbo].[DistrictInfor] ([ID], [Name], [ProvinceID]) VALUES (456, N'Long Khánh', 22)
GO
INSERT [dbo].[DistrictInfor] ([ID], [Name], [ProvinceID]) VALUES (457, N'Dak Glong', 19)
GO
INSERT [dbo].[DistrictInfor] ([ID], [Name], [ProvinceID]) VALUES (458, N'Minh Hóa', 52)
GO
INSERT [dbo].[DistrictInfor] ([ID], [Name], [ProvinceID]) VALUES (459, N'Gia Viễn', 48)
GO
INSERT [dbo].[DistrictInfor] ([ID], [Name], [ProvinceID]) VALUES (460, N'Da Krong', 56)
GO
INSERT [dbo].[DistrictInfor] ([ID], [Name], [ProvinceID]) VALUES (461, N'Hồng Lĩnh', 29)
GO
INSERT [dbo].[DistrictInfor] ([ID], [Name], [ProvinceID]) VALUES (462, N'Hiệp Đức', 53)
GO
INSERT [dbo].[DistrictInfor] ([ID], [Name], [ProvinceID]) VALUES (463, N'Yên Minh', 25)
GO
INSERT [dbo].[DistrictInfor] ([ID], [Name], [ProvinceID]) VALUES (464, N'Ninh Phước', 49)
GO
INSERT [dbo].[DistrictInfor] ([ID], [Name], [ProvinceID]) VALUES (465, N'Cẩm Xuyên', 29)
GO
INSERT [dbo].[DistrictInfor] ([ID], [Name], [ProvinceID]) VALUES (466, N'A Lưới', 64)
GO
INSERT [dbo].[DistrictInfor] ([ID], [Name], [ProvinceID]) VALUES (467, N'Thạch Hà', 29)
GO
INSERT [dbo].[DistrictInfor] ([ID], [Name], [ProvinceID]) VALUES (468, N'Bắc Trà My', 53)
GO
INSERT [dbo].[DistrictInfor] ([ID], [Name], [ProvinceID]) VALUES (469, N'Thuận Châu', 58)
GO
INSERT [dbo].[DistrictInfor] ([ID], [Name], [ProvinceID]) VALUES (470, N'Dương Kinh', 31)
GO
INSERT [dbo].[DistrictInfor] ([ID], [Name], [ProvinceID]) VALUES (471, N'Bắc Sơn', 41)
GO
INSERT [dbo].[DistrictInfor] ([ID], [Name], [ProvinceID]) VALUES (472, N'Bình Lục', 27)
GO
INSERT [dbo].[DistrictInfor] ([ID], [Name], [ProvinceID]) VALUES (473, N'Văn Lang', 41)
GO
INSERT [dbo].[DistrictInfor] ([ID], [Name], [ProvinceID]) VALUES (474, N'Trùng Khánh', 17)
GO
INSERT [dbo].[DistrictInfor] ([ID], [Name], [ProvinceID]) VALUES (475, N'Mường Cha', 21)
GO
INSERT [dbo].[DistrictInfor] ([ID], [Name], [ProvinceID]) VALUES (476, N'Cẩm Giàng', 30)
GO
INSERT [dbo].[DistrictInfor] ([ID], [Name], [ProvinceID]) VALUES (477, N'Nam Sách', 30)
GO
INSERT [dbo].[DistrictInfor] ([ID], [Name], [ProvinceID]) VALUES (478, N'Trần Đề', 57)
GO
INSERT [dbo].[DistrictInfor] ([ID], [Name], [ProvinceID]) VALUES (479, N'M`Drak', 20)
GO
INSERT [dbo].[DistrictInfor] ([ID], [Name], [ProvinceID]) VALUES (480, N'Buôn Ma Thuột', 20)
GO
INSERT [dbo].[DistrictInfor] ([ID], [Name], [ProvinceID]) VALUES (481, N'Cẩm Thủy', 62)
GO
INSERT [dbo].[DistrictInfor] ([ID], [Name], [ProvinceID]) VALUES (482, N'Tây Hồ', 28)
GO
INSERT [dbo].[DistrictInfor] ([ID], [Name], [ProvinceID]) VALUES (483, N'Nghi Xuân', 29)
GO
INSERT [dbo].[DistrictInfor] ([ID], [Name], [ProvinceID]) VALUES (484, N'Con Cuông', 46)
GO
INSERT [dbo].[DistrictInfor] ([ID], [Name], [ProvinceID]) VALUES (485, N'Yên Châu', 58)
GO
INSERT [dbo].[DistrictInfor] ([ID], [Name], [ProvinceID]) VALUES (486, N'Buôn Đôn', 20)
GO
INSERT [dbo].[DistrictInfor] ([ID], [Name], [ProvinceID]) VALUES (487, N'Văn Quan', 41)
GO
INSERT [dbo].[DistrictInfor] ([ID], [Name], [ProvinceID]) VALUES (488, N'Kiến Xương', 60)
GO
INSERT [dbo].[DistrictInfor] ([ID], [Name], [ProvinceID]) VALUES (489, N'Ý Yên', 45)
GO
INSERT [dbo].[DistrictInfor] ([ID], [Name], [ProvinceID]) VALUES (490, N'Dam Rong', 40)
GO
INSERT [dbo].[DistrictInfor] ([ID], [Name], [ProvinceID]) VALUES (491, N'Vĩnh Hưng', 43)
GO
INSERT [dbo].[DistrictInfor] ([ID], [Name], [ProvinceID]) VALUES (492, N'Vụ Bản', 45)
GO
INSERT [dbo].[DistrictInfor] ([ID], [Name], [ProvinceID]) VALUES (493, N'Hồng Dân', 6)
GO
INSERT [dbo].[DistrictInfor] ([ID], [Name], [ProvinceID]) VALUES (494, N'Quận 11', 33)
GO
INSERT [dbo].[DistrictInfor] ([ID], [Name], [ProvinceID]) VALUES (495, N'Hòa An', 17)
GO
INSERT [dbo].[DistrictInfor] ([ID], [Name], [ProvinceID]) VALUES (496, N'Can Lộc', 29)
GO
INSERT [dbo].[DistrictInfor] ([ID], [Name], [ProvinceID]) VALUES (497, N'Hớn Quản', 12)
GO
INSERT [dbo].[DistrictInfor] ([ID], [Name], [ProvinceID]) VALUES (498, N'Nghi Lộc', 46)
GO
INSERT [dbo].[DistrictInfor] ([ID], [Name], [ProvinceID]) VALUES (499, N'Quỳ Hợp', 46)
GO
INSERT [dbo].[DistrictInfor] ([ID], [Name], [ProvinceID]) VALUES (500, N'Hải Hà', 55)
GO
INSERT [dbo].[DistrictInfor] ([ID], [Name], [ProvinceID]) VALUES (501, N'Kim Môn', 30)
GO
INSERT [dbo].[DistrictInfor] ([ID], [Name], [ProvinceID]) VALUES (502, N'Sông Mã', 58)
GO
INSERT [dbo].[DistrictInfor] ([ID], [Name], [ProvinceID]) VALUES (503, N'An Thi', 35)
GO
INSERT [dbo].[DistrictInfor] ([ID], [Name], [ProvinceID]) VALUES (504, N'Chi Lăng', 41)
GO
INSERT [dbo].[DistrictInfor] ([ID], [Name], [ProvinceID]) VALUES (505, N'Bình Gia ', 41)
GO
INSERT [dbo].[DistrictInfor] ([ID], [Name], [ProvinceID]) VALUES (506, N'Tam Dương', 70)
GO
INSERT [dbo].[DistrictInfor] ([ID], [Name], [ProvinceID]) VALUES (507, N'Kim Bảng', 27)
GO
INSERT [dbo].[DistrictInfor] ([ID], [Name], [ProvinceID]) VALUES (508, N'Thanh Liêm', 27)
GO
INSERT [dbo].[DistrictInfor] ([ID], [Name], [ProvinceID]) VALUES (509, N'Krong Pa', 24)
GO
INSERT [dbo].[DistrictInfor] ([ID], [Name], [ProvinceID]) VALUES (510, N'0', 70)
GO
INSERT [dbo].[DistrictInfor] ([ID], [Name], [ProvinceID]) VALUES (511, N'Phước Sơn', 53)
GO
INSERT [dbo].[DistrictInfor] ([ID], [Name], [ProvinceID]) VALUES (512, N'Đà Bắc', 34)
GO
INSERT [dbo].[DistrictInfor] ([ID], [Name], [ProvinceID]) VALUES (513, N'Nghĩa Hưng', 45)
GO
INSERT [dbo].[DistrictInfor] ([ID], [Name], [ProvinceID]) VALUES (514, N'Đông Sơn', 62)
GO
INSERT [dbo].[DistrictInfor] ([ID], [Name], [ProvinceID]) VALUES (515, N'Trà Cú', 66)
GO
INSERT [dbo].[DistrictInfor] ([ID], [Name], [ProvinceID]) VALUES (516, N'Bảo Lạc', 17)
GO
INSERT [dbo].[DistrictInfor] ([ID], [Name], [ProvinceID]) VALUES (517, N'Thới Lai', 16)
GO
INSERT [dbo].[DistrictInfor] ([ID], [Name], [ProvinceID]) VALUES (518, N'Hoành Bồ', 55)
GO
INSERT [dbo].[DistrictInfor] ([ID], [Name], [ProvinceID]) VALUES (519, N'Yên Lập', 50)
GO
INSERT [dbo].[DistrictInfor] ([ID], [Name], [ProvinceID]) VALUES (520, N'Hòa Vang', 18)
GO
INSERT [dbo].[DistrictInfor] ([ID], [Name], [ProvinceID]) VALUES (521, N'Văn Giang', 35)
GO
INSERT [dbo].[DistrictInfor] ([ID], [Name], [ProvinceID]) VALUES (522, N'Đất Đỏ', 14)
GO
INSERT [dbo].[DistrictInfor] ([ID], [Name], [ProvinceID]) VALUES (523, N'Phùng Hiệp', 32)
GO
INSERT [dbo].[DistrictInfor] ([ID], [Name], [ProvinceID]) VALUES (524, N'Lộc Hà', 29)
GO
INSERT [dbo].[DistrictInfor] ([ID], [Name], [ProvinceID]) VALUES (525, N'Hương Trà', 64)
GO
INSERT [dbo].[DistrictInfor] ([ID], [Name], [ProvinceID]) VALUES (526, N'Trà Bông', 54)
GO
INSERT [dbo].[DistrictInfor] ([ID], [Name], [ProvinceID]) VALUES (527, N'Bắc Hà', 42)
GO
INSERT [dbo].[DistrictInfor] ([ID], [Name], [ProvinceID]) VALUES (528, N'Yên Lạc', 70)
GO
INSERT [dbo].[DistrictInfor] ([ID], [Name], [ProvinceID]) VALUES (529, N'Quỳnh Phụ', 60)
GO
INSERT [dbo].[DistrictInfor] ([ID], [Name], [ProvinceID]) VALUES (530, N'Lục Yên', 72)
GO
INSERT [dbo].[DistrictInfor] ([ID], [Name], [ProvinceID]) VALUES (531, N'Đông Hải', 6)
GO
INSERT [dbo].[DistrictInfor] ([ID], [Name], [ProvinceID]) VALUES (532, N'Yên Thành', 46)
GO
INSERT [dbo].[DistrictInfor] ([ID], [Name], [ProvinceID]) VALUES (533, N'Mỹ Tú', 57)
GO
INSERT [dbo].[DistrictInfor] ([ID], [Name], [ProvinceID]) VALUES (534, N'Vị Thủy', 32)
GO
INSERT [dbo].[DistrictInfor] ([ID], [Name], [ProvinceID]) VALUES (535, N'Xuân Trường', 45)
GO
INSERT [dbo].[DistrictInfor] ([ID], [Name], [ProvinceID]) VALUES (536, N'Ngã Năm', 57)
GO
INSERT [dbo].[DistrictInfor] ([ID], [Name], [ProvinceID]) VALUES (537, N'Gò Công Đông', 65)
GO
INSERT [dbo].[DistrictInfor] ([ID], [Name], [ProvinceID]) VALUES (538, N'Sông Lô', 70)
GO
INSERT [dbo].[DistrictInfor] ([ID], [Name], [ProvinceID]) VALUES (539, N'Bình Liêu', 55)
GO
INSERT [dbo].[DistrictInfor] ([ID], [Name], [ProvinceID]) VALUES (540, N'Yên Khánh', 48)
GO
INSERT [dbo].[DistrictInfor] ([ID], [Name], [ProvinceID]) VALUES (541, N'Thường Xuân', 62)
GO
INSERT [dbo].[DistrictInfor] ([ID], [Name], [ProvinceID]) VALUES (542, N'Thiệu Hóa', 62)
GO
INSERT [dbo].[DistrictInfor] ([ID], [Name], [ProvinceID]) VALUES (543, N'Phúc Thọ', 28)
GO
INSERT [dbo].[DistrictInfor] ([ID], [Name], [ProvinceID]) VALUES (544, N'Tuy Phước', 10)
GO
INSERT [dbo].[DistrictInfor] ([ID], [Name], [ProvinceID]) VALUES (545, N'Tràng Định', 41)
GO
INSERT [dbo].[DistrictInfor] ([ID], [Name], [ProvinceID]) VALUES (546, N'Tiền Giang', 65)
GO
INSERT [dbo].[DistrictInfor] ([ID], [Name], [ProvinceID]) VALUES (547, N'Kế Sách', 57)
GO
INSERT [dbo].[DistrictInfor] ([ID], [Name], [ProvinceID]) VALUES (548, N'Nam Đông', 64)
GO
INSERT [dbo].[DistrictInfor] ([ID], [Name], [ProvinceID]) VALUES (549, N'Châu Thành A', 32)
GO
INSERT [dbo].[DistrictInfor] ([ID], [Name], [ProvinceID]) VALUES (550, N'An Minh', 37)
GO
INSERT [dbo].[DistrictInfor] ([ID], [Name], [ProvinceID]) VALUES (551, N'Tam Đảo', 70)
GO
INSERT [dbo].[DistrictInfor] ([ID], [Name], [ProvinceID]) VALUES (552, N'Mường La', 58)
GO
INSERT [dbo].[DistrictInfor] ([ID], [Name], [ProvinceID]) VALUES (553, N'Ia Grai', 24)
GO
INSERT [dbo].[DistrictInfor] ([ID], [Name], [ProvinceID]) VALUES (554, N'Tân Phú Đông', 65)
GO
INSERT [dbo].[DistrictInfor] ([ID], [Name], [ProvinceID]) VALUES (555, N'Lak', 20)
GO
INSERT [dbo].[DistrictInfor] ([ID], [Name], [ProvinceID]) VALUES (556, N'Hà Tiên', 37)
GO
INSERT [dbo].[DistrictInfor] ([ID], [Name], [ProvinceID]) VALUES (557, N'Châu Thành', 2)
GO
INSERT [dbo].[DistrictInfor] ([ID], [Name], [ProvinceID]) VALUES (558, N'Châu Thành', 8)
GO
INSERT [dbo].[DistrictInfor] ([ID], [Name], [ProvinceID]) VALUES (559, N'Châu Thành', 23)
GO
INSERT [dbo].[DistrictInfor] ([ID], [Name], [ProvinceID]) VALUES (560, N'Châu Thành', 37)
GO
INSERT [dbo].[DistrictInfor] ([ID], [Name], [ProvinceID]) VALUES (561, N'Châu Thành', 43)
GO
INSERT [dbo].[DistrictInfor] ([ID], [Name], [ProvinceID]) VALUES (562, N'Châu Thành', 57)
GO
INSERT [dbo].[DistrictInfor] ([ID], [Name], [ProvinceID]) VALUES (563, N'Châu Thành', 59)
GO
INSERT [dbo].[DistrictInfor] ([ID], [Name], [ProvinceID]) VALUES (564, N'Châu Thành', 65)
GO
SET IDENTITY_INSERT [dbo].[DistrictInfor] OFF
GO
SET IDENTITY_INSERT [dbo].[EmployeeInfor] ON 
GO
INSERT [dbo].[EmployeeInfor] ([ID], [MNV], [Fullname], [StoreID]) VALUES (1, N'1', N'Trần Minh', 1)
GO
SET IDENTITY_INSERT [dbo].[EmployeeInfor] OFF
GO
SET IDENTITY_INSERT [dbo].[ModelInfor] ON 
GO
INSERT [dbo].[ModelInfor] ([ID], [CatID], [Modelcode], [Status]) VALUES (1, 1, N'RT19K34BU/SV', 1)
GO
INSERT [dbo].[ModelInfor] ([ID], [CatID], [Modelcode], [Status]) VALUES (2, 1, N'RT20K342KEF/SV', 1)
GO
INSERT [dbo].[ModelInfor] ([ID], [CatID], [Modelcode], [Status]) VALUES (3, 2, N'WW90T9349/SV', 1)
GO
INSERT [dbo].[ModelInfor] ([ID], [CatID], [Modelcode], [Status]) VALUES (4, 2, N'Ww85UIKFF/SV', 1)
GO
SET IDENTITY_INSERT [dbo].[ModelInfor] OFF
GO
SET IDENTITY_INSERT [dbo].[PermissionInfor] ON 
GO
INSERT [dbo].[PermissionInfor] ([ID], [Name], [Status]) VALUES (1, N'User', 1)
GO
INSERT [dbo].[PermissionInfor] ([ID], [Name], [Status]) VALUES (2, N'Trainer', 1)
GO
SET IDENTITY_INSERT [dbo].[PermissionInfor] OFF
GO
SET IDENTITY_INSERT [dbo].[PlatformInfor] ON 
GO
INSERT [dbo].[PlatformInfor] ([ID], [Name], [Description]) VALUES (1, N'Inclass', N'')
GO
INSERT [dbo].[PlatformInfor] ([ID], [Name], [Description]) VALUES (2, N'Onsite', N'')
GO
INSERT [dbo].[PlatformInfor] ([ID], [Name], [Description]) VALUES (3, N'Livestream', N'')
GO
INSERT [dbo].[PlatformInfor] ([ID], [Name], [Description]) VALUES (4, N'WebTraining', N'')
GO
INSERT [dbo].[PlatformInfor] ([ID], [Name], [Description]) VALUES (5, N'Event', N'')
GO
SET IDENTITY_INSERT [dbo].[PlatformInfor] OFF
GO
SET IDENTITY_INSERT [dbo].[PositionInfor] ON 
GO
INSERT [dbo].[PositionInfor] ([ID], [Name]) VALUES (1, N'Khác')
GO
INSERT [dbo].[PositionInfor] ([ID], [Name]) VALUES (2, N'FSM')
GO
INSERT [dbo].[PositionInfor] ([ID], [Name]) VALUES (3, N'FSM Online')
GO
INSERT [dbo].[PositionInfor] ([ID], [Name]) VALUES (4, N'Kho')
GO
INSERT [dbo].[PositionInfor] ([ID], [Name]) VALUES (5, N'Quản lý siêu thị')
GO
INSERT [dbo].[PositionInfor] ([ID], [Name]) VALUES (6, N'PS')
GO
INSERT [dbo].[PositionInfor] ([ID], [Name]) VALUES (7, N'RS')
GO
INSERT [dbo].[PositionInfor] ([ID], [Name]) VALUES (8, N'PSTL')
GO
INSERT [dbo].[PositionInfor] ([ID], [Name]) VALUES (9, N'RSTL')
GO
INSERT [dbo].[PositionInfor] ([ID], [Name]) VALUES (10, N'Sale Sup/Sale Rep')
GO
INSERT [dbo].[PositionInfor] ([ID], [Name]) VALUES (11, N'Nhân viên Samsung')
GO
SET IDENTITY_INSERT [dbo].[PositionInfor] OFF
GO
SET IDENTITY_INSERT [dbo].[ProvinceInfor] ON 
GO
INSERT [dbo].[ProvinceInfor] ([ID], [NameVN], [NameEN], [RegionID], [CityRuralID]) VALUES (1, N'Khác', N'Other', 1, 1)
GO
INSERT [dbo].[ProvinceInfor] ([ID], [NameVN], [NameEN], [RegionID], [CityRuralID]) VALUES (2, N'AN GIANG - LONG XUYÊN', N'AN GIANG - LONG XUYEN', 7, 3)
GO
INSERT [dbo].[ProvinceInfor] ([ID], [NameVN], [NameEN], [RegionID], [CityRuralID]) VALUES (3, N'B. M. THUỘT', N'B. M. THUOT', 6, 3)
GO
INSERT [dbo].[ProvinceInfor] ([ID], [NameVN], [NameEN], [RegionID], [CityRuralID]) VALUES (4, N'BẮC CẠN', N'BAC CAN', 3, 3)
GO
INSERT [dbo].[ProvinceInfor] ([ID], [NameVN], [NameEN], [RegionID], [CityRuralID]) VALUES (5, N'BẮC GIANG', N'BAC GIANG', 3, 3)
GO
INSERT [dbo].[ProvinceInfor] ([ID], [NameVN], [NameEN], [RegionID], [CityRuralID]) VALUES (6, N'BẠC LIÊU', N'BAC LIEU', 7, 3)
GO
INSERT [dbo].[ProvinceInfor] ([ID], [NameVN], [NameEN], [RegionID], [CityRuralID]) VALUES (7, N'BẮC NINH', N'BAC NINH', 5, 3)
GO
INSERT [dbo].[ProvinceInfor] ([ID], [NameVN], [NameEN], [RegionID], [CityRuralID]) VALUES (8, N'BẾN TRE', N'BEN TRE', 7, 3)
GO
INSERT [dbo].[ProvinceInfor] ([ID], [NameVN], [NameEN], [RegionID], [CityRuralID]) VALUES (9, N'BIÊN HÒA', N'BIEN HOA', 2, 3)
GO
INSERT [dbo].[ProvinceInfor] ([ID], [NameVN], [NameEN], [RegionID], [CityRuralID]) VALUES (10, N'BÌNH ĐỊNH', N'BINH DINH', 10, 3)
GO
INSERT [dbo].[ProvinceInfor] ([ID], [NameVN], [NameEN], [RegionID], [CityRuralID]) VALUES (11, N'BÌNH DƯƠNG - THỦ DẦU MỘT', N'BINH DUONG - THU DAU MOT', 2, 3)
GO
INSERT [dbo].[ProvinceInfor] ([ID], [NameVN], [NameEN], [RegionID], [CityRuralID]) VALUES (12, N'BÌNH PHƯỚC', N'BINH PHUOC', 2, 3)
GO
INSERT [dbo].[ProvinceInfor] ([ID], [NameVN], [NameEN], [RegionID], [CityRuralID]) VALUES (13, N'BÌNH THUẬN', N'BINH THUAN', 2, 3)
GO
INSERT [dbo].[ProvinceInfor] ([ID], [NameVN], [NameEN], [RegionID], [CityRuralID]) VALUES (14, N'BÀ RỊA - VŨNG TÀU', N'BR-VT', 2, 3)
GO
INSERT [dbo].[ProvinceInfor] ([ID], [NameVN], [NameEN], [RegionID], [CityRuralID]) VALUES (15, N'CÀ MAU', N'CA MAU', 7, 3)
GO
INSERT [dbo].[ProvinceInfor] ([ID], [NameVN], [NameEN], [RegionID], [CityRuralID]) VALUES (16, N'CẦN THƠ', N'CAN THO', 7, 2)
GO
INSERT [dbo].[ProvinceInfor] ([ID], [NameVN], [NameEN], [RegionID], [CityRuralID]) VALUES (17, N'CAO BẰNG', N'CAO BANG', 3, 3)
GO
INSERT [dbo].[ProvinceInfor] ([ID], [NameVN], [NameEN], [RegionID], [CityRuralID]) VALUES (18, N'ĐÀ NẴNG', N'DA NANG', 10, 2)
GO
INSERT [dbo].[ProvinceInfor] ([ID], [NameVN], [NameEN], [RegionID], [CityRuralID]) VALUES (19, N'ĐẮK NÔNG', N'DAK NONG', 6, 3)
GO
INSERT [dbo].[ProvinceInfor] ([ID], [NameVN], [NameEN], [RegionID], [CityRuralID]) VALUES (20, N'ĐĂKLĂK - BUÔN MÊ THUỘT', N'DAKLAK - BMT', 6, 3)
GO
INSERT [dbo].[ProvinceInfor] ([ID], [NameVN], [NameEN], [RegionID], [CityRuralID]) VALUES (21, N'ĐIỆN BIÊN', N'DIEN BIEN', 11, 3)
GO
INSERT [dbo].[ProvinceInfor] ([ID], [NameVN], [NameEN], [RegionID], [CityRuralID]) VALUES (22, N'ĐỒNG NAI - BIÊN HÒA', N'DONG NAI - BIENHOA', 2, 3)
GO
INSERT [dbo].[ProvinceInfor] ([ID], [NameVN], [NameEN], [RegionID], [CityRuralID]) VALUES (23, N'ĐỒNG THÁP', N'DONG THAP', 7, 3)
GO
INSERT [dbo].[ProvinceInfor] ([ID], [NameVN], [NameEN], [RegionID], [CityRuralID]) VALUES (24, N'GIA LAI', N'GIA LAI', 6, 3)
GO
INSERT [dbo].[ProvinceInfor] ([ID], [NameVN], [NameEN], [RegionID], [CityRuralID]) VALUES (25, N'HÀ GIANG', N'HA GIANG', 3, 3)
GO
INSERT [dbo].[ProvinceInfor] ([ID], [NameVN], [NameEN], [RegionID], [CityRuralID]) VALUES (26, N'HẠ LONG', N'HA LONG', 3, 3)
GO
INSERT [dbo].[ProvinceInfor] ([ID], [NameVN], [NameEN], [RegionID], [CityRuralID]) VALUES (27, N'HÀ NAM', N'HA NAM', 5, 3)
GO
INSERT [dbo].[ProvinceInfor] ([ID], [NameVN], [NameEN], [RegionID], [CityRuralID]) VALUES (28, N'HÀ NỘI', N'HA NOI', 4, 2)
GO
INSERT [dbo].[ProvinceInfor] ([ID], [NameVN], [NameEN], [RegionID], [CityRuralID]) VALUES (29, N'HÀ TĨNH', N'HA TINH', 8, 3)
GO
INSERT [dbo].[ProvinceInfor] ([ID], [NameVN], [NameEN], [RegionID], [CityRuralID]) VALUES (30, N'HẢI DƯƠNG', N'HAI DUONG', 5, 3)
GO
INSERT [dbo].[ProvinceInfor] ([ID], [NameVN], [NameEN], [RegionID], [CityRuralID]) VALUES (31, N'HẢI PHÒNG', N'HAI PHONG', 5, 2)
GO
INSERT [dbo].[ProvinceInfor] ([ID], [NameVN], [NameEN], [RegionID], [CityRuralID]) VALUES (32, N'HẬU GIANG', N'HAU GIANG', 7, 3)
GO
INSERT [dbo].[ProvinceInfor] ([ID], [NameVN], [NameEN], [RegionID], [CityRuralID]) VALUES (33, N'HỒ CHÍ MINH', N'HO CHI MINH', 9, 2)
GO
INSERT [dbo].[ProvinceInfor] ([ID], [NameVN], [NameEN], [RegionID], [CityRuralID]) VALUES (34, N'HÒA BÌNH', N'HOA BINH', 11, 3)
GO
INSERT [dbo].[ProvinceInfor] ([ID], [NameVN], [NameEN], [RegionID], [CityRuralID]) VALUES (35, N'HƯNG YÊN', N'HUNG YEN', 5, 3)
GO
INSERT [dbo].[ProvinceInfor] ([ID], [NameVN], [NameEN], [RegionID], [CityRuralID]) VALUES (36, N'KHÁNH HÒA - NHA TRANG', N'KHANH HOA - NHA TRANG', 10, 3)
GO
INSERT [dbo].[ProvinceInfor] ([ID], [NameVN], [NameEN], [RegionID], [CityRuralID]) VALUES (37, N'KIÊN GIANG', N'KIEN GIANG', 7, 3)
GO
INSERT [dbo].[ProvinceInfor] ([ID], [NameVN], [NameEN], [RegionID], [CityRuralID]) VALUES (38, N'KONTUM', N'KON TUM', 6, 3)
GO
INSERT [dbo].[ProvinceInfor] ([ID], [NameVN], [NameEN], [RegionID], [CityRuralID]) VALUES (39, N'LAI CHÂU', N'LAI CHAU', 11, 3)
GO
INSERT [dbo].[ProvinceInfor] ([ID], [NameVN], [NameEN], [RegionID], [CityRuralID]) VALUES (40, N'LÂM ĐỒNG', N'LAM DONG', 6, 3)
GO
INSERT [dbo].[ProvinceInfor] ([ID], [NameVN], [NameEN], [RegionID], [CityRuralID]) VALUES (41, N'LẠNG SƠN', N'LANG SON', 3, 3)
GO
INSERT [dbo].[ProvinceInfor] ([ID], [NameVN], [NameEN], [RegionID], [CityRuralID]) VALUES (42, N'LÀO CAI', N'LAO CAI', 3, 3)
GO
INSERT [dbo].[ProvinceInfor] ([ID], [NameVN], [NameEN], [RegionID], [CityRuralID]) VALUES (43, N'LONG AN', N'LONG AN', 7, 3)
GO
INSERT [dbo].[ProvinceInfor] ([ID], [NameVN], [NameEN], [RegionID], [CityRuralID]) VALUES (44, N'LONG XUYÊN', N'LONG XUYEN', 7, 3)
GO
INSERT [dbo].[ProvinceInfor] ([ID], [NameVN], [NameEN], [RegionID], [CityRuralID]) VALUES (45, N'NAM ĐỊNH', N'NAM DINH', 5, 3)
GO
INSERT [dbo].[ProvinceInfor] ([ID], [NameVN], [NameEN], [RegionID], [CityRuralID]) VALUES (46, N'NGHỆ AN - VINH', N'NGHE AN - VINH', 8, 3)
GO
INSERT [dbo].[ProvinceInfor] ([ID], [NameVN], [NameEN], [RegionID], [CityRuralID]) VALUES (47, N'NHA TRANG', N'NHA TRANG', 10, 3)
GO
INSERT [dbo].[ProvinceInfor] ([ID], [NameVN], [NameEN], [RegionID], [CityRuralID]) VALUES (48, N'NINH BÌNH', N'NINH BINH', 5, 3)
GO
INSERT [dbo].[ProvinceInfor] ([ID], [NameVN], [NameEN], [RegionID], [CityRuralID]) VALUES (49, N'NINH THUẬN', N'NINH THUAN', 2, 3)
GO
INSERT [dbo].[ProvinceInfor] ([ID], [NameVN], [NameEN], [RegionID], [CityRuralID]) VALUES (50, N'PHÚ THỌ', N'PHU THO', 3, 3)
GO
INSERT [dbo].[ProvinceInfor] ([ID], [NameVN], [NameEN], [RegionID], [CityRuralID]) VALUES (51, N'PHÚ YÊN', N'PHU YEN', 10, 3)
GO
INSERT [dbo].[ProvinceInfor] ([ID], [NameVN], [NameEN], [RegionID], [CityRuralID]) VALUES (52, N'QUẢNG BÌNH', N'QUANG BINH', 8, 3)
GO
INSERT [dbo].[ProvinceInfor] ([ID], [NameVN], [NameEN], [RegionID], [CityRuralID]) VALUES (53, N'QUẢNG NAM', N'QUANG NAM', 10, 3)
GO
INSERT [dbo].[ProvinceInfor] ([ID], [NameVN], [NameEN], [RegionID], [CityRuralID]) VALUES (54, N'QUẢNG NGÃI', N'QUANG NGAI', 10, 3)
GO
INSERT [dbo].[ProvinceInfor] ([ID], [NameVN], [NameEN], [RegionID], [CityRuralID]) VALUES (55, N'QUẢNG NINH - HẠ LONG', N'QUANG NINH - HALONG', 3, 3)
GO
INSERT [dbo].[ProvinceInfor] ([ID], [NameVN], [NameEN], [RegionID], [CityRuralID]) VALUES (56, N'QUẢNG TRỊ', N'QUANG TRI', 8, 3)
GO
INSERT [dbo].[ProvinceInfor] ([ID], [NameVN], [NameEN], [RegionID], [CityRuralID]) VALUES (57, N'SÓC TRĂNG', N'SOC TRANG', 7, 3)
GO
INSERT [dbo].[ProvinceInfor] ([ID], [NameVN], [NameEN], [RegionID], [CityRuralID]) VALUES (58, N'SƠN LA', N'SON LA', 11, 3)
GO
INSERT [dbo].[ProvinceInfor] ([ID], [NameVN], [NameEN], [RegionID], [CityRuralID]) VALUES (59, N'TÂY NINH', N'TAY NINH', 2, 3)
GO
INSERT [dbo].[ProvinceInfor] ([ID], [NameVN], [NameEN], [RegionID], [CityRuralID]) VALUES (60, N'THÁI BÌNH', N'THAI BINH', 5, 3)
GO
INSERT [dbo].[ProvinceInfor] ([ID], [NameVN], [NameEN], [RegionID], [CityRuralID]) VALUES (61, N'THÁI NGUYÊN', N'THAI NGUYEN', 3, 3)
GO
INSERT [dbo].[ProvinceInfor] ([ID], [NameVN], [NameEN], [RegionID], [CityRuralID]) VALUES (62, N'THANH HÓA', N'THANH HOA', 8, 3)
GO
INSERT [dbo].[ProvinceInfor] ([ID], [NameVN], [NameEN], [RegionID], [CityRuralID]) VALUES (63, N'THỦ DẦU MỘT', N'THU DAU MOT', 2, 3)
GO
INSERT [dbo].[ProvinceInfor] ([ID], [NameVN], [NameEN], [RegionID], [CityRuralID]) VALUES (64, N'THỪA THIÊN HUẾ', N'THUA THIEN HUE', 8, 3)
GO
INSERT [dbo].[ProvinceInfor] ([ID], [NameVN], [NameEN], [RegionID], [CityRuralID]) VALUES (65, N'TIỀN GIANG', N'TIEN GIANG', 7, 3)
GO
INSERT [dbo].[ProvinceInfor] ([ID], [NameVN], [NameEN], [RegionID], [CityRuralID]) VALUES (66, N'TRÀ VINH', N'TRA VINH', 7, 3)
GO
INSERT [dbo].[ProvinceInfor] ([ID], [NameVN], [NameEN], [RegionID], [CityRuralID]) VALUES (67, N'TUYÊN QUANG ', N'TUYEN QUANG', 3, 3)
GO
INSERT [dbo].[ProvinceInfor] ([ID], [NameVN], [NameEN], [RegionID], [CityRuralID]) VALUES (68, N'VINH', N'VINH', 8, 3)
GO
INSERT [dbo].[ProvinceInfor] ([ID], [NameVN], [NameEN], [RegionID], [CityRuralID]) VALUES (69, N'VĨNH LONG', N'VINH LONG', 7, 3)
GO
INSERT [dbo].[ProvinceInfor] ([ID], [NameVN], [NameEN], [RegionID], [CityRuralID]) VALUES (70, N'VĨNH PHÚC', N'VINH PHUC', 5, 3)
GO
INSERT [dbo].[ProvinceInfor] ([ID], [NameVN], [NameEN], [RegionID], [CityRuralID]) VALUES (71, N'VŨNG TÀU', N'VUNG TAU', 2, 3)
GO
INSERT [dbo].[ProvinceInfor] ([ID], [NameVN], [NameEN], [RegionID], [CityRuralID]) VALUES (72, N'YÊN BÁI', N'YEN BAI', 3, 3)
GO
SET IDENTITY_INSERT [dbo].[ProvinceInfor] OFF
GO
SET IDENTITY_INSERT [dbo].[RegionInfor] ON 
GO
INSERT [dbo].[RegionInfor] ([ID], [AreaID], [NameVN], [NameEN]) VALUES (1, 1, N'Khác', N'Other')
GO
INSERT [dbo].[RegionInfor] ([ID], [AreaID], [NameVN], [NameEN]) VALUES (2, 4, N'MIỀN ĐÔNG', N'N.E. SOUTH')
GO
INSERT [dbo].[RegionInfor] ([ID], [AreaID], [NameVN], [NameEN]) VALUES (3, 2, N'ĐÔNG BẮC BỘ', N'N. EAST')
GO
INSERT [dbo].[RegionInfor] ([ID], [AreaID], [NameVN], [NameEN]) VALUES (4, 2, N'HÀ NỘI', N'HA NOI')
GO
INSERT [dbo].[RegionInfor] ([ID], [AreaID], [NameVN], [NameEN]) VALUES (5, 2, N'ĐỒNG BẰNG SÔNG HỒNG', N'R.R. DELTA')
GO
INSERT [dbo].[RegionInfor] ([ID], [AreaID], [NameVN], [NameEN]) VALUES (6, 3, N'CAO NGUYÊN', N'C. HIGH')
GO
INSERT [dbo].[RegionInfor] ([ID], [AreaID], [NameVN], [NameEN]) VALUES (7, 4, N' MÊ KONG', N'MEKONG')
GO
INSERT [dbo].[RegionInfor] ([ID], [AreaID], [NameVN], [NameEN]) VALUES (8, 3, N'BẮC TRUNG BỘ', N'N.C. COAST')
GO
INSERT [dbo].[RegionInfor] ([ID], [AreaID], [NameVN], [NameEN]) VALUES (9, 4, N'HỒ CHÍ MINH', N'HO CHI MINH')
GO
INSERT [dbo].[RegionInfor] ([ID], [AreaID], [NameVN], [NameEN]) VALUES (10, 3, N'NAM TRUNG BỘ', N'S.C. COAST')
GO
INSERT [dbo].[RegionInfor] ([ID], [AreaID], [NameVN], [NameEN]) VALUES (11, 2, N'TÂY BẮC BỘ', N'N. WEST')
GO
SET IDENTITY_INSERT [dbo].[RegionInfor] OFF
GO
SET IDENTITY_INSERT [dbo].[StoreInfor] ON 
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (1, 1, 1, N'Khác', N'Khác', N'Khác', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (2, 2, 456, N'Điện Máy Xanh (TGDD) DN 16 Hùng Vương', N'Điện Máy Xanh (TGDD) DN 16 Hùng Vương', N'C011700766', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (3, 3, 456, N'CTy TNHH Cao Phong (STĐM Chợ Lớn) - Long Khánh', N'Số 808A - đường 21/4 - ấp Núi Tung- Xã Suối Tre- Thị xã Long Khánh- Tỉnh Đồng Nai', N'C012490718', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (4, 2, 281, N'Điện Máy Xanh (TGDĐ) DN 570 Lê Duẫn', N'Số 570 Đường Lê Duẩn Khu Phước Thuận TT.Long Thành H.Long Thành T.Đồng Nai', N'C021010694', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (5, 2, 263, N'Điện Máy Xanh Mini (TGDĐ) DN Số 104 đường Tôn Đức Thắng ấp 3', N'Số 104 đường Tôn Đức Thắng- ấp 3- xã Hiệp Phước- H. Nhơn Trạch- T. Đồng Nai', N'C029970742', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (6, 2, 20, N'Điện Máy Xanh Mini (TGDĐ) DN Số 1300 Nguyễn Ái Quốc', N'Số 1300 Nguyễn Ái Quốc- KP.01- P. Trảng Dài- TP.Biên Hoà- T. Đồng Nai', N'C030540714', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (7, 2, 125, N'Điện Máy Xanh (TGDĐ) QN Tổ 5- khu Hòa Lạc- Phường Cẩm Bình', N'Tổ 5- khu Hòa Lạc- Phường Cẩm Bình- Thành phố Cẩm Phả- Tỉnh Quảng Ninh- Việt Nam', N'C051791570', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (8, 5, 211, N'Mediamart HN 244 Tây Sơn - Đan Phượng', N'244 Tây Sơn- Thị Trấn Phùng- Đan Phượng- Hà Nội', N'C052771581', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (9, 7, 128, N'Pico HP 275 Lạch Tray', N'275 Lạch Tray Phường Đằng Giang', N'C025800715', NULL, 0, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (10, 2, 140, N'Điện Máy Xanh Mini (TGDD) DLK 37 đường Nguyễn Tất Thành', N'Số 37 đường Nguyễn Tất Thành- P. Tân Lợi- Tp. Buôn Ma Thuột- Tỉnh Đăk Lăk', N'C005110778', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (11, 2, 240, N'Điện Máy Xanh (TGDD) LD 25-27 Nguyễn Văn Cừ', N'Số 25-27 Nguyễn Văn Cừ- P.1- TP. Đà Lạt- T.Lâm Đồng.', N'C011450697', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (12, 7, 52, N'Pico PT 1454-1456 Hùng Vương Việt Trì', N'1454-1456 Hùng Vương- Việt Trì- Phú Thọ', N'C011770732', NULL, 0, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (13, 2, 64, N'Điện Máy Xanh (TGDD) DNG 222 Nguyễn Văn Linh- Phường Thạc Gián- Quận Thanh Khê- Thành phố Đà Nẵng', N'222 Nguyễn Văn Linh- Phường Thạc Gián- Quận Thanh Khê- Thành phố Đà Nẵng- Việt Nam', N'C016180702', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (14, 2, 2, N'Điện Máy Xanh (TGDD) LD 583 Trần Phú', N'583 Trần Phú- Phường BLao- Thành phố Bảo Lộc- Tỉnh Lâm Đồng', N'C018610731', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (15, 3, 144, N'CTy TNHH Cao Phong (STĐM Chợ Lớn) - Sóc Trăng', N'Khu Dân Cư Minh Châu- 64A Quốc Lộ 1A- Phường 7', N'C000036225', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (16, 2, 437, N'Điện Máy Xanh (TGDD) HP 220 Trần Thành Ngọ', N'220 Trần Thành Ngọ P.Trần Thành Ngọ Q.Kiến An TP.Hải Phòng', N'C019560718', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (17, 2, 402, N'Điện Máy Xanh (TGDĐ) LD 462-464 QL20 KP2 TT. Liên Nghĩa', N'Số 462 - 464 Quốc Lộ 20 Khu Phố 2 TT.Liên Nghĩa H.Đức Trọng T.Lâm Đồng', N'C021990747', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (18, 3, 2, N'CTy TNHH Cao Phong (STĐM Chợ Lớn) LD 252 Trần Phú', N'Số 252 Đường Trần Phú- Phường Lộc Sơn- Thành phố Bảo Lộc -tỉnh Lâm Đồng.', N'C022250697', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (19, 2, 3, N'Điện Máy Xanh (TGDĐ) HN Km số 3 Phùng Hưng', N'Km số 3 đường Phùng Hưng P. Kiến Hưng Q. Hà Đông Hà Nội', N'C022500703', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (20, 2, 4, N'Điện Máy Xanh (TGDD) QN Khu Vĩnh Hồng P Mạo Khê TX Đông Triều', N'Khu Vĩnh Tuy I- P. Mạo Khê- TX. Đông Triều- T. Quảng Ninh', N'C026750741', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (21, 5, 5, N'Mediamart HN 181 Nguyễn Lương Bằng', N'181 Nguyễn Lương Bằng- Đống Đa- HN', N'C027120920', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (22, 2, 6, N'Điện Máy Xanh (TGDĐ) DNO 67 Nguyễn Tất Thành', N'67 Nguyễn Tất Thành- Thị Trấn Dakmil', N'C000057417', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (23, 2, 7, N'Điện Máy Xanh Mini (TGDĐ) HG 1093-1095 Hùng Vương', N'1093-1095 Hùng Vương- Phường Ngã Bảy', N'C000057839', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (24, 2, 8, N'Điện Máy Xanh Mini (TGDĐ) DN 65-66-67 Khu Dân Cư 2', N'65-66-67 Khu Dân Cư 2- Ấp 114- Định Quán', N'C000060343', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (25, 2, 9, N'Điện Máy Xanh (TGDĐ)  HP 263 Trần Nguyên Hãn', N'Số 263 Trần Nguyên Hãn- P. Trần Nguyên Hãn- Q. Lê Chân- TP. Hải Phòng', N'C028470692', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (26, 2, 10, N'Điện Máy Xanh Mini (TGDĐ) HP Tổ đường 5/1 Quán Toan', N'Tổ đường 5/1- P. Quán Toan- Q. Hồng Bàng- TP. Hải Phòng', N'C032720723', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (27, 2, 11, N'Điện Máy Xanh (TGDĐ) TTH 197-199 Trần Hưng Đạo', N'197-199 Trần Hưng Đạo- Phường Phú Hòa', N'C000123718', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (28, 5, 12, N'Mediamart Bãi Cháy Hạ Long', N'Tổ 9 khu 6 Phường Giếng Đáy Bãi Cháy- Hạ Long- Quảng Ninh', N'C033720691', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (29, 5, 13, N'Mediamart HP Vĩnh Bảo', N'Khu phố 3/2- Thị trấn Vĩnh Bảo- Huyện Vĩnh Bảo- TP Hải Phòng', N'C037461530', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (30, 2, 9, N'Điện Máy Xanh (TGDĐ) HP Số 279 Trần Nguyên Hãn', N'Số 279 Trần Nguyên Hãn- P. Nghĩa Xá- Q. Lê Chân- Tp. Hải Phòng', N'C051791568', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (31, 2, 14, N'Điện thoại siêu rẻ HCM 278 Phạm Văn Chiêu P9 Gò Vấp', N'278 Phạm Văn Chiêu- Phường 9- Quận Gò Vấp- Thành phố Hồ Chí Minh- Việt Nam', N'C000159054', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (32, 2, 15, N'Điện Máy Xanh Mini (TGDĐ) BP 248-250 Nguyễn Huệ Phú Hưng Phú Thịnh', N'248-250 Nguyễn Huệ- Khu Phố Phú Hưng- Phường Phú Thịnh', N'C000159382', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (33, 7, 16, N'Pico HN 505 Minh Khai', N'Số 505- Phố Minh Khai- Phường Vĩnh Tuy- Quận Hai Bà Trưng- TP Hà Nội', N'C051821683', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (34, 3, 17, N'CTy TNHH Cao Phong (STĐM Chớ Lớn) - Q2', N'280A Lương Định Của', N'C000022705', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (35, 2, 18, N'Điện Máy Xanh (TGDĐ) HD Nguyễn Thái Học 1 Sao Đỏ Chí Linh', N'Nguyễn Thái Học 1- Phường Sao Đỏ- Chí Linh', N'C000167380', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (36, 4, 19, N'Nguyễn Kim BRVT 406 Lê Hồng Phong P.Thắng Tam', N'406 Lê Hồng Phong- Phường Thắng Tam', N'C000388641', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (37, 4, 20, N'Nguyễn Kim DN 253 Phạm Văn Thuận Tân Mai', N'253 Phạm Văn Thuận- Tân Mai', N'C000388642', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (38, 5, 5, N'Mediamart HN 72 Trường Chinh', N'72 Trường Chinh- Phương Mai- Đống Đa- HN', N'C000037186', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (39, 2, 21, N'Điện Máy Xanh (TGDĐ) BD 237 Nguyễn An Ninh-  KP. Bình Minh 2- P. Dĩ An- Tx. Dĩ An', N'237 Nguyễn An Ninh- KP. Bình Minh 2- P. Dĩ An- Tx. Dĩ An- T. Bình Dương.', N'C000048255', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (40, 3, 22, N'CTy TNHH Cao Phong (STĐM Chợ Lớn) - Đồng Tháp', N'Khu Dân Cư Mỹ Trà- Phường Mỹ Phú', N'C001648611', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (41, 3, 23, N'CTy TNHH Cao Phong (STĐM Chợ Lớn) - Đà Nẵng', N'Ngã 3 Nguyễn Hữu Thọ', N'C000048515', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (42, 4, 24, N'Nguyễn Kim BP ABC Cụm N37 Vòng xoay Đồng Xoài', N'ABC Cụm N37- Khu Vực vòng xoay ngã tư Đồng Xoài- Phường Tân Phú', N'C001758848', NULL, 0, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (43, 4, 25, N'Nguyễn Kim TG 21 Ấp Bắc KP3 P10', N'212 Ấp Bắc Khu Phố 3- Phường 10', N'C001758849', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (44, 4, 26, N'Nguyễn Kim AG 01 Trần Hưng Đại Mỹ Bình', N'01 Trần Hưng Đại -Phường Mỹ Bình- Long Xuyên', N'C001758850', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (45, 4, 27, N'Nguyễn Kim KG 575A Nguyễn Trung Trực An Hòa', N'575A Nguyễn Trung Trực- Phường An Hòa', N'C001758851', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (46, 5, 28, N'Mediamart THN 03 Bắc Cạn', N'03 Bắc Cạn- Tổ 2A- Phường Hoàng Văn Thụ', N'C004970693', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (47, 2, 11, N'Điện Máy Xanh (TGDĐ) TTH 185 Hùng Vương P.An Cựu', N'185 Hùng Vương- Phường An Cựu', N'C002008755', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (48, 6, 29, N'Siêu Thị VHC HN 411 Tam Trinh', N'Số 411 Tam Trinh- Phường Hoàng Văn Thụ- Hoàng Mai', N'C004991078', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (49, 2, 30, N'Điện Máy Xanh Mini (TGDĐ) HCM 4/25 Ấp Nam Thới Xã Thới Tam Thôn Hóc Môn', N'4/25 Ấp Nam Thới- xã Thới Tam Thôn- Huyện Hóc Môn', N'C002408623', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (50, 2, 31, N'Điện Máy Xanh Mini (TGDĐ) QNI 661 Quang Trung P.Nghĩa Chánh', N'661 Quang Trung- Phường Nghĩa Chánh- Quảng Ngãi', N'C002408629', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (51, 2, 32, N'Điện Máy Xanh (TGDD) VL 210 Lê Thái Tổ', N'210 Lê Thái Tổ- Phường 2- Thành phố Vĩnh Long- Tỉnh Vĩnh Long.', N'C005110776', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (52, 5, 33, N'Mediamart HN 26 Phạm Văn Đồng', N'26 Phạm Văn Đồng- Xuân Đỉnh- Từ Liêm', N'C006870694', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (53, 4, 34, N'Nguyễn Kim HCM 1/1 Trường Chinh Tây Thạnh', N'1/1 Trường Chinh- Phường Tây Thạnh- Quận Tân Phú', N'C003460669', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (54, 3, 32, N'CTy TNHH Cao Phong (STĐM Chợ Lớn) VL 39 Trần Đại Nghĩa', N'số 39 đường Trần Đại Nghĩa - Phường 4 - TP.Vĩnh Long - tỉnh Vĩnh Long', N'C012790699', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (55, 5, 12, N'Mediamart QN Tòa nhà City Complex Nguyễn Văn Cừ', N'Tòa nhà City Complex- Nguyễn Văn Cừ- Tổ 4- Phường Hồng Hải- Thành phố Hạ Long', N'C013690700', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (56, 2, 35, N'Điện Máy Xanh (TGDD) QNM Thửa đất 65 tờ bản đồ 38', N'Đường Phan Bội Châu- P.Tân Thạnh- TP.Tam Kỳ- T.Quảng Nam', N'C014860692', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (57, 4, 36, N'Nguyễn Kim HN 17-19-21 Nguyễn Chí Thanh', N'17-19-21 Nguyễn Chí Thanh Quận Ba Đình', N'C003563741', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (58, 4, 3, N'Nguyễn Kim HN Km 10 Nguyễn Trãi', N'Km 10 Nguyễn Trãi Văn Quán Thanh Xuân', N'C003563742', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (59, 4, 37, N'Nguyễn Kim CM 1-2 Hùng Vương', N'Số 1-2 Hùng Vương- Phường 5- Cà Mau', N'C003580594', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (60, 3, 38, N'CTy TNHH Cao Phong (STĐM Chợ Lớn) HCM 535 QL22 KP5', N'535 Quốc lộ 22- Khu phố 5- Thị trấn Củ Chi-Huyện Củ Chi', N'C018100691', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (61, 2, 39, N'Điện Máy Xanh (TGDD) LA 291-293 ấp Bình Tiền 2', N'Số 291-293 Ấp Bình Tiền 2 Xã Đức Hòa Hạ H.Đức Hòa T.Long An', N'C018890716', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (62, 2, 40, N'Điện Máy Xanh (TGDD) TQ 184 Quang Trung', N'Số 184 Quang Trung tổ 23 P.Tân Quang TP.Tuyên Quang T.Tuyên Quang', N'C019560717', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (63, 2, 24, N'Điện Máy Xanh (TGDD) BP 1050 Phú Riềng Đỏ', N'1050 Phú Riềng Đỏ KP.Tân Đồng 1 P.Tân Xuân TX.Đồng Xoài T.Bình Phước', N'C020080713', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (64, 2, 41, N'Điện Máy Xanh (TGDĐ) HY 355 Nguyễn Văn Linh', N'Số 335 Nguyễn Văn Linh P.An Tảo TP.Hưng Yên T.Hưng Yên', N'C021280722', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (65, 2, 42, N'Điện Máy Xanh (TGDĐ) QNM 16 Nguyễn Tất Thành', N'16 Nguyễn Tất Thành Khối Tân Hòa P.Tân An TP.Hội An T.Quảng Nam', N'C021280730', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (66, 5, 43, N'Mediamart LCI Đại Lộ Trần Hưng Đạo', N'Đại lộ Trần Hưng Đạo - P. Bắc Cường - Thành Phố Lào Cai', N'C021700719', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (67, 2, 44, N'Điện Máy Xanh (TGDĐ) QB 226 Trần Hưng Đạo', N'226 Trần Hưng Đạo P.Nam Lý TP.Đồng Hới T.Quảng Bình', N'C022130692', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (68, 2, 45, N'Điện Máy Xanh (TGDD) BD 51C/1 KP1A An Phú TX Thuận An', N'Số 51C/1- khu phố 1A- P. An Phú- TX. Thuận An- T. Bình Dương', N'C026620768', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (69, 2, 46, N'Điện Máy Xanh (TGDĐ) DNG Lô 8 Võ Văn Kiệt', N'Lô A8- đường Võ Văn Kiệt- P. An Hải Đông- Q. Sơn Trà- TP. Đà Nẵng', N'C027580797', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (70, 2, 47, N'Điện Máy Xanh (TGDĐ) ND Thửa đất số 249-252 tổ 4 đường Kênh', N'Thửa đất số 249-250-251-252- tổ 4- đường Kênh- P. Lộc Vượng- TP. Nam Định- T. Nam Định', N'C028750704', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (71, 5, 41, N'Mediamart HY (Phố Nối) Ngã tư Phố Nối', N'Ngã tư Phố Nối- Hưng Yên', N'C029060885', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (72, 2, 48, N'Điện Máy Xanh Mini (TGDĐ) KH Đường Lạc Long Quân', N'Đường Lạc Long Quân- tổ dân phố Dinh Thành 1- TT. Diên Khánh- H. Diên Khánh- T. Khánh Hòa', N'C030390794', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (73, 2, 32, N'Điện Máy Xanh Mini (TGDĐ) VL 550 đường Phạm Thái Bường', N'Số 550 đường Phạm Thái Bường- khóm 5- P.04- TP. Vĩnh Long- T. Vĩnh Long', N'C030390796', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (74, 7, 47, N'Pico Nam Định', N'87 Quang Trung- Phường Quang Trung- TP Nam Định- Tỉnh Nam Định', N'C030700770', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (75, 2, 49, N'Điện Máy Xanh Mini (TGDĐ) TG Thửa số 172', N'Thửa số 172- tờ bản đồ số 39- ấp Tân Phú 1- xã Tân Thuận Bình- H. Chợ Gạo- T. Tiền Giang', N'C030720709', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (76, 5, 50, N'Mediamart Lê Lợi', N'Tòa nhà Viettel- Nam Đại Lộ Lê Lợi- TP.Thanh Hóa', N'C031210760', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (77, 5, 51, N'Mediamart Mạo Khê', N'Mạo Khê- Quảng Ninh', N'C031210764', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (78, 2, 12, N'Điện Máy Xanh (TGDĐ) QN Số 1 đường 25/4', N'Số 1 đường 25/4- P. Bạch Đằng- TP. Hạ Long- T. Quảng Ninh', N'C031370707', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (79, 7, 52, N'Pico PT 2175 Hùng Vương Việt Trì', N'2175 Đường Hùng Vương- Phường Gia Cẩm- Thành Phố Việt Trì- Tỉnh Phú Thọ', N'C034770762', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (80, 2, 53, N'Điện Máy Xanh (TTDĐ) DN Ấp 1- xã Thạnh Phú', N'Ấp 1- xã Thạnh Phú- huyện Vĩnh Cữu- tỉnh Đồng Nai', N'C034900744', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (81, 5, 54, N'Mediamart HN KM 0+300- Thị Xã Sơn Tây', N'KM 0+300- Thị Xã Sơn Tây- HN', N'C036411550', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (82, 5, 55, N'Mediamart HB 321A Cù Chính Lan', N'321A Đường Cù Chính Lan Tổ 5 Phường Đồng Tiến Hòa Bình', N'C049701554', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (83, 2, 56, N'Điện Máy Xanh (TGDĐ) TH Số 490 Đại Lộ Lê Lợi', N'Số 490 Đại Lộ Lê Lợi- P. Đông Hương- Tp. Thanh Hoá- T. Thanh Hoá', N'C051791545', NULL, 0, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (84, 2, 16, N'Điện Máy Xanh (TGDĐ) HN Số 2 Đại Cồ Việt- P. Lê Đại Hành', N'Số 2 Đại Cồ Việt- P. Lê Đại Hành- Q. Hai Bà Trưng- Tp. Hà Nội', N'C051791549', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (85, 2, 36, N'Điện Máy Xanh (TGDĐ) HN 146 phố Kim Mã', N'Số 146 phố Kim Mã- phường Kim Mã- quận Ba Đình- Hà Nội', N'C005700780', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (86, 2, 57, N'Điện Máy Xanh Mini (TGDĐ) BT 72 Lê Lợi', N'Số 72C- 72D- 72Đ Lê Lợi- P. Phước Hội- TX La Gi- T. Bình Thuận', N'C005701006', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (87, 2, 58, N'Điện Máy Xanh (TGDĐ) DNG 908 Tôn Đức Thắng Hòa Khánh Bắc', N'908 Tôn Đức Thắng- Hòa Khánh Bắc- Liên Chiểu', N'C000060341', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (88, 2, 59, N'Điện Máy Xanh Mini (TGDĐ) BD 566 Khu Phố 9 Phú Hòa Thủ Dầu Một', N'Số 566 Khu Phố 9- Phường Phú Hòa', N'C000165547', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (89, 2, 60, N'Điện Máy Xanh (TGDĐ) TH 17B Lê Thánh Tông', N'Số 17B Lê Thánh Tông Thị trấn Ngọc Lặc Huyện Ngọc Lặc Tỉnh Thanh Hóa', N'C007820700', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (90, 4, 61, N'Nguyễn Kim HCM 216 Phan Đăng Lưu P3 Phú Nhuận', N'216 Phan Đăng Lưu- Phường 3', N'C000278642', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (91, 2, 62, N'Điện Máy Xanh Mini (TGDĐ) BDH 107 Ngô Mây', N'107 Ngô Mây P. Nguyễn Văn Cừ TP. Quy Nhơn T. Bình Định', N'C008183215', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (92, 2, 63, N'Điện Máy Xanh Mini (TGDĐ) TH 91 Lê Lợi', N'Số 91 Lê Lợi P.Trường Sơn TX.Sầm Sơn Tỉnh Thanh Hóa', N'C008340691', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (93, 4, 64, N'Nguyễn Kim DNG 46 Điện Biên Phủ P.Chính Giám', N'46 Điện Biên Phủ- Phường Chính Giám', N'C000388640', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (94, 2, 65, N'Điện Máy Xanh Mini (TGDĐ) DT đường Hùng Vương Khóm 4 TT. Mỹ An', N'Đường Hùng Vương- Khóm 4- TT.Mỹ An- huyện Tháp Mưới- tỉnh Đồng Tháp', N'C008880695', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (95, 3, 66, N'CTy TNHH Cao Phong (STĐM Chợ Lớn) TN 176 Đường 30/4 P3', N'176 Đường 30/4- Phường 3- Tây Ninh', N'C003280586', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (96, 5, 33, N'Mediamart HN 18 Phạm Hùng', N'18 Phạm Hùng- Cầu Giấy- Hà Nội', N'C003431192', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (97, 6, 56, N'Siêu Thị VHC TH 88 Lê Lợi', N'88 Đại Lộ Lê Lợi', N'C003460838', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (98, 2, 67, N'Điện Máy Xanh Mini (TGDĐ) HG 31-33 Quôc lộ 61 Ấp Tân Phú A', N'Số 31-33 Quôc lộ 61 Ấp Tân Phú A TT. Cái Tắc H.Châu Thành A T.Hậu Giang', N'C009990694', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (99, 6, 12, N'Siêu Thị VHC QN 490 Nguyễn Văn Cừ', N'490 Nguyễn Văn Cừ- Phường Hồng Hà- Hạ Long', N'C004991077', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (100, 2, 3, N'Điện Máy Xanh Mini (TGDĐ) HN 746 - 748 - 750 - 752 Quang Trung', N'746 - 748 - 750 - 752 Quang Trung- P.Phú La- Q.Hà Đông- TP.Hà Nội', N'C010400790', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (101, 2, 68, N'Điện Máy Xanh Mini (TGDĐ) PT Khu Tân Tiến- TT Lâm Thao', N'Khu Tân Tiến- TT Lâm Thao- H.Lâm Thao- T.Phú Thọ', N'C010550690', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (102, 2, 69, N'Điện Máy Xanh (TGDĐ)  GL 01 Tôn Đức Thắng', N'01 Tôn Đức Thắng- P. Yên Thế- Tp Pleiku- Gia Lai', N'C010550697', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (103, 2, 70, N'Điện Máy Xanh (TGDD) HCM 224/1A Xô Viết Nghệ Tĩnh', N'224/1A Xô Viết Nghệ Tĩnh- Phường 26- Bình Thạnh', N'C005110767', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (104, 2, 71, N'Điện Máy Xanh Mini (TGDĐ) TTH 1110 Nguyễn Tất Thành', N'1110 Nguyễn Tất Thành- P.Phú Bài- TX.Hương Thủy- T.Thừa Thiên Huế', N'C011310702', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (105, 2, 59, N'Điện Máy Xanh Mini (TGDD) BD Số 322 Đại Lộ Bình Dương', N'Số 322 Đại Lộ Bình Dương- Khu Phố 1- Phường Phú Hòa- TP Thủ Dầu Một- Tỉnh Bình Dương', N'C005110772', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (106, 2, 72, N'Điện Máy Xanh (TGDĐ) BG Lô D3 KDC mới TT Cao Thượng', N'Lô D3- KDC mới- TT.Cao Thượng- H.Tân Yên- T.Bắc Giang', N'C011600691', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (107, 3, 73, N'CTy TNHH Cao Phong (STĐM Chợ Lớn) - Bạc Liêu', N'135A/10 Trần Phú Nối Dài- Phường 7- Bạc Liêu', N'C005210820', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (108, 5, 41, N'Mediamart HY 374 Nguyễn Văn Linh An Tảo', N'374 Nguyễn Văn Linh', N'C007680796', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (109, 2, 56, N'Điện Máy Xanh Mini (TGDĐ) TH 355-357 Quang Trung', N'355-357 Quang Trung- P.Đông Vệ- TP.Thanh Hóa- T.Thanh Hóa', N'C011700768', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (110, 3, 37, N'CTy TNHH Cao Phong (STĐM Chợ Lớn) - Cà Mau', N'Ấp Bà Điểu- Xã Lý Văn Lâm- Cà Mau', N'C007680827', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (111, 5, 56, N'Mediamart TH 301 Trần Phú', N'301 Trần Phú', N'C007680837', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (112, 2, 74, N'Điện Máy Xanh Mini (TGDĐ) HCM 787 Quốc lộ 1A Thạnh Xuân', N'787 Quốc Lộ 1A P.Thạnh Xuân Q.12 TP.HCM', N'C011780699', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (113, 2, 75, N'Điện Máy Xanh Mini (TGDĐ) KT 296 Hùng Vương', N'296 Hùng Vương- Tổ dân phố 6- TT.Đắk Hà- H.Đắk Hà. T.Kon Tum', N'C011870755', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (114, 6, 10, N'Siêu Thị VHC HP Số 6 Hồng Bàng', N'Số 6 Hồng Bàng- Phường Sở Dầu- Quận Hồng Bàng', N'C011040690', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (115, 2, 76, N'Điện Máy Xanh Mini (TGDĐ) LA số 10 QL 62 KP3', N'Số 10- Quốc lộ 62- Khu phố 3- Thị trấn Tân Thạnh- Huyện Tân Thạnh- Tỉnh Long An', N'C012490702', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (116, 2, 77, N'Điện Máy Xanh (TGDĐ)  LA KV1 TT Đông Thạnh', N'Số 56- Đường 838- Khu vực 1- TT. Đông Thành- H. Đức Huệ- T. Long An', N'C012490704', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (117, 2, 56, N'Điện Máy Xanh (TGDĐ) LA KP3 TT Thạnh Hóa', N'Khu Phố 3- Thị Trấn Thạnh Hóa- Huyện Thạnh Hóa- Tỉnh Long An', N'C012490705', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (118, 2, 78, N'Trần Anh NA 343 Lê Duẫn', N'343 Lê Duẩn- Thành phố Vinh- Tỉnh Nghệ An', N'C012490714', NULL, 0, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (119, 2, 73, N'Điện Máy Xanh (TGDD) BL 37 Trần Huỳnh', N'Số 37- Trần Huỳnh- P.7- TP.Bạc Liêu- T.Bạc Liêu', N'C011600693', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (120, 2, 79, N'Điện Máy Xanh (TGDĐ) HCM 189 Cống Quỳnh', N'189 Cống Quỳnh- P.Nguyễn Cư Trinh- Q.1- TP.Hồ Chí Minh', N'C012550704', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (121, 2, 80, N'Điện Máy Xanh Mini (TGDĐ) KG 65-67 khóm B TT.Tân Hiệp', N'65-67 khóm B TT.Tân Hiệp H.Tân Hiệp T.Kiên Giang', N'C012600700', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (122, 5, 47, N'Mediamart ND 113 Đường Đông A- Khu Đô Thị mới Hòa Vượng', N'113 Đường Đông A- Khu Đô Thị mới Hòa Vượng- Xã Lộc Hòa- Nam Định', N'C012630768', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (123, 2, 21, N'Điện Máy Xanh (TGDD) BD 530/7A KP Đông Thành', N'530/7A- KP.Đông Thành- P.Tân Đông Hiệp- Thị Xã Dĩ An- T.Bình Dương', N'C015250922', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (124, 2, 81, N'Điện Máy xanh Mini (TGDĐ) SL Tiểu khu 19 TT. Hát Lót', N'Tiểu khu 19- TT.Hát Lót- H.Mai Sơn- T.Sơn La', N'C012730734', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (125, 2, 82, N'Điện Máy Xanh (TGDD) KH 17 Thái Nguyên Phước Tân', N'17 Thái Nguyên- P.Phước Tân- TP.Nha Trang- T.Khánh Hòa', N'C016180700', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (126, 2, 83, N'Điện Máy Xanh (TGDD) NT 279 Ngô Gia Tự', N'279 Ngô Gia Tự- KP 5- P.Tấn Tài- TP.Phan Rang – Tháp Chàm- T.Ninh Thuận', N'C017270796', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (127, 2, 84, N'Điện Máy Xanh (TGDĐ) BL Ấp Long Thành TT Phước Long', N'Ấp Long Thành- TT.Phước Long- H.Phước Long- T.Bạc Liêu', N'C012810706', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (128, 2, 85, N'Điện Máy Xanh (TGDĐ) CB 44 phố Kim Đồng', N'Số 44 phố Kim Đồng P.Hợp Giang TP.Cao Bằng T.Cao Bằng', N'C018280697', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (129, 2, 86, N'Điện Máy Xanh Mini (TGDĐ) KG 498 Ấp Vĩnh Đông 2', N'Số 498 Ấp Vĩnh Đông 2- TT.Vĩnh Thuận- H.Vĩnh Thuận- T.Kiên Giang', N'C013270702', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (130, 3, 87, N'CTy TNHH Cao Phong (STĐM Chợ Lớn) - Long An', N'86 Nguyễn Văn Siêu- thị trấn Bến Lức-Huyện Bến Lức- Tỉnh Long An', N'C018480701', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (131, 2, 61, N'Điện Máy Xanh (TGDD) HCM 157 Phan Đăng Lưu', N'157 Phan Đăng Lưu P.01 Q.Phú Nhuận TP.Hồ Chí Minh', N'C018890712', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (132, 2, 88, N'Điện Máy Xanh (TGDD) HCM 71 Lê Văn Việt', N'71 Lê Văn Việt Phường Hiệp Phú Quận 9 TP.Hồ Chí Minh', N'C019560720', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (133, 2, 89, N'Điện Máy Xanh Mini (TGDĐ) PT 36 Phố Đồng Tâm', N'Số 36 Phố Đồng Tâm- TT.Đoan Hùng- H.Đoan Hùng- T.Phú Thọ', N'C013810711', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (134, 3, 82, N'CTy TNHH Cao Phong (STĐM Chợ Lớn) KH 80 Đường 23/10', N'80 Đường 23/10- P.Phương Sơn-Tp. Nha Trang-Tỉnh Khánh Hòa-Việt Nam', N'C019670720', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (135, 2, 92, N'Điện Máy Xanh Mini (TGDĐ) ND Xóm 15 Trung Lễ Xã Hải Hưng', N'Xóm 15 Trung Lễ Xã Hải Hưng H.Hải Hậu T.Nam Định', N'C014220826', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (136, 2, 93, N'Điện Máy Xanh Mini (TGDĐ) TB Nhà ông Vũ Văn Hải', N'Nhà ông Vũ Văn Hải Phố Tiểu Hoàng TT.Tiền Hải H.Tiền Hải T.Thái Bình', N'C014220827', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (137, 2, 94, N'Điện Máy Xanh Mini (TGDĐ) HN 66 Lê Văn Lương', N'Số 66 đường Lê Văn Lương- P.Trung Hòa- Q.Cầu Giấy- TP.Hà Nội', N'C014510702', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (138, 2, 95, N'Điện Máy Xanh Mini (TGDĐ) HP 220 Lý Thánh Tông', N'Số 220 Lý Thánh Tông P.Vạn Sơn Q.Đồ Sơn TP.Hải Phòng.', N'C014760856', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (139, 2, 96, N'Điện Máy Xanh (TGDD) HNM 222 Lê Hoàn', N'Số 222 Đường Lê Hoàn P.Hai Bà Trưng TP.Phủ Lý T.Hà Nam', N'C019930735', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (140, 2, 35, N'Điện Máy Xanh (TGDĐ)  QNM 540 Phan Chu Trinh', N'540 Phan Chu Trinh P.An Sơn TP.Tam Kỳ T.Quảng Nam', N'C014860693', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (141, 2, 97, N'Điện Máy Xanh Mini (TGDĐ) QNM khu đô thị phố chợ Nam Phước', N'Khu đô thị phố chợ Nam Phước Khối phố Long Xuyên 2 TT.Nam Phước H.Duy Xuyên T.Quảng Nam', N'C014950723', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (142, 2, 98, N'Điện Máy Xanh Mini (TGDĐ) HY Thôn Lương Hội Lương Bằng', N'Thôn Lương Hội- TT.Lương Bằng- Huyện Kim Động- Tỉnh Hưng Yên', N'C015250916', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (143, 5, 33, N'Mediamart HN Km11 Đường 32 Cầu Diễn', N'Km 11 đường 32 tổ 15- phường Phúc Diễn- Quận Bắc Từ Liêm', N'C021020723', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (144, 2, 99, N'Điện Máy Xanh (TGDĐ) PY 222 Hùng Vương', N'Số 222 Hùng Vương Phường 7 TP.Tuy Hòa T.Phú Yên', N'C021650795', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (145, 2, 101, N'Điện Máy Xanh (TGDĐ) DB khối Tân Thủy TT. Tuần Giáo', N'Khối Tân Thủy- TT.Tuần Giáo- H.Tuần Giáo- T.Điện Biên', N'C015930694', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (146, 2, 102, N'Điện Máy Xanh Mini (TGDĐ) YB đường Thanh Niên tổ 9', N'Đường Thanh Niên- Tổ 9- P.Trung Tâm- TX. Nghĩa Lộ- T.Yên Bái', N'C016070746', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (147, 2, 103, N'Điện Máy Xanh (TGDĐ) TG đường Trương Định KP3', N'Thửa Số 28297.11.2010 Trương Định Khu Phố 3 Phường 2 TP.Gò Công T.Tiền Giang', N'C021650796', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (148, 3, 59, N'CTy TNHH Cao Phong (STĐM Chợ Lớn) BD 283 Đại Lộ Bình Dương', N'Số 283 Đại lộ Bình Dương- P.Chánh Nghĩa- Tp.Thủ Dầu Một- Tỉnh Bình Dương', N'C022250696', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (149, 5, 104, N'Mediamart HN (Xa La) 32 Cầu Bươu', N'Số 32 Đường Cầu Bươu- Tân Triều- Thanh Trì- Hà Nội', N'C022670700', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (150, 2, 105, N'Điện Máy Xanh (TGDĐ) HB Tiểu khu 13 TT. Lương Sơn', N'Tiểu khu 13 TT.Lương Sơn H.Lương Sơn T.Hòa Bình', N'C016820692', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (151, 2, 106, N'Điện Máy Xanh Mini (TGDĐ) DLK 561 Giải Phóng', N'561 Giải Phóng- Tổ Dân Phố 7- TT.Ea Drăng- H.Ea Hleo- T.Đắk Lắk', N'C017050696', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (152, 2, 107, N'Điện Máy Xanh Mini (TGDĐ) HCM 506-508 Nguyễn Văn Tạo', N'506 - 508 Nguyễn Văn Tạo Ấp 1 Xã Long Thới Huyện Nhà Bè  TP.HCM', N'C022950735', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (153, 2, 108, N'Điện Máy Xanh Mini (TGDĐ) LD Số 980A - 980B - 982 đường Hùng Vương- tổ dân phố 7- TT. Di Linh- H. Di Linh- T. Lâm Đồng', N'Số 980A - 980B - 982 đường Hùng Vương- tổ dân phố 7- TT. Di Linh- H. Di Linh- T. Lâm Đồng', N'C017270795', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (154, 5, 52, N'Mediamart PT 1498 Đại Lộ Hùng Vương Việt Trì', N'1498 Đại Lộ Hùng Vương- Việt Trì- Phú Thọ', N'C027120921', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (155, 2, 109, N'Điện Máy Xanh (TGDĐ) DN 2239-2241 Quốc lộ 1A ấp Thanh Hóa', N'Số 2239-2241- Quốc lộ 1A- khu 1- ấp Thanh Hóa- xã Hố Nai 3- H. Trảng Bom- T. Đồng Nai', N'C027580796', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (156, 2, 110, N'Điện Máy Xanh (TGDĐ) AG  Trần Phú Khóm Long Thạnh', N'Số 261-265 Trần Phú- khóm Long Thạnh D- P. Long Thạnh- TX. Tân Châu- T. An Giang', N'C028130715', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (157, 2, 14, N'Điện Máy Xanh (TGDĐ)  HCM 434 Nguyễn Oanh', N'Số 434 Nguyễn Oanh- P. 06- Q. Gò Vấp- TP.HCM', N'C028470693', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (158, 5, 3, N'Mediamart Ba La HN 682 Quang Trung', N'682 Quang Trung- Ba La- Hà Đông- Hà Nội', N'C028660698', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (159, 7, 111, N'Pico Bắc Giang', N'Trung tâm thương mại Hapro Bắc Giang - Khu Quảng trường 3/2- Đường Hoàng Văn Thụ- TP. Bắc Giang', N'C029470756', NULL, 0, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (160, 2, 112, N'Điện Máy Xanh (TGDĐ) QT 257 Lê Duẩn', N'257 Lê Duẩn P.Đông Lễ TP.Đông Hà T.Quảng Trị', N'C018130734', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (161, 2, 113, N'Điện Máy Xanh Mini (TGDĐ) HN Km 28 QL 6 Trường Yên', N'Km 28 quốc lộ 6 xã Trường Yên Huyện Chương Mỹ TP.Hà Nội', N'C018280692', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (162, 2, 114, N'Điện Máy Xanh (TGDĐ) LS 69 Ngô Quyền', N'69 Ngô Quyền P.Vĩnh Trại TP.Lạng Sơn T.Lạng Sơn', N'C018280696', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (163, 2, 90, N'Điện Máy Xanh (TGDĐ) HCM Số 832-834-836 Tỉnh lộ 43', N'Số 832-834-836 Tỉnh Lộ 43- P.Bình Chiểu- Q.Thủ Đức- TP.Hồ Chí Minh', N'C031170778', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (164, 2, 115, N'Điện Máy Xanh Mini (TGDĐ) TN 13 Phạm Hùng TT Tân Biên', N'Số 13 Phạm Hùng TT.Tân Biên H.Tân Biên T.Tây Ninh', N'C018420711', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (165, 2, 116, N'Điện Máy Xanh (TGDĐ) CT P31 CMT8 P. An Thới', N'Số P31 Cách Mạng Tháng 8 P.An Thới Q.Bình Thủy TP.Cần Thơ', N'C018420712', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (166, 2, 22, N'Điện Máy Xanh Mini (TGDĐ) DT 114-116 Nguyễn Trãi', N'Số 114-116 đường Nguyễn Trãi TT.Mỹ Thọ H.Cao Lãnh T.Đồng Tháp', N'C018420715', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (167, 2, 118, N'Điện Máy Xanh Mini (TGDĐ) BN Ngã tư Đông Côi Hồ', N'Ngã tư Đông Côi- TT. Hồ- H. Thuận Thành-  T. Bắc Ninh', N'C031170787', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (168, 5, 119, N'Mediamart Phổ Yên', N'Xóm Thành Lập- xã Hồng Tiến- thị xã Phổ Yên- Tỉnh Thái Nguyên', N'C031210762', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (169, 2, 120, N'Điện Máy Xanh Mini (TGDĐ) HP Tôn Đức Thắng Xã An Đồng', N'Đường Tôn Đức Thắng- Xã An Đồng- Huyện An Dương- Hải Phòng', N'C018630735', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (170, 2, 83, N'Điện Máy Xanh Mini (TGDĐ) NT 119 Đường 21/8 Khu 9 Phước Mỹ', N'119 Đường 21/8- Khu 9- Phường Phước Mỹ- Phan Rang- Tháp Chàm- Ninh Thuận', N'C018630740', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (171, 2, 121, N'Điện Máy Xanh Mini (TGDĐ) HAG 602 Trường Chinh', N'Số 602 Trường Chinh Tổ 4 TT.Việt Quang H.Bắc Quang T.Hà Giang', N'C018740778', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (172, 2, 14, N'Điện Máy Xanh Mini (TGDĐ) HCM SỐ 1044-1046 Quang Trung', N'Số 1044-1046 Quang Trung- P. 08- Q. Gò Vấp- TP.HCM', N'C031480736', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (173, 2, 122, N'Điện Máy Xanh Mini (TGDĐ) TG 635 Ấp Bình Hòa Đông', N'Số 635 Ấp Bình Hòa Đông Xã Bình Nhì H.Gò Công Tây T.Tiền Giang', N'C018810827', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (174, 3, 123, N'CTy TNHH Cao Phong (STĐM Chợ Lớn) - Sa Đéc Đồng Tháp', N'Số 393- Nguyễn Sinh Sắc-Phường 2- Tp.Sa Đéc- Tỉnh Đồng Tháp', N'C018860775', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (175, 2, 84, N'Điện Máy Xanh Mini (TGDĐ) BP Số 27 đường ĐT 741', N'Số 27- đường ĐT 741- KP.03- P. Phước Bình- TX. Phước Long- T. Bình Phước', N'C032720729', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (176, 2, 58, N'Điện Máy Xanh (TGDĐ) DNG 116 Tôn Đức Thắng', N'116 Tôn Đức Thắng P.Hòa Minh Q.Liên Chiểu TP.Đà Nẵng', N'C018890714', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (177, 2, 124, N'Điện Máy Xanh Mini (TGDĐ) BL Quốc lộ 1A', N'Quốc Lộ 1A- khóm 2- P. Hộ Phòng- TX. Giá Rai- T. Bạc Liêu', N'C034020739', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (178, 2, 125, N'Điện Máy Xanh (TGDĐ) QN Khu Lê Hồng Phong', N'Số 38 Trần Phú- P. Cẩm Tây- TP. Cẩm Phả- T. Quảng Ninh', N'C035160696', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (179, 5, 43, N'Mediamart LC 258 Hoàng Liên', N'258 Hoàng Liên- Phường Kim Tân- Thành phố Lào Cai- Tỉnh Lào Cai- Việt Nam', N'C040681528', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (180, 2, 126, N'Điện Máy Xanh (TGDĐ) VP 512-514 Mê Linh', N'512-514 Đường Mê Linh P.Khai Quang TP.Vĩnh Yên T.Vĩnh Phúc', N'C019140874', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (181, 2, 64, N'Điện Máy Xanh (TGDĐ) DNG 203 Đường Điện Biên Phủ', N'203 Đường Điện Biên Phủ- Phường Hòa Khê- Quận Thanh Khê- Tp. Đà Nẵng', N'C051791535', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (182, 2, 96, N'Điện Máy Xanh (TGDĐ) HNM Khu TM4 - Quốc lộ 1A- Phường Thanh Châu', N'Khu TM4 - Quốc lộ 1A- Phường Thanh Châu- Thành phố Phủ Lý- Tỉnh Hà Nam- Việt Nam', N'C051791536', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (183, 2, 127, N'Điện Máy Xanh Mini (TGDĐ) TV 315-317 QL 53 Khóm 5', N'Số 315-317 Quốc lộ 53 Khóm 5 TT.Càng Long H.Càng Long T.Trà Vinh', N'C019140883', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (184, 2, 47, N'Điện Máy Xanh (TGDĐ) ND Số 107- Quốc lộ 10', N'Số 107- Quốc lộ 10- xã Lộc Hòa- Tp. Nam Định- T. Nam Định', N'C051791538', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (185, 2, 33, N'Điện Máy Xanh (TGDĐ) HN Lô CN1- Cụm CN tập trung vừa và nhỏ', N'Lô CN1- Cụm CN tập trung vừa và nhỏ- P. Minh Khai- Q. Bắc Từ Liêm- Tp. Hà Nội', N'C051791553', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (186, 2, 5, N'Điện Máy Xanh (TGDĐ) HN Số 159 Thái Hà- P. Láng Hạ', N'Số 159 Thái Hà- P. Láng Hạ- Q. Đống Đa- Tp. Hà Nội', N'C051791555', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (187, 2, 91, N'Điện Máy Xanh (TGDĐ) HN Số 27 Lê Văn Lương- P. Nhân Chính', N'Số 27 Lê Văn Lương- P. Nhân Chính- Q. Thanh Xuân- Tp. Hà Nội', N'C051791557', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (188, 2, 100, N'Điện Máy Xanh (TGDĐ) HN Lô HH1- Công viên CNTT Hà Nội', N'Lô HH1- Công viên CNTT Hà Nội- P. Phúc Đồng- Q. Long Biên- Tp. Hà Nội', N'C051791558', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (189, 2, 52, N'Điện Máy Xanh (TGDĐ) PT Số 1606A Hùng Vương', N'Số 1606A Hùng Vương- P. Gia Cẩm- Tp. Việt Trì- T. Phú Thọ', N'C051791560', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (190, 2, 10, N'Điện Máy Xanh (TGDĐ) HP Số 69 ĐườngHồng Bàng- Phường Sở Dầu', N'Số 69 ĐườngHồng Bàng- Phường Sở Dầu- Quận Hồng Bàng- Tp. Hải Phòng', N'C051791567', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (191, 2, 129, N'Điện Máy Xanh (TGDĐ) HN khu Đầm Săn TT.Liên Quan', N'Số Khu Đầm Săn TT.Liên Quan H.Thạch Thất TP.Hà Nội', N'C019590695', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (192, 2, 130, N'Điện Máy Xanh (TGDD) TB 132 Trần Thái Tông Tổ 29', N'Số 132 đường Trần Thái Tông Tổ 29 P.Bồ Xuyên TP.Thái Bình T.Thái Bình', N'C019590699', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (193, 2, 76, N'Điện Máy Xanh Mini (TGDĐ) BRVT 01 Nguyễn Văn Linh', N'01 Nguyễn Văn Linh TT.Phú Mỹ H.Tân Thành T.Bà Rịa- Vũng Tàu', N'C019590703', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (194, 2, 131, N'Điện Máy Xanh Mini (TGDĐ) AG 02 Tỉnh lộ 942 Ấp Long Hòa', N'Số 02 Tỉnh lộ 942 Ấp Long Hòa TT.Chợ Mới H.Chợ Mới T.An Giang', N'C019590706', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (195, 2, 114, N'Điện Máy Xanh (TGDĐ) LS Tổ 4- khối 5- Thị trấn Cao Lộc', N'Tổ 4- khối 5- Thị trấn Cao Lộc- Huyện Cao Lộc- Tỉnh Lạng Sơn- Việt Nam', N'C051791569', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (196, 2, 132, N'Điện Máy Xanh (TGDD) YB 42 Điện Biên', N'Số 42 Điện Biên Tổ 11 P. Yên Ninh TP.Yên Bái T.Yên Bái', N'C019930733', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (197, 2, 133, N'Điện Máy Xanh Mini (TGDĐ) HB 42 Khu 3 TT. Cao Phong', N'Số nhà 42 Khu 3 TT.Cao Phong H.Cao Phong T.Hòa Bình', N'C019930734', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (198, 5, 134, N'Mediamart 1 HN 29F Hai Bà Trưng', N'29F Hai Bà Trưng- Hoàn Kiếm', N'C000027096', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (199, 4, 90, N'Nguyễn Kim HCM 307-309 Võ Văn Ngân', N'307-309 Võ Văn Ngân- Bình Thọ', N'C000050529', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (200, 3, 135, N'Chi Nhánh Công Ty TNHH Cao Phong Tại Hậu Giang', N'Khu vực 2- đường Võ Văn Kiệt- Phường V- Thành phố Vị Thanh- tỉnh Hậu Giang- Việt Nam.', N'C020640842', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (201, 2, 136, N'Điện Máy Xanh Mini (TGDĐ) HN 80-82 đường 3 xã Phù Lỗ', N'Thôn Đông- xã Phù Lỗ- H. Sóc Sơn- TP. Hà Nội', N'C020760703', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (202, 3, 25, N'CTy TNHH Cao Phong (STĐM Chợ Lớn) - Mỹ Tho', N'Số 35- Đường Ấp Bắc- Phường 5', N'C000113606', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (203, 2, 52, N'Điện Máy Xanh (TGDĐ) PT 85 Trần Nguyên Hãn', N'Số 85 Trần Nguyên Hãn P.Bến Gót TP.Việt Trì T.Phú Thọ', N'C020910694', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (204, 2, 137, N'Điện Máy Xanh (TGDĐ) HN 43 Đường 21B', N'Số 43 Đường 21B Thôn Thanh Ấm TT.Vân Đình H.Ứng Hòa TP.Hà Nội', N'C021010692', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (205, 2, 45, N'Điện Máy Xanh (TGDĐ) BD E1/9-E1/10 KDC Thuận Giao', N'Số E1/9 - E1/10 Khu Dân Cư Thuận Giao  P.Thuận Giao TX.Thuận An T.Bình Dương', N'C021010695', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (206, 4, 14, N'Nguyễn Kim HCM 03 Nguyễn Oanh Gò Vấp', N'03 Nguyễn Oanh', N'C000388643', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (207, 3, 138, N'CTy TNHH Cao Phong (STĐM Chợ Lớn) - Trà Vinh', N'Nguyễn Thị Minh Khai- Khóm 6- Phường 8', N'C001648612', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (208, 2, 139, N'Điện Máy Xanh (TGDĐ) QN Trần Nhân Tông Tổ 7', N'Đường Trần Nhân Tông Tổ 7 Khu 1 P.Yên Thanh TP.Uông Bí T.Quảng Ninh', N'C021280724', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (209, 4, 140, N'Nguyễn Kim DLK 01 Nguyễn Chí Thanh Tân An', N'01 Nguyễn Chí Thanh- Phường Tân An', N'C001758847', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (210, 5, 36, N'Mediamart HN 18 Nguyễn Chí Thanh', N'18 Nguyễn Chí Thanh- Ba Đình', N'C004510857', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (211, 6, 100, N'Siêu Thị VHC HN 549 Nguyễn Văn Cừ', N'549 Nguyễn Văn Cừ- Phường Gia Thụy- Quận Long Biên', N'C004770758', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (212, 5, 141, N'Mediamart BN 37 Lý Thái Tổ', N'37 Lý Thái Tổ', N'C005040690', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (213, 2, 62, N'Điện Máy Xanh (TGDĐ) BDH 769 Trần Hưng Đạo', N'Số 769 Trần Hưng Đạo P.Lê Hồng Phong TP.Quy Nhơn T.Bình Định', N'C021280731', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (214, 2, 142, N'Điện Máy Xanh Mini (TGDD) LA 341-343 QL 62', N'Số 341-343 Quốc lộ 62 P.1 TX. Kiến Tường Tỉnh Long An', N'C021280735', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (215, 2, 14, N'Điện Máy Xanh (TGDD) HCM 33 Quang Trung', N'33 Quang Trung- Phường 10- Quận Gò Vấp- HCM', N'C005110769', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (216, 2, 66, N'Điện Máy Xanh (TGDD) TN 748 Cách Mạng Tháng 8', N'748 Cách Mạng Tháng 8- KP 1- P. IV- TX. Tây Ninh- T. Tây Ninh', N'C005110773', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (217, 2, 143, N'Điện Máy Xanh Mini (TGDĐ) BDH 246 Quang Trung', N'246 Quang Trung Thị Trấn Ngô Mây Huyện Phù Cát Tỉnh Bình Định', N'C021650789', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (218, 2, 144, N'Điện Máy Xanh (TGDD) ST 99 Hùng Vương', N'99 Hùng Vương- Khóm 1- P. 6- TP. Sóc Trăng- T. Sóc Trăng.', N'C005110777', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (219, 6, 28, N'Siêu Thị VHC THN 282B Lương Ngọc Quyến', N'282B Lương Ngọc Quyến', N'C007680836', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (220, 5, 33, N'Mediamart HN 54 Tố Hữu', N'Số 54 Tố Hữu- Phường Trung Văn- Quận Nam Từ Liêm- TP Hà Nội', N'C021700718', NULL, 0, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (221, 5, 94, N'Mediamart HN 111 Hồ Tùng Mậu', N'Km9 Hồ Tùng Mậu Mai Dịch', N'C007680838', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (222, 2, 145, N'Điện Máy Xanh Mini (TGDĐ) KG 606 QL 80 tổ 4 áp ngã 3', N'606 quốc lộ 80 tổ 4 ấp ngã 3 xã Kiên Lương H.Kiên Lương T.Kiên Giang', N'C021790697', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (223, 2, 146, N'Điện Máy Xanh Mini (TGDĐ) VL 01 KP3 TT Trà Ôn', N'Số 1A-2A đường Thống Chế Điều Bát- KP.3- TT. Trà Ôn- H. Trà Ôn- T. Vĩnh Long', N'C021790699', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (224, 2, 147, N'Điện Máy Xanh (TGDĐ) NA Xóm Nam Sơn Xã Vân Diên', N'Thửa đất 428  tờ bản đồ số 22 Xóm Nam Sơn Xã Vân Diên H.Nam Đàn T.Nghệ An', N'C021790700', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (225, 2, 30, N'Điện Máy Xanh Mini (TGDĐ) HCM 221 Đặng Thúc Vịnh', N'Số 221 Đặng Thúc Vịnh Ấp 7  xã Đông Thạnh H.Hóc Môn TP.Hồ Chí Minh', N'C021790701', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (226, 2, 148, N'Điện Máy Xanh (TGDĐ) VP Khu 11 TT. Lập Thạch', N'Khu 11 TT.Lập Thạch H.Lập Thạch T.Vĩnh Phúc', N'C021990745', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (227, 2, 149, N'Điện Máy Xanh Mini (TGDĐ) HAG 151 tổ 4 TT. Vị Xuyên', N'Số 154- Tổ 4- thị trấn Vị Xuyên- huyện Vị Xuyên- Tỉnh Hà Giang', N'C021990746', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (228, 2, 150, N'Điện Máy Xanh (TGDĐ) BK Tổ 8B P.Đức Xuân', N'Tổ 8B Phường Đức Xuân Tp. Bắc Kạn Tp. Bắc Kạn', N'C022070692', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (229, 2, 151, N'Điện Máy Xanh Mini (TGDĐ) HCM 1826A Tỉnh Lộ 10', N'1826A Tỉnh Lộ 10 Khu phố 1 Phường Tân Tạo  Quận Bình Tân Tp. Hồ Chí Minh', N'C022070693', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (230, 5, 126, N'Mediamart VP Km 30 Quốc lộ 2 Vĩnh Yên', N'Km 30 Quốc lộ 2- Vĩnh Yên(Cạnh bến xe Vĩnh Yên)', N'C009810697', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (231, 2, 38, N'Điện Máy Xanh (TGDD) HCM 874-874A Quốc Lộ 22', N'874 – 874A- Quốc Lộ 22- KP 8- TT Củ Chi- H.Củ Chi- TP.HCM', N'C010180700', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (232, 2, 152, N'Điện Máy Xanh (TGDĐ) HCM 542 Cách Mạng Tháng 8', N'542 Cách Mạng Tháng 8 Phường 11 Quận 03  TP.Hồ Chí Minh', N'C022130691', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (233, 5, 111, N'Mediamart BG Số 1 Hùng Vương', N'Số 1 Hùng Vương- Phường Hoàng Văn Thụ- Bắc Giang', N'C013240692', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (234, 2, 11, N'Điện Máy Xanh (TGDD) TTH 04 đường Hà Nội', N'Số 01 đường Hà Nội- P.Vĩnh Ninh- TP.Huế- T.Thừa Thiên Huế', N'C016180701', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (235, 2, 153, N'Điện Máy Xanh (TGDD) TN số 10 QL22 KP Gia Huỳnh', N'Số 10 Quốc Lộ 22 KP.Gia Huỳnh TT.Trảng Bàng H.Trảng Bàng T.Tây Ninh', N'C018740779', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (236, 2, 154, N'Điện Máy Xanh Mini (TGDĐ) BN Đường 280 TT. Thứa', N'Đường 280 Thị Trấn Thứa Thị Trấn Thứa H. Lương Tài T. Bắc Ninh', N'C022340693', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (237, 2, 155, N'Điện Máy Xanh (TGDĐ) NB 02 Trần Hưng Đạo', N'Số 2 Trần Hưng Đạo Phố Phúc Trọng P. Phúc Thành TP. Ninh Bình T. Ninh Bình', N'C022340694', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (238, 2, 33, N'Điện Máy Xanh (TGDĐ) HN 37 Cầu Diễn', N'Số 37 Đường Cầu Diễn Phường Phúc Diễn Quận Bắc Từ Liêm Hà Nội', N'C022500702', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (239, 2, 135, N'Điện Máy Xanh (TGDD) HG 17 Đường 3/2', N'Số 17 đường 3/2 Phường V Thành phố Vị Thanh Tỉnh Hậu Giang', N'C018890715', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (240, 2, 156, N'Điện Máy Xanh Mini (TGDĐ) THN Tiểu khu An Thái', N'Tiểu Khu An Thái Thị Trấn Đu Huyện Phú Lương Tỉnh Thái Nguyên', N'C022500704', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (241, 2, 157, N'Điện Máy Xanh Mini (TGDĐ) HTH Thửa đất số 116 Tổ Liên Phú', N'Thửa đất số 116 tờ bản số "18/371" Tổ dân phố Liên Phú P. Kỳ Liên TX. Kỳ Anh T. Hà Tĩnh', N'C022500711', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (242, 2, 25, N'Điện Máy Xanh (TGDD) TG 115 Nguyễn Trãi', N'Số 115 đường Nguyễn Trãi Phường 7 Thành phố Mỹ Tho Tỉnh Tiền Giang', N'C018890717', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (243, 2, 158, N'Điện Máy Xanh (TGDĐ) BG Tiểu Khu 04 Thửa số 1 TT. Neo', N'Tiểu khu 04 Thửa số 1 Thị trấn Neo Huyện Yên Dũng Tỉnh Bắc Giang', N'C022660697', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (244, 2, 159, N'Điện Máy Xanh Mini (TGDĐ) NA Khối 4 TT. Thanh Chương', N'Khối 4 Thị Trấn Thanh Chương Huyện Thanh Chương Tỉnh Nghệ An', N'C022660698', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (245, 3, 39, N'CTy TNHH Cao Phong ( STĐM Chợ Lớn) - Đức Hòa', N'Số 209 tỉnh lộ 825- Xã Đức Hòa Hạ-Huyện Đức Hòa- Tỉnh Long An-Việt Nam', N'C022670693', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (246, 2, 45, N'Điện Máy Xanh (TGDD) BD 311-315 Nguyễn Trãi', N'Số 311-315 Đường Nguyễn Trãi KP.Nguyễn Trãi P.Lái Thiêu TX.Thuận An T.Bình Dương', N'C019560721', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (247, 2, 160, N'Điện Máy Xanh (TGDĐ) SL Tổ 11 P. Chiềng Lề', N'Tổ 11 Phường Chiềng Lề Tp. Sơn La Tỉnh Sơn La', N'C021280726', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (248, 2, 56, N'Điện Máy Xanh (TGDĐ) TH 664 Bà Triệu', N'664 Bà Triệu P.Điện Biên TP.Thanh Hóa T.Thanh Hóa', N'C021280728', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (249, 2, 54, N'Điện Máy Xanh (TGDĐ) HN 366 P. Sơn Lộc', N'Số 366 Phường Sơn Lộc Thị Xã Sơn Tây Thành Phố Hà Nội', N'C022950730', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (250, 2, 161, N'Điện Máy Xanh (TGDĐ) ND 4B tỉnh lộ 489 TT. Ngô Đồng', N'4B tỉnh lộ 489 thị trấn Ngô Đồng Huyện Giao Thủy tỉnh Nam Định', N'C022950733', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (251, 2, 55, N'Điện Máy Xanh (TGDĐ) HB 724 Cù Chính Lan', N'724 Cù Chính Lan Tổ 03 Phường Đồng Tiến Tp.Hòa Bình Tỉnh Hòa Bình.', N'C022950734', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (252, 2, 162, N'Điện Máy Xanh (TGDĐ) BN Lô A1 và A2 thửa đất số 50 51 KDC Đồng Khu', N'Lô A1 và A2 thửa đất số 50 và 51 Khu dân cư dịch vụ Đồng Khu P.Đình Bảng TX.Từ Sơn T.Bắc Ninh', N'C021380711', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (253, 2, 163, N'Điện Máy Xanh Mini (TGDĐ) HTH 396 Trần Phú', N'396 Đường Trần Phú Thị trấn Hương Khê Huyện Hương Khê Tỉnh Hà Tĩnh.', N'C022950739', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (254, 3, 164, N'CTy TNHH Cao Phong ( STĐM Chợ Lớn) - Cai Lậy', N'Số 13/591 Quốc Lộ 1- Phường 5- Thị Xã Cai Lậy- Tỉnh Tiền Giang-Việt Nam', N'C023030691', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (255, 2, 165, N'Điện Máy Xanh (TGDĐ) KH 2437 đại lộ Hùng Vương', N'2437 đại lộ Hùng Vương phường Cam Lợi thành phố Cam Ranh tỉnh Khánh Hòa', N'C023070715', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (256, 2, 113, N'Điện Máy Xanh Mini (TGDĐ) HN Thôn Tràng An', N'Thôn Tràng An TT Chúc Sơn H. Chương Mỹ TP. Hà Nội', N'C023070719', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (257, 2, 118, N'Điện Máy Xanh Mini (TGDĐ) BN Thôn Tư Thế', N'Thôn Tư Thế xã Trí Quả Huyện Thuận Thành tỉnh Bắc Ninh', N'C023230785', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (258, 2, 166, N'Điện Máy Xanh (TGDĐ) LC Tổ 9 P. Tân Phong', N'Tổ 9 Phường Tân Phong Thành Phố Lai Châu Tỉnh Lai Châu', N'C024270691', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (259, 2, 119, N'Điện Máy Xanh (TGDĐ) THN 200 Phạm Văn Đồng', N'Số 200 đường Phạm Văn Đồng Tổ dân phố 4 Phường Ba Hàng Thị xã Phổ Yên tỉnh Thái Nguyên', N'C024500704', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (260, 2, 29, N'Điện Máy Xanh Mini (TGDĐ) HN 196 Tam Trinh', N'Số 196 đường Tam Trinh P. Yên Sở Q. Hoàng Mai Tp. Hà Nội', N'C024680697', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (261, 2, 136, N'Điện Máy Xanh (TGDĐ) HN Ô 1-2-3 Khu A Lô II-7 Khu đô thị mới', N'Ô số 1-2-3 Khu A Lô II-7 Khu đô thị mới TT. Sóc Sơn H. Sóc Sơn Hà Nội', N'C024680699', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (262, 2, 167, N'Điện Máy Xanh (TGDĐ) VP 389A Hai Bà Trưng', N'Số 389A đường Hai Bà Trưng Khu 5 Xã Tiền Châu TX. Phúc Yên Tỉnh Vĩnh Phúc', N'C024680700', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (263, 2, 168, N'Điện Máy Xanh Mini (TGDĐ) QT 156 QL 09 TT Lao Bảo', N'Số 156 Quốc Lộ 09 TT Lao Bảo Huyện Hướng Hóa Tỉnh Quảng Trị', N'C024680703', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (264, 2, 104, N'Điện Máy Xanh Mini (TGDĐ) ST 279 Ấp 1 TT. Phú Lộc', N'279 Ấp 1 TT. Phú Lộc H. Thạnh Trị T. Sóc Trăng', N'C024680709', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (265, 2, 169, N'Điện Máy Xanh Mini (TGDĐ) PT khu 8 TT. Thanh Ba', N'Khu 8 Thị Trấn Thanh Ba Huyện Thanh Ba Tỉnh Phú Thọ', N'C024800710', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (266, 2, 170, N'Điện Máy Xanh Mini (TGDĐ) HTH 189 QL 8A Khối 12', N'Số 189 đường quốc lộ 8A Khối 12 Thị trấn Phố Châu Huyện Hương Sơn Tỉnh Hà Tĩnh', N'C024970698', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (267, 2, 171, N'Điện Máy Xanh Mini (TGDĐ) TH Thôn Bắc Hải đường 513', N'Thôn Bắc Hải Đường 513 X. Hải Thượng H. Tĩnh Gia T. Thanh Hóa', N'C024970699', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (268, 2, 172, N'Điện Máy Xanh Mini (TGDĐ) PY 171 Phạm Văn Đồng', N'Số 171 Phạm Văn Đồng P. Xuân Phú TX.Sông Cầu Tỉnh Phú Yên', N'C025180824', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (269, 2, 173, N'Điện Máy Xanh Mini (TGDĐ) VL Nam Kỳ Khởi Nghĩa Tổ 3 Khóm 2', N'Nam Kỳ Khởi Nghĩa Tổ 3 Khóm 2 TT. Vũng Liêm H. Vũng Liêm T. Vĩnh Long', N'C025310728', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (270, 2, 174, N'Điện Máy Xanh Mini (TGDĐ) KG 72 đường 3/2 KP Phước Trung', N'Số 72 đường 3/2 KP Phước Trung 2 TT. Gò Quao H. Gò Quao T. Kiên Giang', N'C025340692', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (271, 2, 175, N'Điện Máy Xanh (TGDĐ) TG Tổ 2 Khu 1 TT. Mỹ Phước', N'Tổ 2 Khu 1 TT. Mỹ Phước H. Tân Phước T. Tiền Giang', N'C025340694', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (272, 2, 176, N'Điện Máy Xanh Mini (TGDĐ) YB Tổ 13 TT. Yên Bình', N'Tổ 13 Thị Trấn Yên Bình Huyện Yên Bình Tỉnh Yên Bái', N'C025440727', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (273, 2, 177, N'Điện Máy Xanh Mini (TGDĐ) DN 1/4 QL20 Ấp Gia Yên', N'Số 1/4 Quốc lộ 20 Ấp Gia Yên X. Gia Tân 3 H. Thống Nhất T. Đồng Nai', N'C025440733', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (274, 2, 178, N'Điện Máy Xanh (TGDĐ) HCM C4/21 KP3 TT. Tân Túc', N'C4/21 Khu Phố 3 TT.Tân Túc Huyện Bình Chánh TP.Hố Chí Minh', N'C021380712', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (275, 2, 155, N'Điện Máy Xanh Mini (TGDĐ) NB Thửa đất 175 tờ bản đồ 13', N'Phố Bái- TT. Nho Quan- H. Nho Quan- T. Ninh Bình', N'C025550694', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (276, 2, 131, N'Điện Máy Xanh (TGDĐ) AG 33 Lô số L03 Thửa số 440', N'Số 33 Lô Số L03 Thửa Số 440 Xã Hội An Huyện Chợ Mới Tỉnh An Giang', N'C025750693', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (277, 2, 179, N'Điện Máy Xanh (TGDĐ)  VL 12 tổ 16 Phan Văn Đáng', N'Số 12 Tổ 16 Đường Phan Văn Đáng Khóm 1 TT .Tam Bình H. Tam Bình Tỉnh Vĩnh Long', N'C025750694', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (278, 2, 180, N'Điện Máy Xanh (TGDĐ) TN 54 Hùng Vương', N'Số 54 Hùng Vương KP4 TT.Hòa Thành H.Hòa Thành T.Tây Ninh', N'C022070697', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (279, 2, 94, N'Điện Máy Xanh (TGDĐ) HN 194 Phạm Văn Đồng', N'Số 194 Phạm Văn Đồng Tổ 1 P. Mai Dịch Q. Cầu Giấy  Tp. Hà Nội', N'C025860710', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (280, 2, 181, N'Điện Máy Xanh (TGDĐ) HN Tổ 4 Khối 1 TT. Đông Anh', N'Tổ 4 Khối 1 TT. Đông Anh H. Đông Anh TP. Hà Nội', N'C025860711', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (281, 3, 64, N'CTy TNHH Cao Phong ( STĐM Chợ Lớn) - Đà Nẵng 2', N'116-118 Nguyễn Tri Phương- Phường Chính Gián- Quận Thanh Khê-Tp.Đà Nẵng-', N'C022670694', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (282, 3, 109, N'CTy TNHH Cao Phong ( STĐM Chợ Lớn) - Trảng Bom', N'Số 433-Quốc Lộ 1A-ấp Thái Hòa-xã Hố Nai 3-H. Trảng Bom- Tỉnh Đồng Nai', N'C025940728', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (283, 2, 182, N'Điện Máy Xanh Mini (TGDĐ) BD 216 đường DT 747 ấp Lồ Ồ An Tây Bến Cát', N'216 đường DT 747 ấp Lồ Ồ An Tây Bến Cát Bình Dương', N'C026020751', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (284, 2, 29, N'Điện Máy Xanh (TGDĐ) NA Khối Tân Phòng Phường Huỳnh Thiện TX Hoàng Mai', N'Số tờ bản đồ 74 -75- P. Quỳnh Thiện- TX. Hoàng Mai- T. Nghệ An', N'C026020753', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (285, 2, 183, N'Điện Máy Xanh Mini (TGDĐ) NB Thửa đất 185 thị trấn Yên Thịnh Yên Mô', N'Thửa đất 185- tờ bản đồ số 10- thị trấn Yên Thịnh- huyện Yên Mô- tỉnh Ninh Bình', N'C026150692', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (286, 3, 58, N'CTy TNHH Cao Phong ( STĐM Chợ Lớn) - Đà Nẵng 3', N'403 Tôn Đức Thắng- Phường Hòa Minh-Quận Liên Chiểu-Tp. Đà Nẵng- Việt Nam', N'C022670695', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (287, 2, 184, N'Điện Máy Xanh Mini (TGDĐ) TH 453-447 Thôn Minh Thịnh Hậu Lộc', N'Số 453 - 447- thôn Minh Thịnh- xã Minh Lộc- H. Hậu Lộc- T. Thanh Hóa', N'C026360930', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (288, 2, 185, N'Điện Máy Xanh Mini (TGDĐ) BĐ 275 Quang Trung TT Phú Phong Tây Sơn', N'Số 275- đường Quang Trung- TT. Phú Phong- H. Tây Sơn- T. Bình Định', N'C026360932', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (289, 2, 186, N'Điện Máy Xanh (TGDĐ)  QN Khối Viêm Trung TX Điện Bàn', N'Khối Viêm Trung- P. Điện Ngọc- TX. Điện Bàn- T. Quảng Nam', N'C026360935', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (290, 2, 187, N'Điện Máy Xanh Mini (TGDĐ) HP 17 Nguyễn Văn Trỗi TT An Lão', N'Số 17 đường Nguyễn Văn Trỗi- TT. An Lão- H. An Lão- TP. Hải Phòng', N'C026400696', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (291, 2, 165, N'Điện Máy Xanh Mini (TGDĐ) KH 294-296 ĐL Hùng Vương P Cam Nghĩa Tp Cam Ranh', N'Số 294 -296 Đại Lộ Hùng Vương- Tổ Dân Phố Hòa Thuận- Phường Cam Nghĩa- Thành Phố Cam Ranh- tỉnh Khánh Hòa', N'C026400700', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (292, 2, 188, N'Điện Máy Xanh Mini (TGDĐ) TN 312 ấp Phước Đức A Xã Phước Đông Gò Dầu', N'Số 312- tổ 3- ấp Phước Đức A- xã Phước Đông- H. Gò Dầu- T. Tây Ninh', N'C026400702', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (293, 2, 189, N'Điện Máy Xanh Mini (TGDĐ) TH Thửa đất số 4-6 khu phố 3 TT Cành Nàng Bá Thước', N'Thửa đất số 04 - 06- khu phố 3- TT. Cành Nàng- H. Bá Thước- T. Thanh Hóa', N'C026400703', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (294, 2, 190, N'Điện Máy Xanh Mini (TGDĐ) GL 245 Trần Hưng Đạo', N'Số 245 đường Trần Hưng Đạo- P. Đoàn Kết- TX. Ayunpa- T. Gia Lai', N'C026490884', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (295, 2, 191, N'Điện Máy Xanh Mini (TGDĐ) KG thửa đất 27 KP 1 Dương Đông', N'Thửa đất số 27- tờ bản đồ số 87- khu phố 1- TT. Dương Đông- H. Phú Quốc- T. Kiên Giang', N'C026990843', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (296, 2, 192, N'Điện Máy Xanh Mini (TGDĐ) HN Xóm 6 Xã Phúc Lâm Mỹ Đức', N'Xóm 6- xã Phúc Lâm- huyện Mỹ Đức- Tp. Hà Nội', N'C026620771', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (297, 2, 193, N'Điện Máy Xanh Mini (TGDĐ) DT Thửa đất 96-97 Bản đồ 32 QL30 TT Thanh Bình', N'Thửa số 96-97- tờ bản đồ số 32- Quốc lộ 30- Khóm Tân Đông B- TT. Thanh Bình- H. Thanh Bình- T. Đồng Tháp', N'C026620774', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (298, 2, 112, N'Điện Máy Xanh (TGDĐ)  QT 11 Trần Hưng Đạo', N'Số 11 Trần Hưng Đạo- P. 01- Tp. Đông Hà- T. Quảng Trị', N'C027210725', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (299, 2, 194, N'Điện Máy Xanh Mini (TGDĐ) 390 Hợp Thành TT Chợ', N'Số 390 Hợp Thành- TT. Chợ Chu- H. Định Hóa- T. Thái Nguyên', N'C026710695', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (300, 2, 195, N'Điện Máy Xanh Mini (TGDĐ) TH Thửa đất số 108- khu phố 5- TT. Kim Tân - H. Thạch Thành - T. Thanh Hóa', N'Thửa đất số 108- khu phố 5- TT. Kim Tân - H. Thạch Thành - T. Thanh Hóa', N'C026710696', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (301, 2, 186, N'Điện Máy Xanh Mini (TGDĐ) QNM ngã 3 Trần Nhân Tông và Tuệ Tĩnh', N'Ngã ba Trần Nhân Tông và Tuệ Tĩnh- P. Vĩnh Điện- TX. Điện Bàn- T. Quảng Nam', N'C026710702', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (302, 2, 196, N'Điện Máy Xanh Mini (TGDĐ) BT 314 Huỳnh Thúc Kháng KP4 Mũi Né Phan Thiết', N'Số 314 đường Huỳnh Thúc Kháng- khu phố 4- P. Mũi Né- TP. Phan Thiết- T. Bình Thuận', N'C026750735', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (303, 2, 197, N'Điện Máy Xanh (TGDĐ) HTH Thửa đất 2 Tờ bản đồ 6 TT Đức Thọ', N'Thửa đất số 2- tờ bản đồ số 6- TT. Đức Thọ- H. Đức Thọ- T. Hà Tĩnh', N'C026750739', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (304, 2, 198, N'Điện Máy Xanh (TGDĐ) DNG 242 Nguyễn Hữu Thọ', N'242 Nguyễn Hữu Thọ- P. Hòa Cường Bắc- Q. Hải Châu- Tp. Đà Nẵng', N'C029470821', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (305, 2, 199, N'Điện máy xanh (TGDĐ) HN Số 406 đường Quảng Oai', N'Số 406 đường Quảng Oai- TT. Tây Đằng- H. Ba Vì- Tp. Hà Nội', N'C026780752', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (306, 2, 200, N'Điện Máy Xanh (TGDĐ) HG Số 160 Nguyễn Trãi', N'Số 176- đường Nguyễn Trãi- tổ 15- P. Nguyễn Trãi- TP. Hà Giang- T. Hà Giang', N'C026780758', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (307, 2, 201, N'Điện Máy Xanh (TGDĐ) BG Quốc lộ 1A TT Vôi', N'Quốc lộ 1A- TT. Vôi- H. Lạng Giang- T. Bắc Giang', N'C026780760', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (308, 2, 155, N'Điện Máy Xanh Mini (TGDĐ) NB Thửa đất số 16 - 16a TT  Yên Ninh', N'Thửa đất số 16 - 16a- TT.  Yên Ninh- H. Yên Khánh- T. Ninh Bình', N'C026780768', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (309, 5, 202, N'Mediamart TB Lý Bôn', N'Số 368 Lý Bôn- Phường Tiền Phong- Thành phố Thái Bình - Tỉnh Thái Bình- Việt Nam', N'C038041545', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (310, 2, 203, N'Điện Máy Xanh Mini (TGDĐ) KG 175 quốc lộ 63', N'Số 175 quốc lộ 63- khu phố 3- TT. Thứ Ba- H. An Biên- T. Kiên Giang', N'C026780776', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (311, 7, 162, N'Pico BN 578 Trần Phú Từ Sơn', N'578 Trần Phú- Phường Đình Bảng- Tp Bắc Ninh', N'C026780931', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (312, 2, 204, N'Điện Máy Xanh (TGDĐ) HTH Số 87-89 Thửa đất 47-49-50 Tổ 3 P Trần Phú', N'Số 87-89- thửa đất số 47-49-50- tổ 3- P. Trần Phú- Tp. Hà Tĩnh- T. Hà Tĩnh', N'C026860744', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (313, 2, 113, N'Điện Máy Xanh Mini (TGDĐ) HN thôn Nam Sơn', N'Thôn Nam Sơn- xã Nam Phương Tiến- H. Chương Mỹ- Tp. Hà Nội', N'C026910722', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (314, 2, 205, N'Điện Máy Xanh Mini (TGDĐ) TN tổ 4 TT. Hương Sơn', N'Tổ 4- TT. Hương Sơn- H. Phú Bình- T. Thái Nguyên', N'C026930703', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (315, 2, 206, N'Điện Máy Xanh (TGDĐ) DNO Tổ 4 Tôn Đức Thắng', N'Tổ dân phố 4- đường Tôn Đức Thắng- P. Nghĩa Thành- TX. Gia Nghĩa- T. Đắk Nông', N'C026930706', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (316, 2, 192, N'Điện Máy Xanh Tế Tiêu (TGDĐ) HN 115-117 Đại Nghĩa TT Đại Nghĩa Thôn Tế Tiêu', N'Số 115 - 117 Đường Đại Nghĩa- Thị trần Đại Nghĩa- Thôn Tế Tiêu- Huyện Mỹ Đức- Tp. Hà Nội', N'C026930711', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (317, 2, 207, N'Điện Máy Xanh Mini (TGDĐ) AG Số 77/4 Trần Phú', N'Số 77/4 Trần Phú- TT. Phú Hòa- H. Thoại Sơn- T. An Giang', N'C026990833', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (318, 2, 208, N'Điện Máy Xanh Mini (TGDĐ) BT 406-410 Tổ 10 KP 1', N'Số 406 - 408 - 410 Tổ 10- Khu Phố 1- Thị Trấn Ma Lâm- Huyện Hàm Thuận Bắc- tỉnh Bình Thuận', N'C026990834', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (319, 5, 94, N'Mediamart HN Cầu Giấy - 335 Cầu Giấy', N'335 Cầu Giấy- Phường Dịch Vọng- Quận Cầu Giấy- Tp Hà Nội- Việt Nam', N'C038991542', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (320, 5, 155, N'Mediamart NB Ninh Bình', N'Số 114- phố Phúc Chỉnh 2- đường 1B- phuờng Nam Thành- Thành phố Ninh Binh- tỉnh Ninh Binh', N'C051341566', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (321, 2, 209, N'Điện Máy Xanh Mini (TGDĐ) HP 40 Minh Đức', N'Số 40- đường Minh Đức- Khu 2- TT. Tiên Lãng- H. Tiên Lãng- Tp. Hải Phòng', N'C027080734', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (322, 2, 23, N'Điện Máy Xanh (TGDĐ) DNG 727 Nguyễn Hữu Thọ- Phường Khuê Trung', N'727 Nguyễn Hữu Thọ- Phường Khuê Trung- Quận Cẩm Lệ- Thành phố Đà Nẵng- Việt Nam', N'C051791534', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (323, 2, 43, N'Điện Máy Xanh (TGDĐ) LC Trần Hưng Đạo tổ 14', N'Đường Trần Hưng Đạo- Ngã 6- tổ 14- P. Kim Tân- Tp. Lào Cai- T. Lào Cai', N'C027080740', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (324, 2, 210, N'Điện Máy Xanh Mini (TGDĐ) 288 Quốc lộ 1A TT Cái Nước', N'288- đường Quốc lộ 1A- khóm 2- TT. Cái Nước- H. Cái Nước- T. Cà Mau', N'C027120715', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (325, 2, 211, N'Điện Máy Xanh (TGDĐ) HN 186 Tây Sơn', N'Số 186 phố Tây Sơn- TT. Phùng- H. Đan Phượng- Tp. Hà Nội', N'C027120720', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (326, 2, 204, N'Điện Máy Xanh (TGDĐ) HTH Số 173 Hà Huy Tập- Phường Nam Hà', N'Số 173 Hà Huy Tập- Phường Nam Hà- Thành phố Hà Tĩnh- Tỉnh Hà Tĩnh- Việt Nam', N'C051791537', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (327, 2, 181, N'Điện Máy Xanh (TGDĐ) HN Thôn Đản Mỗ- xã Uy Nỗ', N'Thôn Đản Mỗ- xã Uy Nỗ- H. Đông Anh- Tp. Hà Nội', N'C051791550', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (328, 2, 3, N'Điện Máy Xanh (TGDĐ) HN Lô đất TM - 04- Khu đô thị Mỗ Lao', N'Lô đất TM - 04- Khu đô thị Mỗ Lao- P. Mộ Lao- Q. Hà Đông- Tp. Hà Nội', N'C051791556', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (329, 2, 111, N'Điện Máy Xanh (TGDĐ) BG Số 01 Hùng Vương- P. Hoàng Văn Thụ', N'Số 01 Hùng Vương- P. Hoàng Văn Thụ- Tp. Bắc Giang- T. Bắc Giang', N'C051791563', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (330, 2, 162, N'Điện Máy Xanh (TGDĐ) BN Số 25 Đường Lý Thái Tổ', N'Số 25 Đường Lý Thái Tổ- Phường Đình Bảng- TX. Từ Sơn- Tỉnh Bắc Ninh', N'C051791565', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (331, 2, 55, N'Điện Máy Xanh (TGDĐ) HB thửa đất 161 Hàng Trạm', N'Thửa đất số 161- khu 11- TT. Hàng Trạm- H. Yên Thủy- T. Hòa Bình', N'C027210724', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (332, 5, 100, N'Mediamart HN 100 Vĩnh Tuy - Long Biên', N'Số 100 đường gom chân cầu Vĩnh Tuy- Long Biên- Hà Nội', N'C052771584', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (333, 4, 134, N'Nguyễn Kim HN 10B Tràng Thi', N'10B Tràng Thi', N'C530_14823', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (334, 6, 33, N'Siêu Thị VHC HN 36 Phạm Văn Đồng (HC cũ)HNCL HN 36 Phạm Văn Đồng', N'36 Phạm Văn Đồng', N'C530_16014', NULL, 0, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (335, 3, 26, N'CTy TNHH Cao Phong (STĐM Chợ Lớn) - Long Xuyên', N'151/1 Trần Hưng Đạo- Phường Mỹ Phước', N'C000022712', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (336, 2, 202, N'Điện Máy Xanh (TGDĐ) TB thửa đất 37- tổ 6- Đông Hưng', N'Thửa đất số 37- tờ bản đồ số 13- tổ 6- TT. Đông Hưng- H. Đông Hưng- T. Thái Bình', N'C027390728', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (337, 2, 212, N'Điện Máy Xanh (TGDĐ)  HNM thửa đất 77 phố Nguyễn Hữu Tiến', N'Thửa đất số 77- phố Nguyễn Hữu Tiến - TT. Đồng Văn- H. Duy Tiên- T. Hà Nam', N'C027390730', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (338, 2, 213, N'Điện Máy Xanh (TGDĐ) AG 474-476 Hữu Nghị', N'Số 474-476 Hữu Nghị- khóm Xuân Hoà- TT. Tịnh Biên- H. Tịnh Biên- T. An Giang', N'C027390732', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (339, 3, 151, N'CTy TNHH Cao Phong ( STĐM Chợ Lớn) - Chi nhánh Hương Lộ 2', N'Số 639 Hương Lộ 2- Phường Bình Trị Đông- Quận Bình Tân-Tp.HCM- Việt Nam', N'C027510713', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (340, 2, 214, N'Điện máy xanh (TGDD) LC tổ 15 TT Tân Uyên', N'Tổ 15- TT. Tân Uyên - H. Tân Uyên - T. Lai Châu', N'C027580790', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (341, 2, 178, N'Điện Máy Xanh Mini (TGDĐ) HCM  1A93/2 Ấp 1 xã Phạm Văn Hai', N'1A93/2 Ấp 1- xã Phạm Văn Hai- huyện Bình Chánh- TP. Hồ Chí Minh', N'C027580794', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (342, 5, 91, N'Mediamart HN Km 10 Trần Phú', N'Km 10 Trần Phú- Văn Quán- Hà Đông- HN', N'C000037187', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (343, 2, 113, N'Điện Máy Xanh (TGDĐ) HN Số 34 Tổ 2 Xuân Hà Xuân Mai', N'Số 34- Tổ 2- Khu Xuân Hà- Thị Trấn Xuân Mai', N'C000158699', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (344, 2, 215, N'Điện Máy Xanh Mini (TGDĐ) TV 96-98 đường 2/9', N'Số 96-98- đường 2/9- khóm 1- P. 01- thị xã Duyên Hải- T. Trà Vinh', N'C027620725', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (345, 2, 131, N'Điện Máy Xanh Mini (TGDĐ) BK tồ 1  Chợ Mới', N'Tổ 1- TT. Chợ Mới- H. Chợ Mới- T. Bắc Kạn', N'C027620727', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (346, 2, 216, N'Điện Máy Xanh (TGDĐ) HN thôn Thường Lệ xã Đại Thịnh', N'Thôn Thường Lệ- xã Đại Thịnh- H. Mê Linh- Tp. Hà Nội', N'C027620728', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (347, 2, 217, N'Điện Máy Xanh Mini (TGDĐ) HP 19 Cẩm Xuân TT Núi Đối', N'Số 19 Cẩm Xuân- TT. Núi Đối- H. Kiến Thuỵ- TP. Hải Phòng', N'C027620732', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (348, 3, 27, N'CTy TNHH Cao Phong (STĐM Chợ Lớn) - Kiên Giang', N'887 Nguyễn Trung Trực- phường An Bình', N'C003631361', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (349, 2, 218, N'Điện Máy Xanh (TGDĐ) HY thôn Trại xã Dị Sử', N'Thôn Trại- xã Dị Sử- H. Mỹ Hào- T. Hưng Yên', N'C027770700', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (350, 2, 31, N'Điện Máy xanh Mini (TGDĐ) QNI quốc lộ 24B Khê Ba xã Tịnh Khê', N'Quốc lộ 24B-Khê Ba- xã Tịnh Khê- TP. Quảng Ngãi- T. Quảng Ngãi', N'C027770705', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (351, 2, 219, N'Điện Máy Xanh Mini (TGDĐ) TV 03 quốc lộ 60', N'Số 03- quốc lộ 60- khóm 4- TT. Tiểu Cần- H. Tiểu Cần- T. Trà Vinh', N'C027870800', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (352, 2, 216, N'Điện Máy Xanh Mini (TGDĐ) HN khu 15 thôn Yên Nhân', N'Khu 15- thôn Yên Nhân- xã Tiền Phong- H. Mê Linh- TP. Hà Nội', N'C027870802', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (353, 2, 220, N'Điện Máy Xanh Mini (TGDĐ) QNI khu dân cư 15 thôn Thạch Trụ Tây', N'Khu dân cư 15- thôn Thạch Trụ Tây- xã Đức Lân- H. Mộ Đức- T. Quảng Ngãi', N'C027870804', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (354, 2, 221, N'Điện Máy Xanh Mini (TGDĐ) BRVT 48 Huỳnh Minh Thạch', N'48 Huỳnh Minh Thạnh- TT. Phước Bửu- H. Xuyên Mộc- T. Bà Rịa - Vũng Tàu', N'C027870808', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (355, 2, 222, N'Điện Máy Xanh (TGDĐ) HCM 500-502 Dương Bá Trạc', N'500-502 Dương Bá Trạc- phường 01- quận 8- TP.HCM', N'C027870811', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (356, 5, 128, N'Mediamart HP Lê Hồng Phong', N'Lê Hồng Phong- Ngô Quyền', N'C004500802', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (357, 2, 223, N'Điện Máy Xanh Mini (TGDĐ) QNM thôn 8 quốc lộ 1A', N'Thôn 8- Quốc lộ 1A- xã Hương An- H. Quế Sơn- T. Quảng Nam', N'C028030711', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (358, 2, 224, N'Điện Máy Xanh Mini (TGDĐ) QNM khối phố Tiên Bình', N'Khối phố Tiên Bình- TT. Tiên Kỳ- H. Tiên Phước- T. Quảng Nam', N'C028030712', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (359, 2, 225, N'Điện Máy Xanh Mini (TGDĐ) NA thửa đất 669/1060 thôn Cầu Bùng', N'Thửa đất số 669/1060- thôn Cầu Bùng- xã Diễn Kỷ- H. Diễn Châu- T. Nghệ An', N'C028030713', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (360, 2, 78, N'Điện Máy Xanh - Vinh 2 (TGDĐ) NA 7C Nguyễn Trãi', N'Số 7C- đường Nguyễn Trãi- P. Quán Bàu- Tp. Vinh- T. Nghệ An', N'C028030717', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (361, 2, 226, N'Điện Máy Xanh Mini (TGDĐ) HN Ngã tư Sơn Đồng', N'Ngã tư Sơn Đồng- xã Sơn Đồng- H. Hoài Đức- Tp. Hà Nội', N'C028130712', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (362, 3, 196, N'CTy TNHH Cao Phong (STĐM Chợ Lớn) - Khu DC Hùng Vương- Phan Thiết', N'B2 Khu DC Hùng Vương 2- Phường Phú Thủy- Phan Thiết', N'C004660693', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (363, 3, 178, N'CTy TNHH Cao Phong ( STĐM Chợ Lớn) – Bình Chánh', N'A8/2A-A8/3 Quốc lộ 50- Ấp 2- Xã Bình Hưng- Huyện Bình Chánh- Tp.HCM-', N'C028260694', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (364, 2, 39, N'Điện Máy Xanh Mini (TGDĐ) LA thửa đất 71 xã Mỹ Hạnh Nam', N'Thửa đất số 71- tờ bản đồ 06- xã Mỹ Hạnh Nam- H. Đức Hòa- T. Long An', N'C028260781', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (365, 2, 181, N'Điện Máy Xanh Mini (TGDĐ) HN Khu dân cư Bắc Thăng Long', N'Khu dân cư Bắc Thăng Long- xã Hải Bối- H. Đông Anh- TP. Hà Nội', N'C028260784', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (366, 2, 227, N'Điện Máy Xanh Mini (TGDĐ) BTR thửa số 232 TT Giồng Trôm', N'Thửa số 232- tờ bản đồ số 72- KP 2- TT. Giồng Trôm- H. Giồng Trôm- T. Bến Tre', N'C028260788', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (367, 2, 92, N'Điện Máy Xanh Mini (TGDĐ) ND Thửa đất số 159 TT Cồn', N'Thửa đất số 159- tờ bản đồ số 09- TT. Cồn- H. Hải Hậu- T. Nam Định', N'C028260790', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (368, 2, 20, N'Điện Máy Xanh (TGDD) DN Số 1381- KP 2- đường Phạm Văn Thuận', N'Số 205C- Khu phố 1- đường Phạm Văn Thuận- Phường Tân Tiến- Thành Phố Biên Hòa- Tỉnh Đồng Nai', N'C005110770', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (369, 2, 19, N'Điện Máy Xanh (TGDD) BRVT 25 Nguyễn Hữu Thọ', N'25 Nguyễn Hữu Thọ- KP 2 - P.Phước Trung- TP.Bà Rịa- Tỉnh Bà Rịa - Vũng Tàu', N'C008880693', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (370, 2, 198, N'Điện Máy Xanh (TGDĐ) DNG 07 Lê Duẩn', N'Số 07 Lê Duẩn- P. Hải Châu 1- Q. Hải Châu- Tp. Đà Nẵng', N'C028470691', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (371, 6, 78, N'Siêu Thị VHC NA 37 Lê Hồng Phong', N'Số 37 Lê Hồng Phong- Vinh', N'C012730716', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (372, 2, 117, N'Điện Máy Xanh (TGDD) CT 172B đường 3/2', N'172B Đường 3/2 P.Hưng Lợi Q.Ninh Kiều TP.Cần Thơ', N'C017950717', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (373, 2, 227, N'Điện Máy Xanh (TGDD) BTR 549B Ấp 2 P. Phú Khương', N'549B Ấp 2 Phường Phú Khương Thành Phố Bến Tre Tỉnh Bến Tre', N'C019140880', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (374, 2, 228, N'Điện Máy Xanh Mini (TGDĐ) DLK 138 Hùng Vương', N'Số 138 đường Hùng Vương- TT. Buôn Trấp- H. Krông A Na- T. Đắk Lắk', N'C028660695', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (375, 2, 229, N'Điện Máy Xanh (TGDĐ) HCM số 3 đường 3/2', N'Số 03 đường 3/2- P. 11- Q. 10- TP.HCM', N'C028660696', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (376, 2, 164, N'Điện Máy Xanh (TGDD) TG 2/9 QL 1A P.4', N'Số 2/9 Quốc Lộ 1A Phường 4 Thị Xã Cai Lậy Tỉnh Tiền Giang', N'C019140882', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (377, 2, 558, N'Điện Máy Xanh Mini (TGDĐ) BTR Ấp 4 thửa đất số 188', N'Ấp 4 (thửa đất số 188- tờ bản đồ 23)- xã Quới Sơn- H. Châu Thành- T. Bến Tre', N'C028750701', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (378, 2, 64, N'Điện Máy Xanh (TGDĐ) DNG 279A Trường Chinh', N'279A Trường Chinh- P. An Khê- Q. Thanh Khê- Tp. Đà Nẵng', N'C028750702', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (379, 2, 128, N'Điện Máy Xanh (TGDD) HP 282 Đà Nẵng', N'282 Đà Nẵng P.Vạn Mỹ Q.Ngô Quyền TP.Hải Phòng', N'C019560719', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (380, 2, 230, N'Điện Máy Xanh Mini (TGDĐ) PT 22 phố Tân An', N'Số 22- phố Tân An- P. Hùng Vương- TX. Phú Thọ- T. Phú Thọ', N'C028750705', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (381, 2, 231, N'Điện Máy Xanh (TGDĐ) AG Số 249 tổ 11 Ngô Gia Tự An Hòa A', N'Số 249- tổ 11- đường Ngô Gia Tự- khóm An Hòa A- TT. Ba Chúc- H. Tri Tôn- T. An Giang', N'C028960743', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (382, 2, 232, N'Điện Máy Xanh Mini (TGDĐ) BP Số 132 QL 13 KP Ninh Thịnh', N'Số 132- Quốc lộ 13- KP. Ninh Thịnh- TT. Lộc Ninh- H. Lộc Ninh- T. Bình Phước', N'C028960747', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (383, 2, 233, N'Điện Máy Xanh Mini (TGDĐ) CM Khu vực 1 khóm 2 Năm Căn', N'Khu vực 1- khóm 2- TT. Năm Căn- H. Năm Căn- T. Cà Mau', N'C028960748', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (384, 2, 234, N'Điện Máy Xanh Mini (TGDĐ) ST Thửa số 61 ấp Khu 1 Thạnh Phú', N'Thửa số 61- tờ bản đồ 7- ấp Khu 1- xã Thạnh Phú- H. Mỹ Xuyên- T. Sóc Trăng', N'C028960749', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (385, 7, 5, N'Pico HN 240 Tôn Đức Thắng', N'240 Tôn Đức Thắng- Đống Đa-Hà Nội', N'C022500713', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (386, 5, 56, N'Mediamart TH (Phú Sơn) 01 Đại lộ Lê Lợi', N'01 Đại lộ Lê Lợi- TP. Thanh Hóa', N'C029060886', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (387, 5, 47, N'Mediamart NĐ (Đò Quan) 143 Đặng Xuân Bảng', N'143 Đặng Xuân Bảng- TP. Nam Định', N'C029060887', NULL, 0, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (388, 5, 5, N'Mediamart HN (Khâm Thiên) 211 Khâm Thiên', N'211 Khâm Thiên- Đống Đa- HN', N'C029060888', NULL, 0, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (389, 2, 235, N'Điện Máy Xanh Mini (TGDĐ) TN So 1F KP2 Bến Cầu', N'Số 1F- khu phố 2- TT. Bến Cầu- H. Bến Cầu- T. Tây Ninh', N'C029180703', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (390, 2, 236, N'Điện Máy Xanh (TGDĐ) TG 22 QL1A Hòa Khánh', N'Số 22 QL1A- xã Hòa Khánh- H. Cái Bè- T. Tiền Giang', N'C029180705', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (391, 2, 42, N'Điện Máy Xanh Mini (TGDĐ) QNM 371 Cửa Đại Cẩm Châu', N'371 Cửa Đại- P. Cẩm Châu- Tp. Hội An- T. Quảng Nam', N'C029180709', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (392, 2, 55, N'Điện Máy Xanh Mini (TGDĐ) BL Thị Trấn B TT Hòa Bình', N'Ấp Thị Trấn B- TT. Hòa Bình- H. Hòa Bình- T. Bạc Liêu', N'C029300700', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (393, 2, 237, N'Điện Máy Xanh Mini (TGDĐ) LD Số 624 đường Hùng Vương', N'Số 624- đường Hùng Vương- TT. Đinh Văn- H. Lâm Hà- T. Lâm Đồng', N'C029300703', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (394, 2, 238, N'Điện Máy Xanh (TGDD) HP 68 Bạch Đằng TT Núi Đèo Thủy Nguyên', N'Số 68 Bạch Đằng- TT. Núi Đèo- H. Thủy Nguyên- Tp. Hải Phòng', N'C026360928', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (395, 3, 62, N'CTy TNHH Cao Phong (STĐM Chợ Lớn) BD Nguyễn Văn Cừ', N'Tổ 17- KV4- đường Nguyễn Thái Học (khu C bộ CHQS tỉnh)- Phường Nguyễn Văn Cừ- TP. Quy Nhơn- Tỉnh Bình Định- Việt Nam', N'C029470806', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (396, 3, 24, N'CTy TNHH Cao Phong (STĐM Chợ Lớn) BP 658 Phú Riềng Đỏ', N'658 Phú Riềng Đỏ- Khu phố Tân Trà- Phường Tân Xuân- thị xã Đồng Xoài- tỉnh Bình Phước- Việt Nam', N'C029470807', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (397, 3, 239, N'CTy TNHH Cao Phong (STĐM Chợ Lớn) VT 504 Nguyễn An Ninh', N'Số 504 Nguyễn An Ninh- Phường Nguyễn An Ninh- Thành phố Vũng Tàu- Tỉnh Bà Rịa - Vũng Tàu- Việt Nam', N'C029470808', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (398, 3, 240, N'CTy TNHH Cao Phong (STĐM Chợ Lớn) DL 17 - 17Bis đường 3/4', N'Số 17 - 17Bis đường 3/4- Phường 3- Thành Phố Đà Lạt- tỉnh Lâm Đồng- Việt Nam', N'C029470809', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (399, 2, 241, N'Điện Máy Xanh Mini (TGDĐ) QNM 260 Phạm Văn Đồng TT Núi Thành', N'260 Phạm Văn Đồng- TT. Núi Thành- H. Núi Thành- T. Quảng Nam', N'C029470812', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (400, 2, 242, N'Điện Máy Xanh (TGDĐ) DLK Số 41 đường Hùng Vương', N'Số 41 đường Hùng Vương- TT. Quảng Phú- H. Cư M’gar- T. Đắk Lắk', N'C029470813', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (401, 2, 243, N'Điện Máy Xanh Mini (TGDĐ) BT Đường Lê Duẩn TT Liên Hương', N'Đường Lê Duẩn- TT. Liên Hương- H. Tuy Phong- T. Bình Thuận', N'C029470815', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (402, 2, 244, N'Điện Máy Xanh Mini (TGDĐ) BD Số 564 đường ĐT 741', N'Số 564 đường ĐT 741- TT. Phước Vĩnh- H. Phú Giáo- T. Bình Dương', N'C029470816', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (403, 2, 245, N'Điện Máy Xanh Mini (TGDĐ) DNO 79 Nguyễn Tất Thành TT Kiến Đức', N'79 Nguyễn Tất Thành- TT. Kiến Đức- H. Đăk RLấp- T. Đắk Nông', N'C029470818', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (404, 2, 246, N'Điện Máy Xanh Mini (TGDĐ) HB Khu 2 TT Chi Nê', N'Khu 2- TT. Chi Nê- H. Lạc Thủy- T. Hòa Bình', N'C029470819', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (405, 2, 247, N'Điện Máy Xanh (TGDĐ) QN Số 61 khu đô thị Ngọc Hà', N'Lô 60- 61- khu đô thị Tây Ka Long- đường Hùng Vương- P. Ka Long- TP. Móng Cái- T. Quảng Ninh', N'C029470820', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (406, 2, 248, N'Điện Máy Xanh (TGDĐ) HD thửa đất 30 Phạm Ngũ Lão', N'Thửa đất số 30- đường Phạm Ngũ Lão- P. Phạm Ngũ Lão- TP. Hải Dương- T. Hải Dương', N'C026990842', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (407, 2, 249, N'Điện Máy Xanh Mini (TGDĐ) QNI Quốc lộ 1 A TT Đức Phổ', N'Quốc lộ 1 A- TT. Đức Phổ- H. Đức Phổ- T. Quảng Ngãi', N'C029530785', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (408, 2, 176, N'Điện Máy Xanh (TGDĐ) YB Khu 2 TT Thác Bà', N'Khu 2- TT. Thác Bà- H. Yên Bình- T. Yên Bái', N'C029580806', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (409, 2, 87, N'Điện Máy Xanh Mini (TGDĐ) LA Thửa đất số 31 tờ bản đồ 10 xã Phước Lợi', N'Thửa đất số 31- tờ bản đồ 10-  xã Phước Lợi- H. Bến Lức- T. Long An', N'C029580807', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (410, 3, 20, N'CTy TNHH Cao Phong ( STĐM Chợ Lớn) - Chi nhánh Đồng Nai 4', N'Số 753/2-4-6 Xa Lộ Hà Nội- Khu Phố 3- phường Long Bình- TP.Biên Hòa- tình Đồng Nai', N'C027210699', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (411, 2, 250, N'Điện Máy Xanh (TGDĐ) HCM 428 Nguyễn Thị Thập P Tân Quy', N'428 Nguyễn Thị Thập- P. Tân Quy- Q. 7- TP. Hồ Chí Minh', N'C029580813', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (412, 2, 110, N'Điện Máy Xanh Mini (TGDĐ) TN 177A KP1 Tân Châu', N'Số 177A- tổ 7- khu phố 1- TT. Tân Châu- H. Tân Châu- T. Tây Ninh', N'C029580816', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (413, 2, 251, N'Điện Máy Xanh Mini (TGDĐ) HN Phố Huyện TT Quốc Oai', N'Phố Huyện- TT. Quốc Oai- H. Quốc Oai- Tp. Hà Nội', N'C029640717', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (414, 2, 252, N'Điện Máy Xanh Mini (TGDĐ) HN Thôn Lã Côi Xã Yên Viên', N'Thôn Lã Côi- Xã Yên Viên- H. Gia Lâm- Tp. Hà Nội', N'C029640718', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (415, 2, 253, N'Điện Máy Xanh Mini (TGDĐ) HD Số 81 – 83 – 85 đường Quốc lộ 5 KP Ga', N'Số 81 – 83 – 85 đường Quốc lộ 5- KP. Ga- TT. Phú Thái- H. Kim Thành- T. Hải Dương', N'C029640722', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (416, 2, 254, N'Điện Máy Xanh Mini (TGDĐ) LCI Tổ dân phố Phú Thành 3 TT Phố Lu', N'Tổ dân phố Phú Thành 3- TT. Phố Lu- H. Bảo Thắng- T. Lào Cai', N'C029640723', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (417, 2, 20, N'Điện Máy Xanh Mini (TGDĐ) DN Số 12-14-16-18 Quốc Lộ 51', N'Số 12-14-16-18 Quốc Lộ 51- P. Long Bình Tân- TP. Biên Hòa- T. Đồng Nai', N'C029640725', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (418, 2, 255, N'Điện Máy Xanh Mini (TGDĐ) CM Thửa số 19-20 khóm 7 Sông Đốc', N'Thửa số 19-20- tờ bản đồ 41- khóm 7- TT. Sông Đốc- H. Trần Văn Thời- T. Cà Mau', N'C029690733', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (419, 2, 256, N'Điện Máy Xanh Mini (TGDĐ) BP Số 190 Quốc lộ 13 Chơn Thành', N'Số 190- Quốc lộ 13- KP.5- TT. Chơn Thành- H. Chơn Thành- T. Bình Phước', N'C029690734', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (420, 2, 257, N'Điện Máy Xanh Mini (TGDĐ) KH 282 Trường Chinh Cam Đức', N'282 Trường Chinh- TT. Cam Đức- H. Cam Lâm- T. Khánh Hòa', N'C029690735', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (421, 2, 258, N'Điện Máy Xanh Mini (TGDĐ) PT Số 79 Quốc lộ 32 phố Ba Mỏ', N'Số 79- Quốc lộ 32- phố Ba Mỏ- TT. Thanh Sơn- H. Thanh Sơn- T. Phú Thọ', N'C029690736', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (422, 2, 259, N'Điện Máy Xanh Mini (TGDĐ) DN Số 11 Hùng Vương Gia Ray', N'Số 11- đường Hùng Vương- Khu 4- TT. Gia Ray- H. Xuân Lộc- T. Đồng Nai', N'C029690737', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (423, 2, 260, N'Điện Máy Xanh Mini (TGDĐ) PT Số 02 đường Nam TT Phong Châu', N'Số 02- đường Nam- TT. Phong Châu- H. Phù Ninh- T. Phú Thọ', N'C029820696', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (424, 2, 261, N'Điện Máy Xanh Mini (TGDĐ) VL Nguyễn Văn Thảnh', N'Nguyễn Văn Thảnh- tổ 1- khóm 5- P. Thành Phước- TX. Bình Minh- T. Vĩnh Long', N'C029970738', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (425, 2, 262, N'Điện Máy Xanh (TGDĐ) HCM 227 Kinh Dương Vương', N'227 Kinh Dương Vương- Phường 12- Quận 6- TP.HCM', N'C029970739', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (426, 2, 263, N'Điện Máy Xanh Mini (TGDĐ) DN Số A57 Lý Thái Tổ ấp Phước Lý', N'Số A57 Lý Thái Tổ- ấp Phước Lý- xã Đại Phước- H. Nhơn Trạch- T. Đồng Nai', N'C029970740', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (427, 2, 264, N'Điện Máy Xanh Mini (TGDĐ) QNM Đường Nguyễn Tất Thành TT Ái Nghĩa', N'Đường Nguyễn Tất Thành- TT. Ái Nghĩa- H. Đại Lộc- T. Quảng Nam', N'C029970741', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (428, 2, 265, N'Điện Máy Xanh Mini (TGDĐ)  BTR 21A1 Trần Hưng Đạo', N'Số 21A1- Trần Hưng Đạo- khu phố 2- TT. Ba Tri- H. Ba Tri- T. Bến Tre', N'C027210728', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (429, 2, 266, N'Điện Máy Xanh Mini (TGDĐ) BRVT Số 224 Hùng Vương TT Ngãi Giao', N'Số 224 Hùng Vương- TT. Ngãi Giao- H. Châu Đức- T. Bà Rịa -  Vũng Tàu', N'C029970743', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (430, 7, 100, N'Pico HN 2 phố Long Biên 2', N'Số 2 phố Long Biên 2- Phường Ngọc Lâm- Quận Long Biên- Hà Nội', N'C027330720', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (431, 2, 231, N'Điện Máy Xanh Mini (TGDĐ) AG Thửa số 18-19 Tri Tôn', N'Thửa số 18-19- tờ bản đồ số 9- TT. Tri Tôn- H. Tri Tôn- T. An Giang', N'C030180702', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (432, 2, 267, N'Điện Máy Xanh Mini (TGDĐ) Quốc lộ 26 Phước An', N'Quốc lộ 26- TT. Phước An- H. Krông Pắk- T. Đắk Lắk', N'C030180703', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (433, 2, 268, N'Điện Máy Xanh Mini (TGDĐ) NB Phố Thượng Kiệm Phát Diệm', N'Phố Thượng Kiệm- TT. Phát Diệm- H. Kim Sơn- T. Ninh Bình', N'C030180705', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (434, 2, 269, N'Điện Máy Xanh Mini (TGDĐ) HN Thôn Phú Mỹ Phú Xuyên', N'Thôn Phú Mỹ- TT. Phú Xuyên- H. Phú Xuyên- TP. Hà Nội', N'C030180706', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (435, 2, 236, N'Điện Máy Xanh Mini (TGDĐ) TG Số 12 tổ 1 QL 1A xã An Thái Trung', N'Số 12- tổ 1- ấp 2- Quốc lộ 1A- xã An Thái Trung- H. Cái Bè- T. Tiền Giang', N'C029580809', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (436, 2, 270, N'Điện Máy Xanh Mini (TGDĐ) LCI 095 đường Giải Phóng', N'Số nhà 095 đường Giải Phóng- TT. Mường Khương- H. Mường Khương- T. Lào Cai', N'C030390795', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (437, 5, 238, N'Mediamart Thủy Nguyên', N'Số 5+6 lô LK20 khu đô thị Quang Minh- xã Thủy Sơn- huyện Thủy Sơn- TP Hải Phòng', N'C031210761', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (438, 2, 271, N'Điện Máy Xanh Mini (TGDĐ) THN Tổ dân phố Cầu Thành 1', N'Tổ dân phố Cầu Thành 1- TT. Hùng Sơn- H. Đại Từ- T. Thái Nguyên', N'C030390797', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (439, 2, 272, N'Điện Máy Xanh Mini (TGDĐ) CM Thửa số 83-84-85-10-1-2', N'Thửa số 83-84-85-10-1-2- tờ bản đồ 38- khóm 8- TT. Thới Bình- H.Thới Bình- T. Cà Mau', N'C030390798', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (440, 2, 88, N'Điện Máy Xanh Mini (TGDĐ) HCM  502 Đỗ Xuân Hợp', N'502 Đỗ Xuân Hợp- P. Phước Bình- Q. 9- TP.HCM', N'C030390799', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (441, 4, 196, N'Nguyễn Kim BT 68 Tôn Đức Thắng', N'68 Ton Duc Thang- phuong Xuan An- thanh pho Phan Thiet- tinh Binh Thuan', N'C030440786', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (442, 4, 21, N'Nguyễn Kim BD TTTM Green Square Quoc lo 1K', N'TTTM GREEN SQUARE- QUOC LO 1K- PHUONG DONG HOA- THI XA DI AN- TINH BINH DUONG', N'C030440787', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (443, 4, 151, N'Nguyễn Kim HCM 1231 Quoc Lo 1A Binh Tri Dong B', N'1231 QUOC LO 1A- PHUONG BINH TRI DONG B- QUAN BINH TAN- TP HCM- VN', N'C030440788', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (444, 4, 32, N'Nguyễn Kim VL So 15 Duong Tran Dai Nghia', N'SO 15 DUONG TRAN DAI NGHIA- PHUONG 4- TP. VINH LONG- TINH VINH LONG', N'C030440789', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (445, 4, 56, N'Nguyễn Kim TH 27-29 Le Loi Phuong Lam Son', N'27-29 LE LOI- PHUONG LAM SON- TP. THANH HOA- TINH THANH HOA', N'C030440790', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (446, 4, 151, N'Nguyễn Kim HCM 34 Le Van Quoi Binh Hung Hoa', N'34 LE VAN QUOI P. BINH HUNG HOA- Q. BINH TAN- TP. HCM', N'C030440791', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (447, 2, 273, N'Điện Máy Xanh Mini (TGDĐ) DNO 317 Nguyễn Tất Thành', N'317 Nguyễn Tất Thành- TT. Ea T-Ling- H. Cư Jút- T. Đắk Nông', N'C030480700', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (448, 3, 250, N'CTy TNHH Cao Phong (STĐM Chợ Lớn) HCM 520 Huỳnh Tấn Phát', N'520 Huỳnh Tấn Phát- Phường Bình Thuận-Quận 7- TP.HCM-Việt Nam', N'C030520715', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (449, 2, 274, N'Điện Máy Xanh Mini (TGDĐ) GL Số 56 Hùng Vương', N'Số 56 Hùng Vương- TT. Chư Prông- H. Chư Prông- T. Gia Lai', N'C030540703', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (450, 2, 182, N'Điện Máy Xanh Mini (TGDĐ) BD Thừa đất số 208', N'Thừa đất số 208- tờ bản đồ số 26- KP.2- P. Tân Định- TX. Bến Cát- T. Bình Dương', N'C030540705', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (451, 2, 275, N'Điện Máy Xanh Mini (TGDĐ) BD Số 31-32-33 Hùng Vương', N'Số 31-32-33 Hùng Vương- KP.4B- TT. Dầu Tiếng- H. Dầu Tiếng- T. Bình Dương', N'C030540711', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (452, 2, 107, N'Điện Máy Xanh Mini (TGDĐ) HCM 368-368A- 370A Huỳnh Tấn Phát', N'368-368A- 370A Huỳnh Tấn Phát- KP.6- TT. Nhà Bè- H. Nhà Bè- TP. Hồ Chí Minh', N'C030540712', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (453, 2, 276, N'Điện Máy Xanh Mini (TGDĐ) THN Số 192 Cách Mạng Tháng 8', N'Số 192 Cách Mạng Tháng 8- P. Thắng Lợi- TP. Sông Công- T. Thái Nguyên', N'C030540713', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (454, 3, 69, N'CTy TNHH Cao Phong (STĐM Chợ Lớn) - Gia Lai', N'100 Phan Đình Phùng- Phường Tây Sơn- Thành phố Pleiku- Tỉnh Gia Lai', N'C031510726', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (455, 2, 277, N'Điện Máy Xanh Mini (TGDĐ) CT Thửa đất số 95-96-102', N'Thửa đất số 95-96-102- tờ bản đồ số 19- ấp Thới Thuận- TT. Cờ Đỏ- H. Cờ Đỏ- TP. Cần Thơ', N'C030540715', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (456, 2, 278, N'Điện Máy Xanh Mini (TGDĐ) LA Thửa đất số 296 và 398', N'Thửa đất số 296 và 398- tờ bản đồ 02- TT. Cần Đước- H. Cần Đước- T. Long An', N'C030540716', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (457, 2, 279, N'Điện Máy Xanh Mini (TGDĐ) KG Thửa đất số 52', N'Thửa đất số 52- tờ bản đồ 4/1 và thửa đất số 527- tờ bản đồ 4- Hùng Vương- KP.6- TT. Giồng Riềng- H. Giồng Riềng- T. Kiên Giang', N'C030540717', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (458, 2, 20, N'Điện Máy Xanh Mini (TGDĐ) DN Số 43-45-47 Võ Thị Sáu', N'Số 43-45-47 Võ Thị Sáu- P. Quyết Thắng- TP. Biên Hòa- T. Đồng Nai', N'C030540718', NULL, 0, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (459, 2, 130, N'Điện Máy Xanh (TGDĐ) TB Số 456 Lý Bôn- P. Đề Thám', N'Số 456 Lý Bôn- P. Đề Thám- Tp. Thái Bình- T. Thái Bình', N'C051791544', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (460, 2, 38, N'Điện Máy Xanh Mini (TGDĐ) HCM Số 46A- Tỉnh lộ 8', N'Số 46A- Tỉnh lộ 8- tổ 4- ấp 1- xã Tân Thạnh Tây- H. Củ Chi- TP.HCM', N'C030720708', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (461, 2, 126, N'Điện Máy Xanh (TGDĐ) VP Thôn Đôn Hậu- Phường Khai Quang', N'Thôn Đôn Hậu- Phường Khai Quang- Thành phố Vĩnh Yên- Tỉnh Vĩnh Phúc- Việt Nam', N'C051791561', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (462, 5, 100, N'Mediamart HN 3 - 5 Nguyễn Văn Linh', N'3-5 Nguyễn Văn Linh- Gia Thụy- Long Biên- HN', N'C530_16502', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (463, 2, 109, N'Điện Máy Xanh Mini (TGDĐ) DN Số 16-18-20 QL1A', N'Số 16 - 18 - 20 Quốc lộ 1A- xã Trung Hòa- H. Trảng Bom- T. Đồng Nai', N'C030820700', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (464, 2, 280, N'Điện Máy Xanh Mini (TGDĐ) LD Trung tam thuong mai Da The', N'Trung tâm Thương mại Đạ Tẻh- TT. Đạ Tẻh- H. Đạ Tẻh- T. Lâm Đồng', N'C030820701', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (465, 2, 25, N'Điện Máy Xanh (TGDĐ) TG Số 98 khu pho 4', N'Số 98 khu phố 4- P.10- TP. Mỹ Tho- T. Tiền Giang', N'C030820702', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (466, 2, 282, N'Điện Máy Xanh Mini (TGDĐ) BRVT Số 03 Tỉnh lộ 44', N'Số 03- tổ 03- Tỉnh Lộ 44- ấp Phước Hưng- TT. Long Hải- H. Long Điền- T. Bà Rịa - Vũng Tàu', N'C030880730', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (467, 2, 283, N'Điện Máy Xanh Mini (TGDĐ) YB Số 109 Tuệ Tỉnh', N'Số 109 đường Tuệ Tĩnh- thôn Hồng Phong- TT. Mậu A- H. Văn Yên- T. Yên Bái', N'C030880731', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (468, 2, 284, N'Điện Máy Xanh Mini (TGDĐ) DT Số 100-101-102-103-104-105-106 Lai Vung', N'Thửa đất số 100-101-102-103-104-105-106- tờ bản đồ 38- Khóm 01- TT. Lai Vung- H. Lai Vung- T. Đồng Tháp', N'C030880732', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (469, 2, 12, N'Điện Máy Xanh Mini (TGDĐ) QN Số 393 Trần Phú', N'Số 393 đường Trần Phú- P. Cao Xanh- TP. Hạ Long- T. Quảng Ninh', N'C030880733', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (470, 2, 167, N'Điện Máy Xanh Mini (TGDĐ) VP Số 114-116 Trường Chinh', N'Số 114 - 116 Trường Chinh- P. Đồng Xuân- TX. Phúc Yên- T. Vĩnh Phúc', N'C030980693', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (471, 2, 285, N'Điện Máy xanh Mini (TGDĐ) GL Số 207 Trần Hưng Đạo', N'207 Trần Hưng Đạo- TT Kon Dơng- H. Mang Yang- T. Gia Lai', N'C030980698', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (472, 2, 286, N'Điện Máy Xanh Mini (TGDĐ) LS Khu An Ninh', N'Khu An Ninh- TT.Hữu Lũng- H.Hữu Lũng- T.Lạng Sơn', N'C030980702', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (473, 2, 207, N'Điện Máy Xanh Mini (TGDĐ) AG Số 133-134 Nguyễn Huệ', N'Thửa đất số 133-134- Tờ bản đồ số 15- Nguyễn Huệ- ấp Bắc Sơn- TT. Núi Sập- H. Thoại Sơn- T. An Giang', N'C030980703', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (474, 5, 287, N'Mediamart HD Kinh Môn', N'Ngã tư Phụ Sơn- TT.Kinh Môn- Hải Dương', N'C031030745', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (475, 5, 248, N'Mediamart HD Lai Cách', N'KĐT Việt Mỹ- TT.Lai Cách- Hải Dương', N'C031030746', NULL, 0, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (476, 5, 162, N'Mediamart BN Từ Sơn', N'TTTM Đình Bảng- Từ Sơn- Bắc Ninh', N'C031030747', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (477, 5, 141, N'Mediamart BN Võ Cường', N'KCN Võ Cường- TP.Bắc Ninh', N'C031030748', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (478, 2, 288, N'Điện Máy Xanh Mini (TGDĐ) HCM Số 83 Duyên Hải', N'83 đường Duyên Hải- KP. Hưng Thạnh- TT. Cần Thạnh- H. Cần Giờ- TP.HCM', N'C031034715', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (479, 4, 239, N'Nguyễn Kim BRVT 190 Cách Mạng Tháng 8', N'190 Cách Mạng Tháng 8- P. Long Hương- Tp. Bà Rịa - Vũng Tàu', N'C031070753', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (480, 4, 17, N'Nguyễn Kim HCM 378 Nguyễn Duy Trin', N'378 Nguyễn Duy Trinh- P. Bình Trưng Đông- Q.2- Tp. Hcm', N'C031070754', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (481, 4, 227, N'Nguyễn Kim BTR 336 A1 Đại Lộ Đồng Khởi', N'336 A1 Đại Lộ Đồng Khởi- P. Phú Tân- Tp. Bến Tre- T. Bến Tre', N'C031070755', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (482, 4, 123, N'Nguyễn Kim DT 450 Nguyễn Sinh Sắc', N'450 Nguyễn Sinh Sắc- Khóm 2- P.1- Tp. Sa Đéc- T. Đồng Tháp', N'C031070756', NULL, 0, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (483, 6, 91, N'Siêu Thị VHC HN 348 Giải Phóng (HC cũ)HNCL HN 348 Giải Phóng', N'348 Giải Phóng', N'C530_5428', NULL, 0, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (484, 2, 289, N'Điện Máy Xanh Mini (TGDĐ) DLK Số 143 Nguyễn Tất Thành', N'Số 143 Nguyễn Tất Thành- TT. Ea Kar- H. Ea Kar- T. Đắk Lắk', N'C031170783', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (485, 2, 138, N'Điện Máy Xanh (TGDD) TV 21 Điện Biên Phủ', N'21 Điện Biên Phủ- Khóm 4- Phường 6', N'C000032786', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (486, 3, 250, N'CTy TNHH Cao Phong (STĐM Chợ Lớn) HCM Khu 101 Tôn Dật Tiên CRESCENT MALL', N'101 Tôn Dật Tiên- Phường Tân Phong- Quận 7', N'C001078622', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (487, 2, 290, N'Điện Máy Xanh Mini (TGDĐ) BT Số 349 Đường 3/2', N'Số 349 đường 3/2- TT. Đức Tài- H. Đức Linh- T. Bình Thuận', N'C031170788', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (488, 2, 236, N'Điện Máy Xanh Mini (TGDĐ) TG Thửa số 523 Cái Bè', N'Thửa số 523- tờ bản đồ số 32- Khu 3- TT. Cái Bè- H. Cái Bè- T. Tiền Giang', N'C031170789', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (489, 2, 291, N'Điện Máy Xanh Mini (TGDĐ) VP Tổ dân phố Đội Cấn Vĩnh Tường', N'Tổ dân phố Đội Cấn- TT. Vĩnh Tường- H. Vĩnh Tường- T. Vĩnh Phúc', N'C031170790', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (490, 5, 126, N'Mediamart Vĩnh Yên', N'số 5 Nguyễn Tất Thành- Phường Tích Sơn- TP Vĩnh Yên- Tỉnh Vĩnh Phúc.', N'C031210756', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (491, 5, 167, N'Mediamart Phúc Yên', N'Khu 5- Xã tiền Châu- Thị Xã Phúc Yên- Tỉnh Vĩnh Phúc', N'C031210757', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (492, 5, 50, N'Mediamart Bỉm Sơn', N'khu phố 1- Phường Phú Sơn- TX.Bỉm Sơn- Thanh Hóa', N'C031210758', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (493, 5, 171, N'Mediamart Tĩnh Gia', N'Thôn Xuân Hòa- Xã Hải Hòa- Huyện Tĩnh Gia-Tỉnh Thanh Hóa', N'C031210759', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (494, 6, 94, N'Siêu Thị VHC HN 399 Phạm Văn Đồng', N'399 Phạm Văn Đồng', N'C003460836', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (495, 3, 117, N'CTy TNHH Cao Phong (STĐM Chợ Lớn) CT 155-161 đường 3/2', N'155-157-159-161 - Đường 3/2 - Phường Hưng Lợi - Quận Ninh Kiều - TP.Cần Thơ', N'C013660715', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (496, 3, 227, N'CTy TNHH Cao Phong (STĐM Chợ Lớn) BTR 171D Võ Nguyên Giáp ', N'171D Đường Võ Nguyên Giáp - Xã Bình Phú - TP.Bến Tre - Tỉnh Bến Tre.', N'C013660716', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (497, 5, 292, N'Mediamart Văn Lâm', N'Thôn Thị Trung- Xã Đình Dù- Huyện Văn Lâm-Tỉnh Hưng Yên.', N'C031210763', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (498, 2, 262, N'Điện Máy Xanh (TGDD) HCM 416 Hậu Giang P.12', N'416 Hậu Giang- P.12- Q.06- TP.Hồ Chí Minh', N'C018610730', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (499, 2, 178, N'Điện Máy Xanh (TGDĐ) HCM Số E9/19 - E9/19C QL1A', N'E9/19 - E9/19C- quốc lộ 1A- KP.05- TT. Tân Túc- H. Bình Chánh- TP. HCM', N'C031370700', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (500, 2, 293, N'Điện Máy Xanh Mini (TGDĐ) BT 466 Trần Hưng Đạo', N'466 Trần Hưng Đạo- TT. Lạc Tánh- H. Tánh Linh- T. Bình Thuận', N'C031370701', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (501, 2, 294, N'Điện Máy Xanh Mini (TGDĐ) YB Khu phố 6 Cổ Phúc', N'Khu phố 6- TT. Cổ Phúc- H. Trấn Yên- T. Yên Bái', N'C031370705', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (502, 2, 295, N'Điện Máy Xanh (TGDD) KT 951A Phan Đình Phùng', N'951A Phan Đình Phùng Phường Quyết Thắng Thành phố KonTum Tỉnh KonTum', N'C019560722', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (503, 2, 34, N'Điện Máy Xanh Mini (TGDĐ) DN Số 2359 QL20', N'Số 2359 Quốc Lộ 20- ấp Phương Lâm 3- xã Phú Lâm- H. Tân Phú- T. Đồng Nai', N'C031370708', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (504, 2, 62, N'Điện Máy Xanh Mini (TGDĐ) BDH đường Hùng Vương', N'Đường Hùng Vương- tổ 5- khu vực 7- P.Trần Quang Diệu- TP. Quy Nhơn- T. Bình Định', N'C031370709', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (505, 2, 213, N'Điện Máy Xanh Mini (TGDĐ) AG Số 305-307/19 Thới Hòa', N'Số 305-307/19 khóm Thới Hòa- TT. Nhà Bàng- H. Tịnh Biên- T. An Giang', N'C031370711', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (506, 2, 296, N'Điện Máy Xanh Mini (TGDĐ) BK Tiêu khu 4 Chợ Rã', N'Tiểu khu 4- TT. Chợ Rã- H. Ba Bể- T. Bắc Kạn', N'C031370712', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (507, 2, 297, N'Điện Máy Xanh Mini (TGDĐ) KH Tổ dân phố 4 Ninh Hiệp', N'Tổ dân phố 4- P. Ninh Hiệp- thị xã Ninh Hòa- T. Khánh Hòa', N'C031370713', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (508, 2, 239, N'Điện Máy Xanh Mini (TGDĐ) BRVT Số 486 đường 30/04', N'Số 486 đường 30/04- P. Rạch Dừa- TP. Vũng Tàu- T. Bà Rịa - Vũng Tàu', N'C031370715', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (509, 2, 298, N'Điện Máy Xanh (TGDD) DB đường Trần Đăng Ninh Tổ 6 P Tân Thanh', N'Đường Trần Đăng Ninh- tổ dân phố 6- P. Tân Thanh- TP. Điện Biên Phủ- T. Điện Biên', N'C026620782', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (510, 2, 25, N'Điện Máy Xanh Mini (TGDĐ) TG Số 5 Phước Hòa', N'Số 5- tổ 1- ấp Phước Hòa- xã Phước Thạnh TP. Mỹ Tho- T. Tiền Giang', N'C031480735', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (511, 7, 33, N'Pico HN 346 Nguyễn Trãi', N'346 Nguyễn Trãi- phường Trung Văn- quận Nam Từ Liêm- thành phố Hà Nội- Việt Nam.', N'C033720692', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (512, 2, 39, N'Điện Máy Xanh (TGDĐ) LA Thửa đất số 99 Bình Tiền 2', N'Thửa đất số 99- Tờ bản đồ số 16-1- ấp Bình Tiền 2- xã Đức Hòa Hạ- H. Đức Hòa- T. Long An', N'C031480737', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (513, 2, 299, N'Điện Máy Xanh Mini (TGDĐ) AG Số 15 Tôn Đức Thắng', N'Số 15 Tôn Đức Thắng- ấp Mỹ Lương- TT. Phú Mỹ- H. Phú Tân- T. An Giang', N'C031480738', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (514, 2, 252, N'Điện Máy Xanh Mini (TGDĐ) HN Số 115-117-119 Ngô Xuân Quảng', N'Số 115-117-119 Ngô Xuân Quảng- TT. Trâu Quỳ- H. Gia Lâm- TP. Hà Nội', N'C031480740', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (515, 2, 300, N'Điện Máy Xanh Mini (TGDĐ) HY Lô C1KCN Phố Nối B', N'Lô C1 KCN Phố Nối B- xã Nghĩa Hiệp- H. Yên Mỹ- T. Hưng Yên', N'C031480741', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (516, 2, 191, N'Điện Máy Xanh Mini (TGDĐ) KG Số 107 Nguyễn Văn Cừ', N'Số 107 Nguyễn Văn Cừ- KP.03- TT. An Thới- H. Phú Quốc- T. Kiên Giang', N'C031480742', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (517, 2, 301, N'Điện Máy Xanh Mini (TGDĐ) ST Thửa đất 816 TBĐ 02 và thửa đất 08 TBĐ 53', N'Thửa đất 816 TBĐ 02 và thửa đất 08 TBĐ 53- khóm 2- P.01- TX. Vĩnh Châu- T. Sóc Trăng', N'C031480743', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (518, 2, 302, N'Điện Máy Xanh Mini (TGDĐ) BTR Thửa đất số 32 Bình Đại', N'Thửa đất số 32- tờ bản đồ số 18- KP.01- TT. Bình Đại- H. Bình Đại- T. Bến Tre', N'C031480748', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (519, 2, 216, N'Điện Máy Xanh Mini (TGDĐ) HN Đường Võ Văn Kiệt Quang Minh', N'Đường Võ Văn Kiệt- tổ 7- TT. Quang Minh- H. Mê Linh- TP. Hà Nội', N'C031480750', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (520, 3, 26, N'CTy TNHH Cao Phong (STĐM Chợ Lớn) - Long Xuyên 2', N'45/11 Trần Hưng Đạo- Phường Mỹ Thạnh- Tp Long Xuyên- An Giang', N'C031510724', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (521, 3, 83, N'CTy TNHH Cao Phong (STĐM Chợ Lớn) - Phan Rang', N'632 Thống Nhất-P.Đạo Long-Tp.Phan Rang-Tháp Chàm-T.Ninh Thuận', N'C031510725', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (522, 7, 104, N'Pico HN Km13+500 QL1A', N'KM13+500 Quốc lộ 1A- Ngọc Hồi- Thanh Trì- Hà Nội (cách ngã ba Ngọc Hồi 50m).', N'C035200694', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (523, 2, 198, N'Điện Máy Xanh Mini (TGDĐ) DNG 07 Nguyễn Văn Linh', N'07 Nguyễn Văn Linh- Phường Bình Hiên- Quận Hải Châu- Thành phố Đà Nẵng- Việt Namg', N'C031720700', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (524, 2, 223, N'Điện Máy Xanh Mini (TGDĐ) QNM Số 73-75 Phan Châu Trinh', N'Số 73-75 Phan Châu Trinh- TT. Đông Phú- H. Quế Sơn- T. Quảng Nam', N'C031720701', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (525, 2, 303, N'Điện Máy Xanh Mini (TGDĐ) BDH Số 373 Quang Trung', N'Số 373 Quang Trung- TT. Bồng Sơn- H. Hoài Nhơn- T. Bình Định', N'C032120747', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (526, 7, 96, N'Pico Hà Nam Parts Tower', N'Tầng 1- Tòa nhà Parts Tower- đường Lê Hoàn- phường Hai Bà Trưng- thành phố Phủ Lý- tỉnh Hà Nam', N'C032640815', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (527, 7, 56, N'Pico TH 240 Lê Hoàn', N'Số 240 đường Lê Hoàn- phường Ba Đình- thành phố Thanh Hóa- tỉnh Thanh Hóa. ', N'C032640816', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (528, 7, 10, N'Pico HP 04 Bạch Đằng', N'Số 4- Đường Bạch Đằng- Phường Hạ Lý- Quận Hồng Bàng- Thành phố Hải Phòng', N'C032640817', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (529, 2, 304, N'Điện Máy Xanh Mini (TGDĐ)GL QL 14', N'Quốc lộ 14- TT. Nhơn Hòa- H. Chư Pưh- T. Gia Lai', N'C032680704', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (530, 2, 305, N'Điện Máy Xanh (TGDĐ) HN Số 122 phố Ga', N'Số 122 phố Ga- TT. Thường Tín- H. Thường Tín- TP. Hà Nội', N'C032720719', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (531, 2, 155, N'Điện Máy Xanh (TGDĐ) NB Số 01 Lê Hồng Phong', N'Số 01 Lê Hồng Phong- P. Vân Giang- Tp. Ninh Bình- T. Ninh Bình', N'C051791541', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (532, 2, 306, N'Điện Máy Xanh Mini (TGDĐ) BG Khu 2 Hiệp Hòa', N'Khu 2- TT. Thắng- H. Hiệp Hoà- T. Bắc Giang', N'C032720728', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (533, 2, 104, N'Điện Máy Xanh (TGDĐ) HN Tầng 1 Tòa nhà CT2 thuộc ô đất CT4.CT9', N'Tầng 1 Tòa nhà CT2 thuộc ô đất CT4.CT9 - Khu đô thị mới Tây Nam Kim Giang I- xã Tân Triều- H. Thanh Trì- TP. Hà Nội', N'C051791551', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (534, 2, 178, N'Điện Máy Xanh Mini (TGDĐ) HCM 15 Phạm Hùng', N'15 Phạm Hùng- ấp 4A- xã Bình Hưng- H. Bình Chánh- TP.HCM', N'C032720733', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (535, 2, 307, N'Điện Máy Xanh Mini (TGDĐ) GL 904B Hùng Vương', N'904B Hùng Vương- Thị Trấn Chư Sê- Huyện Chư Sê- Tỉnh Gia Lai', N'C032720734', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (536, 2, 281, N'Điện Máy Xanh Mini (TGDĐ) ĐN Số 131 Phùng Hưng', N'Số 131- đường Phùng Hưng- Khu phố 4- Ấp 8- Xã An Phước- Huyện Long Thành- Tỉnh Đồng Nai', N'C032720735', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (537, 2, 281, N'Điện Máy Xanh Mini (TGDĐ) ĐN Số 1912 QL 51', N'Số 1912- Quốc lộ 51- Tổ 1- Ấp 1C- Xã Phước Thái- Huyện Long Thành- Tỉnh Đồng Nai', N'C032720736', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (538, 4, 20, N'Nguyễn Kim DN 883 Xa lộ Hà Nội', N'883 Xa lộ Hà Nội- KP 1- Phường Long Bình Tân- Thành Phố Biên Hòa- Tỉnh Đồng Nai- VN', N'C032850699', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (539, 4, 250, N'Nguyễn Kim HCM 10-10A Nguyễn Thị Thập', N'10-10A Nguyễn Thị Thập- Phường Bình Thuận- Quận 7- TP. HCM- VN', N'C032850700', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (540, 4, 14, N'Nguyễn Kim HCM 855 Quang Trung', N'855 Quang Trung- Phường 12- Quận Gò Vấp-TP. Hồ Chí Minh- VN', N'C032850701', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (541, 4, 45, N'Nguyễn Kim BD 26 Gia Long', N'Số 26 Gia Long- Tổ 7- Khu Phố Hòa Long- Phường Lái Thiêu- Thị Xã Thuận An- Tỉnh Bình Dương- VN', N'C032850702', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (542, 2, 182, N'Điện Máy Xanh Mini (TGDĐ) BD Số 358 Tổ 11 Mỹ Phước', N'Số 358- tổ 11- KP.02- P. Mỹ Phước- TX. Bến Cát- T. Bình Dương', N'C032950783', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (543, 2, 45, N'Điện Máy Xanh Mini (TGDĐ) BD Số 6/15 khu phố Bình Phước B', N'Số 6/15 khu phố Bình Phước B- P. Bình Chuẩn- TX. Thuận An- T. Bình Dương', N'C032950794', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (544, 2, 308, N'Điện Máy Xanh Mini (TGDĐ) QNI Tổ dân phố Phú Vinh Trung', N'Tổ dân phố Phú Vinh Trung- TT. Chợ Chùa- H. Nghĩa Hành- T. Quảng Ngãi', N'C032950798', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (545, 2, 243, N'Điện Máy Xanh Mini (TGDĐ) BT 86 Thống Nhất', N'86 Thống Nhất- TT. Phan Rí Cửa- H. Tuy Phong- T. Bình Thuận', N'C033000776', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (546, 2, 28, N'Điện Máy Xanh Mini (TGDĐ) THN 197 Cách mạng tháng tám', N'197 Cách Mạng Tháng Tám- P. Phan Đình Phùng- TP. Thái Nguyên', N'C033170698', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (547, 2, 309, N'Điện Máy Xanh Mini (TGDĐ) TQ Tổ 11/9 Thị trấn Vĩnh Lộc', N'Tổ 11/9- TT. Vĩnh Lộc- H. Chiêm Hóa- T. Tuyên Quang', N'C033170700', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (548, 2, 252, N'Điện Máy Xanh Mini (TGDĐ) HN Thôn Phú Thụy xã Phú Thị', N'Thôn Phú Thụy- xã Phú Thị- H. Gia Lâm- TP. Hà Nội', N'C033240704', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (549, 2, 310, N'Điện Máy Xanh Mini (TGDĐ) HY Phố Cao', N'Phố Cao- TT. Trần Cao- H. Phù Cừ- T. Hưng Yên', N'C033240705', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (550, 2, 311, N'Điện Máy Xanh Mini (TGDĐ) TH Khu 01 Thị trấn Vĩnh Lộc', N'Khu 01- TT. Vĩnh Lộc- H. Vĩnh Lộc- T. Thanh Hóa', N'C033240706', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (551, 2, 312, N'Điện Máy Xanh Mini (TGDĐ) TH Khu 01 Thị trấn Bến Sung', N'Khu phố 1- TT. Bến Sung- H. Như Thanh- T. Thanh Hóa', N'C033240707', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (552, 2, 313, N'Điện Máy Xanh Mini (TGDĐ) BP Số 232 đường DT 741', N'Số 232- Đường DT 741- Ấp Chợ- Xã Tân Tiến- Huyện Đồng Phú- Tỉnh Bình Phước', N'C033240708', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (553, 2, 314, N'Điện Máy Xanh Mini (TGDĐ) BP Số 78 Khu phố Thanh Bình', N'Số 78- KP. Thanh Bình- TT. Thanh Bình- H. Bù Đốp- T. Bình Phước', N'C033240709', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (554, 2, 214, N'Điện Máy Xanh Mini (TGDĐ) BD Số 205/B - 207/B Tổ 5 phường Uyên Hưng', N'Số 205/B - 207/B tổ 5- KP.01- P. Uyên Hưng- TX. Tân Uyên- T. Bình Dương', N'C033240710', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (555, 2, 315, N'Điện Máy Xanh Mini (TGDĐ) TN Số 510 Nguyễn Chí Thanh', N'Số 510 Nguyễn Chí Thanh- KP.02- TT. Dương Minh Châu- H. Dương Minh Châu- T. Tây Ninh', N'C033240711', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (556, 2, 316, N'Điện Máy Xanh Mini (TGDĐ) BTR Số 268-268A QL60', N'Số 268-268A- Quốc lộ 60- KP.02- TT. Mỏ Cày- H. Mỏ Cày Nam- T. Bến Tre', N'C033240714', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (557, 2, 560, N'Điện Máy Xanh Mini (TGDĐ) KG Số 605-607 Quốc lộ 61', N'Số 605-607 Quốc lộ 61- KP. Minh Phú- TT. Minh Lương- H. Châu Thành- T. Kiên Giang', N'C033240715', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (558, 2, 317, N'Điện Máy Xanh Mini (TGDĐ) GL 359 Quang Trung', N'359 Quang Trung- P. An Phú- TX. An Khê- T. Gia Lai', N'C033240716', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (559, 2, 37, N'Điện Máy Xanh Mini (TGDĐ) CM Số 155A Nguyễn Tất Thành', N'Số 155A- đường Nguyễn Tất Thành- P.08- TP. Cà Mau- T. Cà Mau', N'C033240717', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (560, 2, 54, N'Điện Máy Xanh Mini HN Số 200 - 202- tổ 3A- Phường Xuân Khanh- Thị xã Sơn Tây- Thành phố Hà Nội', N'Số 200 - 202- tổ 3A- Phường Xuân Khanh- Thị xã Sơn Tây- Thành phố Hà Nội- Việt Nam', N'C033450755', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (561, 2, 54, N'Điện Máy Xanh Mini (TGDĐ) HN Thôn Đồng Dăm', N'Thôn Đồng Dăm- xã Cổ Đông- TX. Sơn Tây- TP. Hà Nội', N'C033450756', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (562, 2, 192, N'Điện Máy Xanh Mini (TGDĐ) HN Xóm 3 thôn Hội Xá', N'Xóm 3- thôn Hội Xá- xã Hương Sơn- H. Mỹ Đức- TP. Hà Nội', N'C033450757', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (563, 2, 318, N'Điện Máy Xanh Mini (TGDĐ) HN Số 6 Phố Vác', N'Số 6 Phố Vác- thôn Canh Hoạch- xã Dân Hòa- huyện Thanh Oai- thành phố Hà Nội', N'C033450758', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (564, 2, 226, N'Điện Máy Xanh Mini (TGDĐ) HN Thôn 1  xã Cát Quế', N'Thôn 1- Xã Cát Quế- huyện Hoài Đức- Tp Hà Nội', N'C033450759', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (565, 2, 12, N'Điện Máy Xanh Mini (TGDĐ) QN Số 71 phường Hà Tu', N'Số 394 Vũ Văn Hiếu- P. Hà Tu- TP. Hạ Long- T. Quảng Ninh', N'C033450760', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (566, 2, 319, N'Điện Máy Xanh Mini (TGDĐ) LA Quốc lộ 50 Thửa đất số 83-156-157-196', N'Quốc lộ 50- thửa đất số 83-156-157-196- tờ bản đồ số 8- ấp Kim Điền- xã Tân Kim- H. Cần Giuộc- T. Long An', N'C033450762', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (567, 2, 320, N'Điện Máy Xanh Mini (TGDĐ) QNI Tổ dân phố 2 Thị trấn Châu Ổ', N'484 Phạm Văn Đồng- TT. Châu Ổ- H. Bình Sơn- T. Quảng Ngãi', N'C033450764', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (568, 2, 321, N'Điện Máy Xanh Mini (TGDĐ) QN Khu phố Đường Ngang thị xã Quảng Yên', N'Khu phố Đường Ngang- P. Minh Thành- TX. Quảng Yên- T. Quảng Ninh', N'C033561523', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (569, 2, 207, N'Điện Máy Xanh Mini (TGDĐ) AG Số 483 ấp Tân Hiệp A thị trấn Óc Eo', N'Số 483- ấp Tân Hiệp A- TT. Óc Eo- H. Thoại Sơn- T. An Giang', N'C033561526', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (570, 2, 322, N'Điện Máy Xanh Mini (TGDĐ) BDH 151-153 Trần Phú', N'Số 151 - 153 Trần Phú- P. Bình Định- TX. An Nhơn- T. Bình Định', N'C033561527', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (571, 2, 323, N'Điện Máy Xanh Mini (TGDĐ) DNG 7 Lê Văn Hiến', N'7 Lê Văn Hiến- P. Khuê Mỹ- Q. Ngũ Hành Sơn- TP. Đà Nẵng', N'C033561528', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (572, 2, 5, N'Điện Máy Xanh (TGDĐ) HN Số 1174 Đường Láng', N'Số 1174 Đường Láng- P. Láng thượng- Q. Đống Đa- Tp. Hà Nội', N'C051791559', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (573, 3, 117, N'CTy TNHH Cao Phong (STĐM Chợ Lớn) - Cần Thơ', N'108 Trần Văn Khéo- Cái Khế', N'C000022715', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (574, 2, 324, N'Điện Máy Xanh Mini (TGDĐ) TQ tổ dân phố cơ quan thị trấn Sơn Dương', N'Tổ dân phố Cơ Quan- thị trấn Sơn Dương- huyện Sơn Dương- tỉnh Tuyên Quang', N'C033780714', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (575, 2, 76, N'Điện Máy Xanh Mini (TGDĐ) BRVT Quốc lộ 51', N'Quốc Lộ 51- Khu 3- Ấp Ông Trịnh- xã Phước Hòa- huyện Tân Thành- tỉnh Bà Rịa - Vũng Tàu', N'C033780715', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (576, 2, 136, N'Điện Máy Xanh Mini (TGDĐ) HN Phố Nỷ', N'Phố Nỷ- xã Trung Giã- Huyện Sóc Sơn- Tp. Hà Nội', N'C033780719', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (577, 3, 19, N'CTy TNHH Cao Phong (STĐM Chợ Lớn) - BRVT Số 592 Cách Mạng Tháng Tám', N'Số 592 Cách Mạng Tháng Tám-P.Phước Trung- Tp.Bà Rịa- Tỉnh Bà Rịa-Vũng Tàu- Việt Nam', N'C033920997', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (578, 2, 325, N'Điện Máy Xanh (TGDĐ) GL đường Quang Trung', N'477-479 Quang Trung- TT. Chư Ty- H. Đức Cơ- T. Gia Lai', N'C034020734', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (579, 2, 56, N'Điện Máy Xanh (TGDĐ) TH Số 360 Trần Phú', N'Số 360 Trần Phú- P. Ba Đình- TP. Thanh Hóa- T. Thanh Hóa', N'C034020736', NULL, 0, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (580, 2, 326, N'Điện Máy Xanh (TGDĐ) VL Khóm 1 thị trấn Cái Nhum', N'Số 19-21-23 khóm 01- TT. Cái Nhum- H. Mang Thít- T. Vĩnh Long', N'C034020738', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (581, 3, 152, N'CTy TNHH Cao Phong (STĐM Chợ Lớn) - Q3', N'590 Cách Mạng Tháng Tám- Phường 11', N'C000024951', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (582, 5, 78, N'Mediamart NA 19 Quang Trung', N'19 Quang Trung- TP.Vinh- Nghệ An', N'C034141049', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (583, 2, 327, N'Điện Máy Xanh (TGDĐ) BG Phố Thanh Xuân', N'Phố Thanh Xuân- Thị trấn Đồi Ngô- Huyện Lục Nam- tỉnh Bắc Giang', N'C034180731', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (584, 2, 328, N'Điện Máy Xanh (TGDĐ) BG Thửa đất số 147', N'Thửa đất số 147- tờ bản đồ 05- Khu Trường Chinh- Thị trấn Chũ- huyện Lục Ngạn- tỉnh Bắc Giang', N'C034180732', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (585, 2, 111, N'Điện Máy Xanh (TGDĐ) BG Đường Hùng Vương', N'Số 45 Hùng Vương- tổ 2- P. Ngô Quyền- TP. Bắc Giang- T. Bắc Giang', N'C034180733', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (586, 2, 329, N'Điện Máy Xanh (TGDĐ) BN Thôn Đông Yên', N'Thôn Đông Yên – Xã Đông Phong – huyện Yên Phong – tỉnh Bắc Ninh', N'C034180734', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (587, 3, 295, N'CTy TNHH Cao Phong (STĐM Chợ Lớn) - Kon Tum', N'38 Hoàng Văn Thụ- P.Quyết Thắng-Tp.Kon Tum-Tỉnh Kon Tum- Việt Nam', N'C034370714', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (588, 2, 330, N'Điện Máy Xanh Mini (TGDĐ) NB Số 309-311 Quang Trung', N'Số 309-311 Quang Trung- P. Trung Sơn- TP. Tam Điệp- T. Ninh Bình', N'C034440807', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (589, 2, 186, N'Điện Máy Xanh (TTDĐ) QNM Quốc lộ 1A', N'Quốc lộ 1A- thôn Bồ Mưng 2- xã Điện Thắng Bắc- TX. Điện Bàn- T. Quảng Nam', N'C034480749', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (590, 2, 331, N'Điện Máy Xanh (TGDĐ) động PY 182 Trần Phú', N'182 Trần Phú- KP Trung Hòa-Thị Trần Củng Sơn-  Sơn Hòa- Phú yên', N'C034480755', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (591, 2, 91, N'Trần Anh HN 3 Lê Trọng Tấn', N'3 Lê Trọng Tấn-  Phường Khương Mai- Quận Thanh Xuân- Tp. Hà Nội', N'C034710695', NULL, 0, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (592, 2, 332, N'Điện Máy Xanh Mini (TGDĐ) NA 116 Khối Kim Tân Hòa Hiếu TX Thái Hòa', N'116 Khối Kim Tân- Phường Hòa Hiếu- Thái Hòa', N'C000163343', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (593, 5, 305, N'Mediamart HN Phúc Am- Duyên Thái', N'Thôn Phúc Am- Xã Duyên Thái- Thường Tín- Hà Nội', N'C034770765', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (594, 5, 333, N'Mediamart HY Ngã tư Dân Tiến', N'Ngã tư Dân Tiến- Xã Dân Tiến- Huyện Khoái Châu- Hưng Yên.', N'C034770766', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (595, 2, 213, N'Điện Máy Xanh (TTDĐ) AG Khóm 1- TT Chi Lăng', N'Khóm 1- TT Chi Lăng- Huyện Tịnh Biên- Tỉnh An Giang', N'C034900738', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (596, 2, 557, N'Điện Máy Xanh (TTDĐ) AG ấp Hòa Long IV', N'ấp Hòa Long IV- thị trấn An Châu- huyện Châu Thành- tỉnh An Giang', N'C034900739', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (597, 2, 221, N'Điện Máy Xanh (TTDĐ) BRVT Số 13/1 Ấp Thanh Bình 3', N'Số 13/1 Ấp Thanh Bình 3- Xã Bình Châu- Huyện Xuyên Mộc- Tỉnh Bà Rịa Vũng Tàu', N'C034900740', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (598, 2, 182, N'Điện Máy Xanh (TTDĐ) BD Số 347 đường DT 741', N'Số 347 đường DT 741- Khu Phố Phú Nghị- Phường Hòa Lợi- Thị Xã Bến Cát- tỉnh Bình Dương', N'C034900741', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (599, 2, 334, N'Điện Máy Xanh (TTDĐ) BT Trần Hưng Đạo', N'Trần Hưng Đạo- KP. Lập Hòa- TT. Thuận Nam- Huyện Hàm Thuận Nam- Tỉnh Bình Thuận', N'C034900743', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (600, 6, 130, N'Siêu Thị VHC TB 297 Lý Bôn', N'297 Lý Bôn-TP Thái Bình', N'C003460837', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (601, 2, 335, N'Điện Máy Xanh (TTDĐ) KT thôn 1 - thị trấn sa thầy', N'Đường Trần Hưng Đạo- TT. Sa Thầy- H. Sa Thầy- T. Kon Tum', N'C034900745', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (602, 2, 336, N'Điện Máy Xanh (TTDĐ) LD 329-331 Đường 2/4- TDP Nghĩa Lập I', N'329-331 Đường 2/4- TDP Nghĩa Lập I- thị trấn Thạnh Mỹ- Đơn Dương- Lâm Đồng', N'C034900746', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (603, 2, 337, N'Điện Máy Xanh (TTDĐ) TB Thửa đất số 46', N'Thửa đất số 45- tờ bản đồ số 10- TT. Diêm Điền- H. Thái Thụy- T. Thái Bình', N'C034900747', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (604, 2, 338, N'Điện Máy Xanh (TTDĐ) TH Số nhà 329 +330- Thị trấn Hà Trung', N'Số nhà 329 +330- Thị trấn Hà Trung- Huyện Hà Trung- tỉnh Thanh Hóa', N'C034900748', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (605, 2, 74, N'Điện Máy Xanh (TTDĐ) HCM Số 597 đường Hà Huy Giáp', N'Số 597 đường Hà Huy Giáp- Khu Phố 3- phường Thạnh Xuân- Quận 12- TP HCM', N'C034900749', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (606, 2, 151, N'Điện Máy Xanh (TTDĐ) HCM 18 Tây Lân- Khu phố 7', N'18A Tây Lân- KP.07- P. Bình Trị Đông A- Q. Bình Tân- TP.HCM', N'C034900750', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (607, 5, 12, N'Mediamart QN 517 Hạ Long- Bãi Cháy-', N'517 đường Hạ Long- Bãi Cháy- Quảng Ninh', N'C034940765', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (608, 5, 321, N'Mediamart QN 133 Trần Nhân Tông- Quảng Yên', N'Số 133 Trần Nhân Tông- Quảng Yên- Quảng Ninh', N'C034940766', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (609, 4, 59, N'Nguyễn Kim BD 01 Trần Hưng Đạo', N'Số 01 Trần Hưng Đạo P.Phú Cường', N'C003563740', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (610, 2, 339, N'Điện Máy Xanh (TGDĐ) BN Thửa đất số 195- 196- 197- 198; tờ bản đồ số 24', N'Thửa đất số 195- 196- 197- 198; tờ bản đồ số 24; Thôn Mao Trung- xã Phượng Mao- huyện Quế Võ- tỉnh Bắc Ninh', N'C035160697', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (611, 2, 340, N'Điện Máy Xanh (TGDĐ) GL Quang Trung- TDP 7', N'Quang Trung- TDP 7- Thị trấn KBang- Huyện KBang- Tỉnh Gia Lai', N'C035160698', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (612, 2, 341, N'Điện Máy Xanh (TGDĐ) BTR ấp Thạnh Hòa A', N'Thửa đất số 6-11- tờ bản đồ số 29- ấp Thạnh Hòa A- TT. Thạnh Phú- H. Thạnh Phú- T. Bến Tre', N'C035160701', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (613, 7, 33, N'Pico HN KM12 Quốc lộ 32', N'KM12 Quốc lộ 32- Phúc Diễn- Bắc Từ Liêm- Hà Nội (cách ngã ba Văn Tiến Dũng - QL32 500m).', N'C035200695', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (614, 2, 342, N'Điện máy xanh (TGDD) LCI Thửa đất số : Lô số 1- Tờ bản đồ số SĐĐG năm 2005- Tổ 6', N'Số nhà 303 Hùng Vương- tổ 6- TT. Bát Xát- H. Bát Xát- T. Lào Cai', N'C035200721', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (615, 2, 343, N'Điện Máy Xanh (TGDĐ) DLK Phường Bình An', N'Số 444 Hùng Vương- tổ dân phố 4- P. An Bình- TX. Buôn Hồ- T. Đắk Lắk', N'C035200724', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (616, 2, 109, N'Điện Máy Xanh (TGDĐ) DN Số 1124 ấp Quảng Tiến', N'Số 1124 ấp Quảng Tiến- xã Quảng Biên- huyện Trảng Bom- tỉnh Đồng Nai', N'C035200727', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (617, 5, 28, N'Mediamart THN Gang Thép 273 CMT8', N'273 Cách Mạng Tháng 8- Khu Gang Thép- P. Hương Sơn- TP. Thái Nguyên', N'C035280718', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (618, 5, 344, N'Mediamart TH Quảng Xương Số 60- Km8', N'Số 60- Km8- Khu Phố 2- QL 1A- Quảng Xương- Thanh Hóa', N'C035280719', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (619, 5, 28, N'Mediamart TN 394 Thống Nhất', N'394 Thống Nhất- P. Đồng Quang- TP. Thái Nguyên', N'C035491532', NULL, 0, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (620, 5, 78, N'Mediamart NA 5 Nguyễn Trãi', N'5 Nguyễn Trãi- TP.Vinh- Nghệ An', N'C035491533', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (621, 2, 345, N'Điện Máy Xanh (TGDĐ) HNM Số 68 Trần Hưng Đạo', N'Số 68 Trần Hưng Đạo- TT. Vĩnh Trụ- H. Lý Nhân- T. Hà Nam', N'C035651576', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (622, 2, 214, N'Điện Máy Xanh (TGDĐ) BD Thửa Đất số 567- Tờ bản đồ số 16- Ấp 1', N'Thửa Đất số 567- Tờ bản đồ số 16- Ấp 1- Xã Hội Nghĩa- Thị Xã Tân Uyên- Tỉnh Bình Dương', N'C035651578', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (623, 2, 346, N'Điện Máy Xanh (TGDĐ) LS Khu Nam Quan', N'Khu Nam Quan- TT. Đồng Đăng- H. Cao Lộc- T. Lạng Sơn', N'C035651579', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (624, 2, 179, N'Điện Máy Xanh (TGDĐ) VL Lô 1A Khu đô thị Song Phú', N'Lô 1A Khu đô thị Song Phú- ấp Phú Ninh- xã Song Phú- H. Tam Bình- T. Vĩnh Long', N'C035651581', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (625, 2, 263, N'Điện Máy Xanh (TGDĐ) DN Số 259- tổ 19- ấp Bến Cam', N'Số 259- tổ 19- ấp Bến Cam- xã Phước Thiền- H. Nhơn Trạch- T. Đồng Nai', N'C035651582', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (626, 2, 90, N'Điện Máy Xanh (TGDĐ) HCM 137 Quốc Lộ 13', N'137 Quốc Lộ 13- P. Hiệp Bình Chánh- Q. Thủ Đức- TP.HCM', N'C035651583', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (627, 2, 239, N'Điện Máy Xanh (TGDĐ) BRVT Số 1622 đường 30/04', N'Số 1622 đường 30/04- Phường 12- Thành Phố Vũng Tàu- Tỉnh Bà Rịa - Vũng Tàu', N'C035651584', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (628, 2, 88, N'Điện Máy Xanh (TGDĐ) HCM 633-633A Lê Văn Việt', N'633-633A Lê Văn Việt- P. Tân Phú- Q.9- TP.HCM', N'C035651585', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (629, 2, 248, N'Điện Máy Xanh (TGDĐ) HD Số 632A và số 624 Lê Thanh Nghị', N'Số 632A và số 624 Lê Thanh Nghị- phường Lê Thanh Nghị- TP. Hải Dương- tỉnh Hải Dương', N'C035651586', NULL, 0, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (630, 2, 347, N'Điện Máy Xanh (TGDĐ) TH Tiểu khu 3- TT. Quán Lào', N'Tiểu khu 3- TT. Quán Lào- H. Yên Định- T. Thanh Hóa', N'C035651587', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (631, 2, 348, N'Điện Máy Xanh (TGDĐ) HD Thôn Tranh Xuyên', N'Thôn Tranh Xuyên- xã Đồng Tâm- huyện Ninh Giang- tỉnh Hải Dương', N'C035651589', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (632, 2, 39, N'Điện Máy Xanh (TGDĐ) LA Số 372- TT. Hậu Nghĩa', N'Số 372- TT. Hậu Nghĩa- H. Đức Hòa- T. Long An', N'C035651590', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (633, 2, 14, N'Điện Máy Xanh (TGDĐ) HCM 1388A-1388B-1388C-138/1548 Lê Đức Thọ', N'1388A-1388B-1388C-138/1548 Lê Đức Thọ- P.13- Q. Gò Vấp- TP HCM', N'C035651591', NULL, 0, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (634, 2, 349, N'Điện Máy Xanh (TGDĐ) TTH Đường Kinh Dương Vương', N'08 Kinh Dương Vương- TT. Thuận An- H. Phú Vang- T. Thừa Thiên Huế', N'C035651596', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (635, 2, 350, N'Điện Máy Xanh (TGDĐ) NA Khối 2B- thửa đất số 180- tờ bản đồ số 05/2014/BĐĐC/VPĐK/ TT. Tân Lạc', N'Khối 2B- thửa đất số 180- tờ bản đồ số 05/2014/BĐĐC/VPĐK/ TT. Tân Lạc- H. Quỳ Châu- T. Nghệ An', N'C035651598', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (636, 2, 351, N'Điện Máy Xanh (TGDĐ) DNO 185-187 Nguyễn Tất Thành', N'Tổ 01- TT. Đắk Mâm- H. Krông Nô- T. Đắk Nông', N'C035651600', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (637, 2, 352, N'Điện Máy Xanh (TGDĐ) HD Thửa đất số A-5- A-6- A-7- tờ bản đồ số 03- xã Thanh Khê', N'Khu dân cư số 1- thôn Xuân An- xã Thanh Khê- H. Thanh Hà- T. Hải Dương', N'C035651601', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (638, 4, 69, N'Nguyễn Kim GL 109 Lê Duẩn', N'109 Lê Duẩn- Phường Phù Đổng- TP. Pleiku- Tỉnh Gia Lai', N'C035881556', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (639, 4, 73, N'Nguyễn Kim BL 109 Trần Huỳnh', N'109 Trần Huỳnh- P7- TP. Bạc Liêu- Tỉnh Bạc Liêu', N'C035881557', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (640, 2, 353, N'Điện Máy Xanh (TGDĐ) LS Khu Nhà Thờ- TT. Lộc Bình', N'Khu Nhà Thờ- TT. Lộc Bình- H. Lộc Bình- T. Lạng Sơn', N'C035891570', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (641, 2, 354, N'Điện Máy Xanh (TGDĐ) DLK Tổ dân phố 5- TT. Krông Kmar', N'Tổ dân phố 5- TT. Krông Kmar- H. Krông Bông- T. Đắk Lắk', N'C035891571', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (642, 2, 564, N'Điện Máy Xanh (TGDĐ) TG Thửa đất số 01- tờ bản đồ 09- ấp Thới', N'Thửa đất số 01- tờ bản đồ 09- ấp Thới- xã Đông Hòa- H. Châu Thành- T. Tiền Giang', N'C035891572', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (643, 2, 355, N'Điện Máy Xanh (TGDĐ) AG Quốc lộ 91- Tân Lộ Kiều Lương', N'Quốc lộ 91- Tân Lộ Kiều Lương- P. Núi Sam- Tp. Châu Đốc- T. An Giang', N'C035891574', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (644, 2, 191, N'Điện Máy Xanh (TGDĐ) KG Tổ 7- ấp Gành Dầu- xã Gành Dầu', N'Tổ 7- ấp Gành Dầu- xã Gành Dầu- H. Phú Quốc- T. Kiên Giang', N'C035891575', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (645, 2, 177, N'Điện Máy Xanh (TGDĐ) DN Số 1240- tổ 36- ấp Trần Cao Vân', N'Số 1240- tổ 36- ấp Trần Cao Vân- xã Bàu Hàm 2- H. Thống Nhất- T. Đồng Nai', N'C035891577', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (646, 2, 356, N'Điện Máy Xanh (TGDĐ) HD Thôn Phủ Bình', N'Thôn Phủ Bình- xã Thái Học- H. Bình Giang- T. Hải Dương', N'C035891578', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (647, 2, 74, N'Điện Máy Xanh (TGDĐ) HCM Số 294 - 296 Nguyễn Ảnh Thủ', N'Số 294 - 296 Nguyễn Ảnh Thủ- P. Hiệp Thành- Q. 12- TP.HCM', N'C035891579', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (648, 2, 13, N'Điện Máy Xanh (TGDĐ) HP Khu phố 3/2- TT. Vĩnh Bảo', N'Khu phố 3/2- TT. Vĩnh Bảo- H. Vĩnh Bảo- Tp. Hải Phòng', N'C035891583', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (649, 2, 64, N'Điện Máy Xanh (TGDĐ) DNG 213 Điện Biên Phủ', N'213 Điện Biên Phủ- P. Hòa Khê- Q. Thanh Khê- Tp. Đà Nẵng', N'C035891584', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (650, 2, 357, N'Điện Máy Xanh (TGDĐ) BTR Số 71/7B- KP.02- TT. Chợ Lách', N'Số 71/7B- KP.02- TT. Chợ Lách- H. Chợ Lách- T. Bến Tre', N'C035891585', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (651, 2, 252, N'Điện Máy Xanh (TGDĐ) HN Thôn Thuận Tốn', N'Thôn Thuận Tốn- Xã Đa Tốn- huyện Gia Lâm- thành phố Hà Nội', N'C035891588', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (652, 2, 358, N'Điện Máy Xanh (TGDĐ) HD Khu La Tỉnh Bắc', N'Khu La Tỉnh Bắc- thị trấn Tứ Kỳ- huyện Tứ Kỳ- tỉnh Hải Dương', N'C035891590', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (653, 2, 333, N'Điện Máy Xanh (TGDĐ) HY Xã Dân Tiến', N'Đội 2- thôn Yên Lịch- xã Dân Tiến- H. Khoái Châu- T. Hưng Yên', N'C035891591', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (654, 2, 359, N'Điện Máy Xanh (TGDĐ) SL thửa đất số 01- khối 4- thị trấn Phù Yên', N'thửa đất số 01- khối 4- thị trấn Phù Yên- huyện Phù Yên- tỉnh  Sơn La', N'C035891593', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (655, 5, 150, N'Mediamart BC Tổ 8B- Phường Đức Xuân', N'Tổ 8B- Phường Đức Xuân- Bắc Cạn', N'C036171539', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (656, 2, 28, N'Điện Máy Xanh (TGDĐ) THN Thửa đất số 4- tờ bản đồ số 3', N'Số 889A Dương Tự Minh- P. Hoàng Văn Thụ- TP. Thái Nguyên- T. Thái Nguyên', N'C036171552', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (657, 2, 78, N'Điện Máy Xanh (TGDĐ) NA Số 128- Đ. Lê Duẩn', N'218 Lê Duẩn- P. Trường Thi- TP. Vinh- T. Nghệ An', N'C036171553', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (658, 2, 360, N'Điện Máy Xanh (TGDĐ) TTH Đường Quốc Lộ 1 A- Thị Trấn Cầu 2', N'Quốc Lộ 1A- Thôn cao Đôi Xã- xã Lộc Trì- H. Phú Lộc- T. Thừa Thiên Huế ', N'C036171554', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (659, 2, 361, N'Điện Máy Xanh (TGDĐ) QNI Đường Quốc Lộ 1A- Thị Trấn Di Lăng', N'Quốc lộ 24B- TT. Di Lăng- H. Sơn Hà- T. Quảng Ngãi', N'C036171558', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (660, 2, 362, N'Điện Máy Xanh (TGDĐ) DLK Xã Ea Tiêu', N'Xã Ea Tiêu- Huyện Cư Kuin- Đắk Lắk', N'C036171562', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (661, 2, 110, N'Điện Máy Xanh (TGDĐ) TN Số 22 đường 785- xã Tân Đông', N'Số 22 đường 785- xã Tân Đông- huyện Tân Châu- tỉnh Tây Ninh', N'C036171563', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (662, 2, 363, N'Điện Máy Xanh (TGDĐ) DT THỬA DẤT 11-20-30- TỜ BẢN ĐỒ SỐ 68', N'Thửa đất 11-29-30- TBĐ số 68 và thửa đất 142 TBĐ số 5- TT. Tràm Chim- H. Tam Nông- T. Đồng Tháp', N'C036171564', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (663, 2, 116, N'Điện Máy Xanh (TGDĐ) CT Số nhà: 115- thửa số 84-146-147-148 tờ bản đồ số 21', N'Số nhà: 115- thửa số 84-146-147-148 tờ bản đồ số 21- Đường CMT8- Phường An Thới- Quận Bình Thủy- TP Cần Thơ', N'C036171565', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (664, 4, 364, N'Nguyễn Kim HCM 527 Lạc Long Quân', N'527 Lạc Long Quân- phường 10- quận Tân Bình- tp. HCM', N'C036341574', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (665, 4, 74, N'Nguyễn Kim HCM 312 - 314 Phan Văn Hớn', N'312 - 314 Phan Văn Hớn- phường Tân Thới Nhất- quận 12- tp. HCM', N'C036341575', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (666, 4, 88, N'Nguyễn Kim HCM 99 Lê Văn Việt', N'99 Lê Văn Việt- phường Tăng Nhơn Phú A- quận 9- tp. HCM', N'C036341576', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (667, 4, 109, N'Nguyễn Kim Trảng Bom 442- xóm 4- tổ 29- ấp Thái Hòa- xã Hố Nai 3', N'Số 442- xóm 4- tổ 29- ấp Thái Hòa- xã Hố Nai 3- huyện Trảng Bom- tỉnh Đồng Nai', N'C036341577', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (668, 3, 14, N'CTy TNHH Cao Phong (STĐM Chợ Lớn) - Gò Vấp', N'531 Nguyễn Oanh- Phường 17- Quận Gò Vấp- Tp.HCM- Việt Nam', N'C036341604', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (669, 6, 126, N'Siêu Thị VHC VP TTTM Hà Tiên Khu Đô Thị Chùa Hà Tiên', N'Trung Tâm Thương Mại Hà Tiên- Khu Đô thị chùa Hà Tiên- Phường Liên Bảo- Vĩnh Yên', N'C004770759', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (670, 5, 113, N'Mediamart HN Số 100- Ninh Kiều- Thị trấn Chúc Sơn', N'Số 100- Ninh Kiều- Thị trấn Chúc Sơn- Chương Mỹ- HN', N'C036411551', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (671, 3, 88, N'CTy TNHH Cao Phong (STĐM Chợ Lớn) - Q9', N'103 Tăng Nhơn Phú- Phường Phước Long B- Quận 9- Tp. Hcm- Việt Nam', N'C036441554', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (672, 2, 132, N'Điện Máy Xanh (TGDĐ) YB Thửa đất số 98- 99- 108; Tờ bản đồ số 38-C-IV-b', N'Số 511 đại lộ Nguyễn Thái Học- tổ 40- P. Hồng Hà- Tp. Yên Bái- T. Yên Bái', N'C036511536', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (673, 2, 365, N'Điện Máy Xanh (TGDĐ) QN Phố Long Thành- thị trấn Tiên Yên', N'Phố Long Thành- thị trấn Tiên Yên- huyện Tiên Yên- tỉnh Quảng Ninh', N'C036511537', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (674, 2, 366, N'Điện Máy Xanh (TGDĐ) QNM Đường Quốc Lộ 1A- Thửa đất số 16', N'Nguyễn Hoàng TT. Hà Lam H. Thăng Bình T. Quảng Nam', N'C036511539', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (675, 2, 367, N'Điện Máy Xanh (TGDĐ) NT Quốc lộ 27- thôn Hạnh Trí 1', N'Quốc lộ 27- thôn Hạnh Trí 1- xã Quảng Sơn- huyện Ninh Sơn- tỉnh Ninh Thuận', N'C036511540', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (676, 2, 368, N'Điện Máy Xanh (TGDĐ) DN Số 07- ấp 9- xã Sông Ray', N'Số 07- ấp 9- xã Sông Ray- huyện Cẩm Mỹ- tỉnh Đồng Nai', N'C036511541', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (677, 2, 20, N'Điện Máy Xanh (TGDĐ) DN Số 49/13- Ấp Cầu Hang-  xã Hóa An', N'Số 49/13- Ấp Cầu Hang-  xã Hóa An- Thành Phố Biên Hòa - Tỉnh Đồng Nai', N'C036511542', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (678, 2, 17, N'Điện Máy Xanh (TGDĐ) HCM 382 Nguyễn Duy Trinh', N'382 Nguyễn Duy Trinh- P. Bình Trưng Đông- Q.02- TP HCM', N'C036511543', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (679, 2, 88, N'Điện Máy Xanh (TGDĐ) HCM 250 Nguyễn Văn Tăng', N'250 Nguyễn Văn Tăng- Phường Long Thạnh Mỹ- Quận 9- TP. Hồ Chí Minh.', N'C036511544', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (680, 2, 90, N'Điện Máy Xanh (TGDĐ) HCM 184 Võ Văn Ngân', N'184 Võ Văn Ngân- P Bình Thọ- Q Thủ Đức', N'C036511545', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (681, 2, 369, N'Điện Máy Xanh (TGDĐ) LA 93 QL1A- F5', N'93 QL1A- F5- Tp. Tân An- tỉnh Long An', N'C036511546', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (682, 2, 37, N'Điện Máy Xanh (TGDĐ) CM Số 245 -246- Ấp 3- Xã Tắc Vân', N'Số 245 -246- Ấp 3- Xã Tắc Vân- Thành phố Cà Mau- Tỉnh Cà Mau', N'C036511547', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (683, 2, 370, N'Điện Máy Xanh (TGDĐ) ST Thửa 846 -847 -848 -849 -122- tờ bản đổ 04-35', N'Thửa đất 122- TBĐ 35 và Thửa đất 846-847-848-849- TBĐ 04- ấp 4- TT. Long Phú- H. Long Phú- T. Sóc Trăng', N'C036511548', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (684, 5, 347, N'Mediamart Quán Lào', N'Khu 4 Thị Trấn Quán Lào- H. Yên Định- Thanh Hóa', N'C036591732', NULL, 0, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (685, 2, 371, N'Điện Máy Xanh (TGDĐ) BG Thửa đất 118- 124- 125- tờ bản đồ số 7', N'Thửa đất 118- 124- 125- tờ bản đồ số 7- Khu 3- Thị trấn An Châu- huyện Sơn Động- tỉnh Bắc Giang', N'C036771537', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (686, 2, 372, N'Điện Máy Xanh (TGDĐ) TH Thôn Minh Thành 1- Xã Xuân Bái', N'Thôn Minh Thành 1- Xã Xuân Bái- Huyện Thọ Xuân- Tỉnh Thanh Hóa', N'C036771538', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (687, 2, 99, N'Điện Máy Xanh (TGDĐ) PY 34A Lê Lợi- Phường 1', N'34A Lê Lợi- Phường 1- TP.Tuy Hòa- Tỉnh Phú Yên ( Ngã Tư Lê Lợi Phan Đình Phùng)', N'C036771540', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (688, 2, 196, N'Điện Máy Xanh (TGDĐ)g BT 364 Trần Hưng Đạo', N'364 Trần Hưng Đạo- phường Đức Thắng- TP. Phan Thiết- tỉnh Bình Thuận', N'C036771542', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (689, 2, 373, N'Điện Máy Xanh (TGDĐ) BDH 116 Nguyễn Tất Thành', N'116 Nguyễn Tất Thành- TT Tăng Bạt Hỗ- Hoài Ân- Bình Định', N'C036771544', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (690, 2, 374, N'Điện Máy Xanh (TGDĐ) DNO thôn 10- xã Nam Bình', N'thôn 10- xã Nam Bình- huyện Đắk Song- tỉnh Đắk Nông', N'C036771545', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (691, 2, 53, N'Điện Máy Xanh (TGDĐ) DN Số 103- Nguyễn Tất Thành- Tổ 1', N'Số 103- Nguyễn Tất Thành- Tổ 1- Khu Phố 5- Thị Trấn Vĩnh An- Huyện Vĩnh Cửu- Tỉnh Đồng Nai', N'C036771546', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (692, 2, 103, N'Điện Máy Xanh (TGDĐ) TG Thửa đất số: 14- Tờ bản đồ 23', N'Thửa đất số: 14- Tờ bản đồ 23- Ấp Gò Lức- Xã Tân Đông- Huyện Gò Công Đông- Tỉnh Tiền Giang', N'C036771547', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (693, 2, 103, N'Điện Máy Xanh (TGDĐ) TG Số nhà 49A- QL_50- Thửa đất số: 38', N'Số nhà 49A- QL_50- Thửa đất số: 38- Tờ bản đồ 20- Phường 4- Thị Xã Gò Công Tỉnh Tiền Giang', N'C036771548', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (694, 2, 363, N'Điện Máy Xanh (TGDĐ) DT Thửa đất số: 1825- Tờ bản đồ 01', N'Thửa đất số: 1825- Tờ bản đồ 01- Xã An Long- Huyện Tam Nông- Tỉnh Đồng Tháp', N'C036771549', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (695, 2, 299, N'Điện Máy Xanh (TGDĐ) AG Đường DT954- ấp Phú Xương', N'Đường DT954- ấp Phú Xương- TT. Chợ Vàm- H. Phú Tân- T. An Giang', N'C036771550', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (696, 2, 375, N'Điện Máy Xanh (TGDĐ) AG Số 327- 329- 331 Bạch Đằng', N'Số 327- 329- 331 Bạch Đằng- Ấp An Thịnh- TT. An Phú- H. An Phú- T. An Giang', N'C036771551', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (697, 2, 131, N'Điện Máy Xanh (TGDĐ) AG thửa số 410-411-412-413-414-415 tờ bản đồ số 13', N'thửa số 410-411-412-413-414-415 tờ bản đồ số 13- Thị Trấn Mỹ Luông- Huyện Chợ Mới- Tỉnh An Giang', N'C036771552', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (698, 2, 88, N'Điện Máy Xanh (TGDĐ) HCM 1241 Nguyễn Duy Trinh', N'1241 Nguyễn Duy Trinh- ấp Phước Lai- P. Long Trường- Q.9- TP.HCM', N'C036831527', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (699, 2, 376, N'Điện Máy Xanh (TGDĐ) LCI Số 577 Điện Biên Phủ', N'Số 577 Điện Biên Phủ- TT. Sa Pa- H. Sa Pa- T. Lào Cai', N'C036831528', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (700, 2, 318, N'Điện Máy Xanh (TGDĐ) HN Số 507 - 509 - 511 - 513 đường Nguyễn Trực', N'Số 507 - 509 - 511 - 513 đường Nguyễn Trực- xã Bích Hòa- huyện Thanh Oai- Thành phố Hà Nội- Việt Nam', N'C037021530', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (701, 2, 377, N'Điện Máy Xanh (TGDĐ) QTR Số 75 đường Hùng Vương- thị trấn Hải Lăng', N'Số 75 đường Hùng Vương- thị trấn Hải Lăng- huyện Hải Lăng- tỉnh Quảng Trị', N'C037021533', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (702, 2, 378, N'Điện Máy Xanh (TGDĐ) QTR Đường Lê Duẫn- Phường 01', N'Đường Lê Duẫn- Phường 01- Thị Xã Quảng Trị- Tỉnh Quảng Trị', N'C037021534', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (703, 2, 379, N'Điện Máy Xanh (TGDĐ) BT số 240 -242-244 Nguyễn Tất Thành', N'số 240 -242-244 Nguyễn Tất Thành- kp Xuân An 2- thị trấn Chợ Lầu- huyện Bắc Bình- tỉnh Bình Thuận', N'C037021536', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (704, 2, 237, N'Điện Máy Xanh (TGDĐ) LD Thôn Liên Trung -  xã Tân Hà', N'Thôn Liên Trung -  xã Tân Hà - huyện Lâm Hà- tỉnh Lâm Đồng', N'C037021538', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (705, 2, 380, N'Điện Máy Xanh (TGDĐ) GL QUỐC LỘ 25- THỊ TRẤN PHÚ THIỆN', N'QUỐC LỘ 25- THỊ TRẤN PHÚ THIỆN - HUYỆN PHÚ THIỆN - TỈNH GIA LAI', N'C037021539', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (706, 2, 182, N'Điện Máy Xanh (TGDĐ) BD Thửa đất 649- Tờ bản đồ số 63- Quốc Lộ 13', N'Thửa đất 649- Tờ bản đồ số 63- Quốc Lộ 13- Khu Phố 4- Phường Mỹ Phước- Thị Xã Bến Cát- Tỉnh Bình Dương', N'C037021540', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (707, 2, 38, N'Điện Máy Xanh (TGDĐ) HCM Số 209 - 211 Tỉnh Lộ 8- Khu Phố 3', N'Số 209 - 211 Tỉnh Lộ 8- Khu Phố 3- Thị Trấn Củ Chi- Huyện Củ Chi- TP HCM', N'C037021541', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (708, 2, 90, N'Điện Máy Xanh (TGDĐ) HCM 584 đường Kha Vạn Cân- phường Linh Đông', N'584 đường Kha Vạn Cân- phường Linh Đông- Quận Thủ Đức- Thành phố Hồ Chí Minh', N'C037021542', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (709, 2, 381, N'Điện Máy Xanh (TGDĐ) DT Thửa 02- tờ bản đồ 16- khóm Bình Thạnh 01', N'Thửa 02- tờ bản đồ 16- khóm Bình Thạnh 01- TT. Lấp Vò- H. Lấp Vò- T. Đồng Tháp', N'C037021543', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (710, 2, 227, N'Điện Máy Xanh (TGDĐ) BTR Số 105A3- đường Võ Nguyên Giáp', N'Số 105A3- đường Võ Nguyên Giáp- tờ bản đồ 02- KP. Bình Khởi- P.6- TP. Bến Tre- T. Bến Tre', N'C037021544', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (711, 2, 151, N'Điện Máy Xanh (TGDĐ) VL thửa đất số 104-105-106-107- tờ bản đồ số 25', N'Số 0610 tổ 13- ấp Tân Lộc- xã Tân Lược- H. Bình Tân- T. Vĩnh Long', N'C037021545', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (712, 2, 382, N'Điện Máy Xanh (TGDĐ) CT Thửa số 34;169;197- tờ bản đồ 20', N'408 Phạm Hùng- khu vực Yên Hạ- P. Lê Bình- Q. Cái Răng- Tp. Cần Thơ', N'C037021546', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (713, 2, 383, N'Điện Máy Xanh (TGDĐ) HG Thửa đất số 103- tờ bản đồ số 09- đường 30/4(CMT8)', N'Thửa đất số 103- tờ bản đồ số 09- đường 30/4(CMT8)-Khu vực 2- phường Thuận An- thị xã Long Mỹ- tỉnh Hậu Giang', N'C037021547', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (714, 2, 26, N'Điện Máy Xanh (TGDĐ) AG Số 165 đường Trần Hưng Đạo', N'Số 165 đường Trần Hưng Đạo- phường Bình Khánh- thành phố Long Xuyên- tỉnh An Giang', N'C037021548', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (715, 2, 238, N'Điện Máy Xanh (TGDD) HP Thửa đất 291 293 tờ bản đồ số 2 xóm Hồ Dưới', N'Thửa đất 291- 293- tờ bản đồ số 2- xóm Hồ Dưới- xã Tân Dương- huyện Thủy Nguyên- TP Hải Phòng', N'C037261556', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (716, 2, 287, N'Điện Máy Xanh (TGDD) HD Thôn Tây Sơn Xã Hiệp An', N'Thôn Tây Sơn- Xã Hiệp An- Huyện Kinh Môn- Tỉnh Hải Dương', N'C037261557', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (717, 2, 384, N'Điện Máy Xanh (TGDD) TTH Đường Nguyễn Vịnh Thị Trấn Sịa', N'Đường Nguyễn Vịnh- Thị Trấn Sịa- Huyện Quảng Điền- Tỉnh Thừa Thiên Huế', N'C037261559', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (718, 2, 385, N'Điện Máy Xanh (TGDD) BDH 165-167 Nguyễn Huệ Thôn Dương Liễu Tây', N'165-167 Nguyễn Huệ- Thôn Dương Liễu Tây- TT Bình Dương- Huyện Phù Mỹ- Tỉnh Bình Định', N'C037261561', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (719, 2, 240, N'Điện Máy Xanh (TGDD) LD Phường 11 Thành Phố Đà Lạt', N'Thôn Tự Phước- P.11- Tp. Đà Lạt- T. Lâm Đồng', N'C037261562', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (720, 2, 8, N'Điện Máy Xanh (TGDD) DN Thửa đất số 195 tờ bản đồ 5A X Suối Nho', N'Số 26- tổ 1- ấp 3- xã Suối Nho- H. Định Quán- T. Đồng Nai', N'C037261564', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (721, 2, 88, N'Điện Máy Xanh (TGDD) HCM 171 Đỗ Xuân Hợp phường Phước Long B', N'171 Đỗ Xuân Hợp- phường Phước Long B- Quận 9- Tp. Hồ Chí Minh', N'C037261566', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (722, 2, 151, N'Điện Máy Xanh (TGDD) HCM 442-444 Hồ Học Lãm phường An Lạc', N'442-444 Hồ Học Lãm- phường An Lạc- quận Bình Tân- TP. Hồ Chí Minh', N'C037261567', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (723, 2, 319, N'Điện Máy Xanh (TGDD) LA Số Nhà 39 Quốc Lộ 50 Ấp Thuận Nam', N'Số Nhà 39- Quốc Lộ 50- Ấp Thuận Nam- Xã Thuận Thành- Huyện Cần Giuộc- Tỉnh Long An', N'C037261569', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (724, 2, 386, N'Điện Máy Xanh (TGDD) KG Thửa đất số 68 68a 143 tờ bản đồ số 2 ấp Thuận Hòa', N'Số 537- tổ 4- Quốc lộ 80- ấp Thuận Hòa- xã Bình Sơn- H. Hòn Đất- T. Kiên Giang', N'C037261570', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (725, 2, 387, N'Điện Máy Xanh (TGDĐ) HD Thửa đất 98 99A 99B tờ bản đồ số 3', N'Số 191- Nguyễn Lương Bằng- TT. Thanh Miện- H. Thanh Miện- T. Hải Dương', N'C037361541', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (726, 2, 388, N'Điện Máy Xanh (TGDĐ) QN Thôn Đông Sơn xã Đông Xá', N'Thôn Đông Sơn- xã Đông Xá- huyện Vân Đồn- tỉnh Quảng Ninh', N'C037361542', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (727, 2, 264, N'Điện Máy Xanh (TGDĐ) QNM Xã Đại Hiệp Huyện Đại Lộc', N'Xã Đại Hiệp- Huyện Đại Lộc- Tỉnh Quảng Nam', N'C037361543', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (728, 2, 45, N'Điện Máy Xanh (TGDĐ) BD Thửa đất số 3944 tờ bản đồ số 60', N'Thửa đất số 3944- tờ bản đồ số 60- KP Thạnh Lợi- P AN Thạnh- TX Thuận An- T Bình Dương', N'C037361545', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (729, 2, 21, N'Điện Máy Xanh (TGDĐ) BD Thửa đất số 1631 tờ bản đồ số 7AB2', N'Thửa đất số 1631- tờ bản đồ số 7AB2- Đường Nguyễn Tri Phương- Khu Phố Bình Dường 4- Phường An Bình- Thị Xã Dĩ An- tỉnh Bình Dương', N'C037361546', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (730, 2, 20, N'Điện Máy Xanh (TGDĐ) DN thửa đất số 73 74 tờ bản đồ số 17', N'thửa đất số 73- 74- tờ bản đồ số 17- 184 đường Bùi Văn Hòa- tổ 2- KP 11- P An Bình- TP Biên Hòa- T Đồng Nai', N'C037361547', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (731, 2, 389, N'Điện Máy Xanh (TGDĐ) CM khóm 4thị trấn Đầm Dơi', N'Đường 19/5- khóm 4- TT. Đầm Dơi- H. Đầm Dơi- T. Cà Mau', N'C037361549', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (732, 2, 390, N'Điện Máy Xanh (TGDĐ) CM thửa đất số 05 tờ bản đồ 35', N'thửa đất số 05- tờ bản đồ 35- khóm 3-thị trấn U Minh- huyện U Minh-tỉnh Cà Mau', N'C037361550', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (733, 2, 272, N'Điện Máy Xanh (TGDĐ) CM Thửa 23 tờ bản đồ 18 xã Tân Lộc', N'Số 26- ấp 3- xã Tân Lộc- H. Thới Bình- T. Cà Mau', N'C037361551', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (734, 2, 557, N'Điện Máy Xanh (TGDĐ) AG Thửa đất số 417 515 tờ bản đồ số 34', N'Thửa đất số 417- 515 tờ bản đồ số 34- Ấp Cần Thạnh- Xã Cần Đăng- huyện Châu Thành- Tỉnh An Giang', N'C037361552', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (735, 2, 239, N'Điện Máy Xanh (TGDD) BRVT 155 Nguyễn Thái Học', N'155 Nguyễn Thái Học- P. 7- TP. Vũng Tàu- T. Bà Rịa - Vũng Tàu', N'C005110771', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (736, 2, 391, N'Điện Máy Xanh (TGDĐ) BG thị trấn Bố Hạ huyện Yên Thế', N'thị trấn Bố Hạ- huyện Yên Thế- tỉnh Bắc Giang', N'C037551551', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (737, 2, 114, N'Điện Máy Xanh (TGDĐ) LS 206 Đường Trần Đăng Ninh', N'206 Đường Trần Đăng Ninh- Phường Hoàng Văn Thụ- Thành phố Lạng Sơn – Tỉnh Lạng Sơn', N'C037551552', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (738, 2, 392, N'Điện Máy Xanh (TGDĐ) NA khối 7 thị trấn Tân Kỳ', N'khối 7- thị trấn Tân Kỳ- huyện Tân Kỳ- tỉnh Nghệ An', N'C037551553', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (739, 2, 220, N'Điện Máy Xanh (TGDĐ) QNI Đ. QL 1A Thửa đất số 282', N'Đ. QL 1A- Thửa đất số 282- tờ bản đồ số 05- xã Đức Thạnh- H. Mộ Đức- T. Quảng Ngãi', N'C037551555', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (740, 2, 393, N'Điện Máy Xanh (TGDĐ) QB 09 Đường Hùng Vương Xóm Minh Phượng', N'09 Đường Hùng Vương- Xóm Minh Phượng- Phường Quảng Thị- TX Ba Đồn- Quảng Bình', N'C037551556', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (741, 2, 394, N'Điện Máy Xanh (TGDĐ) QB 55 Đ. Hùng Vương Thửa đất số 378', N'55-57 Hùng Vương- TT. Hoàn Lão- H. Bố Trạch- T. Quảng Bình', N'C037551557', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (742, 2, 282, N'Điện Máy Xanh (TGDĐ) BRVT Đường Hương Lộ 5 tổ 6 ấp Phước Thuận', N'Đường Hương Lộ 5- tổ 6- ấp Phước Thuận- Phước Tỉnh- Long Điền- Bà Rịa - Vũng Tàu', N'C037551558', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (743, 2, 564, N'Điện Máy Xanh (TGDĐ) TG Thửa 3249 - 3286 -3670 -5237 tờ bản đồ 01', N'Số 770 Quốc lộ 1A- tổ 13- ấp Tân Phong- xã Tân Lý Tây- H. Châu Thành- T. Tiền Giang', N'C037551561', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (744, 2, 22, N'Điện Máy Xanh (TGDĐ) DT Thửa đất số 1962 và 1963 tờ bản đồ số 06', N'Thửa đất số 1962 và 1963- tờ bản đồ số 06- Ấp 02- Xã Mỹ Long- huyện Cao Lãnh- tỉnh Đồng Tháp', N'C037551562', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (745, 2, 67, N'Điện Máy Xanh (TGDĐ) HG Số nhà 203 Quốc Lộ 1A', N'Số nhà 203- Quốc Lộ 1A- ấp Phú Lợi- xã Tân Phú Thạnh- H. Châu Thành A- T. Hậu Giang', N'C037551563', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (746, 2, 395, N'Điện Máy Xanh (TGDĐ) VL Thửa đất số 329 và 330 tờ bản đồ số 24', N'Thửa đất số 329 và 330- tờ bản đồ số 24- TPD Khu phố 2- Thị Trấn Hương Canh- Huyện Bình Xuyên- Tỉnh Vĩnh Phúc', N'C037691533', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (747, 2, 239, N'Điện Máy Xanh (TGDĐ) BRVT 251-251A Đường 2/9 (Thống Nhất cũ)', N'251-251A Đường 2/9 (Thống Nhất cũ)- phường 8- thành phố Vũng Tàu', N'C037691535', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (748, 2, 76, N'Điện Máy Xanh (TGDĐ) BRVT Quốc Lộ 51 xã Mỹ Xuân', N'Quốc Lộ 51- xã Mỹ Xuân- huyện Tân Thành- tỉnh Bà Rịa - Vũng Tàu', N'C037691536', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (749, 2, 396, N'Điện Máy Xanh (TGDĐ) BP Thửa đất số 28 tờ bản đồ số 15', N'Thửa đất số 28- tờ bản đồ số 15- Khu Đức Lập- TT Đức Phong- H Bù Đăng- T Bình Phước', N'C037691537', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (750, 2, 397, N'Điện Máy Xanh (TGDĐ) DLK Số 57 Hùng Vương thị trấn Ea Súp', N'Số 57 Hùng Vương- thị trấn Ea Súp- huyện Ea Súp- tỉnh Đắk Lắk', N'C037691538', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (751, 2, 140, N'Điện Máy Xanh (TGDĐ) DLK Số 103105107 đường QL 14', N'Số 103-105-107 đường QL 14- thôn 5-  Xã Hòa Thuận- TP Buôn Ma Thuật- Tỉnh Đắk Lắk', N'C037691539', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (752, 2, 90, N'Điện Máy Xanh (TGDĐ) HCM 1363A-1363B Tỉnh Lộ 43 phường Bình Chiểu', N'1363A-1363B Tỉnh Lộ 43- phường Bình Chiểu- Quận Thủ Đức- Tp. Hồ Chí Minh', N'C037691542', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (753, 2, 87, N'Điện Máy Xanh (TGDĐ) LA Thửa đất số 83-84-173 tờ bản đồ số 3-A', N'Thửa đất số 83-84-173- tờ bản đồ số 3-A- xã Thạnh Đức- huyện Bến Lức- tỉnh Long An', N'C037691543', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (754, 2, 398, N'Điện Máy Xanh (TGDĐ) QNI Đ. Quốc Lộ 1A Thửa đất số 268 440', N'Đ. Quốc Lộ 1A- Thửa đất số 268- 440- 441- 442- tờ bản đồ số 18- TT. La Hà- H. Tư Nghĩa- T. Quảng Ngãi', N'C037891575', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (755, 2, 82, N'Điện Máy Xanh (TGDĐ) KH Số 1200 đường Lê Hồng Phong', N'Số 1200 đường Lê Hồng Phong- Phường Phước Long- Thành Phố Nha Trang- Tỉnh Khánh Hòa', N'C037891576', NULL, 0, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (756, 2, 399, N'Điện Máy Xanh (TGDĐ) DT Thị Trấn Sa Rài huyện Tân Hồng', N'Số 74 Nguyễn Huệ- khóm 01- TT. Sa Rài- H. Tân Hồng- T. Đồng Tháp', N'C037891581', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (757, 2, 265, N'Điện Máy Xanh (TGDĐ) BTR Thửa 113- 144-145-146-147 tờ bản đồ 28', N'Thửa 113- 144-145-146-147- tờ bản đồ 28- ấp An Định 2- X. An Ngãi Trung- H. Ba Tri- T. Bến Tre', N'C037891583', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (758, 2, 164, N'Điện Máy Xanh (TGDĐ) TG Thửa đất số 563-235-648-682-684-685', N'Thửa đất số 563-235-648-682-684-685- tờ bản đồ 06-  ấp Kinh 12- xã Mỹ Phước Tây- TX. Cai Lậy- T. Tiền Giang', N'C037891584', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (759, 4, 78, N'NGUYỄN KIM NGHỆ AN', N'Phú Nguyễn Plaza- số 19 Cao Thắng-Phường Hồng Sơn- Thành Phố Vinh- Tỉnh Nghệ An- Việt Nam.', N'C038021529', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (760, 5, 166, N'Mediamart LC Lai Châu', N'Tổ 9- Phường Tân Phong- Thành phố Lai Châu- Tỉnh Lai Châu- Việt Nam', N'C038041539', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (761, 5, 276, N'Mediamart THN Sông Công', N'Lô 98- Đường Cách mạng Tháng 08- Tổ 10- phường Thắng Lơi - Thành phố Sông Công- Tỉnh Thái Nguyên- Việt Nam', N'C038041540', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (762, 5, 40, N'Mediamart TQ Tuyên Quang', N'Tầng 1- tầng 2- tầng 3- Số nhà  154- Tổ 30- đường Bình Thuận- phường Tân Quang- Thành phố Tuyên Quang- Tỉnh Tuyên Quang- Việt Nam', N'C038041541', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (763, 5, 230, N'Mediamart PT Phú Thọ', N'Phố Tân An- Phường Hùng Vương- Thị xã Phú Thọ- Tỉnh Phú Thọ- Việt Nam', N'C038041542', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (764, 5, 89, N'Mediamart PT Đoan Hùng', N'Khu Đồng Tâm- Thị trấn Đoan Hùng- Huyện Đoan Hùng- Tỉnh Phú Thọ- Việt Nam', N'C038041543', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (765, 5, 318, N'Mediamart HN Kim Bài', N'117-119- Tổ 2- Phố Kim Bài- Thị Trấn Kim Bài- Huyện Thanh Oai- Thành Phố Hà Nội', N'C038041544', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (766, 2, 26, N'Điện Máy Xanh (TGDD) AG 129 Trần Hưng Đạo', N'129 Trần Hưng Đạo- P. Mỹ Phước- Tp. Long Xuyên- T. An Giang', N'C005110775', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (767, 5, 400, N'Mediamart TH Bút Sơn', N'Phố Trung Sơn- Thị trấn Bút Sơn- Huyện Hoằng Hóa- Tỉnh Thanh Hóa- Việt Nam', N'C038041546', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (768, 5, 18, N'Mediamart HD Chí Linh', N'Số nhà 27- đường Nguyễn Trãi 1- Phường Sao Đỏ- Thị xã Chí Linh- Hải Dương', N'C038041547', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (769, 5, 9, N'Mediamart HP Nguyễn Văn Linh', N'Số 234 đường Nguyễn Văn Linh-Phường Dư Hàng Kênh- quận Lê Chân- Thành phố Hải Phòng- Việt Nam', N'C038041548', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (770, 5, 132, N'Mediamart YB Yên Bái', N'Tổ 32C- phường Đồng Tâm- Thành phố Yên Bái- Tỉnh Yên Bái- Việt Nam', N'C038041549', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (771, 2, 11, N'Điện Máy Xanh (TGDĐ) TTH Số 124 đường Lý Thái Tổ', N'128A Lý Thái Tổ- P. An Hòa- Tp. Huế- T. Thừa Thiên Huế', N'C038051545', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (772, 2, 398, N'Điện Máy Xanh (TGDĐ) QNI Đ. Quốc Lộ 1A thửa đất số 302 348 tờ bản đồ số 6', N'Đ. Quốc Lộ 1A- thửa đất số 302- 348- tờ bản đồ số 6- đội 6- thôn Năng Tây 2- xã Nghĩa Phương- Huyện Tư Nghĩa- T. Quảng Ngãi', N'C038051546', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (773, 2, 366, N'Điện Máy Xanh (TGDĐ) QNM Đường Quốc Lộ 1 A Xã Bình Trung', N'Đường Quốc Lộ 1 A- Xã Bình Trung- Huyện Thăng Bình- Tỉnh Quảng Nam', N'C038051547', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (774, 2, 401, N'Điện Máy Xanh (TGDĐ) QTR Đường Quốc Lộ 9B', N'Số 330 Đường 2/4- TT. Cam Lộ- H. Cam Lộ- T. Quảng Trị', N'C038051548', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (775, 2, 402, N'Điện Máy Xanh (TGDĐ) LD QL 20  Xã Ninh Gia', N'QL 20-  Xã Ninh Gia- Huyện Đức Trọng- Tỉnh Lâm Đồng', N'C038051549', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (776, 2, 69, N'Điện Máy Xanh (TGDĐ) GL 114 Hai Bà Trưng', N'114 Hai Bà Trưng - P. Diên Hồng -  Tỉnh Gia Lai', N'C038051550', NULL, 0, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (777, 2, 74, N'Điện Máy Xanh (TGDĐ) HCM Số 29A đường Nguyễn Văn Quá', N'Số 29A đường Nguyễn Văn Quá- Phường Đông Hưng Thuận- Quận 12- TP HCM', N'C038051552', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (778, 2, 178, N'Điện Máy Xanh (TGDĐ) HCM  Số 2186 Đường Vĩnh Lộc Ấp 4', N' Số 2186- Đường Vĩnh Lộc- Ấp 4- Xã Vĩnh Lộc B- Huyện Bình Chánh- Tp. Hồ Chí Minh', N'C038051553', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (779, 2, 403, N'Điện Máy Xanh (TGDĐ) TV 177-196 đường 3 tháng 2 khóm Cẩm Mỹ A', N'177-196- đường 3 tháng 2- khóm Cẩm Mỹ A- thị trấn Cầu Ngang- huyện Cầu Ngang- tỉnh Trà Vinh', N'C038051554', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (780, 2, 404, N'Điện Máy Xanh (TGDĐ) CT thửa số 193 194 tờ bản đồ số 3', N'Số 520- tổ 25- Quốc lộ 91- P. Thốt Nốt- Q. Thốt Nốt- Tp. Cần Thơ', N'C038051555', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (781, 3, 151, N'CTy TNHH Cao Phong ( STĐM Chợ Lớn) - Bình Tân 2 _ 697-699 Kinh Dương Vương', N'697-699 Kinh Dương Vương -P.An Lạc- Q.Bình Tân-TP.HCM- Việt Nam', N'C038451541', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (782, 2, 132, N'Điện Máy Xanh (TGDĐ) YB Đường Đinh Tiên Hoàng', N'Số 152-154 Đinh Tiên Hoàng- tổ 03- P. Đồng Tâm- Tp. Yên Bái- T. Yên Bái', N'C038481540', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (783, 2, 405, N'Điện Máy Xanh (TGDĐ) CB Thửa đất số 89 98', N'Số 125 Hòa Nam- TT. Quảng Uyên- H. Quảng Uyên- T. Cao Bằng', N'C038481541', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (784, 2, 406, N'Điện Máy Xanh (TGDĐ) QB Thị Trấn Kiến Giang', N'27 Nguyễn Tất Thành- TT. Kiến Giang- H. Lệ Thủy- T. Quảng Bình', N'C038481542', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (785, 2, 76, N'Điện Máy Xanh (TGDĐ) BRVT Ấp 2  Xã Hắc Dịch', N'Ấp 2 - Xã Hắc Dịch - Huyện Tân Thành - Tỉnh Bà Rịa Vũng Tàu', N'C038481544', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (786, 2, 407, N'Điện Máy Xanh (TGDĐ) BP Tổ 05 thôn Phú Cường', N'Tờ bản đồ 37- thửa đất 108- tổ 5- thôn Phú Cường- xã Phú Riềng- H. Phú Riềng- T. Bình Phước', N'C038481545', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (787, 2, 27, N'Điện Máy Xanh (TGDĐ) KG Số 1125A Đường Mạc Cửu', N'Số 1125A- Đường Mạc Cửu- Khu Phố Nguyễn Thái Bình- Phường Vĩnh Quang - Thành Phố Rạch Giá-Tỉnh Kiên Giang', N'C038481547', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (788, 2, 203, N'Điện Máy Xanh (TGDĐ) KG Thửa đất số 00 tờ bản đồ số 00', N'Thửa đất số 00 -tờ bản đồ số 00 - Số 250 - Đường Quốc Lộ 63- Tổ 8- Ấp 7 Chợ- Xã Đông Thái- Huyện An Biên-Tỉnh Kiên Giang', N'C038481548', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (789, 4, 128, N' Nguyễn Kim Hải Phòng - HP 104 Lương Khánh Thiện Q Ngô Quyền ', N'104 Lương Khánh Thiện- p. Lương Khánh Thiện- q. Ngô Quyền- Hải Phòng', N'C038561537', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (790, 2, 249, N'Điện Máy Xanh (TGDĐ) QNI Đ. Quốc Lộ 1A lô số 242-243-khu A1', N'Đ. Quốc Lộ 1A- lô số 242-243-khu A1- PLDC Làng Cá Sa Huỳnh- xã phổ Thạnh- H. Đức Phổ- T. Quảng Ngãi', N'C038741543', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (791, 2, 408, N'Điện Máy Xanh (TGDĐ) QB Thị Trấn Đồng Lê', N'Quốc lộ 12A - Tiểu khu 2- TT. Đồng Lê- H. Tuyên Hóa- T. Quảng Bình', N'C038741544', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (792, 2, 8, N'Điện Máy Xanh (TGDĐ) DN Thửa đất số 121 122 Tờ Bản Đồ số 35', N'Thửa đất số 121- 122- Tờ Bản Đồ số 35- số 9/13 QL 20- tổ 13- Ấp 2- X Phú Ngọc- H Định Quán- T Đồng Nai', N'C038741548', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (793, 2, 59, N'Điện Máy Xanh (TGDĐ) BD Thửa đất 1346 1347 tờ bản đồ 21', N'Thửa đất 1346- 1347- tờ bản đồ 21- số 193 Huỳnh Văn Lũy- P Phú Lợi- TP Thủ Dầu Một- T Bình Dương', N'C038741549', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (794, 2, 178, N'Điện Máy Xanh (TGDĐ) HCM 708 tờ bản đồ số 72 xã Hưng Long', N'D16/40/1A- ấp 4- xã Hưng Long- h. Bình Chánh- TP. Hồ Chí Minh', N'C038741551', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (795, 2, 87, N'Điện Máy Xanh (TGDĐ) LA Đường Nguyễn Hữu Thọ Thửa 3797-3798-3799', N'Đường Nguyễn Hữu Thọ- Thửa 3797-3798-3799- tờ bản đồ 01- KP.02- TT. Bến Lức- H. Bến Lức- T. Long An', N'C038741552', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (796, 2, 138, N'Điện Máy Xanh (TGDĐ) TV đường Võ Nguyên Giáp khóm 6', N'đường Võ Nguyên Giáp- khóm 6- phường 8- TP Trà Vinh- tỉnh Trà Vinh', N'C038741553', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (797, 2, 146, N'Điện Máy Xanh (TGDĐ) VL Thửa 213 tờ bản đồ 38 Ấp Khu Phố', N'Thửa 213- tờ bản đồ 38- Ấp Khu Phố- X. Hựu Thành- H. Trà Ôn- T. Vĩnh Long', N'C038741554', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (798, 2, 562, N'Điện Máy Xanh (TGDĐ) ST Thửa 1466 tờ bản đổ 08 ấp Xây Đá', N'Số nhà 77- ấp Xây Đá- TT. Châu Thành- H. Châu Thành- T. Sóc Trăng', N'C038741555', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (799, 2, 117, N'Điện Máy Xanh (TGDĐ) CT Mậu Thân P. An Hòa', N'Số 43 Mậu Thân- P. An Hòa- Q. Ninh Kiều- Tp. Cần Thơ', N'C038741556', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (800, 2, 168, N'Điện Máy Xanh (TGDĐ) QTR Số 67 - 69 đường Lê Duẫn Khối 3A', N'Số 67 - 69 đường Lê Duẫn- Khối 3A- thị trấn Khe Sanh- Huyện Hướng Hóa- tỉnh Quảng Trị', N'C038901590', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (801, 2, 74, N'Điện Máy Xanh (TGDĐ) HCM 343-345 Lê Văn Khương', N'343-345 Lê Văn Khương- Phường Hiệp Thành- Quận 12- TP HCM', N'C038901592', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (802, 2, 178, N'Điện Máy Xanh (TGDĐ) HCM D12/23B ấp 4 xã Bình Chánh', N'D12/23B- ấp 4- xã Bình Chánh- Huyện Bình Chánh- TP. Hồ Chí Minh', N'C038901593', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (803, 2, 45, N'Điện Máy Xanh (TGDĐ) BD Thửa đất 600-774 tờ bản đồ 174 đường 22/12', N'Thửa đất 600-774- tờ bản đồ 174- đường 22/12- KP. Hòa Lân 2- P. Thuận Giao- TX. Thuận An- T. Bình Dương', N'C038901594', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (804, 2, 409, N'Điện Máy Xanh (TGDĐ) BD Thửa đất 152 290 tờ bản đồ 16 Quốc lộ 13 tổ 18', N'Thửa đất 152- 290- tờ bản đồ 16- Quốc lộ 13- tổ 18- ấp 01- xã Trừ Văn Thố- H. Bàu Bàng- T. Bình Dương', N'C038901595', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (805, 2, 240, N'Điện Máy Xanh (TGDĐ) LD 33 Phan Chu Trinh', N'33 Phan Chu Trinh- P.09- TP. Đà Lạt- Tỉnh Lâm Đồng', N'C038901597', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (806, 2, 561, N'Điện Máy Xanh (TGDĐ) LA Thửa đất 30-71 tờ bản đồ 1N khóm 02', N'Thửa đất 30-71- tờ bản đồ 1N- khóm 02- TT. Tầm Vu- H. Châu Thành- T. Long An', N'C038901598', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (807, 7, 141, N'Pico BN Bắc Ninh 2 4 Nguyễn Văn Cừ', N'04 Nguyễn Văn Cừ- phường Ninh Xá- TP. Bắc Ninh', N'C038901704', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (808, 7, 3, N'Pico HN Phúc La 38 Nguyễn Chánh', N'38 Nguyễn Chánh- đường Phùng Hưng mới- phường Phúc La- quận Hà Đông- Hà Nội', N'C038901705', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (809, 2, 22, N'Điện Máy Xanh (TGDD) DT 03 QL 30 P.Mỹ Phú', N'Số 03 Quốc lộ 30 P.Mỹ Phú TP.Cao Lãnh T.Đồng Tháp.', N'C015600732', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (810, 5, 318, N'Mediamart HN Thạch Bích -190 Quốc lộ 21B', N'190 Quốc lộ 21B Thôn Thượng- xã Bích Hòa - huyện Thanh Oai- Thành Phố- Hà Nội- Việt Nam', N'C038991543', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (811, 5, 137, N'Mediamart Ứng Hòa - Quốc lộ số 21B', N'Quốc lộ số 21B- xã Hòa Xá- Huyện Ứng Hòa- Thành phố Hà Nội- Việt Nam', N'C038991544', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (812, 3, 103, N'CTy TNHH Cao Phong ( STĐM Chợ Lớn) - Gò Công', N'Ấp Hưng Hòa- Xã Long Hưng- Thị xã Gò Công- T. Tiền Giang- Việt Nam', N'C038991547', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (813, 2, 171, N'Điện Máy Xanh (TGDĐ) TH Thửa đất 234-235 tờ bản đồ 05-06 tiểu khi 6', N'Thửa đất 234-235- tờ bản đồ 05-06- tiểu khi 6- TT. Tĩnh Gia- H. Tĩnh Gia- T. Thanh Hóa', N'C039121635', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (814, 2, 222, N'Điện Máy Xanh (TGDĐ) HCM 158 An Dương Vương', N'158 An Dương Vương- P.16- Q.8- TP.HCM', N'C039121636', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (815, 2, 14, N'Điện Máy Xanh (TGDĐ) HCM Số 223-225 Phan Huy Ích', N'Số 223-225 Phan Huy Ích- P.14- Gò Vấp- TP.HCM', N'C039121637', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (816, 2, 385, N'Điện Máy Xanh (TGDĐ) BDH 460 Quang Trung TT. Phù Mỹ', N'460 Quang Trung- TT. Phù Mỹ- H. Phù Mỹ- T. Bình Định', N'C039121638', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (817, 2, 34, N'Điện Máy Xanh (TGDĐ) HCM 328 Tân Kỳ Tân Quý', N'328 Tân Kỳ Tân Quý- Phường Sơn Kỳ- Quận Tân Phú- TP. Hồ Chí Minh', N'C039121639', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (818, 3, 25, N'CTy TNHH Cao Phong (STĐM Chợ Lớn) - Mỹ Tho 2', N'77 Nguyễn Thị Thập- KP 4- P.10-Tp.Mỹ Tho- Tỉnh Tiền Giang- Việt Nam', N'C039191547', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (819, 2, 558, N'Điện Máy Xanh (TGDĐ) BTR Thưả đất số 105-503-504 tờ bản đồ số 5', N'Thưả đất số 105-503-504- tờ bản đồ số 5- ấp An Bình- xã An Hiệp- huyện Châu Thành- tỉnh Bến Tre', N'C039242212', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (820, 2, 127, N'Điện Máy Xanh (TGDĐ) TV Thửa đất số 353 tờ bản đồ số 17 ấp Tân An Chợ', N'Đường tỉnh lộ 911- ấp Tân An Chợ- xã Tân An- H. Càng Long- T. Trà Vinh', N'C039242213', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (821, 2, 410, N'Điện Máy Xanh (TGDĐ) BTR Thửa đất số 9 và 118 tờ bản đồ số 15 ấp Chợ', N'Thửa đất số 9 và 118- tờ bản đồ số 15- ấp Chợ- xã Mỹ Thạnh- huyện Giồng Trôm- tỉnh Bến Tre', N'C039242214', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (822, 2, 179, N'Điện Máy Xanh (TGDĐ) VL 62_63_83_84_85_86 Tờ bản đồ: 37 Ấp 8 Xã Mỹ Lộc', N'Số 492- tổ 1A- ấp 8- xã Mỹ Lộc- H. Tam Bình- T. Vĩnh Long', N'C039242215', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (823, 2, 299, N'Điện Máy Xanh (TGDĐ) CM Thửa đất số 83-393-465-196 tờ bản đồ số 06 khóm 2', N'Thửa đất số 83-393-465-196- tờ bản đồ số 06- khóm 2- thị trấn Cái Đôi Vàm- huyện Phú Tân- tỉnh Cà Mau', N'C039242216', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (824, 2, 210, N'Điện Máy Xanh (TGDĐ) CM Thửa 39-1077 tờ bản đồ 05-43 ấp Phấn Thạnh', N'Thửa 39-1077- tờ bản đồ 05-43- ấp Phấn Thạnh- X. Thạnh Phú - Lương Thế Trân- H. Cái Nước- T. Cà Mau', N'C039242217', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (825, 5, 139, N'Mediamart QN Uông Bí', N'Khu Lạc Thanh- Phường Yên Thanh-Thành phố Uông Bí- Tỉnh Quảng Ninh- Việt Nam', N'C039391529', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (826, 2, 411, N'Điện Máy Xanh (TGDĐ) PY QL 1A  Khu phố Trường Xuân', N'QL 1A-  Khu phố Trường Xuân- thị Trấn Chí Thạnh- Huyện Tuy An- Tỉnh Phú Yên', N'C039391550', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (827, 2, 412, N'Điện Máy Xanh (TGDĐ) NT Thửa đất số A5 A8 tờ bản đồ số khu dân cư', N'Thửa đất số A5- A8- tờ bản đồ số khu dân cư Trường TH Du Khánh- KP Khánh Chữ 2- TT Khánh Hải- H Ninh Hải- T Ninh Thuận', N'C039391552', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (828, 2, 295, N'Điện Máy Xanh (TGDĐ) KT Số 811 - 813  Đ. Hùng Vương thửa đất số 160', N'Số 811 - 813 - Đ. Hùng Vương- thửa đất số 160- 161+161b- tờ bản đồ số 16- TDP số 3- TT. Plei kần T. Kon Tum', N'C039391553', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (829, 2, 396, N'Điện Máy Xanh (TGDĐ) BP Đường quốc lộ 14 Xã Nghĩa Trung', N'Đường quốc lộ 14- Xã Nghĩa Trung- Huyện Bù Đăng- Tỉnh Bình Phước', N'C039391554', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (830, 2, 20, N'Điện Máy Xanh (TGDĐ) DN Thửa đất 215 216 tờ bản đồ 84 số 303 QL 51', N'số 303 QL 51- ấp Long Khánh 3- xã Tam Phước- TP. Biên Hòa- T. Đồng Nai', N'C039391555', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (831, 2, 21, N'Điện Máy Xanh (TGDĐ) BD Số 115 Quốc Lộ 1K Khu Phố Tây B', N'Số 115 Quốc Lộ 1K- Khu Phố Tây B- Phường Đông Hòa- Thị Xã Dĩ An- tỉnh Bình Dương', N'C039391556', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (832, 2, 262, N'Điện Máy Xanh (TGDĐ) HCM 60-60A-60B Tân Hòa Đông', N'60-60A-60B Tân Hòa Đông- phường 14- quận 06- TP. Hồ Chí Minh', N'C039391557', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (833, 2, 90, N'Điện Máy Xanh (TGDĐ) HCM 632 - 634 Đường Quốc Lộ 13 khu phố 4', N'632 - 634 Đường Quốc Lộ 13- khu phố 4- phường Hiệp Bình Phước- Quận Thủ Đức- Thành phố Hồ Chí Minh', N'C039391558', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (834, 2, 413, N'Điện Máy Xanh (TGDĐ) LA Thửa đất số 104 tờ bản đồ số 11-1', N'Số nhà 81- Phan Văn Tình- TT. Thủ Thừa- H. Thủ Thừa- T. Long An', N'C039391559', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (835, 2, 557, N'Điện Máy Xanh (TGDĐ) AG thửa số 18 tờ bản đồ số 22 Ấp Vĩnh Lộc', N'Số 175- ấp Vĩnh Lộc- xã Vĩnh Bình- H. Châu Thành- T. An Giang', N'C039391560', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (836, 2, 251, N'Điện Máy Xanh (TGDĐ) HN Đội sản xuất số 02- khu đồi Cửa Đồn', N'Đội sản xuất số 02- khu đồi Cửa Đồn- thôn Long Phú- xã Hòa Thạch- huyện Quốc Oai- TP Hà Nội', N'C039721540', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (837, 2, 414, N'Điện Máy Xanh (TGDĐ) BN Thị trấn Lim- huyện Tiên Du', N'Thị trấn Lim- huyện Tiên Du- tỉnh Bắc Ninh', N'C039721542', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (838, 2, 415, N'Điện Máy Xanh (TGDĐ) QB Đ. Quốc Lộ 1A- thôn Dinh Mười', N'Đ. Quốc Lộ 1A- thôn Dinh Mười- thửa đất số 106- tờ bản đồ số 05. xã Gia Ninh- H. Quảng Ninh- T. Quảng Bình', N'C039721543', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (839, 2, 416, N'Điện Máy Xanh (TGDĐ) QB Đường Quốc Lộ 1A- thôn Di Luân', N'Đường Quốc Lộ 1A- thôn Di Luân- xã Quảng Tùng- huyện Quảng Trạch- tỉnh Quảng Bình', N'C039721544', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (840, 2, 417, N'Điện Máy Xanh (TGDĐ) QT Đ. Lê Duẩn- thửa đất số 167', N'Đ. Lê Duẩn- thửa đất số 167- tờ bản đồ số 28- TT. Gio Linh- H. Gio Linh- T. Quảng Trị', N'C039721545', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (841, 2, 82, N'Điện Máy Xanh (TGDĐ) KH Số 10 đường 2/4 phường Vĩnh Hải', N'Số 10 đường 2/4 phường Vĩnh Hải- Thành Phố Nha Trang- Tỉnh Khánh Hòa', N'C039721547', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (842, 2, 173, N'Điện Máy Xanh (TGDĐ) VL Thửa đất 108- tờ bản đồ 24', N'số 278- tổ 10- ấp Nhơn Ngãi- xã Hiếu Phụng- H. Vũng Liêm- T. Vĩnh Long', N'C039721549', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (843, 2, 103, N'Điện Máy Xanh (TGDĐ)TG Thửa đất số 706- tờ bản đồ số 6', N'Số 619- ấp Ông Non- xã Tân Trung- TX. Gò Công- T. Tiền Giang', N'C039721550', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (844, 2, 127, N'Điện Máy Xanh (TGDĐ) TV Thửa đất số 89A-C- tờ bản đồ số 10', N'41 Quốc lộ 53- ấp Nguyệt Lãng B- xã Bình Phú- H. Càng Long- T. Trà Vinh', N'C039721551', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (845, 3, 45, N'CTy TNHH Cao Phong (STĐM Chợ Lớn) BD 27Bis Quốc Lộ 13 ( CP Bình Dương 2 - Thuận An)', N'27Bis Quốc Lộ 13- Khu phố Bình Hòa - P.Lái Thiêu- Tx. Thuận An-Tỉnh Bình Dương- Việt Nam', N'C039731548', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (846, 2, 418, N'Điện Máy Xanh (TGDĐ) SL Số nhà 54 thửa đất 53 và 53A', N'Số nhà 54- thửa đất 53 và 53A- tờ bản đồ số 30- tiểu khu 40- TT. Nt Mộc Châu- H. Mộc Châu- T. Sơn La', N'C039931579', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (847, 2, 56, N'Điện Máy Xanh (TGDĐ) TH Đường Đại lộ Lê Lợi', N'Đường Đại lộ Lê Lợi- P. Phú Sơn- Tp. Thanh Hóa- T. Thanh Hóa', N'C039931580', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (848, 2, 419, N'Điện Máy Xanh (TGDĐ) CT 1832 Quốc lộ 91', N'1832 Quốc lộ 91- khu vực Thới Hưng- P. Long Hưng- Q. Ô Môn- Tp. Cần Thơ', N'C039931586', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (849, 2, 27, N'Điện Máy Xanh (TGDD) KG 358 Nguyễn Trung Trực', N'358 Nguyễn Trung Trực P.Vĩnh Lạc TP.Rạch Giá T.Kiên Giang', N'C019560723', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (850, 2, 401, N'Điện Máy Xanh (TGDĐ) QT Quốc lộ 1A Thôn An Bình', N'Quốc lộ 1A- Thôn An Bình- Xã Cam Thanh- Huyện Cam Lộ- Tỉnh Quảng Trị', N'C039931588', NULL, 0, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (851, 2, 420, N'Điện Máy Xanh (TGDĐ) QT Thôn An Du Đông 2', N'Thôn An Du Đông 2- Thửa đất số 686/1- 855- tờ bản đồ số 10- xã Vĩnh Tân- H. Vĩnh Linh- T. Quảng Trị', N'C039931589', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (852, 2, 124, N'Điện Máy Xanh (TGDĐ) BL Thửa số 53 tờ bản đồ 51', N'Thửa số 53- tờ bản đồ 51- số 273- Đường Quốc lộ 1A- Khóm 2- phường Láng Tròn- thị xã Giá Rai- tỉnh Bạc Liêu', N'C039931590', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (853, 2, 421, N'Điện Máy Xanh (TGDĐ) ST Thửa Đất Số 45-111', N'Số nhà 86- Đoàn Thế Trung- Ấp Chợ- TT Cù Lao Dung- H. Cù Lao Dung- T. Sóc Trăng', N'C039931591', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (854, 2, 260, N'Điện Máy Xanh (TGDĐ) QN Đ. ĐT 616 thửa đất số 397', N'Đ. ĐT 616- thửa đất số 397- tờ bản đồ số 09- xã Tam Dân- H. Phú Ninh- T. Quảng Nam', N'C039931592', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (855, 2, 265, N'Điện Máy Xanh (TGDĐ) BT Đường 885 thửa đất số 267', N'Đường 885- thửa đất số 267- 946- tờ bản đồ số 9- ấp Tân Bình- xã Tân Thủy- huyện Ba Tri- tỉnh Bến Tre', N'C039931593', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (856, 2, 422, N'Điện Máy Xanh (TGDĐ) PT Thị Trấn Sông Thao', N'Khu 9- TT. Sông Thao- H. Cẩm Khê- T. Phú Thọ', N'C039931594', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (857, 2, 28, N'Điện Máy Xanh (TGDĐ) TN 309 Lương Ngọc Quyến', N'309 Lương Ngọc Quyến- P. Hoàng Văn Thụ- TP. Thái Nguyên- T. Thái Nguyên', N'C040011554', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (858, 2, 21, N'Điện Máy Xanh (TGDĐ) BD Số 65 An Bình', N'Số 65 An Bình- P. An Bình- TX. Dĩ An. T. Bình Dương', N'C040011555', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (859, 2, 423, N'Điện Máy Xanh (TGDĐ) LD 734 Hùng Vương', N'734 Hùng Vương- TT. Ma Đa Guôi- H. Đạ Huoai- T. Lâm Đồng', N'C040011556', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (860, 2, 278, N'Điện Máy Xanh (TGDĐ) LA Số 249 ấp 3 xã Long', N'Số 249 ấp 3- xã Long Hòa- H. Cần Đước- T. Long An', N'C040011557', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (861, 2, 424, N'Điện Máy Xanh (TGDĐ) LA Thửa đất 132-133', N'Thửa đất 132-133- tờ bản đồ 9- ấp 5- xã Lạc Tấn- H. Tân Trụ- T. Long An', N'C040011558', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (862, 2, 381, N'Điện Máy Xanh (TGDĐ) DT Số 2 ấp Vĩnh Lợi', N'Số 2- ấp Vĩnh Lợi- xã Vĩnh Thạnh- H. Lấp Vò- T. Đồng Tháp', N'C040011559', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (863, 2, 559, N'Điện Máy Xanh (TGDĐ) DT Số 62 QL. 80', N'Số 62- QL. 80- khóm Phú Mỹ- TT Cái Tàu Hạ- H. Châu Thành- T. Đồng Tháp', N'C040011560', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (864, 2, 65, N'Điện Máy Xanh (TGDĐ) DT Thửa đất 1970 1971 2293 2294 2295 tờ bản đồ 2', N'Thửa đất 1970- 1971- 2293- 2294- 2295- tờ bản đồ 2- xã Trường Xuân- H. Tháp Mười- T. Đồng Tháp', N'C040011561', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (865, 2, 425, N'Điện Máy Xanh (TGDĐ) CTLô B1- Số nền 11-13-', N'Lô B1- Số nền 11-13-15-17- QL. 80- ấp Vĩnh Tiến- TT. Vĩnh Thạnh- H. Vĩnh Thạnh- TP. Cần Thơ', N'C040011562', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (866, 2, 116, N'Điện Máy Xanh (TGDĐ) CT 189 Lê Hồng Phong', N'189 Lê Hồng Phong- P. Trà Nóc- Q. Bình Thuỷ- TP. Cần Thơ', N'C040011563', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (867, 4, 138, N'Nguyễn Kim TV 560 Nguyễn Đáng', N'560 Nguyễn Đáng- Khóm 3- Phường 6- TP Trà Vinh- tỉnh Trà Vinh', N'C040081548', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (868, 4, 135, N'Nguyễn Kim HG 1 Nguyễn Công Trứ', N'1 Nguyễn Công Trứ- Phường I- Thành phố Vị Thanh- tỉnh Hậu Giang', N'C040081549', NULL, 0, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (869, 4, 38, N'Nguyễn Kim HCM 73 Tỉnh lộ 8', N'73 Tỉnh lộ 8- Khu phố 1- Thị trấn Củ Chi- Huyện Củ Chi- Tp. HCM', N'C040081550', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (870, 3, 31, N'CTy TNHH Cao Phong (STĐM Chợ Lớn) - Quãng Ngãi', N'126 Đinh Tiên Hoàng-P.Nghĩa Chánh-Tp. Quảng Ngãi-Tỉnh Quảng Ngãi- Việt Nam', N'C040231566', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (871, 2, 43, N'Điện Máy Xanh (TGDĐ) LC Thửa Đất Số 440', N'Số 009 Hoàng Liên- tổ 15-  P. Cốc Lếu- TP. Lào Cai- T. Lào Cai', N'C040361543', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (872, 2, 426, N'Điện Máy Xanh (TGDĐ) TH Đường quốc lộ 15A', N'SN 91-93-93A khu phố 1 Thị Trấn Yên Cát Huyện Như Xuân Tỉnh Thanh Hóa Việt Nam', N'C040361544', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (873, 2, 427, N'Điện Máy Xanh (TGDĐ) QN Số 171 Phạm Văn Đồng-', N'Số 171- Đ. Phạm Văn Đồng- thửa đất số 416- tờ bản đồ số 12- TT. Ba Tơ- H. Ba Tơ- T. Quảng Ngãi', N'C040361545', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (874, 2, 31, N'Điện Máy Xanh (TGDĐ) QN Số 396 - 398 -400 Nguyễn Văn Linh', N'Số 396- 398- 400- Đ. Nguyễn Văn Linh- thửa đất số 444-445- 446- tờ bản đồ số 14- P. Trương Quang Trọng- TP. Quảng Ngãi- T. Quảng Ngãi', N'C040361546', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (875, 2, 428, N'Điện Máy Xanh (TGDĐ) AG thửa số 23 - 24 tờ bản đồ số 010', N'Số 321- tổ 16- QL. 91- TT. Cái Dầu- H. Châu Phú- T. An Giang', N'C040361547', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (876, 2, 90, N'Điện Máy Xanh (TGDĐ) HCM 43 QL1K khu phố 2', N'43 QL. 1K- khu phố 2- P. Linh Xuân- Q. Thủ Đức- TP. Hồ Chí Minh', N'C040361548', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (877, 2, 38, N'Điện Máy Xanh (TGDĐ) HCM Số 271 - 273 QL 22', N'Số 271 - 273 QL. 22- ấp Đình- xã Tân Phú Trung- H. Củ Chi- TP. Hồ Chí Minh', N'C040361549', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (878, 2, 429, N'Điện Máy Xanh (TGDĐ) PT Thửa Đất 93 Tờ Bản Đồ Số 14', N'Thửa Đất 93- Tờ Bản Đồ Số 14- Khu Phố- Thị Trấn Thanh Thủy- Huyện Thanh Thủy- Tỉnh Phú Thọ', N'C040501550', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (879, 2, 415, N'Điện Máy Xanh (TGDĐ) QB Đường Quốc Lộ 1A Tiểu khu 04', N'Đường Quốc Lộ 1A- Tiểu khu 04- Thị Trấn Quán Hàu- Huyện Quảng Ninh- Tỉnh Quảng Bình', N'C040501551', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (880, 2, 228, N'Điện Máy Xanh (TGDĐ) DL Thửa Đất Số 61 Tờ Bản Đồ 71', N'Số 74A Nguyễn Tất Thành- TT. Krông Năng- T. Đắk Lắk', N'C040501552', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (881, 2, 430, N'Điện Máy Xanh (TGDĐ) BT Thửa đất số 24 & 25 tờ bản số 30', N'Số nhà 192 đường 882 (thửa đất 24-25- tờ bản đồ 30)- xã Phước Mỹ Trung- H. Mỏ Cày Bắc- T. Bến Tre', N'C040501554', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (882, 2, 375, N'Điện Máy Xanh (TGDĐ) AG Thửa 39-3238 tờ bản đồ 01-13', N'Thửa 39-3238- tờ bản đồ 01-13- X. Quốc Thái- H. An Phú- T. An Giang (Số 1572- QL 91C- ấp Đồng Ky- X. Quốc Thái- H. An Phú- T. An Giang)', N'C040501555', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (883, 2, 291, N'Điện Máy Xanh (TGDĐ) VP Thôn Hòa Loan xã Lũng Hòa', N'Thôn Hòa Loan- xã Lũng Hòa- H. Vĩnh Tường- T. Vĩnh Phúc', N'C040501557', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (884, 2, 50, N'Điện Máy Xanh (TGDĐ) HCM SN 67 Nguyễn Huệ', N'SN 67 Nguyễn Huệ- P. Ngọc Trạo- TX. Bỉm Sơn- T. Thanh Hóa', N'C040501558', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (885, 2, 17, N'Điện Máy Xanh (TGDĐ) HCM 21 Trần Não khu phố 4', N'21 Trần Não- khu phố 4- P. Bình An- Q. 2- TP. Hồ Chí Minh', N'C040501559', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (886, 2, 30, N'Điện Máy Xanh (TGDĐ) HCM 36/3D Phan Văn Đối', N'36/3D Phan Văn Đối- ấp Tiền Lân- xã Bà Điểm- H. Hóc Môn- TP. Hồ Chí Minh', N'C040501560', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (887, 2, 57, N'Điện Máy Xanh (TGDĐ) BT 118 Lê Thánh Tôn thôn Hiệp Hòa', N'118 Lê Thánh Tôn- thôn Hiệp Hòa- xã Tân Hải- TX. Lagi- T. Bình Thuận', N'C040501562', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (888, 2, 360, N'Điện Máy Xanh (TGDĐ) TTH QL 1A xã Lộc Sơn', N'QL. 1A- xã Lộc Sơn- H. Phú Lộc- T. Thừa Thiên Huế', N'C040501564', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (889, 2, 431, N'Điện Máy Xanh (TGDĐ) TTH 57 & 59 Phò Trạch', N'57 - 59 Phò Trạch- TT. Phong Điền- H.  Phong Điền- T. Thừa Thiên Huế', N'C040501565', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (890, 2, 564, N'Điện Máy Xanh (TGDĐ) TG Thửa đất 4367-4368-4369 tờ bản đồ 1', N'Thửa đất 4367-4368-4369- tờ bản đồ 1- ấp Tân Phú- xã Tân Lý Tây- H. Châu Thành- T. Tiền Giang', N'C040501567', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (891, 2, 432, N'Điện Máy Xanh (TGDĐ) BL số 383 ấp Tam Hưng', N'số 383- ấp Tam Hưng- xã Vĩnh Hưng- H Vĩnh Lợi- T. Bạc Liêu', N'C040501568', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (892, 2, 355, N'Điện Máy Xanh (TGDĐ) AG 17A-17B Nguyễn Văn Thoại', N'Số 17A-17B Nguyễn Văn Thoại- P.Châu Phú B- TP.Châu Đốc- T.An Giang', N'C020760715', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (893, 5, 248, N'Mediamart HD 1 Phạm Ngũ Lão', N'1 Phạm Ngũ Lão- phường Phạm Ngũ Lão- Thành phố Hải Dương- Tỉnh Hải Dương', N'C040681529', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (894, 5, 433, N'Mediamart HD Nguyễn Chế Nghĩa - Gia Lộc', N'Ngã 3 cây xăng- đường Nguyễn Chế Nghĩa- Thị trấn Gia Lộc- Huyện Gia Lộc- Tinh Hải Dương- Việt Nam', N'C040681530', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (895, 2, 241, N'Điện Máy Xanh (TGDĐ) QN Thửa đất số 142 tờ bản đồ số 43', N'Thửa đất số 142- tờ bản đồ số 43- thôn Diêm Phổ- Xã Tam Anh Nam- H. Núi Thành- T. Quảng Nam', N'C040871539', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (896, 2, 322, N'Điện Máy Xanh (TGDĐ) BD Đường Quốc Lộ 1A thửa đất số 366', N'Số 259 - 261 Lê Duẩn- P. Đập Đá- TX. An Nhơn- T. Bình Định', N'C040871540', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (897, 2, 282, N'Điện Máy Xanh (TGDĐ) BRVT Thửa đất số 196 -205 tờ bản đồ 107', N'Số 148Võ Thị Sáu- KP Long Bình- TT. Long Điền- H. Long Điền- T. Bà Rịa - Vũng Tàu', N'C040871541', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (898, 4, 11, N'Nguyễn Kim Huế 100 Lê Lợi', N'100 Lê Lợi- p Phú Hội- Tp Huế- tỉnh Thừa Thiên Huế', N'C041081543', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (899, 3, 434, N'CTy TNHH Cao Phong (STĐM Chợ Lớn) VL 310 Quốc Lộ 53 Long Hồ', N'310 Quốc Lộ 53- Thị Trấn Long Hồ -  Huyện Long Hồ- Tỉnh Vĩnh Long- Việt Nam', N'C041201540', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (900, 2, 221, N'Điện Máy Xanh (TGDĐ) BR-VT Số 02/01 ấp Nhân Tiến xã Xuyên Mộc', N'Số 02/01 ấp Nhân Tiến- xã Xuyên Mộc- H. Xuyên Mộc- T. Bà Rịa - Vũng Tàu', N'C041531614', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (901, 3, 45, N'CTy TNHH Cao Phong (STĐM Chợ Lớn) BD 5A/2 Đường ĐT743 ( CP Bình Dương 3 - An Phú)', N'5A/2 Đường ĐT743- khu phố 1B- P.An Phú-Thị xã Thuận An- Tỉnh Bình Dương - Việt Nam', N'C041571594', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (902, 5, 132, N'Mediamart YB 7 Nguyễn Thái Học', N'7 Nguyễn Thái Học- Phường Nguyễn Thái Học- Thành phố Yên Bái- Tỉnh Yên Bái', N'C041571599', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (903, 5, 114, N'Mediamart LS 66 Ngô Quyền', N'66 Ngô Quyền- Phường Vĩnh Trại- Thành Phố Lạng Sơn- Tỉnh Lạng Sơn', N'C041571600', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (904, 5, 435, N'Mediamart TH Số 231- Phố Giắt', N'Số 231- Phố Giắt- Thị trấn Triệu Sơn- Huyện Triệu Sơn- Tỉnh Thanh Hóa', N'C041571601', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (905, 5, 113, N'Mediamart HN 22-25- Tổ 2- Khu Xuân Hà', N'22-25- Tổ 2- Khu Xuân Hà- Thị trấn Xuân Mai- Huyện Chương Mỹ- Thành phố Hà Nội', N'C041571602', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (906, 2, 30, N'Điện Máy Xanh (TGDĐ) HCM 110/5F Phan Văn Hớn ấp 5 xã Xuân Thới Thượng', N'110/5F Phan Văn Hớn- ấp 5- xã Xuân Thới Thượng- H. Hóc Môn- TP. Hồ Chí Minh', N'C043261542', NULL, 0, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (907, 2, 436, N'Điện Máy Xanh (TGDĐ) HB Khu 3 TT Mường Khến', N'Khu 3- TT. Mường Khến- H. Tân Lạc- T. Hòa Bình', N'C044001529', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (908, 2, 74, N'Điện Máy Xanh (TGDĐ) HCM Số 102 - 104 - 106 Trường Chinh Khu phố 6', N'Số 102 - 104 - 106 Trường Chinh- Khu phố 6- P. Tân Hưng Thuận- Q. 12- TP. Hồ Chí Minh', N'C044001530', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (909, 2, 44, N'Điện Máy Xanh (TGDĐ) QB 75 Lý Thường Kiệt P Đồng Mỹ', N'75 Lý Thường Kiệt- P. Đồng Mỹ- TP. Đồng Hới- T. Quảng Bình', N'C044001531', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (910, 2, 435, N'Điện Máy Xanh (TGDĐ) TH Số 234 Phố Giắt TT Triệu Sơn', N'Số 234 Phố Giắt- TT. Triệu Sơn- H. Triệu Sơn- T. Thanh Hóa', N'C044371532', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (911, 5, 337, N'Mediamart TB Diêm Điền', N'Số 267- khu 6- Thị trấn Diêm Điền- Huyện Thái Thụy- Tỉnh Thái Bình', N'C044791551', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (912, 2, 420, N'Điện Máy Xanh (TGDĐ) QT 155 Lê Duẩn TT Hồ Xá', N'155 Lê Duẩn- TT. Hồ Xá- H. Vĩnh Linh- T. Quảng Trị', N'C046131526', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (913, 5, 437, N'Mediamart HP Kiến An', N'36 Trần Thành Ngọ- Phường Trần Thành Ngọ- Quận Kiến An- Thành phố Hải Phòng', N'C047731544', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (914, 5, 388, N'Mediamart QNH Vân Đồn', N'Thôn Đông Sơn- Xã Đông Xá- Huyện Vân Đồn- Tỉnh Quảng Ninh', N'C047731545', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (915, 3, 37, N'CTy TNHH Cao Phong (STĐM Chợ Lớn) - Cà Mau 2', N'103-105-107 Lý Thường Kiệt- P.6- TP Cà Mau- Tỉnh Cà Mau- Việt Nam', N'C047871535', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (916, 2, 356, N'Điện Máy Xanh (TGDĐ) Số nhà 15 - 17 Đại lộ Hùng Vương', N'Số nhà 15 - 17 Đại lộ Hùng Vương- Xã Tráng Liệt- H. Bình Giang- T. Hải Dương', N'C048191637', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (917, 2, 438, N'Điện Máy Xanh (TGDĐ) 485 Hùng Vương TT Vạn Giã', N'485 Hùng Vương- TT. Vạn Giã- H. Vạn Ninh-  T. Khánh Hòa', N'C048661557', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (918, 2, 27, N'Điện Máy Xanh Mini (TGDD) KG 979 - 981 Nguyễn Trung Trực', N'979 - 981 Nguyễn Trung Trực- Phường An Bình- TP Rạch Gía- Kiên Giang', N'C049391833', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (919, 5, 141, N'Mediamart BN Lý Thường Kiệt- Phường Thị Cầu', N'Lý Thường Kiệt- Phường Thị Cầu- Bắc Ninh', N'C049701551', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (920, 5, 217, N'Mediamart HP 19 Cẩm Xuân', N'19 Cẩm Xuân- Thị trấn Núi Đối- Huyện Kiến Thụy- Hải Phòng', N'C049701552', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (921, 5, 95, N'Mediamart HP 2 Nguyễn Hữu Cầu', N'2 Nguyễn Hữu Cầu- Phường Vạn Sơn- Quận Đồ Sơn- Hải Phòng', N'C049701553', NULL, 0, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (922, 2, 31, N'Điện Máy Xanh (TGDĐ) QNI 275 Quang Trung', N'275 Quang Trung P.Trần Hưng Đạo TP Quảng Ngãi Tỉnh Quảng Ngãi', N'C022070698', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (923, 5, 111, N'Mediamart BG Thị Trấn Kép- Xã Tân Thịnh', N'Thị Trấn Kép Xã Tân Thịnh Huyện Lạng Giang Bắc Giang', N'C049701555', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (924, 4, 52, N'NGUYỄN KIM VIỆT TRÌ', N'Trung tâm thương mại Big C Việt Trì-đường Nguyễn Tất Thành- phường Thanh Miếu- thành phố Việt Trì- tỉnh Phú Thọ', N'C050361551', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (925, 4, 62, N'NGUYỄN KIM QUY NHƠN', N'Shop 10- 11- 12- 13 & 14 - Trung tâm Thương mại Big C Quy Nhơn- Khu đô thị xanh Vũng Chua- Phường Ghềnh Ráng- Thành phố Quy Nhơn- Tỉnh Bình Định', N'C050361552', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (926, 4, 82, N'NGUYỄN KIM NHA TRANG', N'Trung tâm Thương mại Big C Nha Trang- Lô số 4- Đường 19/5- Khu đô thị Vĩnh Điềm Trung- Xã Vĩnh Hiệp- Thành phố Nha Trang- Tỉnh Khánh Hòa', N'C050361553', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (927, 4, 70, N'NGUYỄN KIM BÌNH THẠNH', N'292 Nguyễn Xí- Phường 13- Quận Bình Thạnh- Thành phố Hồ Chí Minh', N'C050361554', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (928, 5, 92, N'Mediamart NĐ Hải Hậu', N'Tổ dân phố 1- Thị Trấn Yên Định- Huyện Hải Hậu- Nam Định', N'C050391534', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (929, 2, 439, N'Điện Máy Xanh (TGDĐ) BG Thôn Trung Thị trấn Bích Động', N'Thôn Trung- Thị trấn Bích Động -Huyện Việt Yên - Tỉnh Bắc Giang', N'C050791548', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (930, 2, 39, N'Điện Máy Xanh (TGDĐ) LA Đường tỉnh 821 - Ấp Lộc Bình', N'Đường tỉnh 821 - Ấp Lộc Bình - Xã Lộc Giang - huyện Đức Hòa - tỉnh Long An', N'C050941534', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (931, 5, 10, N'Mediamart HP Quán Toan', N'Tổ 2- khu 2- phuờng Quán Toan- quận Hồng Bàng- thành phố Hải Phòng', N'C051341565', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (932, 2, 440, N'Điện Máy Xanh (TGDĐ) thửa đất 346 An Thạnh', N'Thửa đất 346- tờ bản đồ số 47- P. An Thạnh- thị xã Hồng Ngự- T. Đồng Tháp', N'C027120721', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (933, 2, 73, N'Điện Máy Xanh (TGDĐ) BL Đường Trần Phú khóm 2 phường 7', N'Đường Trần Phú- khóm 2 - phường 7- thành phố Bạc Liêu - tỉnh Bạc Liêu', N'C051441587', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (934, 2, 234, N'Điện Máy Xanh (TGDĐ) ST Thửa đất số 01 tờ bản đồ 06 ấp Chợ Cũ', N'Thửa đất số 01- tờ bản đồ 06- ấp Chợ Cũ- thị trấn Mỹ Xuyên- huyện Mỹ Xuyên- tỉnh Sóc Trăng', N'C051441588', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (935, 2, 20, N'Điện Máy Xanh (TGDĐ) DN Số 1/56 Phường Hố Nai  Thành phố Biên Hòa', N'Số 1/56- Phường Hố Nai - Thành phố Biên Hòa - Tỉnh Đồng Nai', N'C051441589', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (936, 5, 441, N'Mediamart NĐ Cổ Lễ', N'Số nhà 289- khu Tân Giang- xã Nam Thanh- huyện Nam Trực- tỉnh Nam Định', N'C051591593', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (937, 3, 165, N'CTy TNHH Cao Phong (STĐM Chợ Lớn) KH 1919 Hùng Vương - Cam Ranh', N'1919 Hùng Vương- P.Cam Phú - Tp.Cam Ranh-Tỉnh Khánh Hòa-Việt Nam', N'C051661603', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (938, 2, 129, N'Điện Máy Xanh (TGDĐ) HN Khu Cầu Đặng- Xã Bình Phú', N'Khu Cầu Đặng- Xã Bình Phú- Huyện Thạch Thất - Thành phố Hà Nội', N'C051721564', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (939, 2, 45, N'Điện Máy Xanh (TGDĐ) BD Thửa đất số 134 Tờ bản đồ số 5 Khu phố Bình Đáng', N'14/4 Đường Nguyễn Du- khu phố Bình Đáng - Phường Bình Hòa - thị xã Thuận An - tỉnh Bình Dương', N'C051731535', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (940, 2, 27, N'Điện Máy Xanh (TGDĐ) KG 1046 Nguyễn Trung Trực', N'Số 1046 đường Nguyễn Trung Trực- khu phố 4- P. An Hòa- TP. Rạch Giá- T. Kiên Giang', N'C028260793', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (941, 2, 141, N'Điện Máy Xanh Mini (TGDĐ) BN Số 21 Nguyễn Văn Cừ P Ninh Xá', N'Số 21 Nguyễn Văn Cừ- P. Ninh Xá- TP. Bắc Ninh- T. Bắc Ninh', N'C029970744', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (942, 2, 26, N'Điện Máy Xanh (TGDĐ) AG Số 125-127-129-131 Mỹ Thới', N'Thửa số 125-127-129-131- Tờ bản đồ số 20- P. Mỹ Thới- TP. Long Xuyên- T. An Giang', N'C031170784', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (943, 2, 117, N'Điện Máy Xanh (TGDĐ) CT Số 08 Hòa Bình P. An Cư', N'Số 08 Hòa Bình- P. An Cư- Q. Ninh Kiều- Tp. Cần Thơ', N'C039931587', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (944, 2, 100, N'Điện Máy Xanh (TGDĐ) HN Tầng 2- tòa nhà TTTM Savico Mega Mall', N'Tầng 2- tòa nhà TTTM Savico Mega Mall- Số 7-9 Đ. Nguyễn Văn Linh- P. Gia Thụy- Q. Long Biên- Tp. Hà Nội', N'C051791552', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (945, 2, 442, N'Điện Máy Xanh (TGDĐ) NA Thửa đất số 163 - tờ bản đồ số 117-65B', N'Thửa đất số 163 - tờ bản đồ số 117-65B và Thửa đất số 90- tờ bản đồ số 12- Khối 6- thị trấn Cầu Giát- Huyện Quỳnh Lưu - Tỉnh Nghệ An', N'C051791539', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (946, 2, 141, N'Điện Máy Xanh (TGDĐ) BN Số 33 Lý Thái Tổ- P. Ninh Xá', N'Số 33 Lý Thái Tổ- P. Ninh Xá- Tp. Bắc Ninh- T. Bắc Ninh', N'C051791564', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (947, 2, 248, N'Điện Máy Xanh (TGDĐ) HD Khu 15 Nguyễn Lương Bằng', N'Khu 15 Nguyễn Lương Bằng- P. Phạm Ngũ Lão- Tp. Hải Dương- T. Hải Dương', N'C051791566', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (948, 2, 44, N'Điện Máy Xanh (TGDĐ) QB Số 22 Quang Trung- Phường Hải Đình', N'Số 22 Quang Trung- Phường Hải Đình- Thành Phố Đồng Hới- Tỉnh Quảng Bình- Việt Nam', N'C051791542', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (949, 2, 112, N'Điện Máy Xanh (TGDĐ) QTR Số 246- Đường Lê Duẩn- Phường Đông Lễ', N'Số 246- Đường Lê Duẩn- Phường Đông Lễ- Thành phố Đông Hà- Tỉnh Quảng Trị- Việt Nam', N'C051791543', NULL, 0, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (950, 7, 167, N'Pico VP 01 Hai Bà Trưng Phúc Yên', N'01 Hai Bà Trưng- Phúc Yên- Vĩnh Phúc', N'C011770734', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (951, 7, 91, N'Pico HN 8 phố Lê Trọng Tấn', N'Số 8- Phố Lê Trọng Tấn- Phường Khương Mai- Quận Thanh Xuân- Hà Nội', N'C027330719', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (952, 7, 155, N'Pico NB TTTM Bình An Nhiên', N'TTTM Bình An Nhiên- số 90 đường Lê Hồng Phong-Phường Vân Giang- Thành phố Ninh Bình- Tỉnh Ninh Bình', N'C028570727', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (953, 2, 78, N'Điện Máy Xanh (TGDĐ) NA Số 7 Đường Quang Trung', N'Số 7 Đường Quang Trung- Phường Quang Trung- Tp. Vinh. T. Nghệ An', N'C051791540', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (954, 3, 20, N'CTy TNHH Cao Phong (STĐM Chợ Lớn) - Biên Hòa', N'Số 260 B- Quốc Lộ 15- Phường Thống Nhất', N'C000022782', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (955, 7, 94, N'Pico HN 173 Xuân Thủy', N'173 Xuân Thủy', N'C000024894', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (956, 7, 5, N'Pico HN 324 Tây Sơn', N'324 Tây Sơn', N'C000079010', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (957, 3, 443, N'CTy TNHH Cao Phong (STĐM Chợ Lớn) - Q4', N'Tòa Nhà H2- 196 Hoàng Diệu- Phường 8- Quận 4', N'C002258608', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (958, 6, 248, N'Siêu Thị VHC HD 354 Thanh Niên', N'354 Thanh Niên', N'C004110757', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (959, 2, 34, N'Điện Máy Xanh (TGDD) HCM 265 Hòa Bình', N'265 Hòa Bình- P. Hiệp Tân- Q. Tân Phú', N'C005110766', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (960, 2, 123, N'Điện Máy Xanh (TGDD) DT 90 Hùng Vương', N'Số 90 Hùng Vương- Phường 1- Thành Phố Sa Đéc- Tỉnh Đồng Tháp', N'C010180696', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (961, 6, 5, N'Siêu Thị VHC HN 102 Thái Thịnh', N'102 Thái Thịnh- Đống Đa', N'C012390715', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (962, 2, 364, N'Điện Máy Xanh (TGDD) HCM 626 Âu Cơ P.10', N'626 Âu Cơ P.10 Q.Tân Bình TP.Hồ Chí Minh', N'C017950716', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (963, 2, 74, N'Điện Máy Xanh (TGDD) HCM 322-324 Phan Văn Hớn', N'322- 324 Phan Văn Hớn P.Tân Thới Nhất Q.12  TP.Hồ Chí Minh', N'C020080710', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (964, 2, 132, N'Điện Máy Xanh (TGDĐ) YB Số 319- đường Nguyễn Thái Học- tổ 69', N'Số 319- đường Nguyễn Thái Học- tổ 69- Phường Nguyễn Thái Học- Thành phố Yên Bái- Tỉnh Yên Bái- Việt Nam', N'C051791562', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (965, 3, 74, N'CTy TNHH Cao Phong (STĐM Chợ Lớn) - Q12', N'189/4 Trường Chinh- Phường Tân Hưng Thuận', N'C530_15508', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (966, 7, 91, N'Pico HN 76 Nguyễn Trãi', N'76 Nguyễn Trãi', N'C530_560', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (967, 2, 196, N'Điện Máy Xanh (TGDD) BT 241 Trần Hưng Đạo', N'241 Trần Hưng Đạo- P. Phú Thủy- Tp. Phan Thiết- Tỉnh Bình Thuận', N'C005110774', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (968, 2, 250, N'Điện Máy Xanh (TGDD) HCM 677 Huỳnh Tấn Phát', N'677 Huỳnh Tấn Phát P. Phú Thuận Q.7 TP. Hồ Chí Minh', N'C008040727', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (969, 2, 78, N'Điện Máy Xanh (TGDĐ) NA 78 Nguyễn Thị Minh Khai', N'78 Nguyễn Thị Minh Khai Phường Hưng Bình TP.Vinh Tỉnh Nghệ An', N'C021280727', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (970, 4, 117, N'Nguyễn Kim CT Số 02 Đường 30/4 An Phú', N'Số 2 đường 30/4- Phường An Phú', N'C001758852', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (971, 2, 74, N'Điện Máy Xanh (TGDD) HCM 01 Bis Tô Ký', N'01 Bis Tô Ký- P.Tân Chánh Hiệp- Q.12- TP.HCM', N'C012730737', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (972, 2, 69, N'Điện Máy Xanh (TGDD) GL 16 Phạm Văn Đồng', N'16 Phạm Văn Đồng- P.Hoa Lư- TP.Pleiku- Tỉnh Gia Lai', N'C017270798', NULL, 0, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (973, 2, 178, N'Điện Máy Xanh (TGDĐ) HCM A1/9 Ấp 2 QL 50', N'A1/9 Ấp 2Quốc Lộ 50 xã Bình Hưng huyện Bình Chánh TP.Hồ Chí Minh', N'C025860714', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (974, 4, 41, N'NGUYỄN KIM HƯNG YÊN', N'601 Nguyễn Văn Linh- phường An Tảo- thành phố Hưng yên- tỉnh Hưng Yên', N'C051851540', NULL, 0, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (975, 3, 297, N'CTy TNHH Cao Phong (STĐM Chợ Lớn) KH Nguyễn Thị Ngọc Oanh - Ninh Hòa', N'Đường Nguyễn Thị Ngọc Oanh- P Ninh Hiệp - thị xã Ninh Hòa- Tỉnh Khánh Hòa- Việt Nam', N'C051941615', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (976, 2, 444, N'Điện Máy Xanh (TGDĐ) HB tại thửa đất số 106 tờ bàn đồ số 07 địa chỉ tại: Thị trấn Bo', N'tại thửa đất số 106- tờ bàn đồ số 07- địa chỉ tại: Thị trấn Bo- huyện Kim Bôi- tỉnh Hòa Bình', N'C052351573', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (977, 2, 214, N'Điện Máy Xanh (TGDĐ) BD 1574c tổ 2 khu phố Mỹ Hiệp P. Thái Hòa', N'1574c- tổ 2- khu phố Mỹ Hiệp- P. Thái Hòa- thị xã Tân Uyên T. Bình Dương', N'C052351574', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (978, 2, 39, N'Điện Máy Xanh (TGDĐ) LA Thửa đất 116 tờ bản đồ 24 xã Đức Lập Thượng', N'Thửa đất 116- tờ bản đồ 24- xã Đức Lập Thượng- H. Đức Hòa- T- Long An', N'C052351575', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (979, 2, 39, N'Điện Máy Xanh (TGDĐ) LA Thửa đất 45 tờ bản đồ 07 xã Mỹ Hạnh Nam', N'Thửa đất 45- tờ bản đồ 07- xã Mỹ Hạnh Nam- H. Đức Hòa- T. Long An', N'C052351576', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (980, 3, 35, N'CTy TNHH Cao Phong (STĐM Chợ Lớn) - Tam Kỳ', N'832-834 đường Phan Châu Trinh- Phường An Sơn- TP Tam Kỳ- Tỉnh Quảng Nam- VN', N'C052571537', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (981, 2, 74, N'Điện Máy Xanh (TGDĐ) HCM 102 Lê Văn Khương', N'102 Lê Văn Khương- Khu Phố 1- Phường Thới An- Quận 12- TP.HCM', N'C026780772', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (982, 5, 120, N'Mediamart HP Số 83 tổ 4 - An Dương', N'Số 83- tổ 4- TT An Dương-Hải Phòng- Hà Nội', N'C052771582', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (983, 5, 445, N'Mediamart TH Số 871- Tiểu khu Nam Tiến - Nông Cống', N'Số 871- Tiểu khu Nam Tiến- Nông Cống- Thanh Hóa', N'C052771583', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (984, 2, 30, N'Điện Máy Xanh Mini (TGDĐ) HCM Số 70/2-70/2A- ấp Hưng Lân', N'Số 70/2-70/2A- ấp Hưng Lân- xã Bà Điểm- H. Hóc Môn- TP.HCM', N'C030720711', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (985, 2, 178, N'Điện Máy Xanh (TGDĐ) D10/292C - D10/292D Quốc lộ 50 Ấp 4 Xã Phong Phú', N'D10/292C - D10/292D Quốc lộ 50- Ấp 4- Xã Phong Phú- Huyện Bình Chánh- Thành phố Hồ Chí Minh- Việt Nam', N'C053731537', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (986, 5, 113, N'Mediamart HN Đông Phương - Chương Mỹ', N'Thôn Đồi 3- xã Đông Phương Yên- huyện Chương Mỹ- thành phố Hà Nội', N'C053901675', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (987, 4, 47, N'NGUYỄN KIM NAM ĐỊNH', N'Trung tâm thương mại siêu thị Thiên Trường- xã Lộc Hòa- Tp. Nam Định- Tỉnh Nam Định', N'C053901690', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (988, 5, 446, N'Mediamart NB Nho Quan', N'Phố Bái- thị trấn Nho Quan- huyện Nho Quan- tỉnh Ninh Bình', N'C053931535', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (989, 3, 99, N'CTy TNHH Cao Phong (STĐM Chợ Lớn) - Phú Yên', N'02-04 Lê Lợi- Phường 1- TP Tuy Hòa -Tỉnh Phú Yên- Việt Nam', N'C054211536', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (990, 2, 29, N'Điện Máy Xanh (TGDĐ) HN Số 1283 Giải Phóng', N'Số 1283 Giải Phóng- P. Hoàng Liệt- Q. Hoàng Mai- Tp. Hà Nội', N'C051791548', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (991, 2, 37, N'Điện Máy Xanh (TGDD) CM 18 Ngô Quyền', N'18 đường Ngô Quyền P.02 TP.Cà Mau Tỉnh Cà Mau', N'C019930738', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (992, 2, 34, N'Điện Máy Xanh Mini (TGDĐ) HCM 451 Lê Trọng Tấn P.Sơn Kỳ', N'451 Lê Trọng Tấn- Phường Sơn Kỳ', N'C001298839', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (993, 2, 151, N'Điện Máy Xanh (TGDD) HCM 106-106A-106B-106C Nguyễn Thị Tú', N'106-106A-106B-106C Nguyễn Thị Tú- Khu phố 1- P.Bình Hưng Hòa B- Q.Bình Tân- TP.Hồ Chí Minh', N'C017270794', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (994, 2, 151, N'Điện Máy Xanh (TGDĐ) HCM 740 Tân Kỳ Tân Quý', N'740  Tân Kỳ Tân Quý- P. Bình Hưng Hòa- Q. Bình Tân- TP. Hồ Chí Minh', N'C027870812', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (995, 2, 151, N'Điện Máy Xanh (TGDD) HCM 953 Tỉnh Lộ 10- Khu Phố 8', N'953 Tỉnh Lộ 10- Khu Phố 8- Q.Bình Tân- TP.HCM', N'C005110768', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (996, 4, 79, N'Nguyễn Kim HCM 63-65-67 Trần Hưng Đạo', N'63-65-67 Trần Hưng Đạo- Phường Cầu ông Lãnh- Quận 1', N'C530_577', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (997, 2, 70, N'Thế Giới Di Động HCM 26 Phan Đăng Lưu', N'26 Phan Đăng Lưu- Phường 6', N'C530_3312', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (998, 2, 20, N'Điện Máy Xanh Mini (TGDĐ) DN 6 Đồng Khởi', N'5/10-6/10 Khu Phố 3- Đồng Khởi- Phường Tân Hiệp', N'C530_4992', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (999, 3, 34, N'CTy TNHH Cao Phong (STĐM Chợ Lớn) - Tân Phú', N'322-324 Tân Kỳ- Tân Quý', N'C000022691', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (1000, 4, 364, N'Nguyễn Kim HCM 79B Lý Thường Kiệt', N'79B Lý Thường Kiệt', N'C530_578', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (1001, 2, 107, N'Điện Máy Xanh Mini (TGDĐ) HCM 44 ấp 3 xã Phước Kiển', N'44 ấp 3- xã Phước Kiển- H. Nhà Bè- TP. Hồ Chí Minh', N'C028430706', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (1002, 3, 447, N'CTy TNHH Cao Phong ( STĐM Chợ Lớn) - Q5', N'Lô G Chung Cư Hùng Vương', N'C530_600', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (1003, 2, 87, N'Điện Máy Xanh (TGDĐ) LA thửa đất 81 Nguyễn Hữu Thọ', N'Thửa đất số 81- tờ bản đồ số 1-27- đường Nguyễn Hữu Thọ- TT. Bến Lức- H. Bến Lức- T. Long An', N'C027080737', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (1004, 2, 369, N'Điện Máy Xanh (TGDD) LA 254 Hùng Vương', N'254 Hùng Vương P.03 TP.Tân An T.Long An', N'C017950718', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (1005, 2, 19, N'Thế Giới Di Động BRVT 267A Cách Mạng Tháng Tám Phước Hiệp', N'267A Cách Mạng Tháng Tám- Phước Hiệp- Bà Rịa', N'C000025432', NULL, 0, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (1006, 2, 45, N'Điện Máy Xanh Mini (TGDĐ) BD 32/1 KP Bình Giao', N'32/1 Khu Phố Bình Giao- P.Thuận Giao- TX.Thuận An- T.Bình Dương', N'C013270701', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (1007, 2, 448, N'Điện Máy Xanh Mini (TGDĐ) HB Thửa đất 137-160 Tờ BĐ 09 TT Vụ Bàn Lạc Sơn', N'Thửa đất số 137 - 160- tờ bản đồ 09- phố Thống Nhất- TT. Vụ Bản- H. Lạc Sơn- T. Hòa Bình', N'C026400697', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (1008, 2, 181, N'Điện Máy Xanh Mini (TGDĐ) HN 220-222 KP Vân Trì Vân Nội Đông Anh', N'Số 220 - 222- Khu Phố Vân Trì- Xã Vân Nội- Huyện Đông Anh- Tp. Hà Nội', N'C026750740', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (1009, 2, 449, N'Điện Máy Xanh Mini LD Quốc lộ 20 Thôn 1 Xã Lộc An', N'Quốc lộ 20- Thôn 1- Xã Lộc An- Huyện Bảo Lâm- Tỉnh Lâm Đồng- Việt Nam', N'C032720722', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (1010, 2, 226, N'Điện Máy Xanh Mini (TGDĐ) HN Tại khu 6- thị trấn Trạm Trôi', N'Quốc lộ 32- khu 6- TT. Trạm Trôi- H. Hoài Đức- TP.Hà Nội', N'C037021531', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (1011, 5, 4, N'Mediamart QNI Đông Triều', N'Khu 4- phường Đông Triều- thị xã Đông Triều- tỉnh Quảng Ninh', N'C053901674', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (1012, 2, 3, N'Điện Máy Xanh (TGDĐ) Lô A37 A38 A39 A40 Khu Đất Đấu Giá Vạn Phúc Phường Vạn Phúc', N'Lô A37- A38- A39- A40- Khu Đất Đấu Giá Vạn Phúc- Phường Vạn Phúc- Quận Hà Đông- Thành phố Hà Nội- Việt Nam', N'C054071550', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (1013, 2, 450, N'Điện Máy Xanh (TGDĐ) Khu 8 Thị Trấn Hạ Hòa', N'Khu 8- Thị Trấn Hạ Hòa- Huyện Hạ Hòa- Tỉnh Phú Thọ- Việt Nam', N'C054171716', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (1014, 2, 321, N'Điện Máy Xanh (TGDĐ) Thửa đất số 48 tờ bản đồ 34 Khu phố 4 Phường Yên Giang', N'Thửa đất số 48- tờ bản đồ 34- Khu phố 4- Phường Yên Giang- Thị xã Quảng Yên- Tỉnh Quảng Ninh- Việt Nam', N'C054171717', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (1015, 2, 451, N'Điện Máy Xanh (TGDĐ) Đường Quốc Lộ 2 tổ dân phố Tân An Thị Trấn Tân Yên', N'Đường Quốc Lộ 2- tổ dân phố Tân An- Thị Trấn Tân Yên- Huyện Hàm Yên- Tỉnh Tuyên Quang- Việt Nam', N'C054171718', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (1016, 2, 178, N'Điện Máy Xanh (TGDĐ) C2/5 Quách Điêu Ấp 3 Xã Vĩnh Lộc A', N'C2/5 Quách Điêu- Ấp 3- Xã Vĩnh Lộc A- Huyện Bình Chánh- Thành phố Hồ Chí Minh- Việt Nam', N'C054171719', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (1017, 2, 452, N'Điện Máy Xanh (TGDĐ) Số 86 Tổ dân phố Hợp Thành Thị Trấn Lạc Dương', N'Số 86 Tổ dân phố Hợp Thành- Thị Trấn Lạc Dương- Huyện Lạc Dương- Tỉnh Lâm Đồng- Việt Nam', N'C054171720', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (1018, 4, 100, N'NGUYỄN KIM LONG BIÊN', N'309 Nguyễn Văn CỪ- Phường Ngọc Lâm- Quận Long Biên- TP. Hà nôi- Việt Nam', N'C054261557', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (1019, 2, 453, N'Điện Máy Xanh (TGDĐ) Thửa đất sô 179 tờ bản đồ 8 thị trấn Gia Bình', N'Thửa đất sô 179- tờ bản đồ 8- thị trấn Gia Bình- huyện Gia Bình- tỉnh Bắc Ninh', N'C054301567', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (1020, 5, 454, N'Mediamart TB Hưng Hà', N'Số nhà 27- khu Nhân Cầu 1- thị trấn Hưng Hà- huyện Hưng Hà- tỉnh Thái Bình', N'C054441604', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (1021, 5, 195, N'Mediamart TH Thạch Thành', N'Khu phố 5- thị trấn Kim Tân- huyện Thạch Thành- tỉnh Thanh Hóa', N'C054441605', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (1022, 3, 90, N'CTy TNHH Cao Phong ( STĐM Chợ Lớn) - Thủ Đức Tòa Nhà Sense City', N'Tầng Hầm B1- Tòa Nhà Sense City-240-242 - Phạm Văn Đồng-P.Hiệp Bình Chánh-Q. Thủ Đức- TP.HCM- VN', N'C054541589', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (1023, 2, 214, N'Điện Máy Xanh Mini (TGDĐ) Thửa đất số 539 và 540 Tờ bản đồ số 33 Đường DT 746 Khu phố Long Bình Phường Khánh Bình', N'Thửa đất số 539 và 540- Tờ bản đồ số 33- Đường DT 746- Khu phố Long Bình- Phường Khánh Bình- Thị xã Tân Uyên- Tỉnh Bình Dương- Việt Nam', N'C054571536', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (1024, 2, 289, N'Điện Máy Xanh (TGDĐ) Quốc lộ 26 Tổ dân phố 1 Thị Trấn Ea Knốp', N'Quốc lộ 26- Tổ dân phố 1- Thị Trấn Ea Knốp- Huyện Ea Kar- Tỉnh Đắk Lắk- Việt Nam', N'C054651548', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (1025, 5, 330, N'Mediamart NB Tam Điệp - Ninh Bình', N'Số 294- Đường Quang Trung- Phường Bắc Sơn- Thành phố Tam Điệp- Tỉnh Ninh Bình- Việt Nam', N'C054701559', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (1026, 5, 155, N'Mediamart NB Nguyễn Công Trứ - Ninh Bình', N'Số 416 Nguyễn Công Trứ- Phường Ninh Sơn- Thành Phố Ninh Bình- Tỉnh Ninh Bình- Việt Nam', N'C054701560', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (1027, 5, 306, N'Mediamart BG Hiệp Hòa - Bắc Giang', N'Trung tâm thương mại Chợ Hiệp Hòa- Thị Trấn Thắng- Huyện Hiệp Hòa- Tỉnh Bắc Giang- Việt Nam', N'C054701562', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (1028, 5, 339, N'Mediamart BN Quế Võ - Bắc Ninh', N'Thôn Mao Dộc- Xã Phượng Mao- Huyện Quế Võ- Tỉnh Bắc Ninh- Việt Nam', N'C054701563', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (1029, 7, 3, N'PICO BA LA', N'Số 944 Quang Trung- tổ dân phố 17 Phường Yên Nghĩa- Quận Hà Đông- Thành Phố Hà Nội', N'C054751564', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (1030, 5, 455, N'Mediamart TH Nga Sơn', N'Xóm 1- Xã Nga Mỹ- Huyện Nga Sơn- Tỉnh Thanh Hóa - Việt Nam', N'C055271594', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (1031, 5, 129, N'Mediamart HN Thạch Thất', N'Thôn Hòa Lạc- Xã Bình Yên- Huyện Thạch Thất- Thành Phố Hà Nội- Việt Nam', N'C055271595', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (1032, 4, 289, N'Nguyễn Kim DLK Ea Kar', N'Khối 3A- thị trấn Eakar- tỉnh Đắk Lắk- Việt Nam', N'C039391567', NULL, 0, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (1033, 2, 104, N'Điện Máy Xanh (TGDĐ) HN Khu Đồng Gộc- Xã Tam Hiệp', N'Khu Đồng Gộc- Xã Tam Hiệp- H.Thanh Trì- TP. Hà Nội', N'C051791547', NULL, 0, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (1034, 2, 292, N'Điện Máy Xanh (TGDĐ) Thửa đất số 267  tờ bản đồ 32 Thị Trấn Như Quỳnh', N'Thửa đất số 267- tờ bản đồ 32- Thị Trấn Như Quỳnh- Huyện Văn Lâm- Tỉnh Hưng Yên- Việt Nam', N'C056691562', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (1035, 2, 456, N'Điện Máy Xanh (TGDĐ)  272 Đường Hồ Thị Hương Khu Phố 3 Phường Xuân An', N'Số 272- Đường Hồ Thị Hương- Khu Phố 3 - Phường Xuân An- Thị xã Long khánh- Tỉnh Đồng Nai- Việt Nam', N'C056691563', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (1036, 2, 88, N'Điện Máy Xanh (TGDĐ) 178 Đường Lã Xuân Oai  Phường Tăng Nhơn Phú A', N'178 Đường Lã Xuân Oai- Phường Tăng Nhơn Phú A- Quận 9- Thành phố Hồ Chí Minh- Việt Nam', N'C056761552', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (1037, 2, 457, N'Điện Máy Xanh (TGDĐ) Quốc lộ 28 Thôn 4- Xã Quảng Khê', N'Quốc lộ 28- Thôn 4- Xã Quảng Khê- Huyện Đắk Glong- Tỉnh Đắk Nông- Việt Nam', N'C056761553', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (1038, 2, 458, N'Điện Máy Xanh (TGDĐ) Tiểu khu 5 Thị Trấn Quy Đạt', N'Tiểu khu 5- Thị Trấn Quy Đạt- Huyện Minh Hóa- Tỉnh Quảng Bình- Việt Nam', N'C057041559', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (1039, 2, 104, N'Điện Máy Xanh (TGDĐ) Đường Ngọc Hồi Thôn Ngọc Hồi Xã Ngọc Hồi', N'Đường Ngọc Hồi- Thôn Ngọc Hồi- Xã Ngọc Hồi- Huyện Thanh Trì- Thành phố Hà Nội- Việt Nam', N'C057151544', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (1040, 5, 125, N'Mediamart QNI Cẩm Phả - Quảng Ninh', N'Số 170 đường Trần Phú- Phường Cẩm Tây- Thành phố Cẩm Phả- Tỉnh Quảng Ninh- Việt Nam', N'C054701561', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (1041, 2, 151, N'Điện Máy Xanh (TGDĐ) HCM_ĐMX_Mini - 54-56 Đường Số 7 (Khu Tên Lửa)', N'54-56 Đường số 7- Phường Bình Trị Đông B- Quận Bình Tân- Thành phố Hồ Chí Minh- Việt Nam', N'C055901535', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (1042, 7, 3, N'Pico HN Mipec City  View- Kiến Hưng', N'Tầng 1-2 Tòa nhà CT1 Chung cư Mipec City View - Khu đô thị Kiến Hưng - Quận Hà Đông - Thành Phố Hà Nội.', N'C055991539', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (1043, 3, 178, N'CTy TNHH Cao Phong ( STĐM Chợ Lớn) – Vĩnh Lộc', N'F12/23B-F12/23E-F12/23F Quách Điêu- Ấp 6- Xã Vĩnh Lộc A-Huyện Bình Chánh- TP.HCM- Việt Nam', N'C056061535', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (1044, 2, 459, N'Điện Máy Xanh (TGDĐ) Bản đồ PL2 Thị Trấn Me', N'Bản đồ PL2- Thị Trấn Me- Huyện Gia Viễn- Tỉnh Ninh Bình- Việt Nam', N'C056761549', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (1045, 2, 454, N'Điện Máy Xanh (TGDĐ) đất số 539- tờ bản đồ số 22 Khu Nhân Cầu 2 Thị Trấn Hưng Hà', N'Thửa đất số 539- tờ bản đồ số 22- Khu Nhân Cầu 2- Thị Trấn Hưng Hà- Huyện Hưng Hà- Tỉnh Thái Bình- Việt Nam', N'C056761550', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (1046, 2, 292, N'Điện Máy Xanh (TGDĐ) Thửa đất số 11 và 190 và 192 tờ bản đồ 24- thôn Thị Trung Xã Đình Dù', N'Thửa đất số 11 và 190 và 192- tờ bản đồ 24- thôn Thị Trung- Xã Đình Dù- Huyện Văn Lâm- Tỉnh Hưng Yên- Việt Nam', N'C056761551', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (1047, 2, 394, N'Điện Máy Xanh (TGDĐ) Quốc lộ 1A Xã Phú Trạch', N'Quốc lộ 1A- Xã Phú Trạch- Huyện Bố Trạch- Tỉnh Quảng Bình- Việt Nam', N'C057041560', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (1048, 2, 460, N'Điện Máy Xanh (TGDĐ) Thửa đất số 32 tờ bản đồ 13 Khóm 2 Thị Trấn Krông Klang', N'Thửa đất số 32- tờ bản đồ 13- Khóm 2 - Thị Trấn Krông Klang- Huyện Đa Krông- Tỉnh Quảng Trị- Việt Nam', N'C057041561', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (1049, 2, 94, N'Điện Máy Xanh (TGDĐ) Số 260 đường Cầu Giấy Phường Quan Ho', N'Số 260 đường Cầu Giấy- Phường Quan Hoa- Quận Cầu Giấy- Thành phố Hà Nội- Việt Nam', N'C057151543', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (1050, 2, 461, N'Điện Máy Xanh (TGDĐ) Số 105-107-109 Đường Trần Phú Phường Nam Hồng', N'Số 105-107-109 Đường Trần Phú- Phường Nam Hồng- Thị xã Hồng Lĩnh- Tỉnh Hà Tĩnh- Việt Nam', N'C057151545', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (1051, 2, 109, N'Điện Máy Xanh (TGDĐ) Số 76 Đường 3/2- KP 5 Thị Trấn Trảng Bom', N'Số 76- Đường 3/2- KP 5- Thị Trấn Trảng Bom- Huyện Trảng Bom- Tỉnh Đồng Nai- Việt Nam', N'C057361541', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (1052, 2, 462, N'Điện Máy Xanh (TGDĐ) Thôn 2 Thị Trấn Tân An', N'Thôn 2- Thị Trấn Tân An- Huyện Hiệp Đức- Tỉnh Quảng Nam- Việt Nam', N'C057361542', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (1053, 2, 463, N'Điện Máy Xanh (TGDĐ) HAG Tổ 2 Thị Trấn Yên Minh Huyện Yên Minh', N'Tổ 2 Thị Trấn Yên Minh Huyện Yên Minh Tỉnh Hà Giang Việt Nam', N'C057561560', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (1054, 2, 38, N'Điện Máy Xanh (TGDĐ) HCM 417 Tỉnh Lộ 15 Ấp 8 Xã Tân Thạnh Đông Huyện Củ Chi', N'417 Tỉnh Lộ 15- Ấp 8- Xã Tân Thạnh Đông- Huyện Củ Chi- Thành phố Hồ Chí Minh- Việt Nam', N'C057561561', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (1055, 2, 464, N'Điện Máy Xanh (TGDĐ) Đường QL1A Khu phố 5 Thị Trấn Phước Dân', N'Đường QL1A- Khu phố 5- Thị Trấn Phước Dân- Huyện Ninh Phước- Tỉnh Ninh Thuận- Việt Nam', N'C057561562', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (1056, 2, 21, N'Điện Máy Xanh (TGDĐ) BD Số 15/16A Đường Lê Hồng Phong Khu phố Đông Chiêu Phường Tân Đông Hiệp Thị Xã DĨ An', N'Số 15/16A Đường Lê Hồng Phong- Khu phố Đông Chiêu- Phường Tân Đông Hiệp- Thị Xã Dĩ An- Tỉnh Bình Dương- Việt Nam', N'C057701579', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (1057, 2, 364, N'Điện Máy Xanh Mini (TGDĐ) HCM 650-652 Trường Chinh', N'650-652 TrườngChinh- Phường 15- Tân Bình', N'C000025433', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (1058, 2, 126, N'Điện Máy Xanh Mini (TGDĐ)  VP 99 Hùng Vương P.Tích Sơn', N'99 Hùng Vương- Phường Tích Sơn', N'C000166044', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (1059, 2, 465, N'Điện Máy Xanh Mini (TGDĐ) HTH Quốc Lộ 1A Tổ Dân Phố 14 Cẩm Xuyên', N'Quốc Lộ 1A- Tổ Dân Phố 14- Thị Trấn Cẩm Xuyên- Huyện Cẩm Xuyên', N'C002408620', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (1060, 2, 69, N'Điện Máy Xanh Mini GL 47 Trần Phú', N'47 Trần Phú- Phường Diên Hồng- Thành Phố Pleiku- Tỉnh Gia Lai', N'C009310691', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (1061, 2, 151, N'Điện Máy Xanh Mini (TGDĐ) HCM 722 Tỉnh Lộ 10 KP18', N'722 Tỉnh Lộ 10 Khu phố 18 P.Bình Trị Đông Q.Bình Tân TP.Hồ Chí Minh', N'C018130731', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (1062, 2, 201, N'Điện Máy Xanh Mini (TGDĐ) BG Thửa đất số 78 tờ bản đồ số 28', N'Thửa đất số 78 tờ bản đồ 28 Thị Trấn Kép Huyện Lạng Giang Tỉnh Bắc Giang Việt Nam', N'C025860713', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (1063, 2, 151, N'Điện Máy Xanh Mini HCM 314 Hồ Học Lãm Q Bình Tân', N'314 Hồ Học Lãm- P. An Lạc- Q. Bình Tân- TP. HCM', N'C026620775', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (1064, 2, 30, N'Điện Máy Xanh (TGDĐ) 30/10 Nguyễn Ảnh Thủ ấp Đông', N'Số 30/10 Nguyễn Ảnh Thủ- Ấp Đông - xã Thới Tam Thôn- H. Hóc Môn - TP.HCM', N'C026710697', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (1065, 2, 139, N'Điện Máy Xanh (TGDĐ) QN Tổ 5 khu Nam Tân P Nam Khê Tp Uông Bí', N'Tổ 5- khu Nam Tân- P. Nam Khê- TP. Uông Bí- T. Quảng Ninh', N'C026860740', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (1066, 2, 56, N'Điện Máy Xanh (TGDĐ) TH 184 Lê Lai', N'Số 184 đường Lê Lai - P. Đông Sơn- TP. Thanh Hóa- T. Thanh Hóa', N'C026930708', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (1067, 2, 11, N'Điện Máy Xanh Mini (TGDĐ) TTH 68 Trần Phú', N'68 Trần Phú- P. Phước Vĩnh- TP. Huế- T. Thừa Thiên Huế', N'C033450765', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (1068, 2, 466, N'Điện Máy Xanh (TGDĐ) TTH Tổ dân phố 5 Thị Trấn A Lưới Huyện A Lưới', N'Tổ dân phố 5- Thị Trấn A Lưới- Huyện A Lưới- Tỉnh Thừa Thiên Huế- Việt Nam', N'C057701580', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (1069, 2, 467, N'Điện Máy Xanh (TGDĐ) Thửa đất số 08 tờ bản đồ số 04 Khối 10 Thị Trấn Thạch Hà', N'Thửa đất số 08- tờ bản đồ số 04- Khối 10- Thị Trấn Thạch Hà- Huyện Thạch Hà- Tỉnh Hà Tĩnh', N'C057781537', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (1070, 2, 256, N'Điện Máy Xanh (TGDĐ) 74 Quốc lộ 13 Ấp 3B Xã Minh Hưng', N'74 Quốc lộ 13- Ấp 3B- Xã Minh Hưng- Huyện Chơn Thành- Tỉnh Bình Phước- Việt Nam', N'C057971548', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (1071, 2, 468, N'Điện Máy Xanh (TGDĐ) Tổ Đồng Trường Thị Trấn Trà My', N'Tổ Đồng Trường- Thị Trấn Trà My- Huyện Bắc Trà My- Tỉnh Quảng Nam- Việt Nam', N'C057971549', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (1072, 2, 469, N'Điện Máy Xanh (TGDĐ) SL Tiểu Khu 6', N'Tiểu Khu 6- xã Tông Lạnh- huyện Thuận Châu- tỉnh Sơn La', N'C058081544', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (1073, 3, 355, N'CTy TNHH Cao Phong (STĐM Chợ Lớn) - Châu Đốc', N'394-396 Tân Lộ Kiều Lương- Khóm 8- P. Châu Phú A - TP Châu Đốc- Tỉnh An Giang- Việt Nam', N'C058111539', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (1074, 2, 470, N'Điện Máy Xanh (TGDĐ) Số nhà 769 Đường Mạc Đăng Doanh Tổ dân phố Phúc Hải 1', N'Số nhà 769 Đường Mạc Đăng Doanh- Tổ dân phố Phúc Hải 1- Phường Đa Phúc- Quận Dương Kinh- Thành phố Hải Phòng- Việt Nam', N'C058111580', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (1075, 2, 471, N'Điện Máy Xanh (TGDĐ) Thửa đất số 51 – 69 tờ bản đồ số 32 khu phố Trần Phú', N'Thửa đất số 51 – 69- tờ bản đồ số 32- khu phố Trần Phú- thị trấn Bắc Sơn- huyện Bắc Sơn- tỉnh Lạng Sơn', N'C058111581', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (1076, 2, 90, N'Điện Máy Xanh (TGDĐ) 542 Tỉnh lộ 43 Khu phố 5 Phường Tam Phú', N'542 Tỉnh lộ 43- Khu phố 5- Phường Tam Phú- Quận Thủ Đức- Thành phố Hồ Chí Minh- Việt Nam', N'C058171563', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (1077, 2, 34, N'Điện Máy Xanh (TGDĐ) 6A Đường Nguyễn Sơn Phường Phú Thọ Hòa', N'6A Đường Nguyễn Sơn - Phường Phú Thọ Hòa- Quận Tân Phú- Thành phố Hồ Chí Minh- Việt Nam', N'C058171564', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (1078, 7, 155, N'Pico NB Kim Sơn', N'Xóm 5B- xã Lưu Phương- huyện Kim Sơn- tỉnh Ninh Bình', N'C058241548', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (1079, 5, 60, N'Mediamart Ngọc Lặc - Thanh Hóa', N'Phố 3 - Phố Lê Thánh Tông- Thị Trấn Ngọc Lặc- Huyện Ngọc Lặc- Tỉnh Thanh Hóa- Việt Nam', N'C058241552', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (1080, 5, 372, N'Mediamart Thọ Xuân - Thanh Hóa', N'Khu 5 - Đường Lê Lợi- Thị Trấn Thọ Xuân- Huyện Thọ Xuân- Tỉnh Thanh Hóa- Việt Nam', N'C058241553', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (1081, 5, 459, N'Mediamart Gián Khẩu - Ninh Bình', N'Ngã 3 Gián Khẩu- Xã Gia Trấn- Huyện Gia Viễn- Tỉnh Ninh Bình- Việt Nam', N'C058241554', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (1082, 2, 115, N'Điện Máy Xanh TN Quốc lộ 22B ấp Thanh Hòa Xã Mỏ Công', N'Quốc lộ 22B- ấp Thanh Hòa- Xã Mỏ Công- Huyện Tân Biên- Tỉnh Tây Ninh- Việt Nam', N'C058421574', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (1083, 2, 38, N'Điện Máy Xanh (TGDĐ) 801-801A Quốc lộ 22 Ấp Chợ Xã Phước Thạnh', N'801-801A Quốc lộ 22- Ấp Chợ- Xã Phước Thạnh- Huyện Củ Chi- Thành phố Hồ Chí Minh- Việt Nam', N'C058421575', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (1084, 2, 162, N'Điện Máy Xanh (TGDĐ) BN Khu nhà ở Phù Khê Đường Nguyễn Văn Cừ Xã Phù Khê', N'Khu nhà ở Phù Khê- Đường Nguyễn Văn Cừ- Xã Phù Khê- Thị xã Từ Sơn- Tỉnh Bắc Ninh- Việt Nam', N'C058501574', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (1085, 2, 178, N'Điện Máy Xanh (TGDĐ) HCM B15/7A Quốc lộ 50 Ấp 2 Xã Bình Hưng', N'B15/7A Quốc lộ 50- Ấp 2- Xã Bình Hưng- Huyện Bình Chánh- Thành phố Hồ Chí Minh- Việt Nam', N'C058501575', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (1086, 2, 214, N'Điện Máy Xanh (TGDĐ) BD Số 21 Tổ 02 Khu phố Khánh Thạnh Phường Tân Phước Khánh', N'Số 21 Tổ 02- Khu phố Khánh Thạnh- Phường Tân Phước Khánh- Thị xã Tân Uyên- Tỉnh Bình Dương- Việt Nam', N'C058501576', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (1087, 4, 34, N'NGUYỄN KIM ÂU CƠ', N'685 ÂU CƠ - PHƯỜNG TÂN THÀNH - QUẬN TÂN PHÚ- TP HCM', N'C058531540', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (1088, 2, 339, N'Điện Máy Xanh (TGDĐ) BN Thôn Mao Dộc xã Phượng Mao', N'Thôn Mao Dộc- xã Phượng Mao- H. Quế Võ- T. Bắc Ninh', N'C058661550', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (1089, 7, 128, N'Pico HP Lê Hồng Phong - Hải Phòng 3', N'Thửa số 05 lô 22A - KĐTM Ngã Năm sân bay Cát Bi- phường Đông Khê- quận Ngô Quyền- Tp Hải Phòng', N'C058871553', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (1090, 2, 364, N'Điện Máy Xanh Mini (TGDĐ) HCM 330 Cộng Hòa', N'330-332 Cộng Hòa- Phường 13- Tân Bình', N'C530_3314', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (1091, 5, 202, N'Mediamart TB 194 Lý Thường Kiệt', N'Số 194- Đường Lý Thường Kiệt- Phường Kỳ Bá- Thành Phố Thái Bình- Tỉnh Thái Bình- Việt Nam', N'C058941562', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (1092, 5, 136, N'Mediamart Sóc Sơn - Hà Nội', N'Số 9 Khu đô thị mới- Thị Trấn Sóc Sơn- Huyện Sóc Sơn- Thành phố Hà Nội- Việt Nam', N'C058241558', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (1093, 5, 459, N'Mediamart Me - Ninh Bình', N'Phố Me- Thị Trấn Me- Huyện Gia Viễn- Tỉnh Ninh Bình- Việt Nam', N'C058241555', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (1094, 5, 391, N'Mediamart BG Cả Trọng Yên Thế', N'Phố Cả Trọng- Thị Trấn Cầu Gồ- Huyện Yên Thế- Tỉnh Bắc Giang- Việt Nam', N'C058941565', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (1095, 5, 133, N'Mediamart HB Cao Phong', N'Khu 3- Thị Trấn Cao Phong- Huyện Cao Phong- Tỉnh Hòa Bình- Việt Nam', N'C058941561', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (1096, 5, 181, N'Mediamart Cao Lỗ - Hà Nội', N'Số 435 Cao Lỗ- xóm Thượng- Xã Uy Nỗ- Huyện Đông Anh- Thành phố Hà Nội- Việt Nam', N'C058241551', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (1097, 2, 31, N'Điện Máy Xanh (TGDĐ) QN Số 24 Quang Trung P Lê Hồng Phong', N'Số 24- Đường Quang Trung- P. Lê Hồng Phong- Tp. Quảng Ngãi- T. Quảng Ngãi', N'C026260710', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (1098, 2, 360, N'Điện Máy Xanh (TGDĐ) TTH 539 Lạc Long Quân TT Lăng Cô', N'Số 539 Lạc Long Quân- TT. Lăng Cô- H.Phú Lộc- T. Thừa Thiên Huế', N'C026710693', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (1099, 2, 472, N'Điện Máy Xanh (TGDĐ) HNM Số 784-786 Trần Hưng Đạo TT Bình Mỹ H Bình Lục', N'Số 784 - 786 Trần Hưng Đạo- tiểu khu Bình Thắng- TT. Bình Mỹ- H. Bình Lục- T. Hà Nam', N'C026860742', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (1100, 2, 3, N'Điện Máy Xanh Mini HD 140-142 Lê Trọng Tấn', N'Số 170- đường Lê Trọng Tấn- P. La Khê- Q. Hà Đông- Tp. Hà Nội', N'C026930710', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (1101, 2, 259, N'Điện Máy Xanh (TGDĐ) DN 3084 QL 1A Suối Cát', N'Số 3084- Quốc Lộ 1A- xã Suối Cát- H. Xuân Lộc- T. Đồng Nai', N'C027120718', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (1102, 2, 305, N'Điện Máy Xanh Mini HN Số 2 thôn Tử Dương', N'Số 2- thôn Tử Dương- xã Tô Hiệu- H. Thường Tín- TP. Hà Nội', N'C028260791', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (1103, 2, 473, N'Điện Máy Xanh (TGDĐ) LS Khu II TT Na Sầm', N'Khu II- TT. Na Sầm- H. Văn Lãng- T. Lạng Sơn', N'C029300701', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (1104, 2, 211, N'Điện Máy Xanh Mini HN Cụm 11 xã Tân Hội', N'Cụm 11- xã Tân Hội- H. Đan Phượng- TP. Hà Nội', N'C029300709', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (1105, 2, 474, N'Điện Máy Xanh (TGDĐ) Thế giới di động CB Tổ 9 Trùng Khánh', N'Tổ 9- TT. Trùng Khánh- H. Trùng Khánh- T. Cao Bằng', N'C029820695', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (1106, 2, 104, N'Điện Máy Xanh (TGDĐ) HN Xóm 2 thôn Quỳnh Đô', N'Xóm 2- thôn Quỳnh Đô- xã Vĩnh Quỳnh- H. Thanh Trì- Tp. Hà Nội', N'C030180704', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (1107, 2, 199, N'Điện Máy Xanh (TGDĐ) HN Phố Nhông', N'Phố Nhông- xã Phú Sơn- H. Ba Vì- TP. Hà Nội', N'C031370703', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (1108, 2, 113, N'Điện Máy Xanh (TGDĐ) HN Đội 7 Quảng Bị', N'Đội 7- Thôn 2- xã Quảng Bị- H. Chương Mỹ- TP. Hà Nội', N'C031600705', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (1109, 2, 34, N'Điện Máy Xanh (TGDĐ) Thế giới di động HCM 452A-452B-452C-452D Lũy Bán Bích', N'452A-452B-452C-452D Lũy Bán Bích- P. Hòa Thạnh- Q. Tân Phú- TP.HCM', N'C033000775', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (1110, 2, 20, N'Điện Máy Xanh (TGDĐ) ĐN Số 766 Ấp 2', N'Số 766- Ấp 2- Xã An Hòa- Thành Phố Biên Hòa- Tỉnh Đồng Nai', N'C033780720', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (1111, 2, 31, N'Điện Máy Xanh Mini  QN 03 Nguyễn Đình Chiểu', N'03 Nguyễn Đình Chiểu- P. Trần Phú- TP. Quảng Ngãi- T. Quảng Ngãi', N'C040501563', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (1112, 2, 178, N'Điện Máy Xanh (TGDĐ) B5/19N Trần Đại Nghĩa Ấp 2 Xã Tân Kiên', N'B5/19N Trần Đại Nghĩa- Ấp 2- Xã Tân Kiên- Huyện Bình Chánh- Thành phố Hồ Chí Minh- Việt Nam', N'C058171565', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (1113, 5, 125, N'Mediamart Cẩm Thủy - Quảng Ninh', N'Tổ 28-30- Khu Tân Lập 2- Phường Cẩm Thủy- Thành phố Cẩm Phả- Tỉnh Quảng Ninh- Việt Nam', N'C058241556', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (1114, 2, 563, N'Điện Máy Xanh (TGDĐ) TN Đường DT781 Khu phố 3 Thị Trấn Châu Thành', N'Đường DT781- Khu phố 3- Thị Trấn Châu Thành- Huyện Châu Thành- Tỉnh Tây Ninh- Việt Nam', N'C058611547', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (1115, 2, 475, N'Điện Máy Xanh (TGDĐ) ĐB Tổ 11 thị trấn Mường Chà', N'Tổ 11- thị trấn Mường Chà- huyện Mường Chà- tỉnh Điện Biên', N'C058661549', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (1116, 2, 476, N'Điện Máy Xanh (TGDĐ) HD Thửa đất số 158 và 159 tờ bản đồ số 22 thôn Bình Long', N'Thửa đất số 158 và 159- tờ bản đồ số 22- tại địa chỉ: thôn Bình Long- xã Lương Điền-huyện Cẩm Giàng- tỉnh Hải Dương', N'C058661551', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (1117, 2, 344, N'Điện Máy Xanh (TGDĐ) TH Thửa đất số 477 tờ bản đồ số 3 Thị Trấn Quảng Xương', N'Thửa đất số 477- tờ bản đồ số 3- Thị Trấn Quảng Xương- Huyện Quảng Xương- Tỉnh Thanh Hóa- Việt Nam', N'C058661552', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (1118, 2, 160, N'Điện Máy Xanh (TGDĐ) SL Số 335 đường Trần Đăng Ninh phường Quyết Tâm', N'Số 335 đường Trần Đăng Ninh- phường Quyết Tâm- thành phố Sơn La- tỉnh Sơn La', N'C058661553', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (1119, 2, 328, N'Điện Máy Xanh (TGDĐ) BG Thửa đất số 15 tờ bản đồ 113 thôn Kim 1 xã Phượng Sơn', N'Thửa đất số 15- tờ bản đồ 113 và Thửa đất số...- tờ bản đồ 00-thôn Kim 1- xã Phượng Sơn- huyện Lục Ngạn- tỉnh Bắc Giang', N'C058701539', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (1120, 2, 477, N'Điện Máy Xanh (TGDĐ) HD Thửa đất số 237-239-240 tờ bản đồ số 10 thị trấn Nam Sách', N'Số 73 Đường Hùng Vương- Thị Trấn Nam Sách- Huyện Nam Sách- Tỉnh Hải Dương- Việt Nam', N'C058731536', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (1121, 2, 238, N'Điện Máy Xanh (TGDĐ) HP Thôn Giữa Xã Quảng Thanh Huyện Thủy Nguyên', N'Thôn Giữa- Xã Quảng Thanh- Huyện Thủy Nguyên- Thành phố Hải Phòng- Việt Nam', N'C058821545', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (1122, 2, 259, N'Điện Máy Xanh (TGDĐ) ĐN Quốc lộ 1A ấp 5 Xã Xuân Tâm Huyện Xuân Lộc', N'Quốc lộ 1A- ấp 5- Xã Xuân Tâm- Huyện Xuân Lộc- Tỉnh Đồng Nai- Việt Nam', N'C058821556', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (1123, 2, 20, N'Điện Máy Xanh (TGDĐ) ĐN Số 8/13 đường Trần Văn Xã tổ 13 Phường Trảng Dài', N'Số 8/13- đường Trần Văn Xã- tổ 13- Phường Trảng Dài- Thành phố Biên Hòa- Tỉnh Đồng Nai- Việt Nam', N'C058821557', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (1124, 2, 478, N'Điện Máy Xanh (TGDĐ) ST thửa đất số 157 tờ bản đồ 16 ấp Đầu Giồng thị trấn Trần Đề', N'thửa đất số 157- tờ bản đồ 16- ấp Đầu Giồng- thị trấn Trần Đề- huyện Trần Đề- tỉnh Sóc Trăng', N'C058821558', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (1125, 2, 38, N'Điện Máy Xanh (TGDĐ) HCM 1484 Tỉnh Lộ 8 Ấp 12 Xã Tân Thạnh Đông Huyện Củ Chi', N'1484 Tỉnh Lộ 8- Ấp 12- Xã Tân Thạnh Đông- Huyện Củ Chi- Thành phố Hồ Chí Minh- Việt Nam', N'C058871555', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (1126, 5, 271, N'Mediamart THN Đại Từ', N'Phố Chợ 2- Thị Trấn Hùng Sơn- Huyện Đại Từ- Tỉnh Thái Nguyên- Việt Nam', N'C058941563', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (1127, 5, 268, N'Mediamart NB Kim Sơn', N'Quốc lộ 10- Xã Đồng Hướng- Huyện Kim Sơn- Tỉnh Ninh Bình- Việt Nam', N'C058941566', NULL, 0, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (1128, 2, 409, N'Điện Máy Xanh (TGDĐ) BD Thửa đất 1177 và 1178 Tờ bản đồ 43 Ấp Đồng Sổ Xã Lai Uyên Huyện Bàu Bàng', N'Thửa đất 1177 và 1178- tờ bản đồ 43- ấp Đồng Sổ- xã Lai Uyên- huyện Bàu Bàng- tỉnh Bình Dương', N'C059041561', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (1129, 2, 38, N'Điện Máy Xanh (TGDĐ) HCM 110 - 110B Hà Duy Phiên Xã Bình Mỹ Huyện Củ Chi', N'110 - 110B Hà Duy Phiên- Xã Bình Mỹ- Huyện Củ Chi- Thành phố Hồ Chí Minh- Việt Nam', N'C059041562', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (1130, 2, 214, N'Điện Máy Xanh (TGDĐ) BD Thửa đất 198-397 và 398 tờ bản đồ 11 đường DT74 Tổ 1 Ấp Phú Trung Xã Phú Chánh Thị xã Tân Uyên Tỉnh Bình Dương', N'Thửa đất 198- 397 và 398- tờ bản đồ 11- đường DT742- tổ 1- ấp Phú Trung- xã Phú Chánh- thị xã Tân Uyên- tỉnh Bình Dương', N'C059041563', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (1131, 2, 329, N'Điện Máy Xanh (TGDĐ) BN Phố Chờ Thị Trấn Chờ Huyện Yên Phong', N'Phố Chờ- Thị Trấn Chờ- Huyện Yên Phong- Tỉnh Bắc Ninh- Việt Nam', N'C059041564', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (1132, 2, 479, N'Điện Máy Xanh (TGDĐ) DLK Số 179 Nguyễn Tất Thành Thị Trấn M-Đrắk Huyện M’Đrắk', N'Số 179 Nguyễn Tất Thành- Thị Trấn M-Đrắk- Huyện M’Đrắk- Tỉnh Đắk Lắk- Việt Nam', N'C059141561', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (1133, 2, 256, N'Điện Máy Xanh (TGDĐ) BP Số 37 đường Quốc Lộ 14 tổ 2 ấp 6 xã Minh Lập huyện Chơn Thành tỉnh Bình Phước', N'Số 37- đường Quốc Lộ 14- tổ 2- ấp 6- xã Minh Lập- huyện Chơn Thành- tỉnh Bình Phước', N'C059141562', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (1134, 2, 480, N'Điện Máy Xanh (TGDĐ) DLK Số 266 Lê Duẩn Phường Tân Thành TP.Buôn Ma Thuột', N'Số 266 Lê Duẩn- Phường Tân Thành- TP.Buôn Ma Thuột- Tỉnh Đắk Lắk- Việt Nam', N'C059141563', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (1135, 2, 91, N'Điện Máy Xanh (TGDĐ) HN 146 – 146A - 146B- 146C – 146D Phố Vọng phường Phương Liệt quận Thanh Xuân', N'146 – 146A - 146B- 146C – 146D Phố Vọng- phường Phương Liệt- quận Thanh Xuân- thành phố Hà Nội', N'C059471543', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (1136, 2, 100, N'Điện Máy Xanh (TGDĐ) HN Số 562 đường Nguyễn Văn Cừ phường Gia Thụy quận Long Biên', N'Số 562 đường Nguyễn Văn Cừ- phường Gia Thụy- quận Long Biên- thành phố Hà Nội', N'C059471544', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (1137, 2, 481, N'Điện Máy Xanh (TGDĐ) TH Thôn Đại Đồng Xã Cẩm Sơn Huyện Cẩm Thủy', N'Thôn Đại Đồng- Xã Cẩm Sơn- Huyện Cẩm Thủy- Tỉnh Thanh Hóa- Việt Nam', N'C059471548', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (1138, 2, 363, N'Điện Máy Xanh (TGDĐ) PT Khu 13 Xã Cổ Tiết Huyện Tam Nông', N'Khu 13- Xã Cổ Tiết- Huyện Tam Nông- Tỉnh Phú Thọ- Việt Nam', N'C059711589', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (1139, 5, 52, N'Mediamart PT Khu 1- Phường Vân Cơ- Thành phố Việt Trì', N'Khu 1- Phường Vân Cơ- Thành phố Việt Trì- Tỉnh Phú Thọ- Việt Nam', N'C059721535', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (1140, 5, 482, N'Mediamart Lạc Long Quân - Hà Nội', N'Số 672 Lạc Long Quân- Phường Nhật Tân- Quận Tây Hồ- Thành phố Hà Nội- Việt Nam', N'C058241557', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (1141, 5, 155, N'Mediamart NB Trần Nhân Tông', N'Đường Trần Nhân Tông- Thôn Vườn Hoa- Xã Ninh Phúc- Thành phố Ninh Bình- Tỉnh Ninh Bình- Việt Nam', N'C058941564', NULL, 0, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (1142, 5, 98, N'Mediamart HY 197 Nguyễn Lương Bằng', N'Số nhà 197- đường Nguyễn Lương Bằng- Thị trấn Lương Bằng- Huyện Kim Động- Hưng Yên', N'C058941567', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (1143, 2, 419, N'Điện Máy Xanh (TGDĐ) CT Thửa đất số 82 tờ bản đồ số 59 khu vực 11 phường Châu Văn Liêm quận Ô Môn thành phố Cần Thơ', N'Thửa đất số 82 tờ bản đồ số 59- khu vực 11- phường Châu Văn Liêm- quận Ô Môn- thành phố Cần Thơ', N'C059141564', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (1144, 2, 483, N'Điện Máy Xanh (TGDĐ) HTH Khối 7 Thị Trấn Xuân An Huyện Nghi Xuân', N'Khối 7- Thị Trấn Xuân An- Huyện Nghi Xuân- Tỉnh Hà Tĩnh- Việt Nam', N'C059391538', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (1145, 2, 268, N'Điện Máy Xanh (TGDĐ) NB Xóm Mỹ Hóa Xã Kim Mỹ Huyện Kim Sơn', N'Xóm Mỹ Hóa- Xã Kim Mỹ- Huyện Kim Sơn- Tỉnh Ninh Bình- Việt Nam', N'C059391539', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (1146, 2, 151, N'Điện Máy Xanh (TGDĐ) HCM 1255 Tỉnh Lộ 10 Phường Tân Tạo Quận Bình Tân', N'1255 Tỉnh Lộ 10- Phường Tân Tạo- Quận Bình Tân- Thành phố Hồ Chí Minh- Việt Nam', N'C059391540', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (1147, 2, 178, N'Điện Máy Xanh (TGDĐ) HCM A4/4 Đường Trần Văn Giàu Ấp 1 Xã Lê Minh Xuân Huyện Bình Chánh', N'A4/4- Đường Trần Văn Giàu- Ấp 1- Xã Lê Minh Xuân- Huyện Bình Chánh- Thành phố Hồ Chí Minh- Việt Nam', N'C059471545', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (1148, 2, 484, N'Điện Máy Xanh (TGDĐ) NA Khối 4 Thị Trấn Con Cuông Huyện Con Cuông', N'Khối 4- Thị Trấn Con Cuông- Huyện Con Cuông- Tỉnh Nghệ An- Việt Nam', N'C059471547', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (1149, 2, 485, N'Điện Máy Xanh (TGDĐ) SL Tiểu khu 2 Thị Trấn Yên Châu Huyện Yên Châu', N'Tiểu khu 2- Thị Trấn Yên Châu- Huyện Yên Châu- Tỉnh Sơn La- Việt Nam', N'C059471549', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (1150, 2, 120, N'Điện Máy Xanh (TGDĐ) HP Tổ dân phố 4 Thị Trấn An Dương Huyện An Dương', N'Tổ dân phố 4- Thị Trấn An Dương- Huyện An Dương- Thành phố Hải Phòng- Việt Nam', N'C059471550', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (1151, 3, 30, N'CTy TNHH Cao Phong (STĐM Chợ Lớn) - Hóc Môn', N'475 Tô Ký- ấp Nam Thới- Xã Thới Tam Thôn- Huyện Hóc Môn- TP.HCM- Việt Nam', N'C059521541', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (1152, 2, 262, N'Điện Máy Xanh (TGDĐ) HCM 236 Phạm Phú Thứ Phường 04 Quận 6', N'236 Phạm Phú Thứ- Phường 04- Quận 6- Thành phố Hồ Chí Minh- Việt Nam', N'C059631565', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (1153, 2, 486, N'Điện Máy Xanh (TGDĐ) DLK Tỉnh lộ 685 Thôn 18B Xã Ea Bar Huyện Buôn Đôn', N'Tỉnh lộ 685- Thôn 18B- Xã Ea Bar- Huyện Buôn Đôn- Tỉnh Đắk Lắk- Việt Nam', N'C059631566', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (1154, 2, 16, N'Điện Máy Xanh (TGDĐ) HN Số 1 Ngõ 349 đường Minh Khai phường Vĩnh Tuy quận Hai Bà Trưng', N'Số 1- Ngõ 349 đường Minh Khai- phường Vĩnh Tuy- quận Hai Bà Trưng- thành phố Hà Nội', N'C059631568', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (1155, 2, 487, N'Điện Máy Xanh (TGDĐ) LS Phố Đức Tâm II Thị Trấn Văn Quan Huyện Văn Quan', N'Phố Đức Tâm II- Thị Trấn Văn Quan- Huyện Văn Quan- Tỉnh Lạng Sơn- Việt Nam', N'C059631569', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (1156, 2, 136, N'Điện Máy Xanh (TGDĐ) HN Thôn Tân Trại- Xã Phú Cường- Huyện Sóc Sơn', N'Thôn Tân Trại- Xã Phú Cường- Huyện Sóc Sơn- Thành phố Hà Nội- Việt Nam', N'C059631570', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (1157, 5, 488, N'Mediamart TB Thôn 2- Xã Vũ Quí- Huyện Kiến Xương', N'Thôn 2- Xã Vũ Quí- Huyện Kiến Xương- Tỉnh Thái Bình- Việt Nam', N'C059721538', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (1158, 5, 489, N'Mediamart NĐ Khu E- Đường 38- Thị Trấn Lâm', N'Khu E- Đường 38- Thị Trấn Lâm- Huyện Ý Yên- Tỉnh Nam Định- Việt Nam', N'C059721542', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (1159, 5, 29, N'Mediamart HN 126 Tam Trinh- Phường Yên Sở', N'126 Tam Trinh- Phường Yên Sở- Quận Hoàng Mai- Thành phố Hà Nội- Việt Nam', N'C059721544', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (1160, 2, 267, N'Điện Máy Xanh (TGDĐ) DLK Km 38 Quốc lộ 26 Xã Ea Kuăng Huyện Krông Pắk', N'Km 38- Quốc lộ 26- Xã Ea Kuăng- Huyện Krông Pắk- Tỉnh Đắk Lắk- Việt Nam', N'C059941535', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (1161, 2, 6, N'Điện Máy Xanh (TGDĐ) DNO Số 28 đường DT682 thôn Hòa Phong xã Đắk Sắk huyện Đắk Mil', N'Số 28 đường DT682- thôn Hòa Phong- xã Đắk Sắk- huyện Đắk Mil- tỉnh Đắk Nông', N'C059941536', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (1162, 2, 178, N'Điện Máy Xanh (TGDĐ) HCM C1/3C - C1/3E - C1/3F - C1/3G Võ Văn Vân Ấp 3 Xã Vĩnh Lộc B Huyện Bình Chánh', N'C1/3C - C1/3E - C1/3F - C1/3G Võ Văn Vân- Ấp 3- Xã Vĩnh Lộc B- Huyện Bình Chánh- Thành phố Hồ Chí Minh- Việt Nam', N'C059941537', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (1163, 2, 178, N'Điện Máy Xanh (TGDĐ) HCM G16/41-G16/42-G16/43 Trần Đại Nghĩa Ấp 7 Xã Lê Minh Xuân Huyện Bình Chánh', N'G16/41-G16/42-G16/43 Trần Đại Nghĩa- Ấp 7- Xã Lê Minh Xuân- Huyện Bình Chánh- Thành phố Hồ Chí Minh- Việt Nam', N'C059941538', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (1164, 2, 2, N'Điện Máy Xanh (TGDĐ) LD 503 - 505 Nguyễn Văn Cừ phường Lộc Phát thành phố Bảo Lộc', N'503 - 505 Nguyễn Văn Cừ- phường Lộc Phát- thành phố Bảo Lộc- tỉnh Lâm Đồng', N'C059941539', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (1165, 2, 490, N'Điện Máy Xanh (TGDĐ) LD Thửa đất số 789 tờ bản đồ số 11 QL 27 thôn Phi Có xã Đạ Rsal huyện Đam Rông', N'Thửa đất số 789- tờ bản đồ số 11- QL 27- thôn Phi Có- xã Đạ Rsal- huyện Đam Rông- tỉnh Lâm Đồng', N'C059941540', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (1166, 2, 425, N'Điện Máy Xanh (TGDĐ) BDH Đường 673 Khu phố Định Tố Thị Trấn Vĩnh Thạnh Huyện Vĩnh Thạnh', N'Đường 673- Khu phố Định Tố- Thị Trấn Vĩnh Thạnh- Huyện Vĩnh Thạnh- Tỉnh Bình Định- Việt Nam', N'C060011553', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (1167, 2, 491, N'Điện Máy Xanh (TGDĐ) LA Thửa đất số 486 tờ bản đồ số 14 đường Cách Mạng Tháng Tám khu phố 4 thị trấn Vĩnh Hưng huyện Vĩnh Hưng', N'Thửa Đất số 577 Tờ bản đồ số 14 Đường Hoàng Hoa Thám Khu phố 4 Thị Trấn Vĩnh Hưng Huyện Vĩnh Hưng Tỉnh Long An Việt Nam', N'C060161540', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (1168, 6, 94, N'Công ty TNHH Hà Nội - Chợ Lớn 36 Phạm Văn Đồng', N'36 Phạm Văn Đồng- Phường Cổ Nhuế 1- Quận Bắc Từ Liêm- Thành Phố Hà Nội- Việt Nam', N'C060161543', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (1169, 6, 29, N'Công ty TNHH Hà Nội - Chợ Lớn 348 Giải Phóng', N'348 Giải Phóng -Hoàng Mai- Hà Nội', N'C060161544', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (1170, 2, 492, N'Điện Máy Xanh (TGDĐ) ND Thửa số 213 tờ bản đồ 19', N'Thửa số 213 tờ bản đồ 19 xã Trung Thành H. Vụ Bản T. Nam Định', N'C025310723', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (1171, 2, 439, N'Điện Máy Xanh (TGDĐ) BG Số 222- Đường Thân Công Tài- Thị Trấn Nếnh- Huyện Việt Yên- Tỉnh Bắc Giang', N'Số 222- Đường Thân Công Tài- Thị Trấn Nếnh- Huyện Việt Yên- Tỉnh Bắc Giang- Việt Nam', N'C026020754', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (1172, 2, 441, N'Điện Máy Xanh (TGDĐ) ND thửa 48 xã Nam Dương', N'Thửa đất số 48- tờ bản đồ số 3- xã Nam Dương- H. Nam Trực- T. Nam Định', N'C027770702', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (1173, 2, 171, N'Điện Máy Xanh (TGDĐ) TH Thôn 1 xã Xuân Lâm', N'Thôn 1- xã Xuân Lâm- H. Tĩnh Gia- T. Thanh Hóa', N'C033000772', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (1174, 5, 352, N'Mediamart HD Khu 7- Đường 25 tháng 5- Thị trấn Thanh Hà', N'Khu 7- Đường 25 tháng 5- Thị trấn Thanh Hà- Huyện Thanh Hà- Tỉnh Hải Dương- Việt Nam', N'C059721543', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (1175, 2, 74, N'Điện Máy Xanh (TGDĐ) HCM 215 Dương Thị Mười Khu phố 4 Phường Tân Chánh Hiệp Quận 12', N'215 Dương Thị Mười- Khu phố 4- Phường Tân Chánh Hiệp- Quận 12- Thành phố Hồ Chí Minh- Việt Nam', N'C060161538', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (1176, 2, 264, N'Điện Máy Xanh (TGDĐ) QNM Thửa đất số 843a-1113-648-274-860 Tờ bản đồ số 5-7-8 Xã Đại Minh Huyện Đại Lộc', N'Thửa đất số 843a-1113-648-274-860- Tờ bản đồ số 5-7-8- Xã Đại Minh- Huyện Đại Lộc- Tỉnh Quảng Nam', N'C060161539', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (1177, 2, 493, N'Điện Máy Xanh (TGDĐ) BL ấp Kinh Xáng Xã Lộc Ninh Huyện Hồng Dân', N'Ấp Kinh Xáng- Xã Lộc Ninh- Huyện Hồng Dân- Tỉnh Bạc Liêu- Việt Nam', N'C060301551', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (1178, 2, 45, N'Điện Máy Xanh (TGDĐ) BD Thửa đất số 63 tờ bản đồ số 91 Khu phố Bình Chuẩn Phường Bình Chuẩn Thị xã Thuận An', N'Thửa đất số 63- tờ bản đồ số 91- Khu phố Bình Chuẩn- Phường Bình Chuẩn- Thị xã Thuận An- Tỉnh Bình Dương- Việt Nam', N'C060541538', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (1179, 2, 494, N'Điện Máy Xanh (TGDĐ) HCM 79 Hòa Bình phường 03', N'79- Hòa Bình- phường 03- quận 11- TP. Hồ Chí Minh', N'C038741550', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (1180, 2, 414, N'Điện Máy Xanh (TGDĐ) BN Khu công nghiệp Đại Đồng - Hoàn Sơn Xã Hoàn Sơn Huyện Tiên Du', N'Khu công nghiệp Đại Đồng - Hoàn Sơn- Xã Hoàn Sơn- Huyện Tiên Du- Tỉnh Bắc Ninh- Việt Nam', N'C059631571', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (1181, 2, 495, N'Điện Máy Xanh (TGDĐ) CB Bản Vạn 1 Xã Bế Triều Huyện Hòa An', N'Bản Vạn 1- Xã Bế Triều- Huyện Hòa An- Tỉnh Cao Bằng- Việt Nam', N'C060301550', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (1182, 2, 91, N'Điện Máy Xanh (TGDĐ) HN 424 Đường Nguyễn Trãi Phường Thanh Xuân Trung quận Thanh Xuân', N'424 Đường Nguyễn Trãi- Phường Thanh Xuân Trung- quận Thanh Xuân- Thành phố Hà Nội', N'C060531543', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (1183, 2, 33, N'Điện Máy Xanh (TGDĐ) HN Đường Phạm Văn Đồng Tổ dân phố Hoàng 14 Phường Cổ Nhuế 1 Quận Bắc Từ Liêm', N'Đường Phạm Văn Đồng- Tổ dân phố Hoàng 14- Phường Cổ Nhuế 1- Quận Bắc Từ Liêm- Thành phố Hà Nội- Việt Nam', N'C060541535', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (1184, 2, 496, N'Điện Máy Xanh (TGDĐ) HTH Thửa số 439 Tờ bản đồ số 33 Khối 6 thị trấn Nghèn huyện Can Lộc', N'Thửa số 439- Tờ bản đồ số 33- Khối 6- thị trấn Nghèn- huyện Can Lộc- tỉnh Hà Tĩnh', N'C060541537', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (1185, 6, 181, N'Siêu thị điện máy HC ĐÔNG ANH', N'Thôn Lương Nỗ- Xã Tiên Dương- Đông Anh- Hà Nội', N'C060621583', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (1186, 6, 238, N'Siêu thị điện máy HC Thủy Nguyên', N'Km19 Quốc lộ 10- Xã Kiền Bái- Huyện Thủy Nguyên- Hải Phòng', N'C060621584', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (1187, 2, 151, N'Điện Máy Xanh (TGDĐ) HCM 767A đường Hương Lộ 2 Khu Phố 2 Phường Bình Trị Đông A quận Bình Tân', N'767A đường Hương Lộ 2- Khu Phố 2- Phường Bình Trị Đông A- quận Bình Tân- TP. Hồ Chí Minh', N'C060761541', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (1188, 2, 497, N'Điện Máy Xanh (TGDĐ) BP Quốc lộ 13 Ấp 2 Thị trấn Tân Khai Huyện Hớn Quản', N'Quốc lộ 13- Ấp 2- Thị trấn Tân Khai- Huyện Hớn Quản- Tỉnh Bình Phước- Việt Nam', N'C060761542', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (1189, 2, 58, N'Điện Máy Xanh (TGDĐ) DNG Thửa đất số 197-98-99 tờ bản đồ số 85 Lô số 01-02-03 B1.1 Khu dân cư Quang Thành 3B Phường Hòa Khánh Bắc Quận Liên Chiểu', N'Thửa đất số 197-98-99- tờ bản đồ số 85- Lô số 01-02-03 B1.1- Khu dân cư Quang Thành 3B- Phường Hòa Khánh Bắc- Quận Liên Chiểu- TP Đà Nẵng', N'C060761544', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (1190, 2, 498, N'Điện Máy Xanh (TGDĐ) NA Thửa đất số 25 tờ bản đồ số 14 tại địa chỉ số: Khối 4 thị trấn Quán Hành huyện Nghi Lộc', N'Thửa đất số 25- tờ bản đồ số 14- tại địa chỉ số: Khối 4- thị trấn Quán Hành- huyện Nghi Lộc- tỉnh Nghệ An', N'C060761545', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (1191, 2, 20, N'Điện Máy Xanh (TGDĐ) DN Số 2148 đường Nguyễn Ái Quốc KP An Hòa Phường Hóa An Thành phố Biên Hòa', N'Số 2148 đường Nguyễn Ái Quốc KP An Hòa Phường Hóa An Thành phố Biên Hòa', N'C060891556', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (1192, 2, 228, N'Điện Máy Xanh Mini DLK Thôn Tân Quảng Xã Ea Tóh Huyện Krông Năng', N'Thôn Tân Quảng- Xã Ea Tóh- Huyện Krông Năng- Tỉnh Đắk Lắk- Việt Nam', N'C060981540', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (1193, 2, 499, N'Điện Máy Xanh Mini NA Xóm Dinh Xã Nghĩa Xuân Huyện Quỳ Hợp', N'Xóm Dinh- Xã Nghĩa Xuân- Huyện Quỳ Hợp- Tỉnh Nghệ An- Việt Nam', N'C060981541', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (1194, 2, 500, N'Điện Máy Xanh Mini QN Phố Hoàng Hoa Thám thị trấn Quảng Hà huyện Hải Hà', N'Phố Hoàng Hoa Thám- Thị Trấn Quảng Hà- Huyện Hải Hà- Tỉnh Quảng Ninh- Việt Nam', N'C060981542', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (1195, 2, 30, N'Điện Máy Xanh HCM 22/3C Đỗ Văn Dậy- Ấp Tân Thới 1- Xã Tân Hiệp- Huyện Hóc Môn', N'22/3C Đỗ Văn Dậy- Ấp Tân Thới 1- Xã Tân Hiệp- Huyện Hóc Môn- Thành phố Hồ Chí Minh- Việt Nam', N'C061001685', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (1196, 2, 59, N'Thế Giới Di Động BD 222 Yersin Phường Phú Cường', N'222 Yersin- Phường Phú Cường- Thủ Dầu Một', N'C000025417', NULL, 0, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (1197, 2, 34, N'Thế Giới Di Động DN Tổ 1 Ấp Phương Lâm 2 Xã Phú Lâm', N'Số 54- Tổ 1- Ấp Phương Lâm 2- Xã Phú Lâm', N'C000048264', NULL, 0, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (1198, 2, 66, N'Thế Giới Di Động TN 583 Cách Mạng Tháng Tám', N'583 Cách Mạng Tháng Tám- Khu Phố 2- Phường 3', N'C000048275', NULL, 0, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (1199, 2, 117, N'Thế Giới Di Động CT 217 Đường 3/2', N'217 Đường 3/2- Phường Hưng Lợi- Ninh Kiều', N'C000051843', NULL, 0, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (1200, 2, 42, N'Thế Giới Di Động QNM 225-227 Lý Thường Kiệt', N'225-227 Lý Thường Kiệt- Phường Cẩm Phô- Hội An', N'C000057837', NULL, 0, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (1201, 2, 141, N'Thế Giới Di Động BN Nguyễn Du Ninh Xá', N'Nguyễn Du- Ninh Xá', N'C000076702', NULL, 0, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (1202, 2, 177, N'Thế Giới Di Động DN Ấp Trần Cao Vân Bàu Hàm 2', N'Ấp Trần Cao Vân- Bàu Hàm 2- Huyện Thống Nhất', N'C000076705', NULL, 0, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (1203, 2, 178, N'Thế Giới Di Động HCM A3/2 Tổ 1 Ấp 1 Tân Kiên', N'Ấp 1- Nguyễn Cửu Phú- Xã Tân Kiên- Huyện Bình Chánh- TP.HCM', N'C001078734', NULL, 0, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (1204, 2, 111, N'Thế Giới Di Động BG 108 Xương Giang P.Trần Phú', N'108 Xương Giang- Phường Trần Phú', N'C001298842', NULL, 0, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (1205, 2, 88, N'Thế Giới Di Động HCM 246 Đỗ Xuân Hợp Phước Long A Q9', N'246 Đỗ Xuân Hợp- Phường Phước Long A- Quận 9', N'C002408621', NULL, 0, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (1206, 2, 125, N'Thế Giới Di Động QN Tổ 65 Cẩm Thủy', N'Tổ 65- Phường Cẩm Thủy- Cẩm Phả', N'C002830626', NULL, 0, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (1207, 2, 295, N'Thế Giới Di Động KT 375 - 377 Trần Hưng Đạo', N'375 - 377 Trần Hưng Đạo phường Quyết Thắng TP Kon Tum Tỉnh Kon Tum', N'C008183216', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (1208, 2, 240, N'Thế Giới Di Động LD 314 - 316 Bùi Thị Xuân', N'Số 314 -316 Bùi Thị Xuân- Phường 2- TP. Đà Lạt- T. Lâm Đồng- Việt Nam', N'C010400793', NULL, 0, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (1209, 2, 306, N'Thế Giới Di Động BG Khu 5 TT. Thắng', N'Khu 5- TT.Thắng- H.Hiệp Hòa- T.Bắc Giang', N'C014510704', NULL, 0, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (1210, 2, 297, N'Thế Giới Di Động KH 324-326 Trần Quý Cáp', N'Số 324-326 Trần Quý Cáp Tổ dân phố 7 P.Ninh Hiệp TX.Ninh Hòa T.Khánh Hòa', N'C018890713', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (1211, 2, 136, N'Thế Giới Di Động HN Phố Nỉ', N'Phố Nỉ- xã Trung Giã- H. Sóc Sơn- TP. Hà Nội', N'C026990840', NULL, 0, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (1212, 5, 118, N'Mediamart BN Thôn Công Hà- Xã Hà Mãn- Huyện Thuận Thành', N'Thôn Công Hà- Xã Hà Mãn- Huyện Thuận Thành- Tỉnh Bắc Ninh- Việt Nam', N'C059721540', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (1213, 5, 183, N'Mediamart NB Phố Phú Thịnh- Thị Trấn Yên Thịnh', N'Phố Phú Thịnh- Thị Trấn Yên Thịnh- Huyện Yên Mô- Tỉnh Ninh Bình- Việt Nam.', N'C059721541', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (1214, 2, 37, N'Thế Giới Di Động CM 02 Trần Hưng Đạo', N'2A Trần Hưng Đạo- Khóm 6- P5- TP. Cà Mau- Tỉnh Cà Mau', N'C530_14872', NULL, 0, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (1215, 2, 100, N'Thế Giới Di Động HN 291 Nguyễn Văn Cừ', N'291Nguyễn Văn Cừ- P. Ngọc Lâm- Q. Long Biên- Hà Nội', N'C530_16110', NULL, 0, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (1216, 5, 94, N'Mediamart HN 39 Lê Văn Lương- Phường Trung Hòa', N'39 Lê Văn Lương- Phường Trung Hòa- Quận Cầu Giấy- Hà Nội- Việt Nam', N'C059721536', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (1217, 5, 225, N'Mediamart NA Thôn 7- Xã Diễn Kỷ- Huyện Diễn Châu', N'Thôn 7- Xã Diễn Kỷ- Huyện Diễn Châu- Tỉnh Nghệ An- Việt Nam', N'C059721537', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (1218, 5, 238, N'Mediamart HP Tỉnh lộ 351- Xã Thiên Hương', N'Tỉnh lộ 351- Xã Thiên Hương- Huyện Thủy Nguyên- Thành phố Hải Phòng- Việt Nam', N'C059721539', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (1219, 5, 387, N'Mediamart Thanh Miện - Hải Dương - Chi nhánh Công ty cổ phần MediaMart Việt Nam tại Hải Dương', N'Khu Lê Bình- Thị trấn Thanh Miện- Huyện Thanh Miện- Tỉnh Hải Dương- Việt Nam', N'C061171549', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (1220, 5, 238, N'Mediamart Quảng Thanh - Hải Phòng - Chi nhánh Công ty cổ phần MediaMart Việt Nam tại Hải Phòng', N'Thôn Tân Cả- Xã Quảng Thanh- Huyện Thủy Nguyên- Thành phố Hải Phòng- Việt Nam', N'C061171550', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (1221, 5, 348, N'Mediamart Ninh Giang - Hải Dương - Chi nhánh Công ty cổ phần MediaMart Việt Nam tại Hải Dương', N'Quốc lộ 21- Xã Đồng Tâm- Huyện Ninh Giang- Tình Hải Dương- Việt Nam', N'C061171551', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (1222, 5, 338, N'Mediamart Hà Trung - Thanh Hóa - Chi nhánh Công ty cổ phần MediaMart Việt Nam tại Thanh Hóa', N'Số 244 - Tiểu khu 3- Thị trấn Hà Trung- Huyện Hà Trung- Tỉnh Thanh Hóa- Việt Nam', N'C061171552', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (1223, 5, 33, N'Mediamart Phạm Hùng - Hà Nội - Công ty cổ phần MediaMart Việt Nam', N'Nhà khách ATS số 8 Phạm Hùng- Phường Mễ Trì- Quận Nam Từ Liêm- Thành phố Hà Nội- Việt Nam', N'C061171553', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (1224, 5, 148, N'Mediamart Lập Thạch - Vĩnh Phúc - Chi nhánh Công ty cổ phần MediaMart Việt Nam tại Vĩnh Phúc', N'TDP Tân Chiền- Thị trấn Lập Thạch- Huyện Lập Thạch- Tỉnh Vĩnh Phúc- Việt Nam', N'C061171555', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (1225, 5, 93, N'Mediamart Tiền Hải - Thái Bình- Chi nhánh Công ty cổ phần MediaMart Việt Nam tại Thái Bình', N'Phố Hùng Thắng- Thị trấn Tiền Hải- Huyện Tiền Hải- Tỉnh Thái Bình- Việt Nam', N'C061171556', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (1226, 2, 206, N'Thế Giới Di Động DNO 1 Trương Định Nghĩa Thành Gia Nghĩa', N'Số 82 Huỳnh Thúc Kháng- P. Nghĩa Thành- TX.Gia Nghĩa- T. Đắk Nông', N'C000160912', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (1227, 2, 79, N'Thế Giới Di Động HCM 136 Nguyễn Thái Học- P. Phạm Ngũ Lão', N'136 Nguyễn Thái Học- P. Phạm Ngũ Lão', N'C004250991', NULL, 0, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (1228, 2, 240, N'Thế Giới Di Động LD 116 đường 3/2', N'Số 116- đường 3/2- Phường 5- Thành phố Đà Lạt- Tỉnh Lâm Đồng', N'C005701007', NULL, 0, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (1229, 2, 17, N'Thế Giới Di Động HCM 190B Nguyễn Thị Định', N'190B Nguyễn Thị Định P.An Phú Quận 2 TP.Hồ Chí Minh', N'C008960691', NULL, 0, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (1230, 2, 153, N'Thế Giới Di Động TN Số 145 Quốc Lộ 22 Ấp Lộc Du', N'Số 145 Quốc Lộ 22 Ấp Lộc Du TT.Trảng BàngH.Trảng Bàng Tây Ninh', N'C008960694', NULL, 0, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (1231, 2, 501, N'Điện Máy Xanh (TGDĐ) HD 203 Vũ Mạnh Hùng', N'Số 203 đường Vũ Mạnh Hùng khu 2 TT.Phú Thứ H.Kinh Môn T.Hải Dương', N'C018740777', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (1232, 2, 256, N'Thế Giới Di Động BP 38 QL 13 Tổ 6', N'Số 38 Quốc Lộ 13 Tổ 6 Khu Phố 2 TT.Chơn Thành H.Chơn Thành T.Bình Phước', N'C020910696', NULL, 0, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (1233, 2, 345, N'Thế Giới Di Động HNM Thửa đất 13 - 15 Khu phố 1 Vĩnh Trụ', N'Thửa đất số 13 - 15 Khu phố 1- TT. Vĩnh Trụ- H. Lý Nhân- T. Hà Nam', N'C026490881', NULL, 0, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (1234, 2, 226, N'Điện Máy Xanh Mini HN Khu Chùa Tổng thôn Ngãi Câu', N'Khu Chùa Tổng- thôn Ngãi Cầu- xã An Khánh- H. Hoài Đức- Tp. Hà Nội', N'C029970731', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (1235, 3, 369, N'CTy TNHH Cao Phong (STĐM Chớ Lớn) - Tân An Long An', N'Số 7A Đường Trương Định- Phường 2- TP. Tân An- Long An- Việt Nam', N'C060431535', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (1236, 2, 232, N'Điện Máy Xanh (TGDĐ) BP Thửa đất số 214 tờ bản đồ số 14 đường Quốc Lộ 13 Ấp Hiệp Tâm A xã Lộc Hiệp huyện Lộc Ninh', N'Thửa đất số 214- tờ bản đồ số 14- đường Quốc Lộ 13- Ấp Hiệp Tâm A- xã Lộc Hiệp- huyện Lộc Ninh- tỉnh Bình Phước', N'C060761543', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (1237, 2, 502, N'Điện Máy Xanh Mini SL Tổ dân phố 10 thị trấn Sông Mã huyện Sông Mã', N'Tổ dân phố 10- Thị Trấn Sông Mã- Huyện Sông Mã- Tỉnh Sơn La- Việt Nam', N'C060981543', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (1238, 2, 433, N'Điện Máy Xanh (TGDĐ) HD Đường Quốc Lộ 37 Thửa đất số 11 tờ bản đồ 14 thôn Lãng Xuyên xã Gia Tân huyện Gia Lộc', N'Đường Quốc Lộ 37- Thửa đất số 11- tờ bản đồ 14- thôn Lãng Xuyên- xã Gia Tân- huyện Gia Lộc- tỉnh Hải Dương', N'C061001684', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (1239, 7, 56, N'PICO THANH HÓA 02', N'Tầng 1 - Tòa nhà Thành Trung Plaza số 490 Đại Lộ Lê Lợi - Phường Đông Hương - Thành phố Thanh Hóa.', N'C061071535', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (1240, 2, 503, N'Điện Máy Xanh (TGDĐ) HY Thửa đất số 96 tờ bản đồ 16 Phố Nguyễn Trung Ngạn thị trấn Ân Thi huyện Ân Thi', N'Thửa đất số 96- tờ bản đồ 16- Phố Nguyễn Trung Ngạn- thị trấn Ân Thi- huyện Ân Thi- tỉnh Hưng Yên', N'C061171545', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (1241, 2, 32, N'Điện Máy Xanh (TGDĐ) VL Số 179B ấp Tân Quới Đông Xã Trường An Thành phố Vĩnh Long', N'Số 179B- ấp Tân Quới Đông- Xã Trường An- Thành phố Vĩnh Long- Tỉnh Vĩnh Long- Việt Nam', N'C061171546', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (1242, 2, 295, N'Điện Máy Xanh (TGDĐ) KT 348 đường Trần Hưng Đạo phường Quyết Thắng thành phố Kon Tum', N'348 đường Trần Hưng Đạo- phường Quyết Thắng- thành phố Kon Tum- tỉnh Kon Tum', N'C061311538', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (1243, 6, 184, N'Siêu Thị VHC HN Hậu Lộc - Thanh Hóa', N'Đội 7- xã Hoa Lộc- huyện Hậu Lộc- tỉnh Thanh Hóa', N'C061311548', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (1244, 2, 91, N'Điện Máy Xanh (TGDĐ) HN Số 501-503 đường Vũ Tông Phan Phường Khương Đình Quận Thanh Xuân', N'Số 501-503 đường Vũ Tông Phan- Phường Khương Đình- Quận Thanh Xuân- Thành phố Hà Nội- Việt Nam', N'C061341577', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (1245, 2, 22, N'Điện Máy Xanh (TGDĐ) DT Thửa đất số 15 tờ bản đồ số 11 ấp Đông Mỹ Xã Mỹ Hội Huyện Cao Lãnh', N'Thửa đất số 15- tờ bản đồ số 11- ấp Đông Mỹ- Xã Mỹ Hội- Huyện Cao Lãnh- Tỉnh Đồng Tháp- Việt Nam', N'C061341578', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (1246, 4, 240, N'Nguyễn Kim Trung tâm thương mại BigC Đà lạt', N'Shop 14 + 15- Trung tâm thương mại BigC- Phường 10- Thành phố Đà Lạt- Tỉnh Lâm Đồng- Việt Nam', N'C061341587', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (1247, 2, 42, N'Điện Máy Xanh (TGDĐ) QNM Thửa đất số 299 Tờ bản đồ số 11 Khối Xuân Mỹ phường Tân An Thành phố Hội An', N'Thửa đất số 299- Tờ bản đồ số 11- Khối Xuân Mỹ- phường Tân An- Thành phố Hội An- Tỉnh Quảng Nam', N'C061381617', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (1248, 2, 5, N'Điện Máy Xanh (TGDĐ) HN Số 211 đường Khâm Thiên Phường Thổ Quan Quận Đống Đa', N'Số 211 đường Khâm Thiên- Phường Thổ Quan- Quận Đống Đa- Thành phố Hà Nội- Việt Nam', N'C061471541', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (1249, 2, 222, N'Điện Máy Xanh (TGDĐ) HCM 1085 - 1085A - 1085B - 1085C Đường Phạm Thế Hiển Phường 5 Quận 8', N'1085 - 1085A - 1085B - 1085C Đường Phạm Thế Hiển- Phường 5- Quận 8- Thành phố Hồ Chí Minh- Việt Nam', N'C061741585', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (1250, 2, 90, N'Điện Máy Xanh (TGDĐ) HCM 196–198 Hoàng Diệu 2 Phường Linh Chiểu Quận Thủ Đức', N'196–198 Hoàng Diệu 2- Phường Linh Chiểu- Quận Thủ Đức- Thành phố Hồ Chí Minh- Việt Nam', N'C061741586', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (1251, 2, 188, N'Điện Máy Xanh TN Quốc lộ 22B Khu phố Rạch Sơn Thị Trấn Gò Dầu Huyện Gò Dầu', N'Quốc lộ 22B- Khu phố Rạch Sơn- Thị Trấn Gò Dầu- Huyện Gò Dầu- Tỉnh Tây Ninh- Việt Nam', N'C061861539', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (1252, 2, 84, N'Điện Máy Xanh BP Số 68 đường ĐT.741 Phường Thác Mơ thị xã Phước Long', N'Số 68 đường ĐT.741- Phường Thác Mơ- thị xã Phước Long- tỉnh Bình Phước', N'C061861540', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (1253, 2, 504, N'Điện Máy Xanh LS Thôn Pha Lác Thị Trấn Chi Lăng Huyện Chi Lăng', N'Thôn Pha Lác- Thị Trấn Chi Lăng- Huyện Chi Lăng- Tỉnh Lạng Sơn- Việt Nam', N'C061861541', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (1254, 2, 505, N'Điện Máy Xanh LS Đường Quốc Lộ 1B Thửa đất số 355 tờ bản số 45 thôn Ngã Tư xã Tô Hiệu huyện Bình Gia', N'Đường Quốc Lộ 1B- Thửa đất số 355- tờ bản số 45- thôn Ngã Tư- xã Tô Hiệu huyện Bình Gia- tỉnh Lạng Sơn (Nay là thị trấn Bình Gia- huyện Bình Gia- tỉnh Lạng Sơn)', N'C061861542', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (1255, 5, 506, N'Mediamart Hợp Hòa - Vĩnh Phúc - Chi nhánh Công ty cổ phần Mediamart Việt Nam tại Vĩnh Phúc', N'Quốc lộ 2C- TT Hợp Hoà- Huyện Tam Dương- Tỉnh Vĩnh Phúc- Việt Nam', N'C061901582', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (1256, 5, 96, N'MediamartLý Thường Kiệt - Hà Nam - Chi nhánh Công ty cổ phần Mediamart Việt Nam tại Hà Nam', N'Số 383- Phường Lê Hồng Phong- Thành phố Phủ Lý- Tỉnh Hà Nam- Việt Nam', N'C061901583', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (1257, 5, 507, N'MediamartKim Bảng - Hà Nam - Chi nhánh Công ty cổ phần Mediamart Việt Nam tại Hà Nam', N'Khu 1- xã Thi Sơn- Huyện Kim Bảng- Tỉnh Hà Nam- Việt Nam', N'C061901584', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (1258, 5, 96, N'MediamartLê Công Thanh - Hà Nam - Chi nhánh Công ty cổ phần Mediamart Việt Nam tại Hà Nam', N'Số 35- đường Lê Công Thanh- phường Hai Bà Trưng- TP Phủ Lý- Tỉnh Hà Nam- Việt Nam', N'C061901585', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (1259, 5, 212, N'Mediamart Đồng Văn - Hà Nam - Chi nhánh Công ty cổ phần Mediamart Việt Nam tại Hà Nam', N'Số 284 Nguyễn Hữu Tiến- thị trấn Đồng Văn- huyện Duy Tiên- tỉnh Hà Nam- Việt Nam', N'C061901586', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (1260, 2, 508, N'Điện Máy Xanh HNM Thửa số 66 Tờ bản đồ PL12 Thôn Phú Gia xã Thanh Nguyên huyện Thanh Liêm', N'Thửa số 66- Tờ bản đồ PL12- Thôn Phú Gia- xã Thanh Nguyên- huyện Thanh Liêm- tỉnh Hà Nam', N'C061951606', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (1261, 2, 476, N'Điện Máy Xanh HD KM 40 + 500- Quốc lộ 5A thôn Tràng Kỹ xã Tân Trường huyện Cẩm Giàng', N'KM 40 + 500- Quốc lộ 5A- thôn Tràng Kỹ- xã Tân Trường- huyện Cẩm Giàng- tỉnh Hải Dương', N'C061951607', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (1262, 2, 2, N'Điện Máy Xanh LD Số 738-740-742-742A-744 đường Trần Phú Phường Lộc Tiến Thành phố Bảo Lộc', N'Số 738-740-742-742A-744 đường Trần Phú- Phường Lộc Tiến- Thành phố Bảo Lộc- Tỉnh Lâm Đồng- Việt Nam', N'C061951609', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (1263, 2, 509, N'Điện Máy Xanh GL 199 Hùng Vương Thị Trấn Phú Túc Huyện Krông Pa', N'199 Hùng Vương- Thị Trấn Phú Túc- Huyện Krông Pa- Tỉnh Gia Lai- Việt Nam', N'C061951610', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (1264, 3, 90, N'CTy TNHH Cao Phong ( STĐM Chợ Lớn) - Linh Đông Thủ Đức', N'Số 523B Kha Vạn Cân- P.Linh Đông- Quận Thủ Đức- Tp.HCM', N'C062031536', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (1265, 2, 510, N'Điện Máy Xanh VP Thửa đất số 18; 18.1 tờ bản đồ số 7 và Thửa đất số 526 tờ bản đồ số 12 phố Me thị trấn Hợp Hòa huyện Tam Dương', N'Thửa đất số 18; 18.1- tờ bản đồ số 7 và Thửa đất số 526- tờ bản đồ số 12- phố Me- thị trấn Hợp Hòa- huyện Tam Dương- tỉnh Vĩnh Phúc', N'C062031544', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (1266, 2, 511, N'Điện Máy Xanh QNM Thửa đất số 192 Tờ bản đồ số 5 Khối 6 thị trấn Khâm Đức huyện Phước Sơn', N'Thửa đất số 192- Tờ bản đồ số 5- Khối 6- thị trấn Khâm Đức- huyện Phước Sơn- tỉnh Quảng Nam', N'C062031545', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (1267, 4, 28, N'Nguyễn Kim TN 282A Lương Ngọc Quyến', N'282A Lương Ngọc Quyến- p Quang Trung- Tp Thái Nguyên- tỉnh Thái Nguyên', N'C062111602', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (1268, 2, 512, N'Điện Máy Xanh HB Thửa đất số 328 tờ bản đồ số 11 tiểu khu Liên Phương thị trấn Đà Bắc huyện Đà Bắc', N'Thửa đất số 328- tờ bản đồ số 11- tiểu khu Liên Phương- thị trấn Đà Bắc- huyện Đà Bắc- tỉnh Hòa Bình', N'C062241538', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (1269, 3, 151, N'CN CTy TNHH Cao Phong ( STĐM Chợ Lớn) - Bình Tân 3_41-43-45 Nguyễn Thị Tú', N'41-43-45 Nguyễn Thị Tú- P.Bình Hưng Hòa B- Q.Bình Tân- TP.HCM', N'C062431547', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (1270, 5, 492, N'Mediamart Vụ Bản - Nam Định', N'Quốc Lộ 10- Thị Trấn Gôi- Huyện Vụ Bản- Tỉnh Nam Định- Việt Nam', N'C062511606', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (1271, 5, 513, N'Mediamart Liễu Đề - Nam Định', N'Thửa đất số 21- Thị trấn Liễu Đề- Huyện Nghĩa Hưng- Tỉnh Nam Định- Việt Nam', N'C062511608', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (1272, 5, 514, N'Mediamart Đông Sơn - Thanh Hóa', N'Thôn 6- Xã Đông Hoàng- Huyện Đông Sơn- Tỉnh Thanh Hóa- Việt Nam', N'C062511609', NULL, 0, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (1273, 2, 300, N'Thế Giới Di Động HY thôn Liêu Thượng Liêu Xá', N'Thôn Liêu Thượng- xã Liêu Xá- H.Yên Mỹ- T.Hưng Yên', N'C016180697', NULL, 0, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (1274, 2, 196, N'Điện Máy Xanh Mini BT 09 Nguyễn Hội Phú Trinh', N'09 Nguyễn Hội- Phường Phú Trinh- Thành phố Phan Thiết- Tỉnh Bình Thuận- Việt Nam', N'C029970735', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (1275, 7, 56, N'Pico Lê Lợi Thanh Hóa 2', N'Tầng 1- Thành Trung Plaza- 490 Lê Lợi- Đông Hương- Thanh Hóa', N'C061001540', NULL, 0, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (1276, 5, 358, N'Mediamart Tứ Kỳ - Hải Dương - Chi nhánh Công ty cổ phần MediaMart Việt Nam tại Hải Dương', N'Số nhà 169- đường 391- Thị trấn Tứ Kỳ- Huyện Tứ Kỳ- Tỉnh Hải Dương- Việt Nam', N'C061171557', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (1277, 2, 155, N'Điện Máy Xanh (TGDĐ) NB Thửa đất số 2795 2796 tờ bản đồ số 381e địa chỉ số Xã Gia Trấn huyện Gia Viễn', N'Thửa đất số 2795; 2796- tờ bản đồ số 381e- địa chỉ số: Xã Gia Trấn- huyện Gia Viễn- tỉnh Ninh Bình', N'C061311537', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (1278, 2, 319, N'Điện Máy Xanh (TGDĐ) LA Đường Long Hậu Khu dân cư Long Hậu Ấp 3 Xã Long Hậu Huyện Cần Giuộc', N'Đường Long Hậu- Khu dân cư Long Hậu- Ấp 3- Xã Long Hậu- Huyện Cần Giuộc- Tỉnh Long An- Việt Nam', N'C061341579', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (1279, 2, 515, N'Điện Máy Xanh (TGDĐ) TV Thửa đất số 129-190-191 tờ bản đồ số 14 Khóm 4 Thị Trấn Trà Cú Huyện Trà Cú', N'Thửa đất số 129-190-191- tờ bản đồ số 14- Khóm 4- Thị Trấn Trà Cú- Huyện Trà Cú- Tỉnh Trà Vinh- Việt Nam', N'C061341580', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (1280, 2, 82, N'Điện Máy Xanh (TGDĐ) KH 582 Lê Hồng Phong Phường Phước Long Thành phố Nha Trang', N'582 Lê Hồng Phong- Phường Phước Long- Thành phố Nha Trang- Tỉnh Khánh Hòa- Việt Nam', N'C061471545', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (1281, 2, 516, N'Điện Máy Xanh (TGDĐ) CB Thửa đất số 109 tờ bản đồ số 76 tổ dân phố 1 thị trấn Bảo Lạc huyện Bảo Lạc', N'Thửa đất số 109- tờ bản đồ số 76- tổ dân phố 1- thị trấn Bảo Lạc- huyện Bảo Lạc- tỉnh Cao Bằng', N'C061631574', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (1282, 2, 517, N'Điện Máy Xanh (TGDĐ) CT Thửa đất số 69-70-113-136 tờ bản đồ số 16 ấp Thới Thuận B thị trấn Thới Lai huyện Thới Lai', N'Thửa đất số 69-70-113-136- tờ bản đồ số 16- ấp Thới Thuận B- thị trấn Thới Lai- huyện Thới Lai- TP Cần Thơ', N'C061741588', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (1283, 2, 199, N'Điện Máy Xanh HN Thôn Yên Thành Xã Tản Lĩnh Huyện Ba Vì', N'Thôn Yên Thành- Xã Tản Lĩnh- Huyện Ba Vì- Thành phố Hà Nội- Việt Nam', N'C061951604', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (1284, 2, 252, N'Điện Máy Xanh HN Số 203 - 205 - 207 đường Hà Huy Tập Thị Trấn Yên Viên Huyện Gia Lâm', N'Số 203 - 205 - 207- đường Hà Huy Tập- Thị Trấn Yên Viên- Huyện Gia Lâm- Thành phố Hà Nội- Việt Nam', N'C061951605', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (1285, 2, 161, N'Điện Máy Xanh ND Thửa số 33 Tờ bản đồ 02 Thị Trấn Quất Lâm Huyện Giao Thủy', N'Thửa số 33- Tờ bản đồ 02- Thị Trấn Quất Lâm- Huyện Giao Thủy- Tỉnh Nam Định', N'C062241536', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (1286, 2, 488, N'Điện Máy Xanh TB Khu Cộng Hòa- Thị Trấn Thanh Nê- Huyện Kiến Xương', N'Khu Cộng Hòa- Thị Trấn Thanh Nê- Huyện Kiến Xương- Tỉnh Thái Bình- Việt Nam', N'C062241537', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (1287, 2, 157, N'Điện Máy Xanh Mini HTH Quốc Lộ 1A khu Châu Phố', N'Đường Quang Trung- P.Sông Trí- TX.Kỳ Anh- T.Hà Tĩnh', N'C011450698', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (1288, 2, 30, N'Điện Máy Xanh Mini HCM 22/5 Phan Văn Hớn', N'22/5 Phan Văn Hớn- ấp 7- xã Xuân Thới Thượng- Huyện Hóc Môn- TP.Hồ Chí Minh', N'C018630738', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (1289, 2, 123, N'Điện Máy Xanh Mini DT thừa 12 khóm Tân Hòa', N'Thửa đất số 12- tờ bản đồ số 23- khóm Tân Hòa- P. An Hòa- Tp. Sa Đéc- T. Đồng Tháp', N'C027770699', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (1290, 5, 439, N'Mediamart Việt Yên - Bắc Giang - Chi nhánh Công ty cổ phần MediaMart Việt Nam tại Bắc Giang', N'Phố Thân Nhân Trung- Thị trấn Bích Động- Huyện Việt Yên- Tỉnh Bắc Giang- Việt Nam', N'C061171554', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (1291, 5, 329, N'Mediamart Chờ - Bắc Ninh - Chi nhánh Công ty cổ phần Mediamart Việt Nam tại Bắc Ninh', N'343 đường 295- TT Chờ- Huyện Yên Phong- Tỉnh Bắc Ninh- Việt Nam', N'C061901581', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (1292, 2, 518, N'Điện Máy Xanh QN Số 246-248 Đường Hữu Nghị Khu Dân Cư Tự Xây Khu 10 Thị Trấn Trới', N'Số 246-248- Đường Hữu Nghị- Khu Dân Cư Tự Xây Khu 10- Thị Trấn Trới- Huyện Hoành Bồ- Tỉnh Quảng Ninh- Việt Nam', N'C062431567', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (1293, 2, 482, N'Điện Máy Xanh HN Số 2 ngõ 34 đường Xuân La Phường Xuân La Quận Tây Hồ', N'Số 2- ngõ 34- đường Xuân La- Phường Xuân La- Quận Tây Hồ- Thành phố Hà Nội- Việt Nam', N'C062701538', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (1294, 2, 153, N'Điện Máy Xanh TN Số 3574- tổ 2- khu Công nghiệp Linh Trung III- ấp Suối Sâu- Xã An Tịnh- Huyện Trảng Bàng- Tỉnh Tây Ninh', N'Số 3574- tổ 2- khu Công nghiệp Linh Trung III- ấp Suối Sâu- Xã An Tịnh- Huyện Trảng Bàng- Tỉnh Tây Ninh- Việt Nam', N'C062711556', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (1295, 2, 188, N'Điện Máy Xanh TN Số 32 tổ 12 đường ĐT782 ấp Phước Đức B Xã Phước Đông', N'Số 32- tổ 12. đường ĐT782- ấp Phước Đức B- Xã Phước Đông- Huyện Gò Dầu- Tỉnh Tây Ninh- Việt Nam', N'C062711557', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (1296, 2, 375, N'Điện máy xanh AG Thửa đất số 100 Tờ bản đồ số 05 Ấp Tân Khánh', N'Thửa đất số 100- Tờ bản đồ số 05- Ấp Tân Khánh- Thị Trấn Long Bình- Huyện An Phú- Tỉnh An Giang- Việt Nam', N'C063001548', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (1297, 2, 92, N'Điện Máy Xanh ND Thửa đất số 444 Tờ bản đồ số 21 Xóm 16 xã Hải Anh huyện Hải Hậu', N'Thửa đất số 444- Tờ bản đồ số 21- Xóm 16- xã Hải Anh- huyện Hải Hậu- tỉnh Nam Định', N'C062241535', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (1298, 2, 174, N'Điện Máy Xanh KG Thửa đất số 95-96-97 và 98 tờ bản đồ số 231-2016 Lô H1-18- H1-19 H1-20 và H1-21 đường Quốc lộ 61 Xã Định An Huyện Gò Quao', N'Thửa đất số 95-96-97 và 98- tờ bản đồ số 231-2016- Lô H1-18- H1-19- H1-20 và H1-21- đường Quốc lộ 61- Xã Định An- Huyện Gò Quao- Tỉnh Kiên Giang- Việt Nam', N'C062241539', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (1299, 2, 135, N'Điện Máy Xanh HG Số 1087 Trần Hưng Đạo- Khu vực 5- Phường VII- Thành phố Vị Thanh', N'Số 1087 Trần Hưng Đạo- Khu vực 5- Phường VII- Thành phố Vị Thanh- Tỉnh Hậu Giang- Việt Nam', N'C062241540', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (1300, 4, 34, N'CHI NHÁNH CÔNG TY CỔ PHẦN THƯƠNG MẠI NGUYỄN KIM – TRUNG TÂM MUA SẮM NGUYỄN KIM AEON TÂN PHÚ', N'30 đường Bờ Bao Tân Thắng- P.Sơn Kỳ- Q. Tân Phú- TP HCM', N'C062241544', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (1301, 2, 519, N'Điện Máy Xanh PT Thôn Tân An 4 thị trấn Yên Lập huyện Yên Lập', N'Thôn Tân An 4- thị trấn Yên Lập- huyện Yên Lập- tỉnh Phú Thọ', N'C062251590', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (1302, 2, 520, N'Điện Máy Xanh DNG 168 - 172 Phạm Hùng Xã Hòa Châu Huyện Hòa Vang', N'168 - 172 Phạm Hùng- Xã Hòa Châu- Huyện Hòa Vang- Thành phố Đà Nẵng- Việt Nam', N'C062251592', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (1303, 2, 372, N'Điện Máy Xanh TH Thửa đất số 118 tờ bản đồ số 32 Khu 7 Thị Trấn Thọ Xuân Huyện Thọ Xuân', N'Thửa đất số 118- tờ bản đồ số 32- Khu 7- Thị Trấn Thọ Xuân- Huyện Thọ Xuân- Tỉnh Thanh Hóa- Việt Nam', N'C062431565', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (1304, 2, 521, N'Điện Máy Xanh HY Thửa đất số 67 Tờ bản đồ số 3 Thị Trấn Văn Giang Huyện Văn Giang', N'Thửa đất số 67- Tờ bản đồ số 3- Thị Trấn Văn Giang- Huyện Văn Giang- Tỉnh Hưng Yên- Việt Nam', N'C062431566', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (1305, 2, 480, N'Điện Máy Xanh DLK Số 196 Phan Chu Trinh Phường Tân Lợi TP.Buôn Ma Thuột', N'Số 196 Phan Chu Trinh- Phường Tân Lợi- TP.Buôn Ma Thuột- Tỉnh Đắk Lắk- Việt Nam', N'C062431568', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (1306, 2, 341, N'Điện Máy Xanh BTR Thửa đất số 88 tờ bản đồ số 17 ấp Giao Hòa B Xã Giao Thạnh Huyện Thạnh Phú', N'Thửa đất số 88- tờ bản đồ số 17- ấp Giao Hòa B- Xã Giao Thạnh- Huyện Thạnh Phú- Tỉnh Bến Tre- Việt Nam', N'C062431571', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (1307, 2, 261, N'Điện Máy Xanh VL Đường Quốc lộ 54 tổ 50 khóm Đông Thuận Phường Đông Thuận Thị xã Bình Minh', N'Đường Quốc lộ 54- tổ 50- khóm Đông Thuận- Phường Đông Thuận- Thị xã Bình Minh- Tỉnh Vĩnh Long- Việt Nam', N'C062431572', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (1308, 5, 506, N'Mediamart Tam Dương - Vĩnh Phúc', N'Thôn Đồn- Xã Kim Long- Huyện Tam Dương- Tình Vĩnh Phúc- Việt Nam', N'C062511607', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (1309, 2, 217, N'Điện Máy Xanh HP Thôn 6 Xã Tú Sơn Huyện Kiến Thuỵ Thành phố Hải Phòng', N'Thôn 6- Xã Tú Sơn- Huyện Kiến Thuỵ- Thành phố Hải Phòng- Việt Nam', N'C062701539', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (1310, 2, 243, N'Điện Máy Xanh BT Quốc lộ 1A Ngã 3- Xóm 7 Thôn Vĩnh Phúc Xã Vĩnh Tân Huyện Tuy Phong', N'Quốc lộ 1A- Ngã 3- Xóm 7- Thôn Vĩnh Phúc - Xã Vĩnh Tân- Huyện Tuy Phong- Tỉnh Bình Thuận- Việt Nam', N'C062701541', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (1311, 5, 253, N'Mediamart Phú Thái - Hải Dương', N'Khu Phố Ga- Thị trấn Phú Thái- huyện Kim Thành- tỉnh Hải Dương- Việt Nam', N'C062711538', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (1312, 5, 346, N'Mediamart Đồng Đăng - Lạng Sơn', N'Khu Vườn Sái- TT Đồng Đăng- Huyện Cao Lộc- Tỉnh Lạng Sơn- Việt Nam', N'C062711539', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (1313, 5, 300, N'Mediamart Yên Mỹ - Hưng Yên', N'Khu Cầu Treo- Xã Tân Lập- Huyện Yên Mỹ- Tỉnh Hưng Yên- Việt Nam', N'C062711540', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (1314, 5, 327, N'Mediamart Đồi Ngô - Bắc Giang', N'Phố Bình Minh- TT Đồi Ngô- Huyện Lục Nam- Tỉnh Bắc Giang- Việt Nam', N'C062711541', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (1315, 5, 171, N'Mediamart Tĩnh Gia 2 - Thanh Hóa', N'Đường Quang Trung-Tiểu khu 6- Thị trấn Tĩnh Gia- Huyện Tĩnh Gia- Tỉnh Thanh Hóa- Việt Nam', N'C062711546', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (1316, 5, 161, N'Mediamart Giao Thủy - Nam Định', N'Xóm 14- Xã Hoành Sơn- Huyện Giao Thủy- Tỉnh Nam Định- Việt Nam', N'C062711549', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (1317, 2, 215, N'Điện Máy Xanh TV số 249 quốc lộ 53 khóm 1 Phường 2 Thị Xã Duyên Hải', N'số 249- quốc lộ 53- khóm 1- Phường 2- Thị Xã Duyên Hải- Tỉnh Trà Vinh- Việt Nam', N'C062711555', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (1318, 2, 62, N'Điện Máy Xanh Mini BDH 1225 Trần Hưng Đạo', N'1225 Trần Hưng Đạo- Phường Đống Đa- Tp. Quy Nhơn- Tỉnh Bình Định', N'C021790695', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (1319, 2, 522, N'Điện Máy Xanh Mini BRVT số 9 QL 55 H Đất Đỏ', N'Số 09 Quốc Lộ 55- Phước Sơn- TT. Đất Đỏ- H. Đất Đỏ- T. Bà Rịa - Vũng Tàu', N'C026340792', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (1320, 2, 491, N'Thế giới di động LA 253-254 Cách Mạng Tháng 8', N'Số 253-254- đường Cách Mạng Tháng 8- TT. Vĩnh Hưng- H. Vĩnh Hưng- T. Long An', N'C027580788', NULL, 0, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (1321, 2, 104, N'Điện Máy Xanh Mini HN Thửa số L17', N'Thửa số L17- khu đấu giá QSD đất- xã Tân Triều- H. Thanh Trì- TP. Hà Nội', N'C034020735', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (1322, 2, 523, N'Điện Máy Xanh HG Thửa đất số 1907 tờ bản đồ số 04 ấp Mỹ Quới thị trấn Cây Dương huyện Phụng Hiệp', N'Thửa đất số 1907- tờ bản đồ số 04- ấp Mỹ Quới- thị trấn Cây Dương- huyện Phụng Hiệp- tỉnh Hậu Giang', N'C062251593', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (1323, 6, 276, N'Siêu thị VHC TN Sông Công', N'Ngã tư đường Lê Hồng Phong- Phường Bách Quang- thành phố Sông Công- tỉnh Thải Nguyên', N'C062711562', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (1324, 6, 136, N'Siêu thị VHC HN Phù Lỗ', N'Quốc lộ 2- Phù Lỗ- Sóc Sơn- Hà Nội', N'C062711563', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (1325, 2, 524, N'Điện máy xanh Thửa đất số 507 tờ bản đồ số 9 xã Thạch Châu', N'Thửa đất số 507- tờ bản đồ số 9- xã Thạch Châu- huyện Thạch Hà- tỉnh Hà Tĩnh (Nay là xã Thạch Châu- huyện Lộc Hà- tỉnh Hà Tĩnh)', N'C062821555', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (1326, 2, 33, N'Điện máy xanh HN Số 90 đường Miếu Đầm- Phường Mễ Trì', N'Số 90 đường Miếu Đầm- Phường Mễ Trì- Quận Nam Từ Liêm- Thành phố Hà Nội- Việt Nam', N'C062821557', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (1327, 2, 434, N'Điện máy xanh VL Số 242/20 khóm 5 Thị Trấn Long Hồ', N'Số 242/20- khóm 5- Thị Trấn Long Hồ- Huyện Long Hồ- Tỉnh Vĩnh Long- Việt Nam', N'C063071537', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (1328, 2, 318, N'Điện máy xanh HN Thửa đất số 09-34-35 tờ bản đồ Số 12 Tổ 2 Thị Trấn Kim Bài', N'Thửa đất số 09-34-35- tờ bản đồ Số 12- Tổ 2- Thị Trấn Kim Bài- Huyện Thanh Oai- Thành phố Hà Nội- Việt Nam', N'C063201540', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (1329, 2, 17, N'Điện máy xanh HCM 580A - 580 - 578 Nguyễn Thị Định phường Thạnh Mỹ Lợi', N'580A - 580 - 578 Nguyễn Thị Định- phường Thạnh Mỹ Lợi- Quận 2- Tp Hồ Chí Minh', N'C063401549', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (1330, 2, 525, N'Điện máy xanh TTH Thửa đất số 6 Tờ bản đồ số 4 Khu vực 10 thị trấn Tứ Hạ', N'Thửa đất số 6- Tờ bản đồ số 4- Khu vực 10- thị trấn Tứ Hạ- huyện Hương Trà- tỉnh Thừa Thiên Huế', N'C063571715', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (1331, 2, 492, N'Điện máy xanh NĐ Thửa đất số 434 tờ bản đồ số 14 Thị Trấn Gôi', N'Thửa đất số 434- tờ bản đồ số 14- Thị Trấn Gôi- Huyện Vụ Bản- Tỉnh Nam Định- Việt Nam', N'C063571716', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (1332, 2, 23, N'Điện máy xanh ĐN 88 Võ Chí Công Phường Hòa Xuân Quận Cẩm Lệ', N'88 Võ Chí Công- Phường Hòa Xuân- Quận Cẩm Lệ- Thành phố Đà Nẵng- Việt Nam', N'C063651573', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (1333, 2, 526, N'Điện máy xanh QN Thửa đất số 168-507-683 Tờ bản đồ số 17 Tổ dân phố 1 thị trấn Trà Xuân', N'Thửa đất số 168-507-683- Tờ bản đồ số 17- Tổ dân phố 1- thị trấn Trà Xuân- huyện Trà Bồng- Tỉnh Quảng Ngãi', N'C063651577', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (1334, 2, 220, N'Điện máy xanh QN Thửa đất số 532 tờ bản đồ số 10 Thị trấn Mộ Đức', N'Thửa đất số 532- tờ bản đồ số 10- Thị trấn Mộ Đức- Huyện Mộ Đức- Tỉnh Quảng Ngãi', N'C063651578', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (1335, 2, 527, N'Điện máy xanh LC Tổ dân phố Bắc Hà 1 Thị Trấn Bắc Hà Huyện Bắc Hà', N'Tổ dân phố Bắc Hà 1- Thị Trấn Bắc Hà- Huyện Bắc Hà- Tỉnh Lào Cai- Việt Nam', N'C063651579', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (1336, 2, 45, N'Điện máy xanh BD Thửa đất số 13 Tờ bản đồ số 4 Số 11/29 Khu phố Bình Đức 3 Phường Bình Hòa', N'Thửa đất số 13- Tờ bản đồ số 4- Số 11/29- Khu phố Bình Đức 3- Phường Bình Hòa- Thị xã Thuận An- Tỉnh Bình Dương- Việt Nam', N'C063891538', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (1337, 2, 34, N'Điện máy xanh HCM 153-155 Lê Trọng Tấn Phường Sơn Kỳ', N'153-155 Lê Trọng Tấn- Phường Sơn Kỳ- Quận Tân Phú- TP.HCM', N'C063891539', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (1338, 2, 323, N'Điện máy xanh ĐN 312 Trần Đại Nghĩa Phường Hòa Hải', N'312 Trần Đại Nghĩa- Phường Hòa Hải- Quận Ngũ Hành Sơn- Thành phố Đà Nẵng- Việt Nam', N'C063891540', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (1339, 2, 393, N'Điện máy xanh QB 424 Quang Trung Phường Quảng Long Thị Xã Ba Đồn', N'424 Quang Trung- Phường Quảng Long- Thị Xã Ba Đồn- Tỉnh Quảng Bình- Việt Nam', N'C063891544', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (1340, 2, 74, N'Điện máy xanh HCM 575A - 577 Nguyễn Ảnh Thủ Phường Hiệp Thành', N'575A - 577 Nguyễn Ảnh Thủ- Phường Hiệp Thành- Quận 12- Thành phố Hồ Chí Minh- Việt Nam', N'C063951644', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (1341, 3, 108, N'CTy TNHH Cao Phong (STĐM Chợ Lớn) Di Linh 1080 Hùng Vương', N'1080 Hùng Vương- Thị Trấn Di Linh- Huyện Di Linh- Tỉnh Lâm Đồng', N'C064241543', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (1342, 5, 3, N'Mediamart Vạn Phúc - Hà Nội - Công ty cổ phần MediaMart Việt Nam', N'Số 63 Vạn Phúc- Phường Vạn Phúc- Quận Hà Đông- Thành Phố Hà Nội- Việt Nam', N'C061171559', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (1343, 5, 3, N'Mediamart La Khê - Hà Nội - Công ty cổ phần MediaMart Việt Nam', N'Đội 4- Tổ dân phố 4- Phường La Khê- Quận Hà Đông- TP Hà Nội- Việt Nam', N'C061171560', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (1344, 5, 292, N'Mediamart Như Quỳnh - Hưng Yên- Chi nhánh Công ty cổ phần MediaMart Việt Nam tại Hưng Yên', N'Đội 10- thôn Như Quỳnh- TT Như Quỳnh- Huyện Văn Lâm- Tỉnh Hưng Yên- Việt Nam', N'C061171561', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (1345, 5, 136, N'Mediamart Phù Lỗ - Hà Nội', N'Thôn Đông- Xã Phù Lỗ- Huyện Sóc Sơn- TP Hà Nội- Việt Nam', N'C061171562', NULL, 0, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (1346, 5, 422, N'Mediamart Sông Thao - Phú Thọ', N'Khu Chợ Cũ- Thị Trấn Sông Thao- Huyện Cẩm Khê- Tỉnh Phú Thọ- Việt Nam', N'C061171568', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (1347, 5, 130, N'Mediamart Quang Trung - Thái Bình', N'Số nhà 30- Phố Quang Trung- Tổ 17- Phường Quang Trung- TP Thái Bình- Tỉnh Thái Bình- Việt Nam', N'C061171570', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (1348, 5, 93, N'Mediamart Nam Trung - Thái Bình', N'Thôn Độc Lập- Xã Nam Trung- Huyện Tiền Hải- Thái Bình- Việt Nam', N'C061171571', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (1349, 5, 477, N'Mediamart Nam Sách - Hải Dương', N'Số nhà 633- Đường Trần Phú- khu Nguyễn Văn Trỗi- TT Nam Sách- huyện Nam Sách- Tỉnh Hải Dương- Việt Nam', N'C061171574', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (1350, 2, 74, N'Điện Máy Xanh HCM 35 Vườn Lài. Khu phố 4- Phường An Phú Đông- Quận 12', N'35 Vườn Lài. Khu phố 4- Phường An Phú Đông- Quận 12- Thành phố Hồ Chí Minh- Việt Nam', N'C061951608', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (1351, 2, 303, N'Điện Máy Xanh BDH Khối 2 Thị Trấn Tam Quan Huyện Hoài Nhơn', N'Khối 2- Thị Trấn Tam Quan- Huyện Hoài Nhơn- Tỉnh Bình Định- Việt Nam', N'C062431570', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (1352, 2, 30, N'Điện Máy Xanh HCM 137 Lê Thị Hà Ấp Đình Xã Tân Xuân Huyện Hóc Môn', N'137 Lê Thị Hà- Ấp Đình- Xã Tân Xuân- Huyện Hóc Môn- Thành phố Hồ Chí Minh- Việt Nam', N'C062701540', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (1353, 2, 7, N'Điện Máy Xanh HG Số 2041 Hùng Vương Khu vực 3 Phường Ngã Bảy', N'Số 2041 Hùng Vương- Khu vực 3- Phường Ngã Bảy- Thị Xã Ngã Bảy- Tỉnh Hậu Giang- Việt Nam', N'C062701543', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (1354, 5, 252, N'Mediamart Trâu Quỳ - Hà Nội', N'Tổ dân phố Voi Phục- TT Trâu Quỳ- Huyện Gia Lâm- TP Hà Nội- Việt Nam', N'C062711543', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (1355, 5, 305, N'Mediamart Quất Động - Hà Nội', N'Thôn Nguyên Bì- Xã Quất Động- Huyện Thường Tín- TP Hà Nội- Việt Nam', N'C062711544', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (1356, 5, 218, N'Mediamart Minh Đức (Kẻ Sặt) - Hưng Yên', N'Thịnh Vạn- Phường Minh Đức- Thị xã Mỹ Hào- Tỉnh Hưng Yên- Việt Nam', N'C062711545', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (1357, 5, 528, N'Mediamart Yên Lạc - Vĩnh Phúc', N'Khu Phố Ba Tiên- Thị trấn Yên Lạc- Huyện Yên Lạc- Tỉnh Vĩnh Phúc- Việt Nam', N'C062711547', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (1358, 5, 260, N'Mediamart Phong Châu - Phú Thọ', N'Khu 6- TT Phong Châu- Huyện Phù Ninh- Tỉnh Phú Thọ- Việt Nam', N'C062711550', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (1359, 5, 529, N'Mediamart An Bài - Thái Bình', N'Khu Tư Môi- TT An Bài- Huyện Quỳnh Phụ- Tỉnh Thái Bình- Việt Nam', N'C062711551', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (1360, 2, 530, N'Điện máy xanh YB Số nhà 295 đường Nguyễn Tất Thành tổ dân phố số 3', N'Số nhà 295 đường Nguyễn Tất Thành- tổ dân phố số 3- Thị Trấn Yên Thế- Huyện Lục Yên- Tỉnh Yên Bái- Việt Nam', N'C062821552', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (1361, 2, 14, N'Điện máy xanh Thửa đât số 547 tờ bản đồ 12 Số 330 đường Lê Văn Thọ phường 11', N'Thửa đât số 547- tờ bản đồ 12- Số 330- đường Lê Văn Thọ- phường 11- quận Gò Vấp- thành phố Hồ Chí Minh', N'C062821553', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (1362, 2, 27, N'Điện máy xanh Số nhà 133 đường Mai Thị Hồng Hạnh khu phố 3 Phường Rạch Sỏi', N'Số nhà 133 đường Mai Thị Hồng Hạnh- khu phố 3- Phường Rạch Sỏi- Thành phố Rạch Giá- Tỉnh Kiên Giang- Việt Nam', N'C062821554', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (1363, 2, 67, N'Điện máy xanh HG Đường Hùng Vương ấp Thị Trấn Thị Trấn Ngã Sáu', N'Đường Hùng Vương- ấp Thị Trấn- Thị Trấn Ngã Sáu- Huyện Châu Thành- Tỉnh Hậu Giang- Việt Nam', N'C062821556', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (1364, 2, 531, N'Điện máy xanh BL Số 25 Đường 19 tháng 5 Ấp 4 Thị Trấn Gành Hào', N'Số 25- Đường 19 tháng 5- Ấp 4- Thị Trấn Gành Hào- Huyện Đông Hải- Tỉnh Bạc Liêu- Việt Nam', N'C062821558', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (1365, 2, 250, N'Điện máy xanh 1521 đường Huỳnh Tấn Phát phường Phú Mỹ', N'1521 đường Huỳnh Tấn Phát- phường Phú Mỹ- quận 7- Tp. Hồ Chí Minh', N'C062821559', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (1366, 2, 59, N'Điện máy xanh Thửa đất số 524 và 525 và 526 tờ bản đồ 41 số nhà 577 và 579 và 581 đường Cách Mạng Tháng Tám', N'Thửa đất số 524 và 525 và 526- tờ bản đồ 41- số nhà 577 và 579 và 581 đường Cách Mạng Tháng Tám- phường Phú Cường- thành phố Thủ Dầu Một- tỉnh Bình Dương', N'C062911559', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (1367, 2, 39, N'Điện máy xanh Thửa đất số 170-173-403 tờ bản đồ số 14 Ấp Bình Lợi', N'Thửa đất số 170-173-403- tờ bản đồ số 14- Ấp Bình Lợi- Xã Hòa Khánh Đông- Huyện Đức Hòa- Tỉnh Long An- Việt Nam', N'C062911560', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (1368, 2, 278, N'Điện máy xanh Thửa đất số 847 Tờ bản đồ số 13 Ấp Long Thanh Xã Long Trạch', N'Thửa đất số 847- Tờ bản đồ số 13- Ấp Long Thanh- Xã Long Trạch- Huyện Cần Đước- Tỉnh Long An- Việt Nam', N'C062911561', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (1369, 2, 24, N'Điện máy xanh BP Số 1729 Quốc lộ 14 Ấp 2 Xã Tân Thành', N'Số 1729 Quốc lộ 14- Ấp 2- Xã Tân Thành- Thành phố Đồng Xoài- Tỉnh Bình Phước- Việt Nam', N'C062911562', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (1370, 2, 24, N'Điện máy xanh Số nhà 691 Đường Phú Riềng Đỏ Tổ 1 Khu phố Tân Trà 1', N'Số nhà 691- Đường Phú Riềng Đỏ- Tổ 1- Khu phố Tân Trà 1- Phường Tân Bình- Thành phố Đồng Xoài- Tỉnh Bình Phước', N'C062911563', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (1371, 2, 170, N'Điện máy xanh Thửa đất số 62 tờ bản đồ số 40 (bản đồ địa chính) khối 4', N'Thửa đất số 62- tờ bản đồ số 40 (bản đồ địa chính)- khối 4- thị trấn Tây Sơn- huyện Hương Sơn- tỉnh Hà Tĩnh', N'C062911564', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (1372, 2, 532, N'Điện máy xanh Khối 1 thị trấn Yên Thành', N'Khối 1- thị trấn Yên Thành- huyện Yên Thành- tỉnh Nghệ An', N'C062911565', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (1373, 2, 3, N'Điện máy xanh Số 418 đường Quang Trung Phường La Khê', N'Số 418- đường Quang Trung- Phường La Khê- Quận Hà Đông- Thành phố Hà Nội- Việt Nam', N'C062911566', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (1374, 2, 557, N'Điện máy xanh AG Thửa đất số 493-1105-1106 Tờ bản đồ số 82 Xã Bình Hòa', N'Thửa đất số 493-1105-1106- Tờ bản đồ số 82- Xã Bình Hòa- Huyện Châu Thành- Tỉnh An Giang- Việt Nam', N'C063001546', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (1375, 2, 533, N'Điện máy xanh ST Thửa đất số 29 66 134 249 và 250 tờ bản đồ số 27 ấp Cầu Đồn', N'Thửa đất số 29- 66- 134- 249 và 250- tờ bản đồ số 27- ấp Cầu Đồn- thị trấn Huỳnh Hữu Nghĩa- huyện Mỹ Tú- tỉnh Sóc Trăng', N'C063001547', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (1376, 2, 534, N'Điện máy xanh HG số 388 đường 30/4- Thị Trấn Nàng Mau- Huyện Vị Thủy- Tỉnh Hậu Giang', N'số 388 đường 30/4- Thị Trấn Nàng Mau- Huyện Vị Thủy- Tỉnh Hậu Giang- Việt Nam', N'C063001549', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (1377, 2, 520, N'Điện máy xanh ĐN Thửa đất số 134 Tờ bản đồ 13 Thôn Lệ Sơn 1', N'Thửa đất số 134- Tờ bản đồ 13- Thôn Lệ Sơn 1- xã Hòa Tiến- Huyện Hòa Vang- Đà Nẵng', N'C063071535', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (1378, 2, 62, N'Điện máy xanh BĐ Số 320 đường Phan Bội Châu Phường Lê Hồng Phong', N'Số 320 đường Phan Bội Châu- Phường Lê Hồng Phong- Thành phố Quy Nhơn- Tỉnh Bình Định- Việt Nam', N'C063071536', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (1379, 2, 57, N'Điện máy xanh BT Số 625-627 đường Thống Nhất Phường Tân An', N'Số 625-627 đường Thống Nhất- Phường Tân An- Thị xã La Gi- Tỉnh Bình Thuận- Việt Nam', N'C063211553', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (1380, 2, 240, N'Điện máy xanh LD 257 Phan Đình Phùng phường 02', N'257 Phan Đình Phùng- phường 02- TP. Đà Lạt- Lâm Đồng', N'C063211554', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (1381, 2, 44, N'Điện máy xanh QB 176 Lý Thái Tổ- Phường Bắc Nghĩa- Thành phố Đồng Hới- Tỉnh Quảng Bình', N'176 Lý Thái Tổ- Phường Bắc Nghĩa- Thành phố Đồng Hới- Tỉnh Quảng Bình- Việt Nam', N'C063211555', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (1382, 2, 184, N'Điện máy xanh TH Khu 2- Thị Trấn Hậu Lộc- Huyện Hậu Lộc', N'Khu 2- Thị Trấn Hậu Lộc- Huyện Hậu Lộc- Tỉnh Thanh Hóa- Việt Nam', N'C063401547', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (1383, 2, 396, N'Điện máy xanh BP Đường ĐT 760 Xã Bom Bo Huyện Bù Đăng', N'Đường ĐT 760- Xã Bom Bo- Huyện Bù Đăng- Tỉnh Bình Phước- Việt Nam', N'C063401548', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (1384, 2, 84, N'Điện máy xanh BL Đường tỉnh DT980B Ấp Phước Thành Xã Phước Long', N'Đường tỉnh DT980B- Ấp Phước Thành- Xã Phước Long- Huyện Phước Long- Tỉnh Bạc Liêu- Việt Nam', N'C063401550', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (1385, 2, 535, N'Điện máy xanh NĐ Thửa đất số 200 tờ bản đồ số 7 Thị Trấn Xuân Trường', N'Thửa đất số 200- tờ bản đồ số 7- Thị Trấn Xuân Trường- Huyện Xuân Trường- Tỉnh Nam Định- Việt Nam', N'C063401551', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (1386, 4, 12, N'SBS Nguyễn Kim Hạ Long', N'Trung tâm thương mại BigC Hạ Long- Cột 5- Phường Hồng Hải- TP Hạ Long- Tỉnh Quảng Ninh- Việt Nam', N'C063571714', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (1387, 4, 382, N'SBS Nguyễn Kim Cần Thơ', N'Trung tâm thương mại BigC Cần Thơ- Lô số 01- Khu dân cư Hưng Phú 1- Phường Hưng Phú- Quận Cái Răng- Thành phố Cần Thơ- Việt Nam', N'C063651541', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (1388, 5, 300, N'Mediamart Giai Phạm - Hưng Yên', N'Chợ trung tâm mua sắm Tiến Đạt- Xã Giai Phạm- Huyện Yên Mỹ- Hưng Yên- Việt Nam', N'C063751552', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (1389, 2, 32, N'Thế Giới Di Động VL 93B Đường 2/9 Khóm Hưng Đạo Vương', N'93B Đường 2/9- Khóm Hưng Đạo Vương- Phường 1', N'C000048290', NULL, 0, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (1390, 2, 343, N'Thế Giới Di Động DLK 154 Hùng Vương An Lạc', N'154 Hùng Vương- An Lạc- Buôn Hồ', N'C000076704', NULL, 0, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (1391, 2, 37, N'Thế Giới Di Động CM 52 Nguyễn Trãi', N'52 Nguyễn Trãi- P.9- TP.Cà Mau- T.Cà Mau', N'C012810707', NULL, 0, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (1392, 2, 275, N'Thế Giới Di Động BD 6/12 Thống Nhất KP2', N'6/12 Thống Nhất KP.2 TT.Dầu Tiếng H.Dầu Tiếng T.Bình Dương', N'C015040701', NULL, 0, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (1393, 2, 181, N'Thế Giới Di Động HN 64-66-68 Cao Lỗ', N'Số 64-66-68 đường Cao Lỗ Xã Uy Nỗ H.Đông Anh TP.Hà Nội', N'C021380710', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (1394, 2, 363, N'Thế Giới Di Động DT Thửa đất 2209 Tờ bản đồ số 2', N'Thửa đất 2209 Tờ bản đồ số 2 TT. Tràm Chim H. Tam Nông T. Đồng Tháp', N'C024680707', NULL, 0, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (1395, 2, 402, N'Điện Máy Xanh Mini LD Số 10/13 QL20', N'Số 10/13- QL 20- Finom- xã Hiệp Thạnh- H. Đức Trọng- T. Lâm Đồng', N'C030390793', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (1396, 2, 237, N'Điện Máy Xanh Mini LD TDP Đông Anh 2', N'Tổ dân phố Đông Anh 2- TT. Nam Ban- H. Lâm Hà- T. Lâm Đồng', N'C035891597', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (1397, 2, 64, N'Điện máy xanh ĐN Lô 01-B6.1 Nguyễn Tất Thành Phường Xuân Hà', N'Lô 01-B6.1 Nguyễn Tất Thành- Phường Xuân Hà- Quận Thanh Khê- Thành phố Đà Nẵng- Việt Nam', N'C065041536', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (1398, 2, 529, N'Điện máy xanh TB Số nhà 29-31-33 Đường Trần Hưng Đạo- Thị Trấn An Bài- Huyện Quỳnh Phụ- Tỉnh Thái Bình', N'Số nhà 29-31-33 Đường Trần Hưng Đạo- Thị Trấn An Bài- Huyện Quỳnh Phụ- Tỉnh Thái Bình- Việt Nam', N'C064421544', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (1399, 2, 21, N'Điện máy xanh BD-TDM Số 57 đường Nguyễn Trãi Khu phố Thắng Lợi 2 Phường Dĩ An', N'Số 57 đường Nguyễn Trãi- Khu phố Thắng Lợi 2- Phường Dĩ An- Thị Xã Dĩ An- Tỉnh Bình Dương- Việt Nam', N'C064761582', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (1400, 2, 34, N'Điện máy xanh HCM số 46 đường CN1 Phường Sơn Kỳ Quận Tân Phú', N'số 46 đường CN1- Phường Sơn Kỳ- Quận Tân Phú- Thành phố Hồ Chí Minh- Việt Nam', N'C064761584', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (1401, 5, 482, N'Mediamart Xuân Diệu - Hà Nội - Công ty cổ phần MediaMart Việt Nam', N'Số 101-103 Xuân Diệu- Phường Quảng An- Quận Tây Hồ- Thành phố Hà Nội- Việt Nam', N'C061171558', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (1402, 5, 118, N'Mediamart Thị Trấn Hồ- Bắc Ninh', N'Quốc lộ 38- TT Hồ- Huyện Thuận Thành- Tỉnh Bắc Ninh- Việt Nam', N'C061171569', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (1403, 5, 481, N'Mediamart Cẩm Thủy - Thanh Hóa', N'Thôn Đại Đồng- Xã Cẩm Sơn- Huyện Cẩm Thủy- Tỉnh Thanh Hóa- Việt Nam', N'C061171572', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (1404, 5, 216, N'Mediamart Quang Minh - Hà Nội', N'Tổ dân phố 7- TT Quang Minh- Huyện Mê Linh- Thành phố Hà Nội- Việt Nam', N'C062711542', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (1405, 5, 209, N'Mediamart Tiên Lãng - Hải Phòng', N'Khu 4- Thị trấn Tiên Lãng- Huyện Tiên Lãng- TP Hải Phòng- Việt Nam', N'C062711548', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (1406, 6, 291, N'Siêu thị VHC VP Vĩnh Tường', N'Km44- Quốc lộ 2- xã Tân Tiến- huyện Vĩnh Tường- tỉnh Vĩnh Phúc', N'C062711564', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (1407, 6, 63, N'Siêu thị VHC TH Sầm Sơn', N'ngã ba Bà Triệu Trần Hưng Đạo- phường Bắc Sơn- thành phố Sầm Sơn- Thanh Hóa', N'C062711565', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (1408, 6, 347, N'Siêu thị VHC TH Yên Định', N'Quán Lào- Yên Định- Thanh Hóa', N'C062711566', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (1409, 2, 32, N'Điện máy xanh VL Số 52 khóm 2 Phường 4 Thành phố Vĩnh Long', N'Số 52- khóm 2- Phường 4- Thành phố Vĩnh Long- Tỉnh Vĩnh Long- Việt Nam', N'C063071538', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (1410, 2, 536, N'Điện máy xanh ST Thửa đất số 21 205 206 và 207 tờ bản đồ số 74 khóm 1 phường 1 thị xã Ngã Năm', N'Thửa đất số 21- 205- 206 và 207- tờ bản đồ số 74- khóm 1- phường 1- thị xã Ngã Năm- tỉnh Sóc Trăng', N'C063211556', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (1411, 2, 454, N'Điện máy xanh TB Khu Đầu Thị Trấn Hưng Nhân', N'Khu Đầu- Thị Trấn Hưng Nhân- Huyện Hưng Hà- Tỉnh Thái Bình- Việt Nam', N'C063571717', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (1412, 2, 39, N'Điện máy xanh LA Thửa đất số 154 tờ bản đồ số 11-4-1 khu vực 2 thị trấn Đức Hòa', N'Thửa đất số 154- tờ bản đồ số 11-4-1- khu vực 2- thị trấn Đức Hòa- huyện Đức Hòa- tỉnh Long An', N'C063651575', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (1413, 2, 315, N'Điện máy xanh TN Số 1013 Đường ĐT Tổ 1 ấp Thuận Hòa Xã Truông Mít', N'Số 1013- Đường ĐT- Tổ 1- ấp Thuận Hòa- Xã Truông Mít- Huyện Dương Minh Châu- Tỉnh Tây Ninh- Việt Nam', N'C063651576', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (1414, 5, 251, N'Mediamart Long Phú - Quốc Oai', N'Xóm 2- Long Phú- xã Hòa Thạch- Huyện Quốc Oai- TP Hà Nội- Việt Nam', N'C063751551', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (1415, 5, 311, N'Mediamart Vĩnh Lộc - Thanh Hóa', N'Khu 1- TT Vĩnh Lộc- Huyện Vĩnh Lộc- Tỉnh Thanh Hóa- Việt Nam', N'C063751554', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (1416, 5, 184, N'Mediamart Hậu Lộc - Thanh Hóa', N'Khu 2- TT Hậu Lộc- Huyện Hậu Lộc- Tỉnh Thanh Hóa- Việt Nam', N'C063751556', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (1417, 2, 333, N'Điện máy xanh HY Đường Nguyễn Khoái Thị Trấn Khoái Châu', N'Đường Nguyễn Khoái- Thị Trấn Khoái Châu- Huyện Khoái Châu- Tỉnh Hưng Yên- Việt Nam', N'C063891537', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (1418, 2, 12, N'Điện máy xanh QN Ô số 84 khu B QH khu định cư Đông Ga Hạ Long phường Giếng Đáy', N'Ô số 84 khu B QH khu định cư Đông Ga Hạ Long- phường Giếng Đáy- thành phố Hạ Long- tỉnh Quảng Ninh', N'C063891541', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (1419, 2, 263, N'Điện máy xanh ĐN-BH Số 2448 đường Hùng Vương Xã Vĩnh Thanh Huyện Nhơn Trạch', N'Số 2448 đường Hùng Vương- Xã Vĩnh Thanh- Huyện Nhơn Trạch- Tỉnh Đồng Nai- Việt Nam', N'C063891542', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (1420, 2, 100, N'Điện máy xanh HN Số 135 - 137 - 139 - 141 đường Thạch Bàn Phường Thạch Bàn', N'Số 135 - 137 - 139 - 141- đường Thạch Bàn- Phường Thạch Bàn- Quận Long Biên- Thành phố Hà Nội- Việt Nam', N'C063891545', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (1421, 2, 219, N'Điện máy xanh TV Thửa đất số 21-22 Tờ bản đồ số 20 Khóm 1 Thị Trấn Cầu Quan', N'Thửa đất số 21-22- Tờ bản đồ số 20- Khóm 1- Thị Trấn Cầu Quan- Huyện Tiểu Cần- Tỉnh Trà Vinh- Việt Nam', N'C063891546', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (1422, 2, 30, N'Điện máy xanh HCM 60/9 - 60/10 Nguyễn Ảnh Thủ- Ấp Trung Lân- Xã Bà Điểm- Huyện Hóc Môn- Thành phố Hồ Chí Minh', N'60/9 - 60/10 Nguyễn Ảnh Thủ- Ấp Trung Lân- Xã Bà Điểm- Huyện Hóc Môn- Thành phố Hồ Chí Minh- Việt Nam', N'C063951643', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (1423, 2, 537, N'Điện máy xanh TG Thửa đất số 98 Tờ bản đồ số 13 Khu phố Dương Phú Thị Trấn Tân Hòa', N'Thửa đất số 98- Tờ bản đồ số 13- Khu phố Dương Phú- Thị Trấn Tân Hòa- Huyện Gò Công Đông- Tỉnh Tiền Giang- Việt Nam', N'C063951645', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (1424, 2, 297, N'Điện máy xanh KH Thửa đất số 342 tờ bản đồ số 21 tổ dân phố 16 Phường Ninh Hiệp', N'Thửa đất số 342- tờ bản đồ số 21- tổ dân phố 16- Phường Ninh Hiệp- Thị xã Ninh Hòa- Tỉnh Khánh Hòa- Việt Nam', N'C064161552', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (1425, 2, 69, N'Điện máy xanh GL 01 Lê Duẩn (số mới 279 Nguyễn Tất Thành) phường Phù Đổng', N'01 Lê Duẩn (số mới 279 Nguyễn Tất Thành)- phường Phù Đổng- TP. Pleiku- Gia Lai', N'C064161553', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (1426, 2, 33, N'Điện máy xanh HN Số 283 - 285 - 287 Đường Xuân Phương Phường Xuân Phương', N'Số 283 - 285 - 287 Đường Xuân Phương- Phường Xuân Phương- Quận Nam Từ Liêm- Thành phố Hà Nội- Việt Nam', N'C064161554', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (1427, 2, 34, N'Điện máy xanh ĐN Số 623 Quốc lộ 20 Tổ 1 Khu 6 Thị Trấn Tân Phú', N'Số 623 Quốc lộ 20- Tổ 1- Khu 6- Thị Trấn Tân Phú- Huyện Tân Phú- Tỉnh Đồng Nai- Việt Nam', N'C064161556', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (1428, 2, 14, N'Điện máy xanh HCM 880 - 882 Lê Đức Thọ Phường 15 Quận Gò Vấp', N'880 - 882 Lê Đức Thọ- Phường 15- Quận Gò Vấp- Thành phố Hồ Chí Minh- Việt Nam', N'C064421535', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (1429, 2, 14, N'Điện máy xanh HCM Số 2A Đường Nguyễn Oanh Phường 7 Quận Gò Vấp', N'Số 2A- Đường Nguyễn Oanh- Phường 7- Quận Gò Vấp- Thành phố Hồ Chí Minh- Việt Nam', N'C064421536', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (1430, 2, 14, N'Điện máy xanh HCM 1468 - 1468A Lê Đức Thọ Phường 13 Quận Gò Vấp', N'1468 - 1468A Lê Đức Thọ- Phường 13- Quận Gò Vấp- Thành phố Hồ Chí Minh- Việt Nam', N'C064421537', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (1431, 2, 528, N'Điện máy xanh VP Thửa đất số 513 tờ bàn đồ số 58 (352 557 – 9 – (14)) thị trấn Yên Lạc', N'Thửa đất số 513- tờ bàn đồ số 58 (352 557 – 9 – (14))- thị trấn Yên Lạc huyện Yên Lạc- tỉnh Vĩnh Phúc', N'C064421543', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (1432, 2, 58, N'Điện máy xanh ĐN 339 Đường Tôn Đức Thắng Phường Hòa Minh', N'339 Đường Tôn Đức Thắng- Phường Hòa Minh- Quận Liên Chiểu- Thành phố Đà Nẵng- Việt Nam', N'C064761581', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (1433, 6, 3, N'Siêu thị VHC Vạn Phúc', N'Số 63 Vạn Phúc- Hà Đông- Hà Nội', N'C064991543', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (1434, 2, 85, N'Thế Giới Di Động CB Số 1 Kim Đồng Phường Hợp Giang', N'Số 1 Kim Đồng- Phường Hợp Giang', N'C000298686', NULL, 0, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (1435, 2, 214, N'Thế Giới Di Động BD 33 KP Khánh Thạnh', N'Số 33- tổ 3- khu phố Khánh Thạnh- P. Tân Phước Khánh- TX. Tân Uyên- T. Bình Dương', N'C027260777', NULL, 0, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (1436, 2, 245, N'Thế Giới Di Động DN Thửa đất số 01- tờ bản đồ số 01-2015', N'Thửa đất số 01- tờ bản đồ số 01-2015- Tổ 01- TT Kiến Đức- H Đăk RLấp- T Đăk Nông', N'C039721539', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (1437, 5, 353, N'Mediamart Lộc Bình - Lạng Sơn', N'Khu Bản Kho- TT Lộc Bình- Huyện Lộc Bình- Tỉnh Lạng Sơn- Việt Nam', N'C063751546', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (1438, 5, 538, N'Mediamart Lãng Công (Sông Lô) - Vĩnh Phúc', N'Thôn Phú Cường- Xã Lãng Công- Huyện Sông Lô- Tỉnh Vĩnh Phúc- Việt Nam', N'C063751547', NULL, 0, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (1439, 5, 55, N'Mediamart Yên Thủy - Hòa Bình', N'Khu 11- TT Hàng Trạm- Huyện Yên Thủy- Tỉnh Hòa Bình- Việt Nam', N'C063751548', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (1440, 5, 136, N'Mediamart Phố Nỷ - Sóc Sơn', N'Phố Nỷ- Xã Trung Giã- Huyện Sóc Sơn- TP Hà Nội- Việt Nam', N'C063751550', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (1441, 5, 372, N'Mediamart Lam Sơn - Thanh Hóa', N'Thôn Hữu Lê 4- Xã Thọ Xương- Huyện Thọ Xuân- Tỉnh Thanh Hóa- Việt Nam', N'C063751555', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (1442, 5, 252, N'Mediamart HN 469 Hà Huy Tập- Thị ttấn Yên Viên', N'469 Hà Huy Tập- Thị ttấn Yên Viên- Huyện Gia Lâm- Thành phố Hà Nội- Việt Nam', N'C059721546', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (1443, 5, 29, N'Mediamart Lĩnh Nam - Hà Nội', N'Số 634 Đường Lĩnh Nam- Phường Trần Phú- Quận Hoàng Mai- TP Hà Nội- Việt Nam', N'C061171565', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (1444, 5, 36, N'Mediamart Đội Cấn - Hà Nội', N'Tầng 1- Số 218 Đội Cấn- Phường Liễu Giai- Quận Ba Đình- TP Hà Nội- Việt Nam', N'C061171566', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (1445, 5, 12, N'Mediamart Cao Thắng (Hạ Long) - Quảng Ninh', N'Tổ 5- khu 3A- phường Cao Thắng- TP Hạ Long- Tỉnh Quảng Ninh- Việt Nam', N'C061171573', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (1446, 5, 136, N'Mediamart Phú Cường - Sóc Sơn', N'Thôn Tân Trại- Xã Phú Cường- Huyện Sóc Sơn- TP Hà Nội- Việt Nam', N'C063751549', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (1447, 5, 113, N'Mediamart Tân Tiến - Chương Mỹ', N'Thôn Đồng Tiến- xã Tân Tiến- Huyện Chương Mỹ- TP Hà Nội- Việt Nam', N'C063751553', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (1448, 2, 5, N'Điện máy xanh HN Số 205 - 207 - 209 - 211 đường Tôn Đức Thắng Phường Hàng Bột', N'Số 205 - 207 - 209 - 211- đường Tôn Đức Thắng- Phường Hàng Bột- Quận Đống Đa- Thành phố Hà Nội- Việt Nam', N'C063891547', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (1449, 6, 125, N'Siêu thị VHC Cẩm Phả', N'Số 54 Lê Thanh Nghị- Cẩm Bình- Tp Cẩm Phả- Quảng Ninh', N'C064991542', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (1450, 2, 187, N'Điện máy xanh HP Thửa đất số 5B-2 + 4B tờ bản đồ số 270-D-II thôn Tiến Lập xã Mỹ Đức', N'Thửa đất số 5B-2 + 4B- tờ bản đồ số: 270-D-II- thôn Tiến Lập- xã Mỹ Đức- huyện An Lão- thành phố Hải Phòng', N'C065041537', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (1451, 2, 498, N'Điện máy xanh NA Xóm Xuân Lạc Xã Nghi Thạch', N'Xóm Xuân Lạc- Xã Nghi Thạch- Huyện Nghi Lộc- Tỉnh Nghệ An- Việt Nam', N'C065121541', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (1452, 2, 529, N'Điện máy xanh TB Số 150 Đường Nguyễn Du Thị Trấn Quỳnh Côi', N'Số 150- Đường Nguyễn Du- Thị Trấn Quỳnh Côi- Huyện Quỳnh Phụ- Tỉnh Thái Bình- Việt Nam', N'C065121542', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (1453, 2, 539, N'Điện máy xanh QN - HL Khu Bình Công 1 Thị Trấn Bình Liêu Huyện Bình Liêu', N'Khu Bình Công 1- Thị Trấn Bình Liêu- Huyện Bình Liêu- Tỉnh Quảng Ninh- Việt Nam', N'C065351551', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (1454, 2, 39, N'Điện máy xanh LA Thửa đất số 908-909 tờ bản đồ số 4 ấp Bình Tiền 1 Xã Đức Hoà Hạ', N'Thửa đất số 908-909- tờ bản đồ số 4- ấp Bình Tiền 1- Xã Đức Hoà Hạ- Huyện Đức Hoà- Tỉnh Long An- Việt Nam', N'C065351552', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (1455, 5, 339, N'Media Mart Quế Võ 2- Bắc Ninh - Chi nhánh Công ty cổ phần MediaMart Việt Nam tại Bắc Ninh', N'Km Số 10 - Quốc lộ 18- TT Phố Mới- Huyện Quế Võ- Tỉnh Bắc Ninh- Việt Nam', N'C065561535', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (1456, 5, 483, N'Media Mart Nghi Xuân- Hà Tĩnh - Chi nhánh Công ty cổ phần MediaMart Việt Nam tại Hà Tĩnh', N'Khối 5- TT Xuân An- Huyện Nghi Xuân- Tỉnh Hà Tĩnh- Việt Nam', N'C065561536', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (1457, 5, 161, N'Media Mart Quất Lâm- Nam Định - Chi nhánh Công ty cổ phần MediaMart Việt Nam tại Nam Định', N'TDP Lâm Quý- TT Quất Lâm- Huyện Giao Thủy- Tỉnh Nam Định- Việt Nam', N'C065561537', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (1458, 5, 92, N'Media Mart Thị trấn Cồn- Nam Định - Chi nhánh Công ty cổ phần MediaMart Việt Nam tại Nam Định', N'TDP Cao An- TT Cồn- Huyện Hải Hậu- Tỉnh Nam Định- Việt Nam', N'C065561538', NULL, 0, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (1459, 5, 248, N'Media Mart Trần Hưng Đạo- Hải Dương - Chi nhánh Công ty cổ phần MediaMart Việt Nam tại Hải Dương', N'Số 289 Đại Lộ Trần Hưng Đạo- Phường Nhị Châu- TP Hải Dương- Tỉnh Hải Dương- Việt Nam', N'C065561539', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (1460, 5, 453, N'Media Mart Gia Bình- Bắc Ninh - Chi nhánh Công ty cổ phần MediaMart Việt Nam tại Bắc Ninh', N'Thôn Nội Phú- TT Gia Bình- Huyện Gia Bình- Tỉnh Bắc Ninh- Việt Nam', N'C065561540', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (1461, 5, 176, N'Media Mart Yên Bình- Yên Bái - Chi nhánh Công ty cổ phần MediaMart Việt Nam tại Yên Bái', N'Số 282- đường Đại Đồng- tổ 14A- TT Yên Bình- Huyện Yên Bình- Tỉnh Yên Bái- Việt Nam', N'C065561541', NULL, 0, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (1462, 5, 310, N'Mediamart Phù Cừ - Hưng Yên - Chi nhánh Công ty cổ phần MediaMart Việt Nam tại Hưng Yên', N'Thôn Cao Xá- Thị trấn Trần Cao- Huyện Phù Cừ- Tỉnh Hưng Yên- Việt Nam', N'C065561542', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (1463, 5, 521, N'Mediamart Văn Giang - Hưng Yên - Chi nhánh Công ty cổ phần MediaMart Việt Nam tại Hưng Yên', N'Số 273 đường 179- Thị trấn Văn Giang- Huyện Văn Giang- Tỉnh Hưng Yên- Việt Nam', N'C065561543', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (1464, 5, 72, N'Mediamart Cao Thượng - Bắc Giang - Chi nhánh Công ty cổ phần MediaMart Việt Nam tại Bắc Giang', N'Lô D3 đường Hoàng Hoa Thám- Thị trấn Cao Thượng- Huyện Tân Yên- Tỉnh Bắc Giang- Việt Nam', N'C065561544', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (1465, 5, 147, N'Mediamart Nam Đàn - Nghệ An - Chi nhánh Công ty cổ phần MediaMart Việt Nam tại Nghệ An', N'Xóm Nam Sơn- Xã Vân Diên- Huyện Nam Đàn- Tỉnh Nghệ An- Việt Nam', N'C065561545', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (1466, 5, 461, N'Mediamart Hồng Lĩnh - Hà Tĩnh - Chi nhánh Công ty cổ phần MediaMart Việt Nam tại Hà Tĩnh', N'Khối 4- Phường Bắc Hồng- Thị xã Hồng Lĩnh- Tỉnh Hà Tĩnh- Việt Nam', N'C065561546', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (1467, 5, 4, N'Mediamart Kim Sơn - Quảng Ninh- Chi nhánh Công ty cổ phần MediaMart Việt Nam tại Quảng Ninh', N'Thôn Kim Thành- Phường Kim Sơn- Thị xã Đông Triều- Tỉnh Quảng Ninh- Việt Nam', N'C065561547', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (1468, 5, 204, N'Mediamart Trần Phú - Hà Tĩnh - Chi nhánh Công ty cổ phần MediaMart Việt Nam tại Hà Tĩnh', N'Số 120 Trần Phú- Phường Nguyễn Du- Thành phố Hà Tĩnh- Tỉnh Hà Tĩnh- Việt Nam', N'C065561548', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (1469, 5, 345, N'Mediamart Vĩnh Trụ - Hà Nam - Chi nhánh Công ty cổ phần MediaMart Việt Nam tại Hà Nam', N'Đường Tỉnh 971- Thị Trấn Vĩnh Trụ- Huyện Lý Nhân- Tỉnh Hà Nam- Việt Nam', N'C065851542', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (1470, 5, 356, N'Mediamart Phủ-Bình Giang - Hải Dương - Chi nhánh Công ty cổ phần MediaMart Việt Nam tại Hải Dương', N'Tỉnh Lộ 392- Xã Thái Học- Huyện Bình Giang- Tỉnh Hải Dương- Việt Nam', N'C065851543', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (1471, 5, 540, N'Mediamart Yên Khánh- Ninh Bình - Chi nhánh Công ty cổ phần MediaMart Việt Nam tại Ninh Bình', N'Phố 4- Thị trấn Yên Ninh- Huyện Yên Khánh- Tỉnh Ninh Bình', N'C065851544', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (1472, 2, 319, N'Thế giới di động LA Thửa đất số 253 và 3496 xã Trường Bình', N'Thửa đất số 253 và 3496- tờ bản đồ số 2- xã Trường Bình- H. Cần Giuộc- T. Long An', N'C030180700', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (1473, 2, 263, N'Thế Giới Di Động DN Số 130 Tôn Đức Thắng', N'Số 130 Tôn Đức Thắng- Ấp 3- xã Hiệp Phước- H.Nhơn Trạch- T.Đồng Nai.', N'C010550694', NULL, 0, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (1474, 2, 237, N'Thế Giới Di Động LD 753 - 755 Đường Hùng Vương', N'Số 753 - 755 Đường Hùng Vương Khu phố Bồ Liêng TT. Đinh Văn H. Lâm Hà T. Lâm Đồng', N'C008340690', NULL, 0, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (1475, 2, 2, N'Thế Giới Di Động LD 581 Trần Phú Bảo Lộc', N'581 Trần Phú- Phường BLao- Bảo Lộc', N'C000025416', NULL, 0, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (1476, 2, 440, N'Thế Giới Di Động DT Hùng Vương Hồng Ngự', N'Đường Hùng Vương- Phường An Thạnh- Hồng Ngự', N'C000051844', NULL, 0, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (1477, 2, 167, N'Thế Giới Di Động VP 26 Trần Hưng Đạo', N'26 Trần Hưng Đạo P.Trưng Trắc TX.Phúc Yên T.Vĩnh Phúc', N'C024970694', NULL, 0, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (1478, 2, 212, N'Điện Máy Xanh HNM Thửa đất 61-107 phố Phú Hòa TT Hòa Mạc H Duy Tiên', N'Thửa đất số 61 - 107- phố Phú Hòa- TT. Hòa Mạc- H. Duy Tiên- T. Hà Nam', N'C026860743', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (1479, 2, 347, N'Điện Máy Xanh  Thửa đất số 99 bản đồ số 6 phố Kiểu xã Yên Trường H. Yên Định', N'Thửa đất số 99- bản đồ số 6- phố Kiểu- xã Yên Trường- H. Yên Định- T. Thanh Hóa', N'C028750700', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (1480, 2, 278, N'Thế giới di động LA Thửa đất số 76 và 77 ấp 05 xã Long Hòa', N'Thửa đất số 76 và 77- tờ bản đồ số 2C- ấp 05- xã Long Hòa- H. Cần Đước- T. Long An', N'C029640720', NULL, 0, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (1481, 2, 107, N'Điện Máy Xanh HCM 12/2A Ấp 3 xã Phú Xuân', N'12/2A Ấp 3- xã Phú Xuân- Huyện Nhà Bè- TP. Hồ Chí Minh', N'C029970732', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (1482, 2, 455, N'Điện Máy Xanh Thửa đất số 652 - 653 tờ bản đồ số 7 Thị Trấn Nga Sơn Huyện Nga Sơn', N'Thửa đất số 652 - 653- tờ bản đồ số 7- Thị Trấn Nga Sơn- Huyện Nga Sơn- Tỉnh Thanh Hóa- Việt Nam', N'C067481541', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (1483, 4, 138, N'SBS Nguyễn Kim Trà Vinh', N'Đường Võ Nguyên Giáp- Phường 7- Thành Phố Trà Vinh- Tỉnh Trà Vinh', N'C067091540', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (1484, 5, 47, N'MEDIAMART GIAI PHONG - NAM DINH', N'Mediamart Giải Phóng - Nam Định - Chi nhánh Công ty cổ phần MediaMart Việt Nam tại Nam Định', N'C068251536', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (1485, 5, 155, N'MEDIAMART NINH KHANH', N'Mediamart Ninh Khánh - Ninh Bình - Chi nhánh Công ty cổ phần MediaMart Việt Nam tại Ninh Bình', N'C068251537', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (1486, 2, 87, N'Thế Giới Di Động LA 15 Nguyễn Hữu Thọ', N'15 Nguyễn Hữu Thọ- Khu Phố 3- Bến Lức', N'C000048274', NULL, 0, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (1487, 2, 110, N'Thế Giới Di Động AG 7 Nguyễn Văn Linh Tân Châu', N'7 Nguyễn Văn Linh- Phường Long Thạnh- Tân Châu', N'C000051842', NULL, 0, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (1488, 2, 50, N'Thế Giới Di Động TH 1-3 Khu Phố11 Nguyễn Trãi Ngọc Trạo', N'1-3 Khu Phố 11- Nguyễn Trãi- Ngọc Trạo', N'C000076948', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (1489, 2, 5, N'Thế Giới Di Động HN 500 Xã Đàn', N'Số 498 Xã Đàn- Phường Nam Đồng- Quận Đống Đa- Hà Nội', N'C004740716', NULL, 0, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (1490, 2, 236, N'Thế Giới Di Động TG 212 Tổ 3 KP3', N'Số 212 Tổ 3 KP 3 TT.Cái Bè H.Cái Bè T.Tiền Giang', N'C019930740', NULL, 0, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (1491, 2, 404, N'Thế Giới Di Động CT 571 ấp Thới Hòa 1', N'571 ấp Thới hòa 1 P.Thới Thuận Q.Thốt Nốt TP.Cần Thơ', N'C021280732', NULL, 0, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (1492, 2, 318, N'Thế Giới Di Động HN Xóm Trần Phú Thôn Canh Hoạch', N'Xóm Trần Phú Thôn Canh Hoạch Xã Dân Hòa Huyện Thanh Oai Tp. Hà Nội', N'C025340696', NULL, 0, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (1493, 2, 523, N'Thế giới di động HG 52 quốc lộ 61 Tân Bình', N'Số 52- quốc lộ 61- xã Tân Bình- H. Phụng Hiệp- T. Hậu Giang', N'C027120714', NULL, 0, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (1494, 2, 560, N'Thế giới di động KG Số 2380-2381 ấp An Bình xã Bình An', N'Thửa đất số 2380-2381- tờ bản đồ số 06- ấp An Bình- xã Bình An- H. Châu Thành- T.Kiên Giang', N'C033561525', NULL, 0, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (1495, 2, 12, N'Thế giới di động QN SỐ 527 ĐƯỜNG HẠ LONG', N'Số 537 Hạ Long- P. Bãi Cháy- TP. Hạ Long- T. Quảng Ninh', N'C034480750', NULL, 0, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (1496, 3, 281, N'CTy TNHH Cao Phong (STĐM Chợ Lớn) - Long Thành', N'Đường Lê Duẩn- Tổ 4- Ấp 3- Xã An Phước- Long Thành- Đồng Nai', N'C069041548', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (1497, 5, 29, N'MEDIAMART GIAI PHONG - HA NOI', N'Mediamart Giải Phóng - Kim Đồng - Công ty cổ phần MediaMart Việt Nam', N'C068251535', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (1498, 5, 129, N'MEDIAMART BINH PHU', N'Mediamart Bình Phú - Thạch Thất - Công ty cổ phần MediaMart Việt Nam', N'C068251538', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (1499, 2, 96, N'Thế Giới Di Động HNM Quốc Lộ 1A P.Hai Bà Trưng', N'Quốc Lộ 1A- Phường Hai Bà Trưng- Phủ Lý', N'C000076703', NULL, 0, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (1500, 2, 337, N'Thế Giới Di Động TB Nhà ông Vũ Duy Đông Khu 6 TT Diêm Điền', N'Nhà ông Vũ Duy Đông- Khu 6- TT.Diêm Điền- H.Thái Thụy- T.Thái Bình', N'C011700764', NULL, 0, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (1501, 2, 230, N'Thế Giới Di Động PT 80 Lê Đồng P.Âu Cơ', N'Số 84-86- phố Lê Đồng- P.Âu Cơ- TX.Phú Thọ- T.Phú Thọ', N'C015600730', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (1502, 2, 386, N'Thế Giới Di Động KG Thửa số L28 và N17 Tờ bản đồ 6', N'Thửa số L28 và N17 tờ bản đồ 6 KP. Thị Tứ TT. Sóc Sơn H. Hòn Đất T. Kiên Giang', N'C024680708', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (1503, 2, 130, N'Thế Giới Di Động TB Thửa số 540-541 Thôn Đồng Thanh', N'Thửa số 540 - 541 Thôn Đồng Thanh X. Tân Bình TP. Thái Bình T. Thái Bình', N'C025440731', NULL, 0, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (1504, 2, 422, N'Thế Giới Di Động PT Khu 9 TT Sông Thao Cẩm Khê', N'Khu 9- TT. Sông Thao- H. Cẩm Khê- T. Phú Thọ', N'C026360926', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (1505, 2, 333, N'Thế giới di động HY ngã tư Dân Tiến', N'Ngã tư Dân Tiến- xã Dân Tiến- H. Khoái Châu- T. Hưng Yên', N'C027370691', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (1506, 2, 527, N'Thế giới di động LCI Thôn Bắc Hà 6', N'Thôn Bắc Hà 6- TT. Bắc Hà- H. Bắc Hà- T. Lào Cai', N'C028470696', NULL, 0, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (1507, 2, 541, N'Thế giới di động TH KP 03  TT Thường Xuân', N'Thửa đất số 445- KP.03- TT. Thường Xuân- H. Thường Xuân- T. Thanh Hóa', N'C030290769', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (1508, 2, 59, N'Thế giới di động BD Số 190 đường 30/04', N'Số 190 đường 30/04- P. Chánh Nghĩa- TP. Thủ Dầu Một- T. Bình Dương', N'C031370714', NULL, 0, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (1509, 2, 469, N'Thế giới di động SL Thửa đất 295', N'Thửa đất 295- tờ bản đồ 42- tiểu khu 4- xã Tông Lạnh- huyện Thuận Châu- tỉnh Sơn La', N'C034900737', NULL, 0, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (1510, 2, 106, N'Thế giới di động DLK Số 417 đường Giải Phóng tổ dân phố 7', N'Số 417 đường Giải Phóng- tổ dân phố 7-  thị trấn Ea Drăng- huyện Ea H’Leo- Tỉnh Đắk Lắk', N'C037261563', NULL, 0, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (1511, 2, 91, N'Điện máy xanh HN Số 352 đường Giải Phóng Phường Phương Liệt Quận Thanh Xuân', N'Số 352 đường Giải Phóng- Phường Phương Liệt- Quận Thanh Xuân- Thành phố Hà Nội- Việt Nam', N'C064761583', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (1512, 4, 31, N'SBS Nguyễn Kim Quãng Ngãi', N'Trung tâm thương mại và Siêu thị Hùng Cường Big C- đường Lý Thường Kiệt- Phường Nghĩa Chánh- Thành phố Quảng Ngãi- Quảng Ngãi- Việt Nam', N'C067091541', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (1513, 2, 222, N'Điện Máy Xanh  3223 -3225 Phạm Thế Hiển Phường 7 Quận 8', N'3223 -3225 Phạm Thế Hiển- Phường 7- Quận 8- Thành phố Hồ Chí Minh- Việt Nam', N'C067721535', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (1514, 2, 250, N'Điện Máy Xanh 6G-7G Lâm Văn Bền Phường Tân Thuận Tây Quận 7', N'6G-7G Lâm Văn Bền- Phường Tân Thuận Tây- Quận 7- Thành phố Hồ Chí Minh- Việt Nam', N'C067791541', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (1515, 2, 520, N'Điện Máy Xanh  Thôn Túy Loan Đông 1 Xã Hòa Phong Huyện Hoà Vang', N'Thôn Túy Loan Đông 1- Xã Hòa Phong- Huyện Hoà Vang- Thành phố Đà Nẵng- Việt Nam', N'C068131536', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (1516, 2, 320, N'Điện Máy Xanh  Thôn Đông Bình Xã Bình Chánh Huyện Bình Sơn', N'Thôn Đông Bình- Xã Bình Chánh- Huyện Bình Sơn- Tỉnh Quảng Ngãi- Việt Nam', N'C068131537', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (1517, 2, 74, N'Điện Máy Xanh  55-57-59 Hà Huy Giáp Phường Thạnh Lộc-Quận 12', N'55-57-59 Hà Huy Giáp- Phường Thạnh Lộc- Quận 12- Thành phố Hồ Chí Minh- Việt Nam', N'C068131538', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (1518, 5, 542, N'MEDIAMART THIEU HOA', N'Mediamart Thiệu Hóa - Thanh Hóa - Chi nhánh Công ty cổ phần MediaMart Việt Nam tại Thanh Hóa', N'C068251541', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (1519, 2, 431, N'Điện Máy Xanh CT Thửa đất số 173 tờ bản đồ số 21 khu dân cư thương mại huyện Phong Điền Thị Trấn Phong Điền', N'Thửa đất số 173- tờ bản đồ số 21- khu dân cư thương mại huyện Phong Điền- Thị Trấn Phong Điền- Huyện Phong Điền- Thành phố Cần Thơ- Việt Nam', N'C069151535', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (1520, 6, 55, N'Siêu thị VHC Hòa Bình', N'Số 315 Cù Chính Lan- P. Đồng Tiến- TP. Hòa Bình- Tỉnh Hòa Bình', N'C069381590', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (1521, 6, 85, N'Siêu thị VHC Cao Bằng', N'Số 56 Kim Đồng- P. Hợp Giang- TP Cao Bằng- Tỉnh Cao Bằng', N'C069381591', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (1522, 2, 70, N'Điện Máy Xanh HCM 237 Nơ Trang Long- Phường 11- Quận Bình Thạnh', N'237 Nơ Trang Long- Phường 11- Quận Bình Thạnh- Thành phố Hồ Chí Minh- Việt Nam', N'C069451941', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (1523, 6, 12, N'Siêu thị VHC Bãi Cháy', N'59 Đặng Dung- P. Giếng Đáy- TP Hạ Long- Tỉnh Quảng Ninh', N'C069453000', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (1524, 6, 226, N'Siêu thị VHC Hoài Đức', N'QL 32- Lai Xá- Xã Kim Chung- Huyện Hoài Đức- Thành Phố Hà Nội', N'C069453001', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (1525, 2, 130, N'Thế Giới Di Động TB 1 Quang Trung Tổ 1', N'1 Quang Trung- Tổ 1- Phường Quang Trung', N'C000150467', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (1526, 2, 62, N'Thế Giới Di Động BDH 564-566 Trần Hưng Đạo P.Thị Nại', N'564 - 566 Trần Hưng Đạo- Phường Thị Nại- Qui Nhơn', N'C002408617', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (1527, 2, 322, N'Thế Giới Di Động BDH 160 Trần Phú', N'Số 160 Trần Phú- P.Bình Định- TX.An Nhơn- T.Bình Định', N'C010400794', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (1528, 2, 258, N'Thế Giới Di Động PT 18-20-22 đường 32 Phố Vàng', N'Số 18-20-22 đường 32 Phố Vàng TT.Thanh Sơn H.Thanh Sơn T.Phú Thọ', N'C019140875', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (1529, 2, 125, N'Thế Giới Di Động QN 209 Trần Phú P. Cẩm Tây', N'Số 209 Đường Trần Phú P.Cẩm Tây TP.Cẩm Phả T.Quảng Ninh', N'C019140877', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (1530, 2, 499, N'Thế Giới Di Động NA thửa 632 xóm Tân Mùng', N'Thửa đất số 632- xóm Tân Mùng- xã Tam Hợp- H. Quỳ Hợp- T. Nghệ An', N'C026990841', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (1531, 2, 434, N'Thế giới di động VL 197C/17 Quốc lộ 1A', N'Số 197C/17 Quốc lộ 1A- ấp Phước Yên- xã Phú Quới- H. Long Hồ- T. Vĩnh Long', N'C028260782', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (1532, 2, 543, N'Thế giới di động HN Cụm 5 xã Vân Phúc', N'Cụm 5- xã Vân Phúc- H. Phúc Thọ- Tp. Hà Nội', N'C028260786', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (1533, 2, 238, N'Thế giới di động HP Số 27 Bạch Đằng Núi Đèo', N'Số 27 đường Bạch Đằng- TT. Núi Đèo- H. Thuỷ Nguyên- Tp. Hải Phòng', N'C028960745', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (1534, 2, 387, N'Thế giới di động HD 208 Nguyễn Lương Bằng Thanh Miện', N'Số 208 Nguyễn Lương Bằng- TT. Thanh Miện- H. Thanh Miện- T. Hải Dương', N'C029180707', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (1535, 2, 204, N'Thế giới di động HT Số 76 đường Trần Phú', N'Số 76 đường Trần Phú- P. Trần Phú- Tp. Hà Tĩnh- T. Hà Tĩnh', N'C030720710', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (1536, 2, 129, N'Thế Giới Di Động HN Thôn 84 Kim Quan', N'Thôn 84- xã Kim Quan- H. Thạch Thất- Tp.Hà Nội', N'C032950786', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (1537, 2, 276, N'Thế Giới Di Động THN Số 101 Đường Cách Mạng Tháng Tám Tổ 10 Phường Thắng Lợi Thành phố Sông Công', N'Số 101- Đường Cách Mạng Tháng Tám- Tổ 10- Phường Thắng Lợi- Thành phố Sông Công- Tỉnh Thái Nguyên- Việt Nam', N'C060541536', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (1538, 5, 33, N'MEDIAMART LE DUC THO', N'Mediamart Lê Đức Thọ - Nam Từ Liêm - Công ty cổ phần MediaMart Việt Nam', N'C068251542', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (1539, 2, 410, N'Điện Máy Xanh BTR Thửa đất số 53- tờ bản đồ số 15- Ấp 1- Xã Tân Hào- Huyện Giồng Trôm', N'Thửa đất số 53- tờ bản đồ số 15- Ấp 1- Xã Tân Hào- Huyện Giồng Trôm- Tỉnh Bến Tre- Việt Nam', N'C069460944', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (1540, 2, 297, N'Điện Máy Xanh KH Tổ dân phố Phú Thọ 2 Phường Ninh Diêm Thị xã Ninh Hòa', N'Tổ dân phố Phú Thọ 2- Phường Ninh Diêm- Thị xã Ninh Hòa- Tỉnh Khánh Hòa- Việt Nam', N'C069460946', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (1541, 2, 541, N'Thế giới di động TH Thửa đất số 550- tờ bản đồ số 20', N'Thửa đất số 550- tờ bản đồ số 20- Thôn Thống Nhất- Xã Luân Thành- H. Thường Xuân- T. Thanh Hóa', N'C036511538', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (1542, 2, 544, N'Điện Máy Xanh BDH Thôn Trung Tín 2 Thị Trấn Tuy Phước Huyện Tuy Phước', N'Thôn Trung Tín 2- Thị Trấn Tuy Phước- Huyện Tuy Phước- Tỉnh Bình Định- Việt Nam', N'C069457357', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (1543, 2, 225, N'Điện Máy Xanh NA Thửa đất số 327-328-330-331 Tờ bản đồ số 05 Khối 4 Thị Trấn Diễn Châu Huyện Diễn Châu', N'Thửa đất số 327-328-330-331- Tờ bản đồ số 05- Khối 4- Thị Trấn Diễn Châu- Huyện Diễn Châu- Tỉnh Nghệ An- Việt Nam', N'C069457441', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (1544, 3, 65, N'CTy TNHH Cao Phong (STĐM Chợ Lớn) - Tháp Mười Đồng Tháp', N'Đường Hùng Vương- Khóm 4- Thị Trấn Mỹ An- Huyện Tháp Mười- Tỉnh Đồng Tháp- VN', N'C069457545', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (1545, 2, 5, N'Điện Máy Xanh HN Số 88 đường Trường Chinh Phường Phương Mai Quận Đống Đa', N'Số 88- đường Trường Chinh- Phường Phương Mai- Quận Đống Đa- Thành phố Hà Nội- Việt Nam', N'C069458772', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (1546, 2, 25, N'Điện Máy Xanh TG Thửa đất số 807-808 Tờ bản đồ 15 Ấp 1 Xã Trung An Thành phố Mỹ Tho', N'Thửa đất số 807-808- Tờ bản đồ 15- Ấp 1- Xã Trung An- Thành phố Mỹ Tho- Tỉnh Tiền Giang- Việt Nam', N'C069458941', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (1547, 2, 25, N'Điện Máy Xanh TG Thửa đất số 4506-4028 Tờ bản đồ số 02 Ấp Phước Thuận Xã Phước Thạnh Thành phố Mỹ Tho', N'Thửa đất số 4506-4028- Tờ bản đồ số 02- Ấp Phước Thuận- Xã Phước Thạnh- Thành phố Mỹ Tho- Tỉnh Tiền Giang- Việt Nam', N'C069459881', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (1548, 2, 564, N'Điện Máy Xanh TG Thửa đất số 3381 Tờ bản đồ số 01 Ấp Tân Phong Xã Tân Lý Tây Huyện Châu Thành', N'Thửa đất số 3381- Tờ bản đồ số 01- Ấp Tân Phong- Xã Tân Lý Tây- Huyện Châu Thành- Tỉnh Tiền Giang- Việt Nam', N'C069459882', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (1549, 2, 513, N'Điện Máy Xanh ND Thửa số 80 Tờ bản đồ 5 Tổ dân phố 1 Thị Trấn Liễu Đề Huyện Nghĩa Hưng', N'Thửa số 80- Tờ bản đồ 5- Tổ dân phố 1- Thị Trấn Liễu Đề- Huyện Nghĩa Hưng- Tỉnh Nam Định- Việt Nam', N'C069460945', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (1550, 3, 282, N'CTy TNHH Cao Phong (STĐM Chợ Lớn) Long Điền - BR-VT', N'Ấp Lò Vôi- Xã Phước Hưng- Huyện Long Điền- Tỉnh Bà Rịa - Vũng Tàu- VN', N'C069462043', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (1551, 2, 56, N'Thế Giới Di Động TH 468 Nguyễn Trãi', N'468 Nguyễn Trãi P. Phú Sơn TP. Thanh Hóa Tỉnh Thanh Hóa', N'C007820699', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (1552, 2, 416, N'Thế Giới Di Động QB 87-89 Hùng Vương', N'87-89 Hùng Vương- P.Ba Đồn- TX.Ba Đồn- T.Quảng Bình', N'C013050901', NULL, 0, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (1553, 2, 453, N'Thế Giới Di Động BN 127-129 Nguyễn Văn Cừ', N'127-129 Nguyễn Văn Cừ TT.Gia Bình H.Gia Bình T.Bắc Ninh', N'C021590711', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (1554, 2, 532, N'Thế Giới Di Động NA 538 Khối 1 TT. Yên Thành', N'Đường 538 Khối 1 Thị trấn Yên Thành Huyện Yên Thành Tỉnh Nghệ An', N'C022950738', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (1555, 2, 93, N'Thế Giới Di Động TB Thôn Vĩnh Trà Xã Nam Trung', N'Thôn Vĩnh Trà Xã Nam Trung Huyện Tiền Hải Tỉnh Thái Bình', N'C025100697', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (1556, 2, 136, N'Thế Giới Di Động HN 87 Núi Đôi Tổ 2 TT Sóc Sơn', N'Số 87 Đường Núi Đôi Tổ 2 TT. Sóc Sơn H. Sóc Sơn Tp. Hà Nội', N'C025860712', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (1557, 2, 353, N'Thế Giới Di Động LS 263 QL4B khu Lao Động TT Lộc Bình', N'Số 263- Quốc lộ 4B- khu Lao Động- TT. Lộc Bình- H. Lộc Bình- T. Lạng Sơn', N'C026400694', NULL, 0, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (1558, 2, 44, N'Thế Giới Di Động QB 01 Hoàng Diệu', N'Số 01 Hoàng Diệu- P. Nam Lý- Tp. Đồng Hới- T. Quảng Bình', N'C026990835', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (1559, 2, 499, N'DMX MINI  NA thửa đất 340-439 khối 4 TT Quý Hợp', N'Thửa đất số 340 - 439- khối 4- TT. Quỳ Hợp- H. Quỳ Hợp- T. Nghệ An', N'C028030715', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (1560, 2, 318, N'Thế giới di động HN Thôn chợ Bình Minh', N'Thôn Chợ- xã Bình Minh- H. Thanh Oai- TP. Hà Nội', N'C031170785', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (1561, 2, 545, N'Thế giới di động LS Khu II Thất Khê', N'Khu II- TT. Thất Khê- H. Tràng Định- T. Lạng Sơn', N'C031480747', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (1562, 2, 112, N'Thế giới di động QTR 417 Đường Lê Duẫn', N'417 Đường Lê Duẫn- Khóm Trung Chỉ- Phường Đông Lương- Tp Đông Hà- Tỉnh Quảng Trị', N'C035891592', NULL, 0, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (1563, 2, 71, N'Điện máy xanh TTH 503 Nguyễn Tất Thành P. Thủy Phương', N'503 Nguyễn Tất Thành- P. Thủy Phương- TX. Hương Thủy-  T. Thừa Thiên Huế', N'C037261558', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (1564, 2, 233, N'Thế Giới Di Động CM Khu vực 1 khóm 2 thị trấn Năm Căn', N'Đường Nguyễn Tất Thành - khóm 2 - thị trấn Năm Căn - Huyện Năm Căn - Tỉnh Cà Mau', N'C051441590', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (1565, 5, 181, N'MEDIAMART NGUYEN KHE', N'Mediamart Nguyên Khê - Đông Anh - Công ty cổ phần MediaMart Việt Nam', N'C068251540', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (1566, 5, 94, N'MEDIAMART HOANG QUOC VIET', N'Số 14 đường Hoàng Quốc Việt- Phường Nghĩa Đô- Quận Cầu Giấy- Thành phố Hà Nội- Việt Nam', N'C069458079', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (1567, 5, 444, N'MEDIAMART KIM BOI - HOA BINH', N'Thửa đất số 71- Thị trấn Bo- Huyện Kim Bôi- Tỉnh Hòa Bình- Việt Nam', N'C069458080', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (1568, 2, 482, N'Điện máy xanh Số 115 Đường Nghi Tàm Phường Yên Phụ Quận Tây Hồ HN', N'Số 115 Đường Nghi Tàm- Phường Yên Phụ- Quận Tây Hồ- Thành phố Hà Nội- Việt Nam', N'C069471160', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (1569, 2, 29, N'Điện máy xanh số 223 - 225 đường Lĩnh Nam Phường Vĩnh Hưng Quận Hoàng Mai HN', N'Số 223 - 225 đường Lĩnh Nam- Phường Vĩnh Hưng- Quận Hoàng Mai - Thành phố Hà Nội- Việt Nam', N'C069471161', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (1570, 2, 546, N'Điện máy xanh thửa đất số 25 tờ bản đồ số ATDC4 ấp Thái Hòa xã An Thái Đông huyện Cái Bè TG', N'Thửa đất số: 25- tờ bản đồ số: ATDC4- ấp Thái Hòa- xã An Thái Đông- huyện Cái Bè- tỉnh Tiền Giang- TIEN GIANG- REST OF MRD- VIETNAM', N'C070000945', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (1571, 2, 103, N'Điện máy xanh Thửa đất số: 99 tờ bản đồ số: 32 ấp Gò Me xã Bình Ân huyện Gò Công Đông TG', N'Thửa đất số: 99- tờ bản đồ số: 32- ấp Gò Me- xã Bình Ân- huyện Gò Công Đông- tỉnh Tiền Giang', N'C070001484', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (1572, 2, 49, N'Điện máy xanh Thửa đất số 130 Tờ bản đồ số 08 Ấp Bình Phú Quới Xã Đăng Hưng Phước Huyện Chợ Gạo TG', N'Thửa đất số 130- Tờ bản đồ số 08- Ấp Bình Phú Quới- Xã Đăng Hưng Phước- Huyện Chợ Gạo- Tỉnh Tiền Giang- Việt Nam', N'C070001941', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (1573, 2, 90, N'Điện Máy Xanh HCM 86 Tô Ngọc Vân Phường Linh Tây Quận Thủ Đức', N'86 Tô Ngọc Vân- Phường Linh Tây- Quận Thủ Đức- Thành phố Hồ Chí Minh- Việt Nam', N'C062251591', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (1574, 5, 437, N'MEDIAMART KIEN AN 2 - HAI PHONG', N'Số 381 Trần Tất Văn- Phường Tràng Minh- Quận Kiến An- Thành phố Hải Phòng- Việt Nam', N'C069458077', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (1575, 2, 357, N'Điện Máy Xanh BTR Thửa đất số 217 Tờ bản đồ số 5 Ấp Tây Lộc Xã Vĩnh Thành Huyện Chợ Lách', N'Thửa đất số 217- Tờ bản đồ số 5- Ấp Tây Lộc- Xã Vĩnh Thành- Huyện Chợ Lách- Tỉnh Bến Tre- Việt Nam', N'C069460943', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (1576, 2, 164, N'Điện Máy Xanh TG Thửa đất số 67 Tờ bản đồ số 28 Ấp 12 Xã Long Trung Huyện Cai Lậy', N'Thửa đất số 67- Tờ bản đồ số 28- Ấp 12- Xã Long Trung- Huyện Cai Lậy- Tỉnh Tiền Giang- Việt Nam', N'C069460947', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (1577, 2, 236, N'Điện Máy Xanh TG Thửa đất 270-1501 Tờ bản đồ số 7 HMAC3 Ấp Hậu Phú 1 Xã Hậu Mỹ Bắc A Huyện Cái Bè', N'Thửa đất 270-1501- Tờ bản đồ số 7- HMAC3- Ấp Hậu Phú 1- Xã Hậu Mỹ Bắc A- Huyện Cái Bè- Tỉnh Tiền Giang- Việt Nam', N'C069460948', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (1578, 2, 69, N'Điện Máy Xanh GL 6B - 58 - 60A Phan Đình Phùng Phường Tây Sơn Thành phố Pleiku', N'56B - 58 - 60A Phan Đình Phùng- Phường Tây Sơn- Thành phố Pleiku- Tỉnh Gia Lai- Việt Nam', N'C069461961', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (1579, 3, 21, N'CTy TNHH Cao Phong (STĐM Chợ Lớn) Dĩ An - Bình Dương', N'Số 5 Đường Lý Thường Kiệt- khu phố Thắng Lợi 1- Phường Dĩ An- Tp. Dĩ An- Tỉnh Bình Dương- Việt Nam', N'C069462042', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (1580, 2, 164, N'Điện Máy Xanh Thửa đất số 118 Tờ bản đồ số 28 Ấp Bình Thuận Xã Tam Bình Huyện Cai Lậy', N'Thửa đất số 118- Tờ bản đồ số 28- Ấp Bình Thuận- Xã Tam Bình- Huyện Cai Lậy- Tỉnh Tiền Giang- Việt Nam', N'C069463947', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (1581, 2, 349, N'Điện Máy Xanh Đường Phạm Văn Đồng Xã Phú Thượng Huyện Phú Vang', N'Đường Phạm Văn Đồng- Xã Phú Thượng- Huyện Phú Vang- Tỉnh Thừa Thiên Huế- Việt Nam', N'C069463948', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (1582, 2, 97, N'Điện Máy Xanh Thửa đất số 121a Tờ bản đồ số 5 Xã Duy Trung Huyện Duy Xuyên', N'Thửa đất số 121a- Tờ bản đồ số 5- Xã Duy Trung- Huyện Duy Xuyên- Tỉnh Quảng Nam- Việt Nam', N'C069463949', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (1583, 2, 445, N'Điện Máy Xanh  Tiểu khu Đông Hòa- Thị Trấn Nông Cống- Huyện Nông Cống TH', N'Tiểu khu Đông Hòa- Thị Trấn Nông Cống- Huyện Nông Cống- Tỉnh Thanh Hóa- Việt Nam', N'C069466568', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (1584, 2, 564, N'Điện Máy Xanh Thửa đất số 86-87- Tờ bản đồ số 14- Ấp Mới- Xã Long Định- Huyện Châu Thành- Tỉnh Tiền Giang- Việt Nam', N'Thửa đất số 86-87- Tờ bản đồ số 14- Ấp Mới- Xã Long Định- Huyện Châu Thành- Tỉnh Tiền Giang- Việt Nam', N'C069466569', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (1585, 2, 79, N'Điện máy xanh số 130 Trần Quang Khải P Tân Định Quận 1 TPHCM', N'Số 130 Trần Quang Khải- P. Tân Định- Quận 1- Tp. Hồ Chí Minh', N'C069471159', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (1586, 2, 564, N'Điện máy xanh thửa đất số 254 Tờ bản đồ số 02 Ấp Thân Hoà Xã Thân Cửu Nghĩa Huyện Châu Thành TG', N'Thửa đất số 254- Tờ bản đồ số 02- Ấp Thân Hoà- Xã Thân Cửu Nghĩa- Huyện Châu Thành- Tỉnh Tiền Giang- Việt Nam', N'C069471162', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (1587, 2, 547, N'Điện máy xanh thửa đất số 138 tờ bản đồ số 24 ấp An Thành Thị Trấn Kế Sách Huyện Kế Sách ST', N'Thửa đất số 138- tờ bản đồ số 24- ấp An Thành- Thị Trấn Kế Sách- Huyện Kế Sách- Tỉnh Sóc Trăng- Việt Nam', N'C069471163', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (1588, 2, 437, N'Điện máy xanh số nhà 703-705-707-709 Đường Trường Chinh Tổ dân phố Trường Chinh 2 Phường Quán Trữ Quận Kiến An HP', N'Số nhà 703-705-707-709- Đường Trường Chinh- Tổ dân phố Trường Chinh 2- Phường Quán Trữ - Quận Kiến An- Thành phố Hải Phòng- Việt Nam', N'C069471164', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (1589, 5, 58, N'MEDIAMART TON DUC THANG - DA NANG', N'171 TON DUC THANG- PHUONG HOA MINH- QUAN LIEN CHIEU- THANH PHO DA NANG- VIET NAM', N'C070001012', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (1590, 2, 151, N'Thế Giới Di Động HCM 1036 Tân Kỳ Tân Quý', N'1036 Tân Kỳ- Tân Quý- Phường Bình Hưng Hòa', N'C000048286', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (1591, 2, 54, N'Thế Giới Di Động HN 4-6 Phố Thanh Vỵ Sơn Lộc', N'Số 4-6- Phố Thanh Vị- Phường Sơn Lộc- Sơn Tây', N'C000165549', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (1592, 2, 247, N'Thế Giới Di Động QN 01 Hùng Vương', N'Số 1- Đường Hùng Vương- P.Trần Phú- TP.Móng Cái- T.Quảng Ninh', N'C014510706', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (1593, 2, 395, N'Thế Giới Di Động VP KP2 TT Hương Canh', N'Khu phố 2 Thị trấn Hương Canh H.Bình Xuyên T.Vĩnh Phúc', N'C020760704', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (1594, 2, 543, N'Thế Giới Di Động HN Cụm 8 TT Phúc Thọ', N'Cụm 8 Thị trấn Phúc Thọ Huyện Phúc Thọ Tp. Hà Nội', N'C022500701', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (1595, 2, 130, N'Thế Giới Di Động TB Thửa đất 482 thôn Thị An', N'Thửa đất số 482- thôn Thị An- TT. Hưng Nhân- H. Hưng Hà- T. Thái Bình', N'C026490880', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (1596, 2, 95, N'Thế giới di động HP 1596 tổ Quý Kim', N'Số 1596 tổ dân phố Quý Kim- P. Hợp Đức- Q. Đồ Sơn- TP. Hải Phòng', N'C027870805', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (1597, 2, 96, N'Thế giới di động HNM Số 171 Đinh Tiên Hoàng', N'Số 171 Đinh Tiên Hoàng- P. Trần Hưng Đạo- TP. Phủ Lý- T. Hà Nam', N'C029300696', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (1598, 2, 125, N'Thế giới di động QN Tổ 3 Cẩm Thạch', N'Tổ 3- P. Cẩm Thạch- TP. Cẩm Phả- T. Quảng Ninh', N'C029580808', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (1599, 2, 83, N'Thế giới di động NT Số 671 Đường 21/8', N'Số 671 đường 21/8- P.Bảo An- TP.Phan Rang - Tháp Chàm- T.Ninh Thuận', N'C031170777', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (1600, 2, 290, N'Điện máy xanh Số 397 Cách Mạng Tháng 8 KP.03 TT. Võ Xu H. Đức Linh BT', N'Số 395 - 397 đường Cách Mạng Tháng 8- Khu phố 3- Thị Trấn Võ Xu- Huyện Đức Linh- Tỉnh Bình Thuận- Việt Nam', N'C034180736', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (1601, 2, 187, N'Thế Giới Di Động HP Thửa đất số 367- tờ bản đồ số 1954-D', N'Thôn Câu Trung- xã Quang Hưng- H. An Lão- TP. Hải Phòng', N'C039721541', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (1602, 2, 45, N'Điện máy xanh Số 43/27 đường DT746 Tổ 23 Khu phố Bình Quới', N'Số 47/23 đường DT746- Tổ 23- Khu phố Bình Quới- Phường Bình Chuẩn- Thị xã Thuận An- Tỉnh Bình Dương- Việt Nam', N'C057971547', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (1603, 5, 56, N'MEDIAMART PHO MOI - THANH HOA', N'Thôn Phố Môi mới- Xã Quảng Tâm- Thành phố Thanh Hóa- Tỉnh Thanh Hóa- Việt Nam', N'C069458078', NULL, 0, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (1604, 5, 105, N'MEDIAMART LUONG SON - HOA BINH', N'TIEU KHU 11- THI TRAN LUONG SON- HUYEN LUONG SON- TINH HOA BINH- VIET NAM', N'C070001011', NULL, 0, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (1605, 2, 37, N'Điện máy xanh Thửa đất số 134 290 và 2006 tờ bản đồ số 06 23 và 26 số 12 đường Trần Hưng Đạo khu phố 3B- phường 5 TP Cà Mau CM', N'Thửa đất số 134- 290 và 2006- tờ bản đồ số 06- 23 và 26- số 12- đường Trần Hưng Đạo- khu phố 3B- phường 5- TP Cà Mau- tỉnh Cà Mau', N'C070005166', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (1606, 2, 424, N'Điện máy xanh Thửa đất số 59-60 Tờ bản đồ số 04 Khu Phố Tân Bình Thị Trấn Tân Trụ Huyện Tân Trụ LA', N'Thửa đất số 59-60- Tờ bản đồ số 04- Khu Phố Tân Bình- Thị Trấn Tân Trụ- Huyện Tân Trụ- Tỉnh Long An- Việt Nam', N'C070007100', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (1607, 2, 548, N'Điện máy xanh Tổ dân phố 1 Thị Trấn Khe Tre Huyện  Nam Đông TTH', N'Tổ dân phố 1- Thị Trấn Khe Tre- Huyện  Nam Đông- Tỉnh Thừa Thiên Huế- Việt Nam', N'C070007102', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (1608, 2, 549, N'Điện máy xanh Thửa đất số 4058 – 4059 tở bản đồ số 02 thị trấn Một Ngàn huyện Châu Thành A HG', N'Thửa đất số 4058 – 4059- tở bản đồ số 02- thị trấn Một Ngàn- huyện Châu Thành A- tỉnh Hậu Giang', N'C070007309', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (1609, 3, 480, N'CTy TNHH Cao Phong (STĐM Chợ Lớn) Đắk Lắk 1 - 31 Nguyễn Tất Thành - BMT', N'Toà nhà Intemex- 31 Nguyễn Tất Thành- Phường Tân Lợi- TP Buôn Ma Thuột- Tỉnh Đắk Lắk', N'C070007619', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (1610, 2, 164, N'Điện máy xanh thửa đất số 112 Tờ bản đồ số 22 Ấp Quí Chánh Xã Nhị Quý Thị Xã Cai Lậy TG', N'Thửa đất số 112- Tờ bản đồ số 22- Ấp Quí Chánh- Xã Nhị Quý- Thị Xã Cai Lậy- Tỉnh Tiền Giang- Việt Nam', N'C069471851', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (1611, 5, 541, N'MEDIAMART THUONG XUAN - THANH HOA', N'KHU 4- THI TRAN THUONG XUAN- HUYEN THUONG XUAN- TINH THANH HOA- VIET NAM', N'C070001010', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (1612, 5, 44, N'MEDIAMART LI THUONG KIET - QUANG BINH', N'54 LY THUONG KIET- PHUONG DONG PHU- THÀNH PHO DONG HOI- TINH QUANG BINH- VIET NAM', N'C070001014', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (1613, 2, 550, N'Điện máy xanh Thửa đất số 00 tờ bản đồ số 00 và thửa đất số 210-A tờ bản đồ số 01 khu phố 3 thị trấn Thứ Mười Một huyện An Minh KG', N'Thửa đất số 00- tờ bản đồ số 00 và thửa đất số 210-A- tờ bản đồ số 01- khu phố 3- thị trấn Thứ Mười Một- huyện An Minh- tỉnh Kiên Giang', N'C070001483', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (1614, 2, 564, N'Điện máy xanh Thửa đất số 3954 Tờ bản đồ 03 Ấp Tân Hoà Xã Tân Hương Huyện Châu Thành TG', N'Thửa đất số 3954- Tờ bản đồ 03- Ấp Tân Hoà- Xã Tân Hương- Huyện Châu Thành- Tỉnh Tiền Giang- Việt Nam', N'C070001942', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (1615, 2, 564, N'Điện máy xanh Thửa đất số 3546 Tờ bản đồ 01 Ấp Trung Xã Đông Hòa Huyện Châu Thành TG', N'Thửa đất số 3546- Tờ bản đồ 01- Ấp Trung- Xã Đông Hòa- Huyện Châu Thành- Tỉnh Tiền Giang- Việt Nam', N'C070002507', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (1616, 2, 482, N'Điện máy xanh 659 Lạc Long Quân Quận Tây Hồ HN', N'659 Lạc Long Quân- Quận Tây Hồ- Thành phố Hà Nội', N'C070002508', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (1617, 2, 551, N'Điện máy xanh Thửa đất số 453 454 464 tờ bản đồ số 21 thôn Tích  Cực Thị Trấn Tam Đảo Huyện Tam Đảo VP', N'Thửa đất số 453- 454- 464 tờ bản đồ số 21- thôn Tích  Cực- Thị Trấn Tam Đảo- Huyện Tam Đảo- Tỉnh Vĩnh Phúc- Việt Nam', N'C070005167', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (1618, 2, 38, N'Điện máy xanh 1849 Tỉnh Lộ 8- Xã Bình Mỹ- Huyện Củ Chi- Thành phố Hồ Chí Minh- Việt Nam', N'1849 Tỉnh Lộ 8- Xã Bình Mỹ- Huyện Củ Chi- Thành phố Hồ Chí Minh- Việt Nam', N'C070005419', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (1619, 2, 564, N'Điện máy xanh Thửa đất số 2948-3037 Tờ bản đồ số 03 Ấp Hưng Xã Điềm Hy Huyện Châu Thành TG', N'Thửa đất số 2948-3037- Tờ bản đồ số 03- Ấp Hưng- Xã Điềm Hy- Huyện Châu Thành- Tỉnh Tiền Giang- Việt Nam', N'C070005420', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (1620, 2, 164, N'Điện máy xanh Thửa đất số 175-2602 Tờ bản đồ số 23-2 Ấp Bình Tịnh Xã Bình Phú Huyện Cai Lậy TG', N'Thửa đất số 175-2602- Tờ bản đồ số 23-2- Ấp Bình Tịnh- Xã Bình Phú- Huyện Cai Lậy- Tỉnh Tiền Giang- Việt Nam', N'C070005421', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (1621, 2, 164, N'Điện máy xanh Thửa đất số 35 Tờ bản đồ số 15 Ấp Chà Là Xã Phú Nhuận Huyện Cai Lậy TG', N'Thửa đất số 35- Tờ bản đồ số 15- Ấp Chà Là- Xã Phú Nhuận- Huyện Cai Lậy- Tỉnh Tiền Giang- Việt Nam', N'C070005422', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (1622, 2, 236, N'Điện máy xanh Thửa đất số 1030 Tờ bản đồ số 15 Ấp Hậu Hoa Xã Hậu Thành Huyện Cái Bè TG', N'Thửa đất số 1030- Tờ bản đồ số 15- Ấp Hậu Hoa- Xã Hậu Thành- Huyện Cái Bè- Tỉnh Tiền Giang- Việt Nam', N'C070005423', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (1623, 6, 41, N'Siêu thị VHC Hưng Yên', N'Số 56 Nguyễn Văn Linh- An Tảo- thành phố Hưng Yên- Hưng Yên', N'C070006209', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (1624, 6, 155, N'Siêu thị VHC Ninh Bình', N'283 Trần Hưng Đạo- phường Đông Thành- Tp Ninh Bình- Ninh Bình', N'C070006210', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (1625, 2, 537, N'Điện máy xanh Thửa đất số 112 114 tờ bản đồ số 93 ấp 7 xã Tân Phước huyện Gò Công Đông TG', N'Thửa đất số 112- 114- tờ bản đồ số 93- ấp 7- xã Tân Phước- huyện Gò Công Đông- tỉnh Tiền Giang', N'C070006268', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (1626, 5, 91, N'MEDIA MART KHUAT DUY TIEN', N'Số 86-88 Đường Khuất Duy Tiến- Phường Thanh Xuân Trung- Quận Thanh Xuân- Thành phố Hà Nội- Việt Nam', N'C070007616', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (1627, 5, 112, N'MEDIA MART DONG HA', N'Khu phố 8- Phường 1- Thành phố Đông Hà- Tỉnh Quảng Trị- Việt Nam', N'C070007618', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (1628, 2, 202, N'Thế Giới Di Động TB Tổ 2 Khu 1 Thị Trấn Đông Hưng', N'Tổ 2- Khu 1- Thị Trấn Đông Hưng', N'C000298684', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (1629, 2, 372, N'Điện máy xanh TH khu 2 TT Lam Sơn', N'Khu 2- TT.Lam Sơn- H.Thọ Xuân- T.Thanh Hóa', N'C015250924', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (1630, 2, 239, N'Điện máy xanh BRVT 330 Bình Giã', N'Số 330 Bình Giã- Phường Nguyễn An Ninh- Thành phố Vũng Tàu- Tỉnh Bà Rịa - Vũng Tàu- Việt Nam', N'C017790693', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (1631, 2, 218, N'Thế Giới Di Động HY Ngã tư Phố Bần', N'Ngã tư Phố Bần TT.Bần Yên Nhân H.Mỹ Hào T.Hưng Yên', N'C019930732', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (1632, 2, 552, N'Điện máy xanh SL Số 473 Tô Hiệu TT Ít Ong Mường La', N'Số 473- đường Tô Hiệu- thị trấn Ít Ong- huyện Mường La- tỉnh Sơn La', N'C026260707', NULL, 0, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (1633, 2, 513, N'Thế Giới Di Động ND thửa đất 105 TT Rạng Đông', N'Thửa đất 105- TT. Rạng Đông- H. Nghĩa Hưng- T. Nam Định', N'C026710699', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (1634, 2, 553, N'Điện máy xanh GL 321 Hùng Vương', N'321 Hùng Vương- tổ 2- TT. Ia Kha- H. Ia Grai- T. Gia Lai', N'C033780718', NULL, 0, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (1635, 2, 126, N'Điện máy xanh VP Số 1 Nguyễn Danh Phương', N'Số 1 Nguyễn Danh Phương- tổ dân phố An Phú- P. Hội Hợp- TP. Vĩnh Yên- T. Vĩnh Phúc', N'C037891574', NULL, 0, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (1636, 2, 241, N'Điện máy xanh QNM Số 750 đường Phạm Văn Đồng', N'Số 750 đường Phạm Văn Đồng- thị trấn Núi Thành- huyện Núi Thành- tỉnh Quảng Nam', N'C038741542', NULL, 0, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (1637, 2, 291, N'Điện máy xanh VP xã Đại Đồng huyện Vĩnh Tường', N'xã Đại Đồng- huyện Vĩnh Tường- tỉnh Vĩnh Phúc', N'C039242210', NULL, 0, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (1638, 2, 245, N'Điện máy xanh Quốc lộ 14 Thôn 05 Xã Quảng Tín Huyện Đắk R’Lấp', N'Quốc lộ 14- Thôn 05- Xã Quảng Tín- Huyện Đắk R’Lấp- Tỉnh Đắk Nông- Việt Nam', N'C054651549', NULL, 0, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (1639, 2, 517, N'Điện máy xanh Thửa đất số 1300 1453 tờ bản đồ số 08 Ấp Trường Trung Xã Trường Thành Huyện Thới Lai CT', N'Thửa đất số 1300-1453- tờ bản đồ số 08- Ấp Trường Trung- Xã Trường Thành- Huyện Thới Lai- Thành Phố Cần Thơ', N'C070009328', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (1640, 2, 145, N'Điện máy xanh Thửa đất số 1247 tờ bản đồ số 12 ấp Hòn Chông xã Bình An huyện Kiên Lương KG', N'Thửa đất số 1247- tờ bản đồ số 12- ấp Hòn Chông- xã Bình An- huyện Kiên Lương- tỉnh Kiên Giang', N'C070009522', NULL, 0, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (1641, 2, 27, N'Điện máy xanh Thửa đất số 2115 tờ bản đồ số 12 Ấp Tà Tây Xã Phi Thông Thành phố Rạch Giá KG', N'Thửa đất số 2115- tờ bản đồ số 12- Ấp Tà Tây- Xã Phi Thông- Thành phố Rạch Giá- Tỉnh Kiên Giang', N'C070009523', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (1642, 2, 214, N'Điện máy xanh 7/1 Đường ĐH 406 Tổ 1 Khu phố Khánh Lộc Phường Khánh Bình Thị xã Tân Uyên BD', N'7/1 Đường ĐH 406- Tổ 1- Khu phố Khánh Lộc- Phường Khánh Bình- Thị xã Tân Uyên- Tỉnh Bình Dương- Việt Nam', N'C070009524', NULL, 0, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (1643, 2, 109, N'Điện máy xanh Số 1273 đường Nguyễn Hoàng- Ấp Tân Lập- Xã Cây Gáo- Huyện Trảng Bom- Tỉnh Đồng Nai- Việt Nam', N'Số 1273 đường Nguyễn Hoàng- Ấp Tân Lập- Xã Cây Gáo- Huyện Trảng Bom- Tỉnh Đồng Nai- Việt Nam', N'C070009951', NULL, 0, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (1644, 2, 279, N'Điện máy xanh Thửa đất số 1662 Tờ bản đồ 7 ấp Đông Tràm Xã Long Thạnh Huyện Giồng Riềng KG', N'Thửa đất số 1662- Tờ bản đồ 7- ấp Đông Tràm- Xã Long Thạnh- Huyện Giồng Riềng- Tỉnh Kiên Giang- Việt Nam', N'C070010336', NULL, 0, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (1645, 2, 182, N'Điện máy xanh Số 98 - 99 Đường ĐT741 Khu Phố 3 Phường Chánh Phú Hòa Thị xã Bến Cát BD', N'Số 98 - 99 Đường ĐT741- Khu Phố 3- Phường Chánh Phú Hòa- Thị xã Bến Cát- Tỉnh Bình Dương- Việt Nam', N'C070010337', NULL, 0, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (1646, 2, 381, N'Điện máy xanh Thửa đất số 220 tờ bản đồ số 33 ấp An Lợi B Xã Định Yên Huyện Lấp Vò ĐT', N'Thửa đất số 220- tờ bản đồ số 33- ấp An Lợi B- Xã Định Yên- Huyện Lấp Vò- Tỉnh Đồng Tháp- Việt Nam', N'C070010340', NULL, 0, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (1647, 2, 116, N'Điện máy xanh Thửa số 91 tờ bản đồ số 10 đường Bùi Hữu Nghĩa Phường Long Hòa Quận Bình Thủy CT', N'Thửa số 91- tờ bản đồ số 10- đường Bùi Hữu Nghĩa- Phường Long Hòa- Quận Bình Thủy- Thành Phố Cần Thơ', N'C070010341', NULL, 0, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (1648, 2, 263, N'Điện máy xanh Số 320 đường Lý Thái Tổ Xã Long Tân Huyện Nhơn Trạch ĐN', N'Số 320 đường Lý Thái Tổ- Xã Long Tân- Huyện Nhơn Trạch- Tỉnh Đồng Nai- Việt Nam', N'C070011195', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (1649, 5, 199, N'MEDIAMART BA VI', N'SO NHA 260- DUONG QUANG OAI- THI TRAN TAY DANG- HUYEN BA VI- THÀNH PHO HA NOI- VIET NAM', N'C070001013', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (1650, 2, 178, N'Điện máy xanh Số A8/13A Thửa đất số 611-645 Tờ bản đồ số 08 Ấp 1 Xã Qui Đức Huyện Bình Chánh HCM', N'Số A8/13A- Thửa đất số 611-645- Tờ bản đồ số 08- Ấp 1- Xã Qui Đức- Huyện Bình Chánh- TP. Hồ Chí Minh', N'C070006725', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (1651, 2, 413, N'Điện máy xanh 51/104 FA Ấp 6 xã Nhị Thành huyện Thủ Thừa LA', N'51/104 FA- Ấp 6- xã Nhị Thành- huyện Thủ Thừa- Tỉnh Long An', N'C070007101', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (1652, 2, 523, N'Điện máy xanh Thửa số 300 và 301 tờ bản đồ số 49 ấp Thạnh Lợi A1 xã Tân Long huyện Phụng Hiệp HG', N'Thửa số 300 và 301- tờ bản đồ số 49- ấp Thạnh Lợi A1- xã Tân Long- huyện Phụng Hiệp- tỉnh Hậu Giang', N'C070007310', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (1653, 2, 523, N'Điện máy xanh Thửa đất số 1128 1129 1372 606 và 621 tờ bản đồ số 11 ấp Tân Thành thị trấn Búng Tàu huyện Phụng Hiệp HG', N'Thửa đất số 1128- 1129- 1372- 606 và 621; tờ bản đồ số 11- ấp Tân Thành- thị trấn Búng Tàu- huyện Phụng Hiệp- tỉnh Hậu Giang', N'C070007311', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (1654, 2, 165, N'Điện máy xanh Số nhà 2005A Đường Đại Lộ Hùng Vương Tổ Dân Phố Thuận Lộc Phường Cam Thuận Thành phố Cam Ranh KH', N'Số nhà 2005A- Đường Đại Lộ Hùng Vương- Tổ Dân Phố Thuận Lộc- Phường Cam Thuận- Thành phố Cam Ranh- Tỉnh Khánh Hoà- Việt Nam', N'C070007312', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (1655, 5, 198, N'MEDIA MART DUY TAN', N'160 Núi Thành- Phường Hòa Thuận Đông- Quận Hải Châu- Thành phố Đà Nẵng- Việt Nam', N'C070007614', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (1656, 2, 187, N'Điện máy xanh Thôn Xuân Phong Nam Xã An Hòa Huyện An Lão BĐ', N'Thôn Xuân Phong Nam- Xã An Hòa- Huyện An Lão- Tỉnh Bình Định- Việt Nam', N'C070007848', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (1657, 2, 315, N'Điện máy xanh Thửa đất số 496 và thửa đất số 497 tờ bản đồ số 40 xã Chà Là huyện Dương Minh Châu TN', N'Thửa đất số 496 và thửa đất số 497- tờ bản đồ số 40- xã Chà Là- huyện Dương Minh Châu- tỉnh Tây Ninh', N'C070007849', NULL, 0, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (1658, 2, 66, N'Điện máy xanh Thửa đất 319 và thửa đất 320 tờ bản đồ số 42 khu phố Ninh Trung phường Ninh Sơn thành phố Tây Ninh TN', N'Thửa đất 319 và thửa đất 320- tờ bản đồ số 42- khu phố Ninh Trung- phường Ninh Sơn- thành phố Tây Ninh- tỉnh Tây Ninh', N'C070007850', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (1659, 2, 180, N'Điện máy xanh Thửa đất số 291 và 529 tờ bản đồ số 19 ấp Trường Thọ xã Trường Hòa huyện Hòa Thành TN', N'Thửa đất số 291 và 529- tờ bản đồ số 19- ấp Trường Thọ- xã Trường Hòa- huyện Hòa Thành- tỉnh Tây Ninh.', N'C070007851', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (1660, 2, 563, N'Điện máy xanh Thửa đất số 358 tờ bản đồ số 52 và thửa đất số 85 87 250 251 tờ bản đồ số 22 ấp Vịnh xã An Cơ huyện Châu Thành TN', N'Thửa đất số 358- tờ bản đồ số 52 và thửa đất số 85- 87- 250- 251- tờ bản đồ số 22- ấp Vịnh- xã An Cơ- huyện Châu Thành- tỉnh Tây Ninh', N'C070007852', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (1661, 2, 110, N'Điện máy xanh Thửa đất số 175 tờ bản đồ số 59 ấp 1 xã Suối Dây huyện Tân Châu TN', N'Thửa đất số 175- tờ bản đồ số 59- ấp 1- xã Suối Dây- huyện Tân Châu- tỉnh Tây Ninh', N'C070007853', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (1662, 2, 235, N'Điện máy xanh Thửa đất số: 109 và 99 tờ bản đố số 09 ấp Long Hòa xã Long Thuận huyện Bến Cầu TN', N'Thửa đất số: 109 và 99- tờ bản đố số 09- ấp Long Hòa- xã Long Thuận- huyện Bến Cầu- tỉnh Tây Ninh', N'C070007854', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (1663, 2, 153, N'Điện máy xanh Thửa đất số 85 tờ bản đồ số 15 ấp An Hội xã An Hòa huyện Trảng Bàng TN', N'Thửa đất số 85- tờ bản đồ số 15- ấp An Hội- xã An Hòa- huyện Trảng Bàng- tỉnh Tây Ninh', N'C070007855', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (1664, 2, 188, N'Điện máy xanh Thửa đất số 330 tờ bản đồ số 59 ấp Đá Hàng xã Hiệp Thạnh huyện Gò Dầu TN', N'Thửa đất số 330- tờ bản đồ số 59- ấp Đá Hàng- xã Hiệp Thạnh- huyện Gò Dầu- tỉnh Tây Ninh', N'C070007856', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (1665, 2, 554, N'Điện máy xanh Thửa đất số 3373 Tờ bản đồ số PTC2 Ấp Tân Phú Xã Phú Thạnh Huyện Tân Phú Đông TG', N'Thửa đất số 3373- Tờ bản đồ số PTC2- Ấp Tân Phú- Xã Phú Thạnh- Huyện Tân Phú Đông- Tỉnh Tiền Giang- Việt Nam', N'C070007857', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (1666, 2, 326, N'Điện máy xanh Số 183 Tổ 10 ấp Chợ Xã Mỹ An Huyện Mang Thít VL', N'Số 183- Tổ 10- ấp Chợ- Xã Mỹ An- Huyện Mang Thít- Tỉnh Vĩnh Long- Việt Nam', N'C070007858', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (1667, 2, 555, N'Điện máy xanh Số Nhà 248 Đường Nguyễn Tất Thành Tổ Dân Phố Hiệp Thành Thị Trấn Liên Sơn Huyện Lắk ĐLK', N'Số Nhà 248- Đường Nguyễn Tất Thành- Tổ Dân Phố Hiệp Thành- Thị Trấn Liên Sơn- Huyện Lắk- Tỉnh Đắk Lắk- Việt Nam', N'C070007931', NULL, 0, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (1668, 2, 413, N'Điện máy xanh Ô8/15- Ấp 2- Xã Mỹ An- Huyện Thủ Thừa- Tỉnh Long An- Việt Nam', N'Ô8/15- Ấp 2- Xã Mỹ An- Huyện Thủ Thừa- Tỉnh Long An- Việt Nam', N'C070007932', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (1669, 2, 563, N'Điện máy xanh Thửa đất số 101 tờ bản đồ số 57 ấp Thành Đông xã Thành Long huyện Châu Thành TN', N'Thửa đất số 101- tờ bản đồ số 57- ấp Thành Đông- xã Thành Long- huyện Châu Thành- tỉnh Tây Ninh.', N'C070008530', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (1670, 2, 110, N'Điện máy xanh Thửa đất số: 493 và 494 tờ bản đồ số 66 ấp Tân Đông xã Tân Hưng huyện Tân Châu TN', N'Thửa đất số: 493 và 494- tờ bản đồ số 66- ấp Tân Đông- xã Tân Hưng- huyện Tân Châu- tỉnh Tây Ninh', N'C070008531', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (1671, 2, 236, N'Điện máy xanh Thửa đất số 105-106 Tờ bản đồ 03 Ấp An Thạnh Xã Đông Hòa Hiệp Huyện Cái Bè TG', N'Thửa đất số 105-106- Tờ bản đồ 03- Ấp An Thạnh- Xã Đông Hòa Hiệp- Huyện Cái Bè- Tỉnh Tiền Giang- Việt Nam', N'C070008782', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (1672, 2, 363, N'Điện máy xanh Thửa đất số 1170 tờ bản đồ số 8 Ấp K10 Xã Phú Hiệp Huyện Tam Nông ĐT', N'Thửa đất số 1170- tờ bản đồ số 8- Ấp K10- Xã Phú Hiệp- Huyện Tam Nông- Tỉnh Đồng Tháp- Việt Nam', N'C070008783', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (1673, 2, 65, N'Điện máy xanh Thửa đất số 446-447 tờ bản đồ số 63 ấp Mỹ Tây 2 Xã Mỹ Quý Huyện Tháp Mười ĐT', N'Thửa đất số 446-447- tờ bản đồ số 63- ấp Mỹ Tây 2- Xã Mỹ Quý- Huyện Tháp Mười- Tỉnh Đồng Tháp- Việt Nam', N'C070008784', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (1674, 2, 65, N'Điện máy xanh Thửa đất số 5 tờ bản đồ số 86 ấp 5 Xã Đốc Binh Kiều Huyện Tháp Mười ĐT', N'Thửa đất số 5- tờ bản đồ số 86- ấp 5- Xã Đốc Binh Kiều- Huyện Tháp Mười- Tỉnh Đồng Tháp- Việt Nam', N'C070008785', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (1675, 2, 265, N'Điện máy xanh Thửa đất: 32 tờ bản đồ: 61 ấp Tân Thanh 2 xã Tân Xuân huyện Ba Tri BT', N'Thửa đất: 32- tờ bản đồ: 61- ấp Tân Thanh 2- xã Tân Xuân- huyện Ba Tri- tỉnh Bến Tre', N'C070008789', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (1676, 3, 480, N'CTy TNHH Cao Phong (STĐM Chợ Lớn) Đắk Lắk 2 - 569 Lê Duẩn - BMT', N'569 Lê Duẩn- Phường Ea Tam- TP. Buôn Ma Thuột- Tỉnh Đắk Lắk', N'C070009295', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (1677, 2, 281, N'Điện máy xanh Thửa đất số 62 tờ bản đồ số 59 xã Long Phước Huyện Long Thành ĐN', N'Thửa đất số 62- tờ bản đồ số 59- xã Long Phước- Huyện Long Thành- Tỉnh Đồng Nai', N'C070009325', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (1678, 2, 403, N'Điện máy xanh Thửa đất số  80 tờ bản đồ số 13 ấp Chà Và Xã Vinh Kim Huyện Cầu Ngang TV', N'Thửa đất số  80- tờ bản đồ số 13- ấp Chà Và- Xã Vinh Kim- Huyện Cầu Ngang- Tỉnh Trà Vinh- Việt Nam', N'C070009326', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (1679, 2, 560, N'Điện máy xanh Thửa đất 88 tờ bản đồ số 04 Đường Tà Niên Xã Vĩnh Hòa Hiệp Huyện Châu Thành KG', N'Thửa đất 88- tờ bản đồ số 04- Đường Tà Niên- Xã Vĩnh Hòa Hiệp- Huyện Châu Thành- Tỉnh Kiên Giang', N'C070009521', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (1680, 2, 434, N'Điện máy xanh Số 177D/09 tổ 15 ấp Phú Thạnh Xã Đồng Phú Huyện Long Hồ VL', N'Số 177D/09- tổ 15- ấp Phú Thạnh- Xã Đồng Phú- Huyện Long Hồ- Tỉnh Vĩnh Long- Việt Nam', N'C070009526', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (1681, 2, 116, N'Điện máy xanh Thửa đất số 78 tờ bản đồ số 22 đường Bùi Hữu Nghĩa Khu vực Bình Dương B Phường Long Tuyền Quận Bình Thủy CT', N'Thửa đất số 78- tờ bản đồ số 22- đường Bùi Hữu Nghĩa- Khu vực Bình Dương B- Phường Long Tuyền- Quận Bình Thủy- Thành phố Cần Thơ- Việt Nam', N'C070009527', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (1682, 2, 431, N'Điện máy xanh Thửa số 1320 tờ bản đồ 04 ấp Trường Thuận Xã Trường Long Huyện Phong Điền CT', N'Thửa số 1320- tờ bản đồ 04- ấp Trường Thuận- Xã Trường Long- Huyện Phong Điền- Thành phố Cần Thơ- Việt Nam', N'C070009528', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (1683, 2, 12, N'Điện máy xanh Số 155 Nguyễn Văn Cừ Phường Hồng Hà Thành phố Hạ Long QN', N'Số 155 Nguyễn Văn Cừ- Phường Hồng Hà- Thành phố Hạ Long- Tỉnh Quảng Ninh- Việt Nam', N'C070009529', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (1684, 3, 177, N'CTy TNHH Cao Phong (STĐM Chợ Lớn) - Thống Nhất - Đồng Nai', N'55/4 Quốc lộ 20- Ấp Bạch Lâm- Xã Gia Tân 2- Huyện Thống Nhất- Tỉnh Đồng Nai', N'C070009608', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (1685, 2, 480, N'Điện máy xanh 430 đường Võ Văn Kiệt phường Khánh Xuân thành phố Buôn Ma Thuột ĐLK', N'430- đường Võ Văn Kiệt- phường Khánh Xuân- thành phố Buôn Ma Thuột- tỉnh Đắk Lắk', N'C070009950', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (1686, 2, 177, N'Điện máy xanh Số 126 Tỉnh Lộ 769- Ấp 2- Xã Lộ 25- Huyện Thống Nhất- Tỉnh Đồng Nai- Việt Nam', N'Số 126 Tỉnh Lộ 769- Ấp 2- Xã Lộ 25- Huyện Thống Nhất- Tỉnh Đồng Nai- Việt Nam', N'C070010335', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (1687, 9, 20, N'Cao Thanh Liêm (Cửa Hàng Tường)', N'Ấp Thanh Thọ- Xã Phú Xuân- Huyện Tân Phú', N'C000026140', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (1688, 56, 180, N'CTy TNHH MTV Thiên Phú Cường', N'32-34 Phan Văn Đáng- Khu Phố 1', N'C000022676', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (1689, 29, 82, N'Dũng Tuyên', N'26 Đường 2/4', N'C000022689', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (1690, 22, 198, N'Viettronimex 1 (CTy CP Điện Tử - Tin Học Đà Nẵng)', N'6 Pasteur', N'C000022704', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (1691, 14, 27, N'CTy TNHH Đặng Quang Phương', N'566 Nguyễn Trung Trực- Thị Trấn Vĩnh Lạc (410 Nguyễn Trung Trực cũ)', N'C000022708', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (1692, 45, 26, N'CTy TNHH TM Nguyễn Huệ', N'9/9 Trần Hưng Đạo- Mỹ Xuyên', N'C000022709', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (1693, 16, 73, N'CN TT Điện Tử - Điện Lạnh Việt Dũng', N'B2 Trung Tâm Thương Mại- Phường 3', N'C000022714', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (1694, 10, 78, N'Siêu Thị Điện Máy Hòa Bình', N'13 Quang Trung', N'C000022740', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (1695, 43, 69, N'DNTN Ngọc Nam (Chi nhánh)', N'49 Nguyễn Thiện Thuật', N'C000022769', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (1696, 53, 35, N'Tân Nhật Thanh', N'457-548 Phan Châu Trinh', N'C000022675', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (1697, 41, 480, N'Điện Máy Ngô Phúc Vinh', N'88 Y Jút', N'C000022773', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (1698, 58, 52, N'CTy TNHH Điện Tử Toàn Anh - Việt Trì', N'Tổ 35- Phố Thi Đua- Phường Tiên Cát', N'C000022774', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (1699, 24, 69, N'DNTN Đức Thanh', N'4 Trần Phú', N'C000022770', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (1700, 54, 128, N'Tân Nhật Việt', N'119 Lương Khánh Thiện- Ngô Quyền- TP. Hải Phòng', N'C000022815', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (1701, 57, 37, N'Điện Máy Thương Nghiệp Cà Mau', N'70 - 72 Đề Thám- Phường 2', N'C000022711', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (1702, 27, 416, N'Siêu Thị Điện Máy Dũng Loan', N'Khu Phố 1- Đường Hùng Vương- Thị Trấn Ba Đồn', N'C000022758', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (1703, 19, 111, N'Cường Thịnh', N'68 Lý Thái Tổ', N'C000023077', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (1704, 33, 141, N'Giang Nam BN 22 Lý Thái Tổ (số cũ 418 Ngô Gia Tự)', N'22 Lý Thái Tổ (số cũ 418 Ngô Gia Tự)', N'C000023080', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (1705, 30, 12, N'Dũng Vân (CT TNHH TM & DV Tam Phú)', N'06 Giếng Đồn- Trần Hưng Đạo', N'C000023299', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (1706, 50, 10, N'Samnec Quán Toan', N'Đường Quán Toan', N'C000023722', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (1707, 13, 480, N'TTTM Intimex Buôn Mê Thuột', N'31 Nguyễn Tất Thành', N'C000022798', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (1708, 49, 41, N'Siêu Thị Điện Máy Lâm Duy (CTy TNH TM DV Quốc Anh)', N'409 Nguyễn Văn Linh', N'C000023068', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (1709, 31, 84, N'CTy TNHH TMDV Linh', N'40-41 Khu Phố 2 Phường Phước Bình Thị Xã Phước Long', N'C000025810', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (1710, 37, 32, N'Điện Máy - Điện Lạnh Khai Trí', N'19-19A Trung Tâm Thương Mại Đường 3/2- Phường 1', N'C000123881', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (1711, 36, 204, N'Cty CPTM Hồng Hà HT 63 Trần Phú', N'63 Trần Phú', N'C002830764', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (1712, 18, 240, N'CTy TNHH TM Lê Thị Ngọc Lan', N'B5-B6 Đường 3 Tháng 2- Đà Lạt', N'C000025742', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (1713, 55, 456, N'Thái Nguyên', N'962 QL1- phường Phú Bình- huyện Long Khánh- tỉnh Đồng Nai', N'C000025753', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (1714, 44, 281, N'Nguyên Anh', N'Khu Văn Hải- thị trấn Long Thành- Long Thành- Đồng Nai', N'C000025758', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (1715, 11, 9, N'Điện Máy CPN HP 63 Trần Nguyên Hãn', N'63 Trần Nguyên Hãn', N'C003431207', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (1716, 34, 4, N'CTy TNHH Điện Máy Hali', N'4 Hoàng Hoa Thám Mạo Khê', N'C003880859', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (1717, 17, 160, N'CTy TNHH TM Đại Nam', N'389 Chu Văn Thịnh- Tổ 12- Phường Chiềng Lề', N'C000025811', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (1718, 46, 125, N'Điện Tử -Điện  Lạnh Oanh Sơn', N'283 Trần Phú- Phường Cẩm Thành-Thành Phố Cẩm Phả -Quảng Ninh', N'C000027113', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (1719, 21, 556, N'Điện Máy Tấn', N'51 Trần Hầu- Bình Sơn', N'C000035636', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (1720, 28, 91, N'DIGICITY HN 277 Nguyễn Trãi (CTy TNHH TM & DVDL Dung Tân)', N'277 Nguyễn Trãi- Thanh Xuân- Hà Nội', N'C000035650', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (1721, 12, 136, N'Eco-Mart 3 (Sóc Sơn) HN TT TM Bình An', N'Trung tâm thương mại Bình An- Trung Gia Sóc Sơn- Hà Nội', N'C027670701', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (1722, 15, 117, N'CTy TNHH TÍn Dũng', N'36-36A Nguyễn Thái Học- Phường Tân An', N'C000165368', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (1723, 22, 44, N'CTy CP Điện Tử - Tin Học Quảng Bình (Viettronimex 5)', N'56 Quang Trung', N'C000172005', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (1724, 48, 220, N'Quang Lợi', N'Đức Nhuận- Mộ Đức- Quãng Ngãi', N'C000172058', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (1725, 8, 130, N'Siêu Thị Điện Máy Ánh Chinh 1', N'243 Nguyễn Thị Minh Khai- Bồ Xuyên- TP Thái Bình', N'C000172362', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (1726, 36, 78, N'CTy CP TM Hồng Hà', N'20 Tràng Thi- TP. Vinh- tỉnh Nghệ An- Việt Nam', N'C000025650', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (1727, 39, 112, N'Siêu Thị Điện Máy Lê Dũng QT 29 Trần Hưng Đạo', N'29 Trần Hưng Đạo', N'C000025661', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (1728, 47, 99, N'CTy TNHH TM & DV Phú Thu', N'160 Trần Hưng Đạo', N'C000025807', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (1729, 26, 247, N'Điện Máy Đông Lý QN 8 trần Phú', N'Số 8 Hùng Vương', N'C000036200', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (1730, 52, 55, N'CTy TNHH TM & DV Tám Oanh', N'Tổ 1A- Phường Tân Thịnh', N'C001348609', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (1731, 38, 317, N'Trung Tâm Điện Máy Lan Đài', N'387 Quang Trung- phường An Phú- thị Xã An Khê- tỉnh Gia Lai', N'C003010803', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (1732, 47, 99, N'CTy TNHH TM & DV Phú Thu (Siêu thị Điện Máy PTMAT)', N'353 Trần Hưng Đạo- Tuy Hòa', N'C009070690', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (1733, 50, 187, N'Samnec An Lão', N'Cầu Vàng-Thị Trấn An Lão', N'C003631362', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (1734, 27, 44, N'Siêu thị ĐM Dũng Loan - Trần Hưng Đạo', N'278-280 Trần Hưng Đạo', N'C004110756', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (1735, 47, 99, N'CTy TNHH TM & DV Phú Thu (Phú Thu 3)', N'187 - 189 Trần Hưng Đạo Tuy Hòa Phú Yên', N'C027190724', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (1736, 50, 9, N'Samnec HP 4 Hồ Sen Lê Chân', N'4 Hồ Sen', N'C530_17777', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (1737, 40, 500, N'Lý Liên - Hải Hà', N'72 Nguyễn Du- thị trấn Quảng Hà- huyện Hải Hà- Tỉnh Quảng Ninh', N'C056911541', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (1738, 20, 82, N'Siêu Thị Đại Thanh', N'24-26 Thống Nhất', N'C000022690', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (1739, 22, 64, N'Viettronimex 2 (CTy CP Điện Tử - Tin Học Đà Nẵng)', N'181-183-185 Điện Biên Phủ', N'C000025596', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (1740, 11, 128, N'Điện Máy CPN HP Số 7 Lô 2A Lê Hồng Phong', N'Số 7 Lô 2A Lê Hồng Phong', N'C000025932', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (1741, 60, 201, N'Văn Chiến Kép Lạng Giang', N'Ngã Tư Kép- Lạng Giang- Bắc Giang', N'C009310715', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (1742, 50, 238, N'Samnec HP Thủy Nguyên', N'Ngã Ba Đông Sơn- Xã Kênh Giang- Thủy Nguyên', N'C004790692', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (1743, 35, 128, N'Hoàng Gia - 11 Lê Hồng Phong', N'11 Lê Hồng Phong', N'C004950691', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (1744, 60, 111, N'Văn Chiến Lục Nam BG số 1 L4 Hùng Vương', N'Thị trấn Đồi Ngô Huyện Lục Nam Bắc Giang', N'C012340736', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (1745, 22, 198, N'Viettronimex 4 (CTy CP Điện Tử - Tin Học Đà Nẵng)', N'87 Quang Trung- Hải Châu 1- Hải Châu- Đà Nẵng', N'C031480714', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (1746, 28, 104, N'DIGICITY Ngọc Hồi (Cty TNHH TM & DV Dung Tân)', N'215 Ngọc Hồi- Thanh Trì- Hà Nội', N'C018700714', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (1747, 59, 83, N'Cty TNHH DT&TH Từ Sơn NT 487 Thống Nhất Kinh Dinh', N'487 Thống Nhất- Kinh Dinh', N'C530_2790', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (1748, 12, 181, N'Eco-Mart 1 (Đông Anh) HN Km13 QL3', N'Km13 QL3- Đông Anh', N'C000047947', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (1749, 22, 23, N'CTy CP DT&TH Đà Nẵng DNG 460 Nguyễn Hữu Thọ', N'460 Nguyễn Hữu Thọ- Cẩm Lệ', N'C000150558', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (1750, 50, 94, N'Samnec Cầu Giấy', N'110 Cầu Giấy- Cầu Giấy- Hà Nội', N'C009320691', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (1751, 12, 216, N'Eco-Mart 2 (Mê Linh) HN Khu Đô Thị Tiến Phong', N'khu đô thị Tiến Phong - Đại Thịnh - Mê Linh', N'C022710734', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (1752, 58, 132, N'CTy TNHH Điện tử Toàn Anh - Yên Bái', N'Số 74- tổ 11- Phường Hợp Minh- Thành phố Yên Bái', N'C026381380', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (1753, 28, 54, N'Công ty CP DigiCity Việt Nam - Số 1 La Thành', N'Số 1 La Thành-Thị xã Sơn Tây', N'C026930770', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (1754, 51, 155, N'Siêu thị Điện máy Tâm Hằng Plaza', N'Đường 10- Phố Bắc Sơn- P.Bích Đào- TP Ninh Bình- Ninh Bình', N'C028030695', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (1755, 25, 79, N'CN CTy TNHH MTV Doanh Minh Huy', N'112 Trần Hưng Đạo- Phạm Ngũ Lão', N'C004240693', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (1756, 23, 190, N'Nông Cơ Ba Sang', N'29 Nguyễn Huệ- Đoàn Kết- AyunPa- Gia Lai', N'C037431539', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (1757, 42, 69, N'Ngọc Huyền', N'281-283 Hùng Vương- TP Pleiku', N'C040281829', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (1758, 60, 111, N'Văn Chiến - Hùng Vương', N'Số 1 Hùng Vương- Bắc Giang', N'C000023075', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (1759, 32, 447, N'Cty TNHH Gia Thành HCM 975 Trần Hưng Đạo', N'975 Trần Hưng Đạo- Phường 5', N'C530_3722', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (1760, 42, 69, N'Ngọc Huyền 2', N'55-56 Ngô Gia Tự', N'C000022768', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (1761, 61, 36, N'CTy TNHH TM XNK Việt Hàn', N'68 Kim Mã- Phường Kim Mã', N'C000026134', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (1762, 40, 247, N'Lý Liên - Móng Cái', N'08 Hùng Vương- Phường Trần Phú- Tp Móng Cái- Tỉnh Quảng Ninh', N'C056911542', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (1763, 37, 32, N'Điện Máy Khai Trí 12A Hoàng Thái Hiếu', N'12A Hoàng Thái Hiếu- P1- Thành phố Vĩnh Long- Tỉnh Vĩnh Long', N'C045531530', NULL, 1, NULL, NULL, 2)
GO
INSERT [dbo].[StoreInfor] ([ID], [AccountID], [DistrictID], [Name], [Address], [MCScode], [DealeCode], [Status], [ContactName], [ContactTel], [PlatformID]) VALUES (1764, 27, 393, N'Siêu thị ĐM Dũng Loan - 4', N'Cầu Quảng Thuận- Quốc Lộ 1A- Thị xã Ba Đồn- Quảng Bình', N'C065221555', NULL, 1, NULL, NULL, 2)
GO
SET IDENTITY_INSERT [dbo].[StoreInfor] OFF
GO
SET IDENTITY_INSERT [dbo].[UserInfor] ON 
GO
INSERT [dbo].[UserInfor] ([ID], [PositionID], [Tel], [Password], [Status], [IsDeleted], [EmployeeID], [PermissionID]) VALUES (2, 11, N'(011) 111-1111', NULL, 1, NULL, 1, 2)
GO
SET IDENTITY_INSERT [dbo].[UserInfor] OFF
GO
ALTER TABLE [dbo].[AccountInfor]  WITH CHECK ADD  CONSTRAINT [FK_AccountInfor_ChannelInfor] FOREIGN KEY([ChannelID])
REFERENCES [dbo].[ChannelInfor] ([ID])
GO
ALTER TABLE [dbo].[AccountInfor] CHECK CONSTRAINT [FK_AccountInfor_ChannelInfor]
GO
ALTER TABLE [dbo].[AnswerInfor]  WITH CHECK ADD  CONSTRAINT [FK_AnswerInfor_CheckinInfor] FOREIGN KEY([CheckinInforID])
REFERENCES [dbo].[CheckinInfor] ([ID])
GO
ALTER TABLE [dbo].[AnswerInfor] CHECK CONSTRAINT [FK_AnswerInfor_CheckinInfor]
GO
ALTER TABLE [dbo].[AnswerRecord]  WITH CHECK ADD  CONSTRAINT [FK_AnswerRecord_AnswerInfor] FOREIGN KEY([AnswerID])
REFERENCES [dbo].[AnswerInfor] ([ID])
GO
ALTER TABLE [dbo].[AnswerRecord] CHECK CONSTRAINT [FK_AnswerRecord_AnswerInfor]
GO
ALTER TABLE [dbo].[AnswerRecord]  WITH CHECK ADD  CONSTRAINT [FK_AnswerRecord_QuestionInfor] FOREIGN KEY([QuesionID])
REFERENCES [dbo].[QuestionInfor] ([ID])
GO
ALTER TABLE [dbo].[AnswerRecord] CHECK CONSTRAINT [FK_AnswerRecord_QuestionInfor]
GO
ALTER TABLE [dbo].[CheckinImageRecord]  WITH CHECK ADD  CONSTRAINT [FK_CheckinImageRecord_CheckinInfor] FOREIGN KEY([CheckinID])
REFERENCES [dbo].[CheckinInfor] ([ID])
GO
ALTER TABLE [dbo].[CheckinImageRecord] CHECK CONSTRAINT [FK_CheckinImageRecord_CheckinInfor]
GO
ALTER TABLE [dbo].[CheckinImageRecord]  WITH CHECK ADD  CONSTRAINT [FK_CheckinImageRecord_ImageInfor] FOREIGN KEY([ImageID])
REFERENCES [dbo].[ImageInfor] ([ID])
GO
ALTER TABLE [dbo].[CheckinImageRecord] CHECK CONSTRAINT [FK_CheckinImageRecord_ImageInfor]
GO
ALTER TABLE [dbo].[CheckinInfor]  WITH CHECK ADD  CONSTRAINT [FK_CheckinInfor_RoomInfor] FOREIGN KEY([RoomID])
REFERENCES [dbo].[RoomInfor] ([ID])
GO
ALTER TABLE [dbo].[CheckinInfor] CHECK CONSTRAINT [FK_CheckinInfor_RoomInfor]
GO
ALTER TABLE [dbo].[CheckinInfor]  WITH CHECK ADD  CONSTRAINT [FK_CheckinInfor_UserInfor] FOREIGN KEY([UserID])
REFERENCES [dbo].[UserInfor] ([ID])
GO
ALTER TABLE [dbo].[CheckinInfor] CHECK CONSTRAINT [FK_CheckinInfor_UserInfor]
GO
ALTER TABLE [dbo].[ContentCourseRecord]  WITH CHECK ADD  CONSTRAINT [FK_ContentCourseRecord_ContentInfor] FOREIGN KEY([ContentID])
REFERENCES [dbo].[ContentInfor] ([ID])
GO
ALTER TABLE [dbo].[ContentCourseRecord] CHECK CONSTRAINT [FK_ContentCourseRecord_ContentInfor]
GO
ALTER TABLE [dbo].[ContentCourseRecord]  WITH CHECK ADD  CONSTRAINT [FK_ContentCourseRecord_CourseInfor] FOREIGN KEY([CourseID])
REFERENCES [dbo].[CourseInfor] ([ID])
GO
ALTER TABLE [dbo].[ContentCourseRecord] CHECK CONSTRAINT [FK_ContentCourseRecord_CourseInfor]
GO
ALTER TABLE [dbo].[ContentModelRecord]  WITH CHECK ADD  CONSTRAINT [FK_ContentModelRecord_ContentInfor] FOREIGN KEY([ContentID])
REFERENCES [dbo].[ContentInfor] ([ID])
GO
ALTER TABLE [dbo].[ContentModelRecord] CHECK CONSTRAINT [FK_ContentModelRecord_ContentInfor]
GO
ALTER TABLE [dbo].[ContentModelRecord]  WITH CHECK ADD  CONSTRAINT [FK_ContentModelRecord_ModelInfor] FOREIGN KEY([ModelID])
REFERENCES [dbo].[ModelInfor] ([ID])
GO
ALTER TABLE [dbo].[ContentModelRecord] CHECK CONSTRAINT [FK_ContentModelRecord_ModelInfor]
GO
ALTER TABLE [dbo].[CourseInfor]  WITH CHECK ADD  CONSTRAINT [FK_CourseInfor_PlatformInfor] FOREIGN KEY([PlatformID])
REFERENCES [dbo].[PlatformInfor] ([ID])
GO
ALTER TABLE [dbo].[CourseInfor] CHECK CONSTRAINT [FK_CourseInfor_PlatformInfor]
GO
ALTER TABLE [dbo].[CourseTestRecord]  WITH CHECK ADD  CONSTRAINT [FK_CourseTestRecord_CourseInfor] FOREIGN KEY([CourseID])
REFERENCES [dbo].[CourseInfor] ([ID])
GO
ALTER TABLE [dbo].[CourseTestRecord] CHECK CONSTRAINT [FK_CourseTestRecord_CourseInfor]
GO
ALTER TABLE [dbo].[CourseTestRecord]  WITH CHECK ADD  CONSTRAINT [FK_CourseTestRecord_TestInfor] FOREIGN KEY([TestID])
REFERENCES [dbo].[TestInfor] ([ID])
GO
ALTER TABLE [dbo].[CourseTestRecord] CHECK CONSTRAINT [FK_CourseTestRecord_TestInfor]
GO
ALTER TABLE [dbo].[DistrictInfor]  WITH CHECK ADD  CONSTRAINT [FK_DistrictInfor_ProvinceInfor] FOREIGN KEY([ProvinceID])
REFERENCES [dbo].[ProvinceInfor] ([ID])
GO
ALTER TABLE [dbo].[DistrictInfor] CHECK CONSTRAINT [FK_DistrictInfor_ProvinceInfor]
GO
ALTER TABLE [dbo].[EmployeeInfor]  WITH CHECK ADD  CONSTRAINT [FK_EmployeeInfor_StoreInfor] FOREIGN KEY([StoreID])
REFERENCES [dbo].[StoreInfor] ([ID])
GO
ALTER TABLE [dbo].[EmployeeInfor] CHECK CONSTRAINT [FK_EmployeeInfor_StoreInfor]
GO
ALTER TABLE [dbo].[GiftCourseRecord]  WITH CHECK ADD  CONSTRAINT [FK_GiftCourseRecord_CourseInfor] FOREIGN KEY([CourseID])
REFERENCES [dbo].[CourseInfor] ([ID])
GO
ALTER TABLE [dbo].[GiftCourseRecord] CHECK CONSTRAINT [FK_GiftCourseRecord_CourseInfor]
GO
ALTER TABLE [dbo].[GiftCourseRecord]  WITH CHECK ADD  CONSTRAINT [FK_GiftCourseRecord_GiftInfor] FOREIGN KEY([GiftInforID])
REFERENCES [dbo].[GiftInfor] ([ID])
GO
ALTER TABLE [dbo].[GiftCourseRecord] CHECK CONSTRAINT [FK_GiftCourseRecord_GiftInfor]
GO
ALTER TABLE [dbo].[GiftCourseRecord]  WITH CHECK ADD  CONSTRAINT [FK_GiftCourseRecord_GiftType] FOREIGN KEY([GiftTypeID])
REFERENCES [dbo].[GiftType] ([ID])
GO
ALTER TABLE [dbo].[GiftCourseRecord] CHECK CONSTRAINT [FK_GiftCourseRecord_GiftType]
GO
ALTER TABLE [dbo].[GiftInfor]  WITH CHECK ADD  CONSTRAINT [FK_GiftInfor_ImageInfor] FOREIGN KEY([ImageID])
REFERENCES [dbo].[ImageInfor] ([ID])
GO
ALTER TABLE [dbo].[GiftInfor] CHECK CONSTRAINT [FK_GiftInfor_ImageInfor]
GO
ALTER TABLE [dbo].[LoginInfor]  WITH CHECK ADD  CONSTRAINT [FK_LoginInfor_UserInfor] FOREIGN KEY([UserID])
REFERENCES [dbo].[UserInfor] ([ID])
GO
ALTER TABLE [dbo].[LoginInfor] CHECK CONSTRAINT [FK_LoginInfor_UserInfor]
GO
ALTER TABLE [dbo].[ModelInfor]  WITH CHECK ADD  CONSTRAINT [FK_ModelInfor_CatInfor] FOREIGN KEY([CatID])
REFERENCES [dbo].[CatInfor] ([ID])
GO
ALTER TABLE [dbo].[ModelInfor] CHECK CONSTRAINT [FK_ModelInfor_CatInfor]
GO
ALTER TABLE [dbo].[ProvinceInfor]  WITH CHECK ADD  CONSTRAINT [FK_ProvinceInfor_CityRuralInfor] FOREIGN KEY([CityRuralID])
REFERENCES [dbo].[CityRuralInfor] ([ID])
GO
ALTER TABLE [dbo].[ProvinceInfor] CHECK CONSTRAINT [FK_ProvinceInfor_CityRuralInfor]
GO
ALTER TABLE [dbo].[ProvinceInfor]  WITH CHECK ADD  CONSTRAINT [FK_ProvinceInfor_RegionInfor] FOREIGN KEY([RegionID])
REFERENCES [dbo].[RegionInfor] ([ID])
GO
ALTER TABLE [dbo].[ProvinceInfor] CHECK CONSTRAINT [FK_ProvinceInfor_RegionInfor]
GO
ALTER TABLE [dbo].[QuestionInfor]  WITH CHECK ADD  CONSTRAINT [FK_QuestionInfor_CatInfor] FOREIGN KEY([CatID])
REFERENCES [dbo].[CatInfor] ([ID])
GO
ALTER TABLE [dbo].[QuestionInfor] CHECK CONSTRAINT [FK_QuestionInfor_CatInfor]
GO
ALTER TABLE [dbo].[QuestionInfor]  WITH CHECK ADD  CONSTRAINT [FK_QuestionInfor_LevelInfor] FOREIGN KEY([LevelID])
REFERENCES [dbo].[LevelInfor] ([ID])
GO
ALTER TABLE [dbo].[QuestionInfor] CHECK CONSTRAINT [FK_QuestionInfor_LevelInfor]
GO
ALTER TABLE [dbo].[RegionInfor]  WITH CHECK ADD  CONSTRAINT [FK_RegionInfor_AreaInfor] FOREIGN KEY([AreaID])
REFERENCES [dbo].[AreaInfor] ([ID])
GO
ALTER TABLE [dbo].[RegionInfor] CHECK CONSTRAINT [FK_RegionInfor_AreaInfor]
GO
ALTER TABLE [dbo].[RoomInfor]  WITH CHECK ADD  CONSTRAINT [FK_RoomInfor_CourseInfor] FOREIGN KEY([CourseID])
REFERENCES [dbo].[CourseInfor] ([ID])
GO
ALTER TABLE [dbo].[RoomInfor] CHECK CONSTRAINT [FK_RoomInfor_CourseInfor]
GO
ALTER TABLE [dbo].[RoomInfor]  WITH CHECK ADD  CONSTRAINT [FK_RoomInfor_CourseInfor1] FOREIGN KEY([CourseID])
REFERENCES [dbo].[CourseInfor] ([ID])
GO
ALTER TABLE [dbo].[RoomInfor] CHECK CONSTRAINT [FK_RoomInfor_CourseInfor1]
GO
ALTER TABLE [dbo].[RoomInfor]  WITH CHECK ADD  CONSTRAINT [FK_RoomInfor_StoreInfor] FOREIGN KEY([VenueID])
REFERENCES [dbo].[StoreInfor] ([ID])
GO
ALTER TABLE [dbo].[RoomInfor] CHECK CONSTRAINT [FK_RoomInfor_StoreInfor]
GO
ALTER TABLE [dbo].[StoreInfor]  WITH CHECK ADD  CONSTRAINT [FK_StoreInfor_AccountInfor] FOREIGN KEY([AccountID])
REFERENCES [dbo].[AccountInfor] ([ID])
GO
ALTER TABLE [dbo].[StoreInfor] CHECK CONSTRAINT [FK_StoreInfor_AccountInfor]
GO
ALTER TABLE [dbo].[StoreInfor]  WITH CHECK ADD  CONSTRAINT [FK_StoreInfor_DistrictInfor] FOREIGN KEY([DistrictID])
REFERENCES [dbo].[DistrictInfor] ([ID])
GO
ALTER TABLE [dbo].[StoreInfor] CHECK CONSTRAINT [FK_StoreInfor_DistrictInfor]
GO
ALTER TABLE [dbo].[StoreInfor]  WITH CHECK ADD  CONSTRAINT [FK_StoreInfor_PlatformInfor] FOREIGN KEY([PlatformID])
REFERENCES [dbo].[PlatformInfor] ([ID])
GO
ALTER TABLE [dbo].[StoreInfor] CHECK CONSTRAINT [FK_StoreInfor_PlatformInfor]
GO
ALTER TABLE [dbo].[TestQuestionRecord]  WITH CHECK ADD  CONSTRAINT [FK_TestQuestionRecord_QuestionInfor] FOREIGN KEY([QuestionID])
REFERENCES [dbo].[QuestionInfor] ([ID])
GO
ALTER TABLE [dbo].[TestQuestionRecord] CHECK CONSTRAINT [FK_TestQuestionRecord_QuestionInfor]
GO
ALTER TABLE [dbo].[TestQuestionRecord]  WITH CHECK ADD  CONSTRAINT [FK_TestQuestionRecord_TestInfor] FOREIGN KEY([TestID])
REFERENCES [dbo].[TestInfor] ([ID])
GO
ALTER TABLE [dbo].[TestQuestionRecord] CHECK CONSTRAINT [FK_TestQuestionRecord_TestInfor]
GO
ALTER TABLE [dbo].[TrainerRoomRecord]  WITH CHECK ADD  CONSTRAINT [FK_RoomTrainerRecord_RoomInfor] FOREIGN KEY([RoomID])
REFERENCES [dbo].[RoomInfor] ([ID])
GO
ALTER TABLE [dbo].[TrainerRoomRecord] CHECK CONSTRAINT [FK_RoomTrainerRecord_RoomInfor]
GO
ALTER TABLE [dbo].[TrainerRoomRecord]  WITH CHECK ADD  CONSTRAINT [FK_RoomTrainerRecord_UserInfor] FOREIGN KEY([TrainerID])
REFERENCES [dbo].[UserInfor] ([ID])
GO
ALTER TABLE [dbo].[TrainerRoomRecord] CHECK CONSTRAINT [FK_RoomTrainerRecord_UserInfor]
GO
ALTER TABLE [dbo].[UserInfor]  WITH CHECK ADD  CONSTRAINT [FK_UserInfor_EmployeeInfor] FOREIGN KEY([EmployeeID])
REFERENCES [dbo].[EmployeeInfor] ([ID])
GO
ALTER TABLE [dbo].[UserInfor] CHECK CONSTRAINT [FK_UserInfor_EmployeeInfor]
GO
ALTER TABLE [dbo].[UserInfor]  WITH CHECK ADD  CONSTRAINT [FK_UserInfor_PermissionInfor] FOREIGN KEY([EmployeeID])
REFERENCES [dbo].[PermissionInfor] ([ID])
GO
ALTER TABLE [dbo].[UserInfor] CHECK CONSTRAINT [FK_UserInfor_PermissionInfor]
GO
ALTER TABLE [dbo].[UserInfor]  WITH CHECK ADD  CONSTRAINT [FK_UserInfor_PositionInfor] FOREIGN KEY([PositionID])
REFERENCES [dbo].[PositionInfor] ([ID])
GO
ALTER TABLE [dbo].[UserInfor] CHECK CONSTRAINT [FK_UserInfor_PositionInfor]
GO
