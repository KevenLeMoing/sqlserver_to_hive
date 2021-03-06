USE [PR_CCS_NO_CLAIMS]
GO
/****** Object:  Table [dbo].[ActionHistory]    Script Date: 2019-03-25 12:40:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ActionHistory](
	[ActionHistoryID] [bigint] IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
	[ActionID] [int] NOT NULL,
	[ActionDetails] [nvarchar](400) NULL,
	[UserID] [bigint] NULL,
	[DateCreated] [datetime] NOT NULL,
	[UserTypeID] [int] NULL,
 CONSTRAINT [PK_ActionHistory] PRIMARY KEY CLUSTERED 
(
	[ActionHistoryID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 94) ON [ACTIONHISTORY]
) ON [ACTIONHISTORY]

GO
/****** Object:  Table [dbo].[ActionHistoryOld]    Script Date: 2019-03-25 12:40:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ActionHistoryOld](
	[ActionHistoryID] [bigint] IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
	[ActionID] [int] NOT NULL,
	[ActionDetails] [nvarchar](400) NULL,
	[UserID] [bigint] NULL,
	[DateCreated] [datetime] NOT NULL,
	[UserTypeID] [int] NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Actions]    Script Date: 2019-03-25 12:40:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Actions](
	[ActionID] [int] NOT NULL,
	[ActionName] [nvarchar](60) NULL,
 CONSTRAINT [PK_Actions] PRIMARY KEY CLUSTERED 
(
	[ActionID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 94) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Ansvarsfordeling]    Script Date: 2019-03-25 12:40:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Ansvarsfordeling](
	[AnsvarsfordelingID] [int] NOT NULL,
	[Description] [nvarchar](50) NOT NULL,
	[IsCCSPL] [bit] NULL,
 CONSTRAINT [PK_Ansvarsfordeling] PRIMARY KEY CLUSTERED 
(
	[AnsvarsfordelingID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 94) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ApprovedStates]    Script Date: 2019-03-25 12:40:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ApprovedStates](
	[ApprovedStateId] [int] NOT NULL,
	[ApprovedState] [nvarchar](50) NOT NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[AppVersion]    Script Date: 2019-03-25 12:40:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AppVersion](
	[AppVersionID] [bigint] IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
	[Major] [smallint] NOT NULL,
	[Minor] [smallint] NOT NULL,
	[Build] [smallint] NOT NULL,
	[Revision] [smallint] NOT NULL,
	[DeploymentDate] [datetime] NULL,
	[BuildScope] [nvarchar](200) NULL,
	[IsFinalDrop] [bit] NOT NULL,
 CONSTRAINT [PK_AppVersionID] PRIMARY KEY CLUSTERED 
(
	[AppVersionID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 94) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[BatchExecutionStatus]    Script Date: 2019-03-25 12:40:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BatchExecutionStatus](
	[BatchID] [bigint] IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
	[BatchStartDate] [datetime] NULL,
	[BatchEndDate] [datetime] NULL,
	[PL_ExportStatus] [int] NULL,
	[PL_ImportStatus] [int] NULL,
	[CreatedDate] [datetime] NULL,
	[CL_ExportStatus] [int] NULL,
	[CL_ImportStatus] [int] NULL,
 CONSTRAINT [pk_BatchID] PRIMARY KEY CLUSTERED 
(
	[BatchID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 94) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[BatchStatuses]    Script Date: 2019-03-25 12:40:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BatchStatuses](
	[StatusID] [int] NOT NULL,
	[Description] [nvarchar](50) NOT NULL,
 CONSTRAINT [pk_StatusID] PRIMARY KEY CLUSTERED 
(
	[StatusID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 94) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[BatchSummary]    Script Date: 2019-03-25 12:40:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BatchSummary](
	[FileID] [bigint] IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
	[BatchID] [bigint] NULL,
	[FileTypeID] [int] NULL,
	[FileName] [nvarchar](300) NULL,
	[TransactionStartDate] [datetime] NULL,
	[TransactionEndDate] [datetime] NULL,
	[RecordsEligible] [bigint] NULL,
	[RecordsProcessed] [bigint] NULL,
	[Status] [int] NULL,
	[CreatedDate] [datetime] NULL,
 CONSTRAINT [pk_FileID] PRIMARY KEY CLUSTERED 
(
	[FileID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 94) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Beløpetgjelder]    Script Date: 2019-03-25 12:40:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Beløpetgjelder](
	[BeløpetgjelderID] [int] IDENTITY(0,1) NOT FOR REPLICATION NOT NULL,
	[BeløpetgjelderCode] [nvarchar](50) NOT NULL,
	[IsPaid] [bit] NULL,
	[Sort_Order] [int] NULL,
 CONSTRAINT [PK_Beløpetgjelder] PRIMARY KEY CLUSTERED 
(
	[BeløpetgjelderID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 94) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[BonusReductionHistory]    Script Date: 2019-03-25 12:40:13 ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BonusReductionHistory](
	[BonusReductionHistoryID] [bigint] IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
	[ClaimCaseID] [bigint] NOT NULL,
	[IsMotorBonus] [bit] NOT NULL,
	[BonusReductionDate] [datetime] NOT NULL,
 CONSTRAINT [PK_BonusReductionHistory] PRIMARY KEY CLUSTERED 
(
	[BonusReductionHistoryID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 94) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Carrier1ClaimSeries]    Script Date: 2019-03-25 12:40:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Carrier1ClaimSeries](
	[ClaimCaseID] [bigint] IDENTITY(355395,1) NOT FOR REPLICATION NOT NULL,
	[Empty] [bit] NULL,
 CONSTRAINT [PK_Carrier1ClaimSeries] PRIMARY KEY CLUSTERED 
(
	[ClaimCaseID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 94) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Carrier2ClaimSeries]    Script Date: 2019-03-25 12:40:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Carrier2ClaimSeries](
	[ClaimCaseID] [bigint] IDENTITY(608915,1) NOT FOR REPLICATION NOT NULL,
	[Empty] [bit] NULL,
 CONSTRAINT [PK_Carrier2ClaimSeries] PRIMARY KEY CLUSTERED 
(
	[ClaimCaseID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 94) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Carriers]    Script Date: 2019-03-25 12:40:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Carriers](
	[CarrierID] [int] NOT NULL,
	[CarrierName] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Carriers] PRIMARY KEY CLUSTERED 
(
	[CarrierID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 94) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[CaseEstimates]    Script Date: 2019-03-25 12:40:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CaseEstimates](
	[CaseEstimateID] [bigint] IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
	[ClaimCaseID] [bigint] NOT NULL,
	[ProductID] [int] NOT NULL,
	[CoverID] [int] NOT NULL,
	[ClaimTypeID] [int] NOT NULL,
	[TransactionID] [int] NOT NULL,
	[Amount] [money] NULL,
	[Description] [nvarchar](250) NULL,
	[DateCreated] [datetime] NULL,
	[UserID] [int] NULL,
	[IsDisabled] [bit] NULL,
	[IsContra] [bit] NULL,
	[IncidentElementID] [int] NULL,
	[IncidentCauseID] [int] NULL,
	[IncidentTypeID] [int] NULL,
	[BeløpetgjelderID] [int] NULL,
	[IncidentType2Id] [int] NULL,
	[RTV] [bit] NOT NULL,
	[RTVContraEstimateID] [bigint] NULL,
	[Swift] [nvarchar](50) NULL,
	[IsSwift] [bit] NOT NULL,
 CONSTRAINT [PK_CaseEstimates] PRIMARY KEY CLUSTERED 
(
	[CaseEstimateID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 94) ON [CASEESTIMATES]
) ON [CASEESTIMATES]

GO
/****** Object:  Table [dbo].[CaseEstimatesOld]    Script Date: 2019-03-25 12:40:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CaseEstimatesOld](
	[CaseEstimateID] [bigint] IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
	[ClaimCaseID] [bigint] NOT NULL,
	[ProductID] [int] NOT NULL,
	[CoverID] [int] NOT NULL,
	[ClaimTypeID] [int] NOT NULL,
	[TransactionID] [int] NOT NULL,
	[Amount] [money] NULL,
	[Description] [nvarchar](250) NULL,
	[DateCreated] [datetime] NULL,
	[UserID] [int] NULL,
	[IsDisabled] [bit] NULL,
	[IsContra] [bit] NULL,
	[IncidentElementID] [int] NULL,
	[IncidentCauseID] [int] NULL,
	[IncidentTypeID] [int] NULL,
	[BeløpetgjelderID] [int] NULL,
	[IncidentType2Id] [int] NULL,
	[RTV] [bit] NOT NULL,
	[RTVContraEstimateID] [bigint] NULL,
	[Swift] [nvarchar](50) NULL,
	[IsSwift] [bit] NOT NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Catastrophe]    Script Date: 2019-03-25 12:40:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Catastrophe](
	[CatastropheId] [bigint] IDENTITY(0,1) NOT FOR REPLICATION NOT NULL,
	[CatastropheCode] [nvarchar](5) NOT NULL,
	[CodeDescription] [nvarchar](25) NOT NULL,
	[Active] [bit] NOT NULL,
 CONSTRAINT [PK_CatastropheId] PRIMARY KEY CLUSTERED 
(
	[CatastropheId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 94) ON [PRIMARY],
 CONSTRAINT [UN_Catastrophe_CatastropheCode] UNIQUE NONCLUSTERED 
(
	[CatastropheCode] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90) ON [PRIMARY],
 CONSTRAINT [UN_Catastrophe_CodeDescription] UNIQUE NONCLUSTERED 
(
	[CodeDescription] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[CCSPartnerProductMap]    Script Date: 2019-03-25 12:40:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CCSPartnerProductMap](
	[CCSPartnerProductMapID] [int] IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
	[CCSPartnerID] [int] NOT NULL,
	[ExternalProductMapID] [int] NOT NULL,
 CONSTRAINT [pk_CCSPartnerProduct] PRIMARY KEY CLUSTERED 
(
	[CCSPartnerProductMapID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 94) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ClaimCaseCloseReason]    Script Date: 2019-03-25 12:40:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ClaimCaseCloseReason](
	[ReasonID] [int] NOT NULL,
	[Description] [nvarchar](75) NOT NULL,
 CONSTRAINT [PK_ClaimCaseCloseReason] PRIMARY KEY CLUSTERED 
(
	[ReasonID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 94) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ClaimCaseCounter]    Script Date: 2019-03-25 12:40:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ClaimCaseCounter](
	[ClaimCaseID] [bigint] IDENTITY(600000,1) NOT FOR REPLICATION NOT NULL,
	[Empty] [bit] NULL,
 CONSTRAINT [PK_ClaimCaseCounter] PRIMARY KEY CLUSTERED 
(
	[ClaimCaseID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 94) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ClaimCaseReopenReason]    Script Date: 2019-03-25 12:40:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ClaimCaseReopenReason](
	[ReasonID] [int] NOT NULL,
	[Description] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_ClaimCaseReopenReason] PRIMARY KEY CLUSTERED 
(
	[ReasonID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 94) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ClaimCases]    Script Date: 2019-03-25 12:40:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ClaimCases](
	[ClaimCaseID] [bigint] NOT NULL,
	[ClaimDate] [datetime] NULL,
	[ReportedDate] [datetime] NULL,
	[ClosedDate] [datetime] NULL,
	[Product] [nvarchar](50) NULL,
	[UserID] [bigint] NOT NULL,
	[Status] [int] NULL,
	[ClaimSummary] [nvarchar](2000) NULL,
	[MotorBonus] [bit] NULL,
	[CustomerBonus] [bit] NULL,
	[MotorLoss] [bit] NULL,
	[CounterPartCompany] [nvarchar](100) NULL,
	[CarDamageZone1] [bit] NULL,
	[CarDamageZone2] [bit] NULL,
	[CarDamageZone3] [bit] NULL,
	[CarDamageZone4] [bit] NULL,
	[CarDamageZone5] [bit] NULL,
	[CarDamageZone6] [bit] NULL,
	[ReOpenedDate] [datetime] NULL,
	[InsurancePolicyID] [bigint] NULL,
	[PartnerID] [int] NULL,
	[IsClosed] [bit] NULL,
	[CounterPartVehicle] [nvarchar](100) NULL,
	[OldClaimID] [bigint] NULL,
	[ContractID] [bigint] NULL,
	[CarrierID] [int] NULL,
	[PolicyVersionId] [int] NULL,
	[DeptId] [smallint] NOT NULL,
	[PersonalInjury] [bit] NULL,
	[Avkortning] [bit] NULL,
	[Avslag] [bit] NULL,
	[AvkortningPercentage] [decimal](4, 1) NULL,
	[CatastropheId] [bigint] NOT NULL,
	[IncidentCauseID] [int] NULL,
	[IncidentTypeID] [int] NULL,
	[SourceSystemId] [int] NULL,
	[AccountNumber] [varbinary](200) NULL,
	[ReserveStatus] [bit] NOT NULL,
	[GroupID] [smallint] NULL,
	[OwnerID] [bigint] NULL,
	[EventCodeID] [bigint] NOT NULL,
	[Utlevering] [nvarchar](100) NULL,
	[Statusisaken] [nvarchar](100) NULL,
	[AnsvarsfordelingId] [int] NULL,
	[Besiktigelse] [bit] NULL,
	[Avkortningsbeløp] [nvarchar](50) NULL,
	[IncidentType2Id] [int] NULL,
	[LegginnICD10kode] [nvarchar](100) NULL,
	[Created_Date] [datetime] NULL,
	[CCSInsurancePolicyHistoryID] [bigint] NOT NULL,
	[Telephone] [nvarchar](500) NULL,
	[Email] [nvarchar](100) NULL,
	[PF_Egenandelsfordel] [bit] NULL,
 CONSTRAINT [PK_ClaimCases] PRIMARY KEY CLUSTERED 
(
	[ClaimCaseID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 94) ON [CLAIMCASE]
) ON [CLAIMCASE]

GO
/****** Object:  Table [dbo].[ClaimNotes]    Script Date: 2019-03-25 12:40:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ClaimNotes](
	[ClaimsNoteID] [bigint] IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
	[ClaimCaseID] [bigint] NOT NULL,
	[Note] [nvarchar](2000) NOT NULL,
	[NoteDate] [datetime] NOT NULL,
	[UserID] [bigint] NULL,
	[Exported] [bit] NOT NULL,
 CONSTRAINT [PK_ClaimNotes] PRIMARY KEY CLUSTERED 
(
	[ClaimsNoteID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 94) ON [NOTES]
) ON [NOTES]

GO
/****** Object:  Table [dbo].[ClaimTypeCauseMap]    Script Date: 2019-03-25 12:40:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ClaimTypeCauseMap](
	[ClaimTypeID] [int] NOT NULL,
	[IncidentCauseID] [int] NOT NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ClaimTypes]    Script Date: 2019-03-25 12:40:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ClaimTypes](
	[ClaimTypeID] [int] NOT NULL,
	[ClaimType] [nvarchar](50) NULL,
 CONSTRAINT [PK_ClaimTypes] PRIMARY KEY CLUSTERED 
(
	[ClaimTypeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 94) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ClosedClaimCases]    Script Date: 2019-03-25 12:40:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ClosedClaimCases](
	[ClaimCaseClosedID] [int] IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
	[ClaimCaseID] [bigint] NOT NULL,
	[ReasonID] [int] NOT NULL,
	[ClosedDate] [datetime] NOT NULL,
 CONSTRAINT [PK_ClosedClaimCases] PRIMARY KEY CLUSTERED 
(
	[ClaimCaseClosedID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 94) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Covers]    Script Date: 2019-03-25 12:40:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Covers](
	[CoverID] [int] NOT NULL,
	[CoverName] [nvarchar](100) NULL,
	[IsCCSPL] [bit] NULL,
 CONSTRAINT [PK_Covers] PRIMARY KEY CLUSTERED 
(
	[CoverID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 94) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Department]    Script Date: 2019-03-25 12:40:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Department](
	[DeptId] [smallint] IDENTITY(0,1) NOT FOR REPLICATION NOT NULL,
	[DeptName] [nvarchar](50) NULL,
	[IsCCSPL] [bit] NULL,
 CONSTRAINT [PK_DEPARTMENT_1] PRIMARY KEY CLUSTERED 
(
	[DeptId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 94) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[DepartmentGroups]    Script Date: 2019-03-25 12:40:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DepartmentGroups](
	[GroupId] [smallint] IDENTITY(0,1) NOT FOR REPLICATION NOT NULL,
	[GroupName] [nvarchar](20) NOT NULL,
	[DeptId] [smallint] NOT NULL,
	[IsActive] [bit] NOT NULL,
 CONSTRAINT [PK_DepartmentGroups] PRIMARY KEY CLUSTERED 
(
	[GroupId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 94) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[EventCodes]    Script Date: 2019-03-25 12:40:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EventCodes](
	[EventCodeID] [bigint] IDENTITY(0,1) NOT FOR REPLICATION NOT NULL,
	[EventCode] [nvarchar](6) NOT NULL,
	[Description] [nvarchar](60) NULL,
	[GeneratedDate] [datetime] NULL,
 CONSTRAINT [PK_EventCodes] PRIMARY KEY CLUSTERED 
(
	[EventCodeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 94) ON [PRIMARY],
UNIQUE NONCLUSTERED 
(
	[EventCode] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ExternalProductCoverLookup]    Script Date: 2019-03-25 12:40:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ExternalProductCoverLookup](
	[ProductId] [int] NOT NULL,
	[ExtraCoversIdentifier] [int] NOT NULL,
	[ExtraCoversLabel] [nvarchar](150) NULL,
	[ProductNameOverridden] [nvarchar](150) NULL,
	[SourceSystemId] [int] NOT NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ExternalProductMap]    Script Date: 2019-03-25 12:40:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ExternalProductMap](
	[ExternalProductMapID] [int] NOT NULL,
	[ProductName] [nvarchar](50) NOT NULL,
	[ProductID] [int] NOT NULL,
	[ProductCategoryID] [int] NOT NULL,
	[SourceSystemId] [int] NULL,
	[IsProperty] [bit] NULL,
	[IsMotor] [bit] NULL,
	[IsAutoFleet] [bit] NULL,
	[IsPropertyFleet] [bit] NULL,
	[IsPersonalInjuryFleet] [bit] NULL,
	[IsOtherFleet] [bit] NULL,
	[IsActive] [bit] NOT NULL,
 CONSTRAINT [PK_ExternalProductMap] PRIMARY KEY CLUSTERED 
(
	[ExternalProductMapID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 94) ON [PRIMARY],
 CONSTRAINT [UN_ExternalProductMap_ProductInfo] UNIQUE NONCLUSTERED 
(
	[ProductName] ASC,
	[SourceSystemId] ASC,
	[ProductID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ExternalProductMapping]    Script Date: 2019-03-25 12:40:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ExternalProductMapping](
	[ExternalProductId] [int] NOT NULL,
	[ProductID] [int] NOT NULL,
	[SourceSystemId] [int] NOT NULL,
	[ExternalProductMapID] [int] NULL,
	[ExternalProductMappingID] [bigint] IDENTITY(1,1) NOT NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[FileType]    Script Date: 2019-03-25 12:40:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FileType](
	[FileTypeID] [int] NOT NULL,
	[FileType] [nvarchar](50) NULL,
 CONSTRAINT [pk_FileTypeID] PRIMARY KEY CLUSTERED 
(
	[FileTypeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 94) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[FOSSIncidentCauseTypeMap]    Script Date: 2019-03-25 12:40:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FOSSIncidentCauseTypeMap](
	[FOSSIncidentTypeID] [int] NOT NULL,
	[ProductCategoryCauseMapID] [int] NOT NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[FOSSIncidentType]    Script Date: 2019-03-25 12:40:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FOSSIncidentType](
	[FOSSIncidentTypeID] [int] NOT NULL,
	[IncidentTypeCode] [nvarchar](5) NOT NULL,
	[FOSSIncidentType] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_FOSSIncidentType] PRIMARY KEY CLUSTERED 
(
	[FOSSIncidentTypeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 94) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[HuginQuestionAndAnswerXML]    Script Date: 2019-03-25 12:40:13 ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HuginQuestionAndAnswerXML](
	[ClaimCaseID] [bigint] NOT NULL,
	[HuginXML] [xml] NULL,
	[FraudIndicator] [varchar](10) NULL,
	[BistandStatus] [varchar](10) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[In4moCheckedClaims]    Script Date: 2019-03-25 12:40:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[In4moCheckedClaims](
	[ClaimCaseID] [varchar](50) NOT NULL,
	[In4moEntryDate] [date] NOT NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[IncidentCause]    Script Date: 2019-03-25 12:40:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[IncidentCause](
	[IncidentCauseID] [int] NOT NULL,
	[IncidentCause] [nvarchar](100) NOT NULL,
 CONSTRAINT [PK_IncidentCause] PRIMARY KEY CLUSTERED 
(
	[IncidentCauseID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 94) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[IncidentCauseElementMap]    Script Date: 2019-03-25 12:40:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[IncidentCauseElementMap](
	[ProductCategoryCauseMapID] [int] NOT NULL,
	[IncidentElementID] [int] NOT NULL,
	[IsActive] [bit] NOT NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[IncidentCauseTypeMap]    Script Date: 2019-03-25 12:40:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[IncidentCauseTypeMap](
	[ProductCategoryCauseMapID] [int] NOT NULL,
	[IncidentTypeID] [int] NOT NULL,
	[IncidentTypeMapID] [int] NOT NULL,
	[IsActive] [bit] NOT NULL,
 CONSTRAINT [PK_IncidentCauseTypeMap] PRIMARY KEY CLUSTERED 
(
	[IncidentTypeMapID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 94) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[IncidentElement]    Script Date: 2019-03-25 12:40:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[IncidentElement](
	[IncidentElementID] [int] NOT NULL,
	[IncidentElement] [nvarchar](225) NOT NULL,
	[IsPersonalInjury] [bit] NOT NULL,
	[IsActive] [bit] NOT NULL,
 CONSTRAINT [PK_IncidentElement] PRIMARY KEY CLUSTERED 
(
	[IncidentElementID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 94) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[IncidentType]    Script Date: 2019-03-25 12:40:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[IncidentType](
	[IncidentTypeID] [int] NOT NULL,
	[IncidentType] [nvarchar](75) NOT NULL,
 CONSTRAINT [PK_IncidentType] PRIMARY KEY CLUSTERED 
(
	[IncidentTypeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 94) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[IncidentType_Type2Map]    Script Date: 2019-03-25 12:40:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[IncidentType_Type2Map](
	[IncidentTypeMapID] [int] NOT NULL,
	[ProductCategoryCauseMapId] [int] NOT NULL,
	[IncidentType2ID] [int] NOT NULL,
	[IsActive] [bit] NOT NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[IncidentType2]    Script Date: 2019-03-25 12:40:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[IncidentType2](
	[IncidentType2ID] [int] NOT NULL,
	[IncidentType2Description] [nvarchar](75) NOT NULL,
 CONSTRAINT [pk_IncidentType2ID] PRIMARY KEY CLUSTERED 
(
	[IncidentType2ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 94) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Innberettes]    Script Date: 2019-03-25 12:40:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Innberettes](
	[InnberettesID] [int] NOT NULL,
	[InnberettesName] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Innberettes] PRIMARY KEY CLUSTERED 
(
	[InnberettesID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 94) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[InvolvedParty]    Script Date: 2019-03-25 12:40:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[InvolvedParty](
	[InvolvedPartyId] [int] NOT NULL,
	[ClaimCaseId] [bigint] NOT NULL,
	[RoleId] [int] NULL,
	[Name] [nvarchar](255) NULL,
	[Address] [nvarchar](255) NULL,
	[Zipcode] [nvarchar](500) NULL,
	[City] [nvarchar](255) NULL,
	[TelePhone] [nvarchar](500) NULL,
	[Email] [nvarchar](100) NULL,
	[SourceSystemId] [int] NOT NULL,
	[PersonNumber] [nvarchar](20) NULL,
 CONSTRAINT [PK_INVOLVEDPARTY _1] PRIMARY KEY CLUSTERED 
(
	[InvolvedPartyId] ASC,
	[ClaimCaseId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 94) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[MarketCode]    Script Date: 2019-03-25 12:40:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MarketCode](
	[MarketCodeID] [int] NOT NULL,
	[MarketCode] [nvarchar](10) NOT NULL,
	[Market] [nvarchar](75) NOT NULL,
 CONSTRAINT [PK_MarketCode] PRIMARY KEY CLUSTERED 
(
	[MarketCodeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 94) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[NavisionPortfolio]    Script Date: 2019-03-25 12:40:13 ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NavisionPortfolio](
	[NavisionPortfolioID] [bigint] IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
	[NavisionPortfolioCode] [nvarchar](10) NOT NULL,
	[NavisionPortfolioName] [nvarchar](50) NULL,
	[CPSCLPortfolioID] [int] NOT NULL,
 CONSTRAINT [PK_NavisionPortfolio] PRIMARY KEY CLUSTERED 
(
	[NavisionPortfolioID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 94) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[NavisionProductCode]    Script Date: 2019-03-25 12:40:13 ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NavisionProductCode](
	[NavisionProductCodeID] [bigint] IDENTITY(0,1) NOT FOR REPLICATION NOT NULL,
	[NavisionProductCode] [nvarchar](10) NOT NULL,
	[NavisionProductCodeName] [nvarchar](50) NULL,
	[IsActive] [bit] NOT NULL,
 CONSTRAINT [PK_NavisionProductCode] PRIMARY KEY CLUSTERED 
(
	[NavisionProductCodeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 94) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Partners]    Script Date: 2019-03-25 12:40:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Partners](
	[PartnerID] [int] NOT NULL,
	[PartnerName] [nvarchar](100) NOT NULL,
	[SourceSystemId] [int] NULL,
	[CCSPartnerID] [int] NOT NULL,
 CONSTRAINT [PK_CCSPID] PRIMARY KEY CLUSTERED 
(
	[CCSPartnerID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 94) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[PasswordHistory]    Script Date: 2019-03-25 12:40:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PasswordHistory](
	[PasswordHistoryId] [bigint] IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
	[UserID] [bigint] NOT NULL,
	[Password] [binary](24) NOT NULL,
	[Salt] [binary](4) NOT NULL,
	[PasswordDate] [datetime] NOT NULL,
 CONSTRAINT [PK_PasswordHistory] PRIMARY KEY CLUSTERED 
(
	[PasswordHistoryId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 94) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[PaymentApproveReassigmentHistory]    Script Date: 2019-03-25 12:40:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PaymentApproveReassigmentHistory](
	[PaymentApproveReassigmentHistoryID] [bigint] IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
	[CaseEstimateID] [bigint] NOT NULL,
	[ApproveUserID] [int] NOT NULL,
	[NewApproveUserID] [int] NOT NULL,
	[ModifiedUserID] [int] NOT NULL,
	[OperationUsed] [nvarchar](50) NOT NULL,
	[ModifiedDate] [datetime] NOT NULL,
 CONSTRAINT [PK_PaymentApproveReassigmentHistory] PRIMARY KEY CLUSTERED 
(
	[PaymentApproveReassigmentHistoryID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[PaymentImportLog]    Script Date: 2019-03-25 12:40:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PaymentImportLog](
	[PartnerId] [int] NULL,
	[VendorId] [nvarchar](50) NULL,
	[CompanyName] [nvarchar](255) NULL,
	[BankAccount] [nvarchar](50) NULL,
	[VATNumber] [nvarchar](50) NULL,
	[PostalAddress] [nvarchar](255) NULL,
	[Zipcode] [nvarchar](50) NULL,
	[Area] [nvarchar](255) NULL,
	[Email] [nvarchar](50) NULL,
	[Telephone] [nvarchar](50) NULL,
	[InsurancePolicyID] [bigint] NULL,
	[Skadenummer] [bigint] NULL,
	[Invoicenummer] [nvarchar](50) NULL,
	[Collectiondate] [datetime] NULL,
	[Amount] [money] NULL,
	[Description] [nvarchar](250) NULL,
	[KID] [nvarchar](50) NULL,
	[InvoiceDate] [datetime] NULL,
	[DueDate] [datetime] NULL,
	[PaymentRef] [bigint] NULL,
	[Paid] [bit] NULL,
	[FullyPaid] [bit] NULL,
	[PaymentAmount] [money] NULL,
	[PaymentDate] [datetime] NULL,
	[ImportedDate] [datetime] NULL,
	[PaymentImportLogId] [bigint] IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
 CONSTRAINT [pk_PaymentImportLogId] PRIMARY KEY CLUSTERED 
(
	[PaymentImportLogId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 94) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[PaymentRecipients]    Script Date: 2019-03-25 12:40:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PaymentRecipients](
	[PaymentRecipientID] [bigint] IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
	[Name] [nvarchar](255) NULL,
	[Address] [nvarchar](255) NULL,
	[City] [nvarchar](255) NULL,
	[ZipCode] [nvarchar](50) NULL,
	[Email] [nvarchar](50) NULL,
	[Phone] [nvarchar](50) NULL,
	[OrgOrSocialSecurity] [nvarchar](50) NULL,
	[Closed_AccountNumber] [nvarchar](50) NULL,
	[RTV] [bit] NOT NULL,
	[AccountNumber] [varbinary](200) NOT NULL,
 CONSTRAINT [PK_Recipients] PRIMARY KEY CLUSTERED 
(
	[PaymentRecipientID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 94) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[PaymentReporterDetails]    Script Date: 2019-03-25 12:40:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PaymentReporterDetails](
	[ReporterDetailID] [int] IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
	[CaseEstimateId] [bigint] NOT NULL,
	[Name] [nvarchar](255) NOT NULL,
	[Address] [nvarchar](255) NULL,
	[Zipcode] [nvarchar](255) NULL,
	[City] [nvarchar](255) NULL,
	[Email] [nvarchar](50) NULL,
	[Telephone] [nvarchar](50) NULL,
	[OrgNumber] [nvarchar](11) NOT NULL,
	[AccountNumber] [varbinary](50) NULL,
	[Innberettes] [int] NOT NULL,
 CONSTRAINT [PK_ReporterDetailID] PRIMARY KEY CLUSTERED 
(
	[ReporterDetailID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 94) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Payments]    Script Date: 2019-03-25 12:40:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Payments](
	[PaymentRef] [bigint] IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
	[CaseEstimateId] [bigint] NOT NULL,
	[RegisteredByUserId] [bigint] NOT NULL,
	[ApproveeUserId] [bigint] NOT NULL,
	[CustomerID] [nvarchar](50) NULL,
	[PartnerId] [int] NULL,
	[Name] [nvarchar](255) NULL,
	[Address] [nvarchar](255) NULL,
	[City] [nvarchar](255) NULL,
	[ZipCode] [nvarchar](50) NULL,
	[Email] [nvarchar](50) NULL,
	[Phone] [nvarchar](50) NULL,
	[OrgOrSocialSecurity] [nvarchar](50) NULL,
	[Closed_AccountNumber] [nvarchar](50) NULL,
	[InvoiceNumber] [nvarchar](50) NULL,
	[DueDate] [datetime] NULL,
	[InvoiceDate] [datetime] NULL,
	[KID] [nvarchar](50) NULL,
	[ApprovedState] [int] NULL,
	[Exported] [bit] NOT NULL,
	[Imported] [bit] NULL,
	[EX_Paid] [bit] NULL,
	[EX_FullyPaid] [bit] NULL,
	[EX_PaymentAmount] [money] NULL,
	[EX_PaymentDate] [datetime] NULL,
	[ExcludeFromExport] [bit] NULL,
	[ModifiedDate] [datetime] NULL,
	[AutoApproved] [bit] NULL,
	[DeresReference] [nvarchar](50) NULL,
	[RecipientID] [nvarchar](50) NULL,
	[ExportedDate] [datetime] NULL,
	[ImportedDate] [datetime] NULL,
	[AccountNumber] [varbinary](200) NULL,
	[RTV] [bit] NOT NULL,
	[NavisionPortfolioID] [bigint] NULL,
	[NavisionProductCodeID] [bigint] NULL,
	[ApprovedOrRejectedDate] [datetime] NULL,
	[RejectedOrHoldReason] [nvarchar](255) NULL,
 CONSTRAINT [PK_Payments] PRIMARY KEY CLUSTERED 
(
	[CaseEstimateId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 94) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[PolicySource]    Script Date: 2019-03-25 12:40:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PolicySource](
	[SourceSystemId] [int] NOT NULL,
	[SourceSystem] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_PolicySource] PRIMARY KEY CLUSTERED 
(
	[SourceSystemId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 94) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[PolicySummary]    Script Date: 2019-03-25 12:40:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PolicySummary](
	[PolicyId] [bigint] NOT NULL,
	[PartnerId] [int] NOT NULL,
	[FirstName] [nvarchar](101) NULL,
	[LastName] [nvarchar](101) NULL,
	[SocialSecurity] [nvarchar](50) NULL,
	[ObjectName] [nvarchar](255) NULL,
	[ProductName] [nvarchar](100) NULL,
	[StartDate] [datetime] NULL,
	[EndDate] [datetime] NULL,
	[CarrierId] [int] NULL,
	[CustomerId] [bigint] NULL,
	[ContractId] [bigint] NULL,
	[ProductId] [int] NULL,
	[VersionId] [int] NULL,
	[ContractReference] [nvarchar](50) NULL,
	[SourceSystemId] [int] NULL,
	[AccountNumber] [varbinary](200) NULL,
	[FirmName] [nvarchar](255) NULL,
	[OrgNumber] [nvarchar](15) NULL,
	[PortfolioId] [int] NULL,
	[PartnerName] [nvarchar](100) NULL,
	[CCSInsurancePolicyHistoryID] [bigint] NOT NULL,
	[FleetObjectName] [nvarchar](255) NULL,
	[FleetCompanyName] [nvarchar](255) NULL,
	[FleetOrgNumber] [nvarchar](255) NULL,
	[FleetInsuredAddress] [nvarchar](255) NULL,
	[FleetZipCode] [nvarchar](255) NULL,
	[FleetCity] [nvarchar](255) NULL,
	[FleetGnr] [nvarchar](255) NULL,
	[FleetBnr] [nvarchar](255) NULL,
	[FleetBirthDate] [datetime] NULL,
	[FleetStartDate] [datetime] NULL,
	[FleetEndDate] [datetime] NULL,
	[FleetSocialSecurity] [nvarchar](255) NULL,
	[FleetFirstName] [nvarchar](255) NULL,
	[FleetLastName] [nvarchar](255) NULL,
	[FleetEmploymentPercentage] [nvarchar](255) NULL,
	[FleetSalary] [nvarchar](255) NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[PolicySummaryDistinct]    Script Date: 2019-03-25 12:40:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PolicySummaryDistinct](
	[PolicyId] [bigint] NOT NULL,
	[PartnerId] [int] NOT NULL,
	[FirstName] [nvarchar](50) NULL,
	[LastName] [nvarchar](50) NULL,
	[SocialSecurity] [nvarchar](50) NULL,
	[ObjectName] [nvarchar](50) NULL,
	[ProductName] [nvarchar](50) NULL,
	[StartDate] [datetime] NULL,
	[EndDate] [datetime] NULL,
	[CarrierId] [int] NULL,
	[CustomerId] [bigint] NULL,
	[ContractId] [bigint] NULL,
	[ProductId] [int] NULL,
	[VersionId] [int] NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[PolicySummaryDistinctWLS]    Script Date: 2019-03-25 12:40:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PolicySummaryDistinctWLS](
	[PolicyId] [bigint] NOT NULL,
	[PartnerId] [int] NOT NULL,
	[FirstName] [nvarchar](50) NULL,
	[LastName] [nvarchar](50) NULL,
	[SocialSecurity] [nvarchar](50) NULL,
	[ObjectName] [nvarchar](50) NULL,
	[ProductName] [nvarchar](50) NULL,
	[StartDate] [datetime] NULL,
	[EndDate] [datetime] NULL,
	[CarrierId] [int] NULL,
	[CustomerId] [bigint] NULL,
	[ContractId] [bigint] NULL,
	[ProductId] [int] NULL,
	[VersionId] [int] NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Portfolio]    Script Date: 2019-03-25 12:40:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Portfolio](
	[PortfolioID] [int] NOT NULL,
	[PortfolioName] [nvarchar](50) NOT NULL,
 CONSTRAINT [pk_PortfolioID] PRIMARY KEY CLUSTERED 
(
	[PortfolioID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 94) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Product_Cover_Claimtype_Element]    Script Date: 2019-03-25 12:40:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Product_Cover_Claimtype_Element](
	[ProductID] [int] NOT NULL,
	[CoverID] [int] NOT NULL,
	[ClaimTypeID] [int] NOT NULL,
	[IncidentElementId] [int] NULL,
	[NavisionProductCodeID] [bigint] NOT NULL,
	[IsActive] [bit] NOT NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Product_Cover_Mapping]    Script Date: 2019-03-25 12:40:13 ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Product_Cover_Mapping](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[MotorInsuranceTypeTag] [nvarchar](50) NULL,
	[Tags] [nvarchar](100) NULL,
	[Produkt] [nvarchar](50) NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ProductCategory]    Script Date: 2019-03-25 12:40:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProductCategory](
	[ProductCategoryID] [int] NOT NULL,
	[ProductCategoryName] [nvarchar](50) NOT NULL,
	[IsCCSPL] [bit] NULL,
 CONSTRAINT [PK_ProductCategory] PRIMARY KEY CLUSTERED 
(
	[ProductCategoryID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 94) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ProductCategoryCauseMap]    Script Date: 2019-03-25 12:40:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProductCategoryCauseMap](
	[ProductCategoryCauseMapID] [int] NOT NULL,
	[ProductCategoryID] [int] NOT NULL,
	[IncidentCauseID] [int] NOT NULL,
	[IsActive] [bit] NOT NULL,
 CONSTRAINT [PK_ProductCategoryCauseMap] PRIMARY KEY CLUSTERED 
(
	[ProductCategoryCauseMapID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 94) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ProductMarketMap]    Script Date: 2019-03-25 12:40:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProductMarketMap](
	[ExternalProductMapID] [int] NOT NULL,
	[MarketCodeID] [int] NOT NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Products]    Script Date: 2019-03-25 12:40:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Products](
	[ProductID] [int] NOT NULL,
	[ProductName] [nvarchar](100) NULL,
	[IsCCSPL] [bit] NULL,
 CONSTRAINT [PK_Products] PRIMARY KEY CLUSTERED 
(
	[ProductID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 94) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[RecoveryPaymentImportLog]    Script Date: 2019-03-25 12:40:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RecoveryPaymentImportLog](
	[RecoveryPaymentImportLogID] [bigint] IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
	[PaymentRef] [bigint] NULL,
	[CaseEstimateID] [bigint] NULL,
	[InvoiceNummer] [nvarchar](50) NULL,
	[PaymentAmount] [money] NULL,
	[PaymentDate] [datetime] NULL,
	[ClaimCaseId] [bigint] NULL,
	[Paid] [bit] NULL,
	[FullyPaid] [bit] NULL,
	[ImportedDate] [datetime] NOT NULL,
	[RecReminderStatus] [int] NULL,
	[IsRecoveryReceivedForCloseClaim] [bit] NOT NULL,
	[IsMoreRecoveryReceived] [bit] NOT NULL,
	[IsImported] [bit] NOT NULL,
 CONSTRAINT [PK_RecoveryPaymentImportLogID] PRIMARY KEY CLUSTERED 
(
	[RecoveryPaymentImportLogID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 94) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Relation]    Script Date: 2019-03-25 12:40:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Relation](
	[RelationId] [int] NOT NULL,
	[RelationName] [nvarchar](50) NULL,
	[SourceSystemId] [int] NULL,
	[RelationRankId] [int] NOT NULL,
 CONSTRAINT [PK_RELATION _1] PRIMARY KEY CLUSTERED 
(
	[RelationId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 94) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ReopenedClaimCases]    Script Date: 2019-03-25 12:40:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ReopenedClaimCases](
	[ClaimCaseReopenID] [int] IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
	[ClaimCaseID] [bigint] NOT NULL,
	[ReasonID] [int] NOT NULL,
	[ReopnedDate] [datetime] NOT NULL,
 CONSTRAINT [PK_ReopenedClaimCases] PRIMARY KEY CLUSTERED 
(
	[ClaimCaseReopenID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 94) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Reporter]    Script Date: 2019-03-25 12:40:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Reporter](
	[ReporterId] [bigint] IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
	[ClaimCaseId] [bigint] NOT NULL,
	[Name] [nvarchar](255) NULL,
	[RelationId] [int] NOT NULL,
	[Address] [nvarchar](255) NULL,
	[Telephone] [nvarchar](500) NULL,
	[PostalNumber] [nvarchar](500) NULL,
	[City] [nvarchar](255) NULL,
	[Email] [nvarchar](100) NULL,
	[SourceSystemId] [int] NOT NULL,
 CONSTRAINT [PK_Reporter] PRIMARY KEY CLUSTERED 
(
	[ReporterId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 94) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Role]    Script Date: 2019-03-25 12:40:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Role](
	[RoleId] [int] NOT NULL,
	[RoleName] [nvarchar](50) NOT NULL,
	[SourceSystemId] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Role] PRIMARY KEY CLUSTERED 
(
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 94) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Skadeland]    Script Date: 2019-03-25 12:40:13 ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Skadeland](
	[SkadelandID] [int] IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
	[Description] [nvarchar](50) NOT NULL,
	[Code] [char](2) NOT NULL,
 CONSTRAINT [PK_Skadeland] PRIMARY KEY CLUSTERED 
(
	[SkadelandID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 94) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Skadelidte]    Script Date: 2019-03-25 12:40:13 ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Skadelidte](
	[SkadelidteId] [int] NOT NULL,
	[ClaimCaseId] [bigint] NOT NULL,
	[FirstName] [nvarchar](103) NULL,
	[LastName] [nvarchar](103) NULL,
	[SocialSecurity] [nvarchar](50) NULL,
	[Address] [nvarchar](255) NULL,
	[Zipcode] [nvarchar](500) NULL,
	[City] [nvarchar](255) NULL,
	[TelePhone] [nvarchar](500) NULL,
	[Email] [nvarchar](100) NULL,
	[AccountNumber] [varbinary](200) NULL,
	[SourceSystemId] [int] NOT NULL,
 CONSTRAINT [PK_SKADELIDTE _1] PRIMARY KEY CLUSTERED 
(
	[SkadelidteId] ASC,
	[ClaimCaseId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 94) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Skadested]    Script Date: 2019-03-25 12:40:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Skadested](
	[SkadestedId] [int] IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
	[ClaimCaseId] [bigint] NOT NULL,
	[Gateadresse] [nvarchar](255) NULL,
	[Postnummer] [nvarchar](10) NULL,
	[SkadelandId] [int] NOT NULL,
 CONSTRAINT [pk_Skadestedid] PRIMARY KEY CLUSTERED 
(
	[SkadestedId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 94) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[TempToCheckLogshipppingStatus]    Script Date: 2019-03-25 12:40:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TempToCheckLogshipppingStatus](
	[Column1] [smallint] IDENTITY(1,1) NOT NULL,
	[JustGuid] [uniqueidentifier] NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Transactions]    Script Date: 2019-03-25 12:40:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Transactions](
	[TransactionID] [int] NOT NULL,
	[TransactionName] [nvarchar](50) NOT NULL,
	[ContraTransactionId] [int] NULL,
	[MainTransactionId] [int] NULL,
 CONSTRAINT [PK_TransactionTypes] PRIMARY KEY CLUSTERED 
(
	[TransactionID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 94) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[UserCategory]    Script Date: 2019-03-25 12:40:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UserCategory](
	[UserCategoryId] [int] IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
	[UserCategory] [nvarchar](50) NOT NULL,
	[UserTypeId] [int] NOT NULL,
 CONSTRAINT [PK_UserCategory] PRIMARY KEY CLUSTERED 
(
	[UserCategoryId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 94) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[UserDetails]    Script Date: 2019-03-25 12:40:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UserDetails](
	[ClaimCaseID] [bigint] NOT NULL,
	[UserID] [bigint] NOT NULL,
	[AccessDateTime] [datetime] NOT NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[UserLastLogin]    Script Date: 2019-03-25 12:40:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UserLastLogin](
	[UserLastLoginID] [bigint] IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
	[UserId] [bigint] NOT NULL,
	[LastLoginDate] [datetime] NULL,
 CONSTRAINT [PK_UserLastLogin] PRIMARY KEY CLUSTERED 
(
	[UserLastLoginID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[UserNotes]    Script Date: 2019-03-25 12:40:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UserNotes](
	[UserNoteID] [bigint] IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
	[UserID] [bigint] NOT NULL,
	[Note] [nvarchar](2000) NULL,
	[DisplayDate] [datetime] NOT NULL,
	[SignedOut] [bit] NULL,
	[ClaimCaseID] [bigint] NULL,
	[CaseEstimateId] [bigint] NULL,
	[AssignedToUserId] [bigint] NULL,
	[ReminderType] [int] NULL,
	[Exported] [bit] NOT NULL,
 CONSTRAINT [PK_UserNotes] PRIMARY KEY CLUSTERED 
(
	[UserNoteID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 94) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[UserPrivileges]    Script Date: 2019-03-25 12:40:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UserPrivileges](
	[UserId] [bigint] NOT NULL,
	[XML] [ntext] NULL,
 CONSTRAINT [PK_UserPrivileges] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 94) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Users]    Script Date: 2019-03-25 12:40:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Users](
	[UserID] [bigint] IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
	[FirstName] [varchar](50) NOT NULL,
	[LastName] [varchar](50) NOT NULL,
	[UserName] [varchar](50) NOT NULL,
	[Password] [binary](20) NOT NULL,
	[Salt] [binary](4) NOT NULL,
	[UserRoleID] [int] NULL,
	[IsActive] [bit] NOT NULL,
	[PasswordDate] [datetime] NOT NULL,
	[LoginFailureCount] [int] NOT NULL,
	[IsApproveRequired] [bit] NULL,
	[ApproveUserId] [bigint] NULL,
	[WindowsUserID] [nvarchar](50) NULL,
	[UserTypeId] [int] NULL,
 CONSTRAINT [PK_Users] PRIMARY KEY CLUSTERED 
(
	[UserID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 94) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[UserType]    Script Date: 2019-03-25 12:40:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UserType](
	[UserTypeId] [int] NOT NULL,
	[UserDescription] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_UserType] PRIMARY KEY CLUSTERED 
(
	[UserTypeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 94) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[WeatherCode]    Script Date: 2019-03-25 12:40:13 ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[WeatherCode](
	[WeatherCodeId] [bigint] IDENTITY(0,1) NOT FOR REPLICATION NOT NULL,
	[CodeDescription] [nvarchar](25) NOT NULL,
	[Active] [bit] NOT NULL,
 CONSTRAINT [PK_WeatherCode] PRIMARY KEY CLUSTERED 
(
	[WeatherCodeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]

GO


USE [PR_CCS_NO_CLAIMS]
GO
/****** Object:  Table [dbo].[ActionHistory]    Script Date: 2019-03-25 15:10:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ActionHistory](
	[ActionHistoryID] [bigint] IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
	[ActionID] [int] NOT NULL,
	[ActionDetails] [nvarchar](400) NULL,
	[UserID] [bigint] NULL,
	[DateCreated] [datetime] NOT NULL,
	[UserTypeID] [int] NULL,
 CONSTRAINT [PK_ActionHistory] PRIMARY KEY CLUSTERED 
(
	[ActionHistoryID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 94) ON [ACTIONHISTORY]
) ON [ACTIONHISTORY]

GO
/****** Object:  Table [dbo].[AppVersion]    Script Date: 2019-03-25 15:10:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AppVersion](
	[AppVersionID] [bigint] IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
	[Major] [smallint] NOT NULL,
	[Minor] [smallint] NOT NULL,
	[Build] [smallint] NOT NULL,
	[Revision] [smallint] NOT NULL,
	[DeploymentDate] [datetime] NULL,
	[BuildScope] [nvarchar](200) NULL,
	[IsFinalDrop] [bit] NOT NULL,
 CONSTRAINT [PK_AppVersionID] PRIMARY KEY CLUSTERED 
(
	[AppVersionID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 94) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[BatchExecutionStatus]    Script Date: 2019-03-25 15:10:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BatchExecutionStatus](
	[BatchID] [bigint] IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
	[BatchStartDate] [datetime] NULL,
	[BatchEndDate] [datetime] NULL,
	[PL_ExportStatus] [int] NULL,
	[PL_ImportStatus] [int] NULL,
	[CreatedDate] [datetime] NULL,
	[CL_ExportStatus] [int] NULL,
	[CL_ImportStatus] [int] NULL,
 CONSTRAINT [pk_BatchID] PRIMARY KEY CLUSTERED 
(
	[BatchID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 94) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[BatchSummary]    Script Date: 2019-03-25 15:10:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BatchSummary](
	[FileID] [bigint] IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
	[BatchID] [bigint] NULL,
	[FileTypeID] [int] NULL,
	[FileName] [nvarchar](300) NULL,
	[TransactionStartDate] [datetime] NULL,
	[TransactionEndDate] [datetime] NULL,
	[RecordsEligible] [bigint] NULL,
	[RecordsProcessed] [bigint] NULL,
	[Status] [int] NULL,
	[CreatedDate] [datetime] NULL,
 CONSTRAINT [pk_FileID] PRIMARY KEY CLUSTERED 
(
	[FileID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 94) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[BonusReductionHistory]    Script Date: 2019-03-25 15:10:14 ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BonusReductionHistory](
	[BonusReductionHistoryID] [bigint] IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
	[ClaimCaseID] [bigint] NOT NULL,
	[IsMotorBonus] [bit] NOT NULL,
	[BonusReductionDate] [datetime] NOT NULL,
 CONSTRAINT [PK_BonusReductionHistory] PRIMARY KEY CLUSTERED 
(
	[BonusReductionHistoryID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 94) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[CaseEstimates]    Script Date: 2019-03-25 15:10:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CaseEstimates](
	[CaseEstimateID] [bigint] IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
	[ClaimCaseID] [bigint] NOT NULL,
	[ProductID] [int] NOT NULL,
	[CoverID] [int] NOT NULL,
	[ClaimTypeID] [int] NOT NULL,
	[TransactionID] [int] NOT NULL,
	[Amount] [money] NULL,
	[Description] [nvarchar](250) NULL,
	[DateCreated] [datetime] NULL,
	[UserID] [int] NULL,
	[IsDisabled] [bit] NULL,
	[IsContra] [bit] NULL,
	[IncidentElementID] [int] NULL,
	[IncidentCauseID] [int] NULL,
	[IncidentTypeID] [int] NULL,
	[BeløpetgjelderID] [int] NULL,
	[IncidentType2Id] [int] NULL,
	[RTV] [bit] NOT NULL,
	[RTVContraEstimateID] [bigint] NULL,
	[Swift] [nvarchar](50) NULL,
	[IsSwift] [bit] NOT NULL,
 CONSTRAINT [PK_CaseEstimates] PRIMARY KEY CLUSTERED 
(
	[CaseEstimateID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 94) ON [CASEESTIMATES]
) ON [CASEESTIMATES]

GO
/****** Object:  Table [dbo].[CaseEstimatesOld]    Script Date: 2019-03-25 15:10:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CaseEstimatesOld](
	[CaseEstimateID] [bigint] IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
	[ClaimCaseID] [bigint] NOT NULL,
	[ProductID] [int] NOT NULL,
	[CoverID] [int] NOT NULL,
	[ClaimTypeID] [int] NOT NULL,
	[TransactionID] [int] NOT NULL,
	[Amount] [money] NULL,
	[Description] [nvarchar](250) NULL,
	[DateCreated] [datetime] NULL,
	[UserID] [int] NULL,
	[IsDisabled] [bit] NULL,
	[IsContra] [bit] NULL,
	[IncidentElementID] [int] NULL,
	[IncidentCauseID] [int] NULL,
	[IncidentTypeID] [int] NULL,
	[BeløpetgjelderID] [int] NULL,
	[IncidentType2Id] [int] NULL,
	[RTV] [bit] NOT NULL,
	[RTVContraEstimateID] [bigint] NULL,
	[Swift] [nvarchar](50) NULL,
	[IsSwift] [bit] NOT NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[CCSPartnerProductMap]    Script Date: 2019-03-25 15:10:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CCSPartnerProductMap](
	[CCSPartnerProductMapID] [int] IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
	[CCSPartnerID] [int] NOT NULL,
	[ExternalProductMapID] [int] NOT NULL,
 CONSTRAINT [pk_CCSPartnerProduct] PRIMARY KEY CLUSTERED 
(
	[CCSPartnerProductMapID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 94) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ClaimCases]    Script Date: 2019-03-25 15:10:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ClaimCases](
	[ClaimCaseID] [bigint] NOT NULL,
	[ClaimDate] [datetime] NULL,
	[ReportedDate] [datetime] NULL,
	[ClosedDate] [datetime] NULL,
	[Product] [nvarchar](50) NULL,
	[UserID] [bigint] NOT NULL,
	[Status] [int] NULL,
	[ClaimSummary] [nvarchar](2000) NULL,
	[MotorBonus] [bit] NULL,
	[CustomerBonus] [bit] NULL,
	[MotorLoss] [bit] NULL,
	[CounterPartCompany] [nvarchar](100) NULL,
	[CarDamageZone1] [bit] NULL,
	[CarDamageZone2] [bit] NULL,
	[CarDamageZone3] [bit] NULL,
	[CarDamageZone4] [bit] NULL,
	[CarDamageZone5] [bit] NULL,
	[CarDamageZone6] [bit] NULL,
	[ReOpenedDate] [datetime] NULL,
	[InsurancePolicyID] [bigint] NULL,
	[PartnerID] [int] NULL,
	[IsClosed] [bit] NULL,
	[CounterPartVehicle] [nvarchar](100) NULL,
	[OldClaimID] [bigint] NULL,
	[ContractID] [bigint] NULL,
	[CarrierID] [int] NULL,
	[PolicyVersionId] [int] NULL,
	[DeptId] [smallint] NOT NULL,
	[PersonalInjury] [bit] NULL,
	[Avkortning] [bit] NULL,
	[Avslag] [bit] NULL,
	[AvkortningPercentage] [decimal](4, 1) NULL,
	[CatastropheId] [bigint] NOT NULL,
	[IncidentCauseID] [int] NULL,
	[IncidentTypeID] [int] NULL,
	[SourceSystemId] [int] NULL,
	[AccountNumber] [varbinary](200) NULL,
	[ReserveStatus] [bit] NOT NULL,
	[GroupID] [smallint] NULL,
	[OwnerID] [bigint] NULL,
	[EventCodeID] [bigint] NOT NULL,
	[Utlevering] [nvarchar](100) NULL,
	[Statusisaken] [nvarchar](100) NULL,
	[AnsvarsfordelingId] [int] NULL,
	[Besiktigelse] [bit] NULL,
	[Avkortningsbeløp] [nvarchar](50) NULL,
	[IncidentType2Id] [int] NULL,
	[LegginnICD10kode] [nvarchar](100) NULL,
	[Created_Date] [datetime] NULL,
	[CCSInsurancePolicyHistoryID] [bigint] NOT NULL,
	[Telephone] [nvarchar](500) NULL,
	[Email] [nvarchar](100) NULL,
	[PF_Egenandelsfordel] [bit] NULL,
 CONSTRAINT [PK_ClaimCases] PRIMARY KEY CLUSTERED 
(
	[ClaimCaseID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 94) ON [CLAIMCASE]
) ON [CLAIMCASE]

GO
/****** Object:  Table [dbo].[ClaimNotes]    Script Date: 2019-03-25 15:10:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ClaimNotes](
	[ClaimsNoteID] [bigint] IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
	[ClaimCaseID] [bigint] NOT NULL,
	[Note] [nvarchar](2000) NOT NULL,
	[NoteDate] [datetime] NOT NULL,
	[UserID] [bigint] NULL,
	[Exported] [bit] NOT NULL,
 CONSTRAINT [PK_ClaimNotes] PRIMARY KEY CLUSTERED 
(
	[ClaimsNoteID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 94) ON [NOTES]
) ON [NOTES]

GO
/****** Object:  Table [dbo].[ClaimTypeCauseMap]    Script Date: 2019-03-25 15:10:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ClaimTypeCauseMap](
	[ClaimTypeID] [int] NOT NULL,
	[IncidentCauseID] [int] NOT NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ClosedClaimCases]    Script Date: 2019-03-25 15:10:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ClosedClaimCases](
	[ClaimCaseClosedID] [int] IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
	[ClaimCaseID] [bigint] NOT NULL,
	[ReasonID] [int] NOT NULL,
	[ClosedDate] [datetime] NOT NULL,
 CONSTRAINT [PK_ClosedClaimCases] PRIMARY KEY CLUSTERED 
(
	[ClaimCaseClosedID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 94) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Department]    Script Date: 2019-03-25 15:10:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Department](
	[DeptId] [smallint] IDENTITY(0,1) NOT FOR REPLICATION NOT NULL,
	[DeptName] [nvarchar](50) NULL,
	[IsCCSPL] [bit] NULL,
 CONSTRAINT [PK_DEPARTMENT_1] PRIMARY KEY CLUSTERED 
(
	[DeptId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 94) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[DepartmentGroups]    Script Date: 2019-03-25 15:10:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DepartmentGroups](
	[GroupId] [smallint] IDENTITY(0,1) NOT FOR REPLICATION NOT NULL,
	[GroupName] [nvarchar](20) NOT NULL,
	[DeptId] [smallint] NOT NULL,
	[IsActive] [bit] NOT NULL,
 CONSTRAINT [PK_DepartmentGroups] PRIMARY KEY CLUSTERED 
(
	[GroupId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 94) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ExternalProductCoverLookup]    Script Date: 2019-03-25 15:10:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ExternalProductCoverLookup](
	[ProductId] [int] NOT NULL,
	[ExtraCoversIdentifier] [int] NOT NULL,
	[ExtraCoversLabel] [nvarchar](150) NULL,
	[ProductNameOverridden] [nvarchar](150) NULL,
	[SourceSystemId] [int] NOT NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ExternalProductMap]    Script Date: 2019-03-25 15:10:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ExternalProductMap](
	[ExternalProductMapID] [int] NOT NULL,
	[ProductName] [nvarchar](50) NOT NULL,
	[ProductID] [int] NOT NULL,
	[ProductCategoryID] [int] NOT NULL,
	[SourceSystemId] [int] NULL,
	[IsProperty] [bit] NULL,
	[IsMotor] [bit] NULL,
	[IsAutoFleet] [bit] NULL,
	[IsPropertyFleet] [bit] NULL,
	[IsPersonalInjuryFleet] [bit] NULL,
	[IsOtherFleet] [bit] NULL,
	[IsActive] [bit] NOT NULL,
 CONSTRAINT [PK_ExternalProductMap] PRIMARY KEY CLUSTERED 
(
	[ExternalProductMapID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 94) ON [PRIMARY],
 CONSTRAINT [UN_ExternalProductMap_ProductInfo] UNIQUE NONCLUSTERED 
(
	[ProductName] ASC,
	[SourceSystemId] ASC,
	[ProductID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ExternalProductMapping]    Script Date: 2019-03-25 15:10:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ExternalProductMapping](
	[ExternalProductId] [int] NOT NULL,
	[ProductID] [int] NOT NULL,
	[SourceSystemId] [int] NOT NULL,
	[ExternalProductMapID] [int] NULL,
	[ExternalProductMappingID] [bigint] IDENTITY(1,1) NOT NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[FOSSIncidentCauseTypeMap]    Script Date: 2019-03-25 15:10:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FOSSIncidentCauseTypeMap](
	[FOSSIncidentTypeID] [int] NOT NULL,
	[ProductCategoryCauseMapID] [int] NOT NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[IncidentCauseElementMap]    Script Date: 2019-03-25 15:10:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[IncidentCauseElementMap](
	[ProductCategoryCauseMapID] [int] NOT NULL,
	[IncidentElementID] [int] NOT NULL,
	[IsActive] [bit] NOT NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[IncidentCauseTypeMap]    Script Date: 2019-03-25 15:10:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[IncidentCauseTypeMap](
	[ProductCategoryCauseMapID] [int] NOT NULL,
	[IncidentTypeID] [int] NOT NULL,
	[IncidentTypeMapID] [int] NOT NULL,
	[IsActive] [bit] NOT NULL,
 CONSTRAINT [PK_IncidentCauseTypeMap] PRIMARY KEY CLUSTERED 
(
	[IncidentTypeMapID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 94) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[IncidentElement]    Script Date: 2019-03-25 15:10:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[IncidentElement](
	[IncidentElementID] [int] NOT NULL,
	[IncidentElement] [nvarchar](225) NOT NULL,
	[IsPersonalInjury] [bit] NOT NULL,
	[IsActive] [bit] NOT NULL,
 CONSTRAINT [PK_IncidentElement] PRIMARY KEY CLUSTERED 
(
	[IncidentElementID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 94) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[IncidentType_Type2Map]    Script Date: 2019-03-25 15:10:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[IncidentType_Type2Map](
	[IncidentTypeMapID] [int] NOT NULL,
	[ProductCategoryCauseMapId] [int] NOT NULL,
	[IncidentType2ID] [int] NOT NULL,
	[IsActive] [bit] NOT NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Innberettes]    Script Date: 2019-03-25 15:10:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Innberettes](
	[InnberettesID] [int] NOT NULL,
	[InnberettesName] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Innberettes] PRIMARY KEY CLUSTERED 
(
	[InnberettesID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 94) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[NavisionPortfolio]    Script Date: 2019-03-25 15:10:14 ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NavisionPortfolio](
	[NavisionPortfolioID] [bigint] IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
	[NavisionPortfolioCode] [nvarchar](10) NOT NULL,
	[NavisionPortfolioName] [nvarchar](50) NULL,
	[CPSCLPortfolioID] [int] NOT NULL,
 CONSTRAINT [PK_NavisionPortfolio] PRIMARY KEY CLUSTERED 
(
	[NavisionPortfolioID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 94) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[NavisionProductCode]    Script Date: 2019-03-25 15:10:14 ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NavisionProductCode](
	[NavisionProductCodeID] [bigint] IDENTITY(0,1) NOT FOR REPLICATION NOT NULL,
	[NavisionProductCode] [nvarchar](10) NOT NULL,
	[NavisionProductCodeName] [nvarchar](50) NULL,
	[IsActive] [bit] NOT NULL,
 CONSTRAINT [PK_NavisionProductCode] PRIMARY KEY CLUSTERED 
(
	[NavisionProductCodeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 94) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Partners]    Script Date: 2019-03-25 15:10:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Partners](
	[PartnerID] [int] NOT NULL,
	[PartnerName] [nvarchar](100) NOT NULL,
	[SourceSystemId] [int] NULL,
	[CCSPartnerID] [int] NOT NULL,
 CONSTRAINT [PK_CCSPID] PRIMARY KEY CLUSTERED 
(
	[CCSPartnerID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 94) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[PasswordHistory]    Script Date: 2019-03-25 15:10:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PasswordHistory](
	[PasswordHistoryId] [bigint] IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
	[UserID] [bigint] NOT NULL,
	[Password] [binary](24) NOT NULL,
	[Salt] [binary](4) NOT NULL,
	[PasswordDate] [datetime] NOT NULL,
 CONSTRAINT [PK_PasswordHistory] PRIMARY KEY CLUSTERED 
(
	[PasswordHistoryId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 94) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[PaymentApproveReassigmentHistory]    Script Date: 2019-03-25 15:10:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PaymentApproveReassigmentHistory](
	[PaymentApproveReassigmentHistoryID] [bigint] IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
	[CaseEstimateID] [bigint] NOT NULL,
	[ApproveUserID] [int] NOT NULL,
	[NewApproveUserID] [int] NOT NULL,
	[ModifiedUserID] [int] NOT NULL,
	[OperationUsed] [nvarchar](50) NOT NULL,
	[ModifiedDate] [datetime] NOT NULL,
 CONSTRAINT [PK_PaymentApproveReassigmentHistory] PRIMARY KEY CLUSTERED 
(
	[PaymentApproveReassigmentHistoryID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[PaymentRecipients]    Script Date: 2019-03-25 15:10:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PaymentRecipients](
	[PaymentRecipientID] [bigint] IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
	[Name] [nvarchar](255) NULL,
	[Address] [nvarchar](255) NULL,
	[City] [nvarchar](255) NULL,
	[ZipCode] [nvarchar](50) NULL,
	[Email] [nvarchar](50) NULL,
	[Phone] [nvarchar](50) NULL,
	[OrgOrSocialSecurity] [nvarchar](50) NULL,
	[Closed_AccountNumber] [nvarchar](50) NULL,
	[RTV] [bit] NOT NULL,
	[AccountNumber] [varbinary](200) NOT NULL,
 CONSTRAINT [PK_Recipients] PRIMARY KEY CLUSTERED 
(
	[PaymentRecipientID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 94) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[PaymentReporterDetails]    Script Date: 2019-03-25 15:10:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PaymentReporterDetails](
	[ReporterDetailID] [int] IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
	[CaseEstimateId] [bigint] NOT NULL,
	[Name] [nvarchar](255) NOT NULL,
	[Address] [nvarchar](255) NULL,
	[Zipcode] [nvarchar](255) NULL,
	[City] [nvarchar](255) NULL,
	[Email] [nvarchar](50) NULL,
	[Telephone] [nvarchar](50) NULL,
	[OrgNumber] [nvarchar](11) NOT NULL,
	[AccountNumber] [varbinary](50) NULL,
	[Innberettes] [int] NOT NULL,
 CONSTRAINT [PK_ReporterDetailID] PRIMARY KEY CLUSTERED 
(
	[ReporterDetailID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 94) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Payments]    Script Date: 2019-03-25 15:10:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Payments](
	[PaymentRef] [bigint] IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
	[CaseEstimateId] [bigint] NOT NULL,
	[RegisteredByUserId] [bigint] NOT NULL,
	[ApproveeUserId] [bigint] NOT NULL,
	[CustomerID] [nvarchar](50) NULL,
	[PartnerId] [int] NULL,
	[Name] [nvarchar](255) NULL,
	[Address] [nvarchar](255) NULL,
	[City] [nvarchar](255) NULL,
	[ZipCode] [nvarchar](50) NULL,
	[Email] [nvarchar](50) NULL,
	[Phone] [nvarchar](50) NULL,
	[OrgOrSocialSecurity] [nvarchar](50) NULL,
	[Closed_AccountNumber] [nvarchar](50) NULL,
	[InvoiceNumber] [nvarchar](50) NULL,
	[DueDate] [datetime] NULL,
	[InvoiceDate] [datetime] NULL,
	[KID] [nvarchar](50) NULL,
	[ApprovedState] [int] NULL,
	[Exported] [bit] NOT NULL,
	[Imported] [bit] NULL,
	[EX_Paid] [bit] NULL,
	[EX_FullyPaid] [bit] NULL,
	[EX_PaymentAmount] [money] NULL,
	[EX_PaymentDate] [datetime] NULL,
	[ExcludeFromExport] [bit] NULL,
	[ModifiedDate] [datetime] NULL,
	[AutoApproved] [bit] NULL,
	[DeresReference] [nvarchar](50) NULL,
	[RecipientID] [nvarchar](50) NULL,
	[ExportedDate] [datetime] NULL,
	[ImportedDate] [datetime] NULL,
	[AccountNumber] [varbinary](200) NULL,
	[RTV] [bit] NOT NULL,
	[NavisionPortfolioID] [bigint] NULL,
	[NavisionProductCodeID] [bigint] NULL,
	[ApprovedOrRejectedDate] [datetime] NULL,
	[RejectedOrHoldReason] [nvarchar](255) NULL,
 CONSTRAINT [PK_Payments] PRIMARY KEY CLUSTERED 
(
	[CaseEstimateId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 94) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[PolicySummary]    Script Date: 2019-03-25 15:10:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PolicySummary](
	[PolicyId] [bigint] NOT NULL,
	[PartnerId] [int] NOT NULL,
	[FirstName] [nvarchar](101) NULL,
	[LastName] [nvarchar](101) NULL,
	[SocialSecurity] [nvarchar](50) NULL,
	[ObjectName] [nvarchar](255) NULL,
	[ProductName] [nvarchar](100) NULL,
	[StartDate] [datetime] NULL,
	[EndDate] [datetime] NULL,
	[CarrierId] [int] NULL,
	[CustomerId] [bigint] NULL,
	[ContractId] [bigint] NULL,
	[ProductId] [int] NULL,
	[VersionId] [int] NULL,
	[ContractReference] [nvarchar](50) NULL,
	[SourceSystemId] [int] NULL,
	[AccountNumber] [varbinary](200) NULL,
	[FirmName] [nvarchar](255) NULL,
	[OrgNumber] [nvarchar](15) NULL,
	[PortfolioId] [int] NULL,
	[PartnerName] [nvarchar](100) NULL,
	[CCSInsurancePolicyHistoryID] [bigint] NOT NULL,
	[FleetObjectName] [nvarchar](255) NULL,
	[FleetCompanyName] [nvarchar](255) NULL,
	[FleetOrgNumber] [nvarchar](255) NULL,
	[FleetInsuredAddress] [nvarchar](255) NULL,
	[FleetZipCode] [nvarchar](255) NULL,
	[FleetCity] [nvarchar](255) NULL,
	[FleetGnr] [nvarchar](255) NULL,
	[FleetBnr] [nvarchar](255) NULL,
	[FleetBirthDate] [datetime] NULL,
	[FleetStartDate] [datetime] NULL,
	[FleetEndDate] [datetime] NULL,
	[FleetSocialSecurity] [nvarchar](255) NULL,
	[FleetFirstName] [nvarchar](255) NULL,
	[FleetLastName] [nvarchar](255) NULL,
	[FleetEmploymentPercentage] [nvarchar](255) NULL,
	[FleetSalary] [nvarchar](255) NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Product_Cover_Claimtype_Element]    Script Date: 2019-03-25 15:10:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Product_Cover_Claimtype_Element](
	[ProductID] [int] NOT NULL,
	[CoverID] [int] NOT NULL,
	[ClaimTypeID] [int] NOT NULL,
	[IncidentElementId] [int] NULL,
	[NavisionProductCodeID] [bigint] NOT NULL,
	[IsActive] [bit] NOT NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ProductCategoryCauseMap]    Script Date: 2019-03-25 15:10:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProductCategoryCauseMap](
	[ProductCategoryCauseMapID] [int] NOT NULL,
	[ProductCategoryID] [int] NOT NULL,
	[IncidentCauseID] [int] NOT NULL,
	[IsActive] [bit] NOT NULL,
 CONSTRAINT [PK_ProductCategoryCauseMap] PRIMARY KEY CLUSTERED 
(
	[ProductCategoryCauseMapID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 94) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ProductMarketMap]    Script Date: 2019-03-25 15:10:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProductMarketMap](
	[ExternalProductMapID] [int] NOT NULL,
	[MarketCodeID] [int] NOT NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[RecoveryPaymentImportLog]    Script Date: 2019-03-25 15:10:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RecoveryPaymentImportLog](
	[RecoveryPaymentImportLogID] [bigint] IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
	[PaymentRef] [bigint] NULL,
	[CaseEstimateID] [bigint] NULL,
	[InvoiceNummer] [nvarchar](50) NULL,
	[PaymentAmount] [money] NULL,
	[PaymentDate] [datetime] NULL,
	[ClaimCaseId] [bigint] NULL,
	[Paid] [bit] NULL,
	[FullyPaid] [bit] NULL,
	[ImportedDate] [datetime] NOT NULL,
	[RecReminderStatus] [int] NULL,
	[IsRecoveryReceivedForCloseClaim] [bit] NOT NULL,
	[IsMoreRecoveryReceived] [bit] NOT NULL,
	[IsImported] [bit] NOT NULL,
 CONSTRAINT [PK_RecoveryPaymentImportLogID] PRIMARY KEY CLUSTERED 
(
	[RecoveryPaymentImportLogID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 94) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Relation]    Script Date: 2019-03-25 15:10:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Relation](
	[RelationId] [int] NOT NULL,
	[RelationName] [nvarchar](50) NULL,
	[SourceSystemId] [int] NULL,
	[RelationRankId] [int] NOT NULL,
 CONSTRAINT [PK_RELATION _1] PRIMARY KEY CLUSTERED 
(
	[RelationId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 94) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ReopenedClaimCases]    Script Date: 2019-03-25 15:10:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ReopenedClaimCases](
	[ClaimCaseReopenID] [int] IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
	[ClaimCaseID] [bigint] NOT NULL,
	[ReasonID] [int] NOT NULL,
	[ReopnedDate] [datetime] NOT NULL,
 CONSTRAINT [PK_ReopenedClaimCases] PRIMARY KEY CLUSTERED 
(
	[ClaimCaseReopenID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 94) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Reporter]    Script Date: 2019-03-25 15:10:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Reporter](
	[ReporterId] [bigint] IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
	[ClaimCaseId] [bigint] NOT NULL,
	[Name] [nvarchar](255) NULL,
	[RelationId] [int] NOT NULL,
	[Address] [nvarchar](255) NULL,
	[Telephone] [nvarchar](500) NULL,
	[PostalNumber] [nvarchar](500) NULL,
	[City] [nvarchar](255) NULL,
	[Email] [nvarchar](100) NULL,
	[SourceSystemId] [int] NOT NULL,
 CONSTRAINT [PK_Reporter] PRIMARY KEY CLUSTERED 
(
	[ReporterId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 94) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Skadested]    Script Date: 2019-03-25 15:10:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Skadested](
	[SkadestedId] [int] IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
	[ClaimCaseId] [bigint] NOT NULL,
	[Gateadresse] [nvarchar](255) NULL,
	[Postnummer] [nvarchar](10) NULL,
	[SkadelandId] [int] NOT NULL,
 CONSTRAINT [pk_Skadestedid] PRIMARY KEY CLUSTERED 
(
	[SkadestedId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 94) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[UserCategory]    Script Date: 2019-03-25 15:10:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UserCategory](
	[UserCategoryId] [int] IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
	[UserCategory] [nvarchar](50) NOT NULL,
	[UserTypeId] [int] NOT NULL,
 CONSTRAINT [PK_UserCategory] PRIMARY KEY CLUSTERED 
(
	[UserCategoryId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 94) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[UserDetails]    Script Date: 2019-03-25 15:10:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UserDetails](
	[ClaimCaseID] [bigint] NOT NULL,
	[UserID] [bigint] NOT NULL,
	[AccessDateTime] [datetime] NOT NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[UserLastLogin]    Script Date: 2019-03-25 15:10:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UserLastLogin](
	[UserLastLoginID] [bigint] IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
	[UserId] [bigint] NOT NULL,
	[LastLoginDate] [datetime] NULL,
 CONSTRAINT [PK_UserLastLogin] PRIMARY KEY CLUSTERED 
(
	[UserLastLoginID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[UserNotes]    Script Date: 2019-03-25 15:10:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UserNotes](
	[UserNoteID] [bigint] IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
	[UserID] [bigint] NOT NULL,
	[Note] [nvarchar](2000) NULL,
	[DisplayDate] [datetime] NOT NULL,
	[SignedOut] [bit] NULL,
	[ClaimCaseID] [bigint] NULL,
	[CaseEstimateId] [bigint] NULL,
	[AssignedToUserId] [bigint] NULL,
	[ReminderType] [int] NULL,
	[Exported] [bit] NOT NULL,
 CONSTRAINT [PK_UserNotes] PRIMARY KEY CLUSTERED 
(
	[UserNoteID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 94) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[UserPrivileges]    Script Date: 2019-03-25 15:10:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UserPrivileges](
	[UserId] [bigint] NOT NULL,
	[XML] [ntext] NULL,
 CONSTRAINT [PK_UserPrivileges] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 94) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Users]    Script Date: 2019-03-25 15:10:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Users](
	[UserID] [bigint] IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
	[FirstName] [varchar](50) NOT NULL,
	[LastName] [varchar](50) NOT NULL,
	[UserName] [varchar](50) NOT NULL,
	[Password] [binary](20) NOT NULL,
	[Salt] [binary](4) NOT NULL,
	[UserRoleID] [int] NULL,
	[IsActive] [bit] NOT NULL,
	[PasswordDate] [datetime] NOT NULL,
	[LoginFailureCount] [int] NOT NULL,
	[IsApproveRequired] [bit] NULL,
	[ApproveUserId] [bigint] NULL,
	[WindowsUserID] [nvarchar](50) NULL,
	[UserTypeId] [int] NULL,
 CONSTRAINT [PK_Users] PRIMARY KEY CLUSTERED 
(
	[UserID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 94) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[WeatherCode]    Script Date: 2019-03-25 15:10:15 ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[WeatherCode](
	[WeatherCodeId] [bigint] IDENTITY(0,1) NOT FOR REPLICATION NOT NULL,
	[CodeDescription] [nvarchar](25) NOT NULL,
	[Active] [bit] NOT NULL,
 CONSTRAINT [PK_WeatherCode] PRIMARY KEY CLUSTERED 
(
	[WeatherCodeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]

GO


USE [PR_CCS_NO_CLAIMS]
GO
/****** Object:  Table [dbo].[ActionHistory]    Script Date: 2019-03-25 15:11:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ActionHistory](
	[ActionHistoryID] [bigint] IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
	[ActionID] [int] NOT NULL,
	[ActionDetails] [nvarchar](400) NULL,
	[UserID] [bigint] NULL,
	[DateCreated] [datetime] NOT NULL,
	[UserTypeID] [int] NULL,
 CONSTRAINT [PK_ActionHistory] PRIMARY KEY CLUSTERED 
(
	[ActionHistoryID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 94) ON [ACTIONHISTORY]
) ON [ACTIONHISTORY]

GO
/****** Object:  Table [dbo].[AppVersion]    Script Date: 2019-03-25 15:11:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AppVersion](
	[AppVersionID] [bigint] IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
	[Major] [smallint] NOT NULL,
	[Minor] [smallint] NOT NULL,
	[Build] [smallint] NOT NULL,
	[Revision] [smallint] NOT NULL,
	[DeploymentDate] [datetime] NULL,
	[BuildScope] [nvarchar](200) NULL,
	[IsFinalDrop] [bit] NOT NULL,
 CONSTRAINT [PK_AppVersionID] PRIMARY KEY CLUSTERED 
(
	[AppVersionID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 94) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[BatchExecutionStatus]    Script Date: 2019-03-25 15:11:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BatchExecutionStatus](
	[BatchID] [bigint] IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
	[BatchStartDate] [datetime] NULL,
	[BatchEndDate] [datetime] NULL,
	[PL_ExportStatus] [int] NULL,
	[PL_ImportStatus] [int] NULL,
	[CreatedDate] [datetime] NULL,
	[CL_ExportStatus] [int] NULL,
	[CL_ImportStatus] [int] NULL,
 CONSTRAINT [pk_BatchID] PRIMARY KEY CLUSTERED 
(
	[BatchID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 94) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[BatchSummary]    Script Date: 2019-03-25 15:11:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BatchSummary](
	[FileID] [bigint] IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
	[BatchID] [bigint] NULL,
	[FileTypeID] [int] NULL,
	[FileName] [nvarchar](300) NULL,
	[TransactionStartDate] [datetime] NULL,
	[TransactionEndDate] [datetime] NULL,
	[RecordsEligible] [bigint] NULL,
	[RecordsProcessed] [bigint] NULL,
	[Status] [int] NULL,
	[CreatedDate] [datetime] NULL,
 CONSTRAINT [pk_FileID] PRIMARY KEY CLUSTERED 
(
	[FileID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 94) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[BonusReductionHistory]    Script Date: 2019-03-25 15:11:30 ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BonusReductionHistory](
	[BonusReductionHistoryID] [bigint] IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
	[ClaimCaseID] [bigint] NOT NULL,
	[IsMotorBonus] [bit] NOT NULL,
	[BonusReductionDate] [datetime] NOT NULL,
 CONSTRAINT [PK_BonusReductionHistory] PRIMARY KEY CLUSTERED 
(
	[BonusReductionHistoryID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 94) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[CaseEstimates]    Script Date: 2019-03-25 15:11:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CaseEstimates](
	[CaseEstimateID] [bigint] IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
	[ClaimCaseID] [bigint] NOT NULL,
	[ProductID] [int] NOT NULL,
	[CoverID] [int] NOT NULL,
	[ClaimTypeID] [int] NOT NULL,
	[TransactionID] [int] NOT NULL,
	[Amount] [money] NULL,
	[Description] [nvarchar](250) NULL,
	[DateCreated] [datetime] NULL,
	[UserID] [int] NULL,
	[IsDisabled] [bit] NULL,
	[IsContra] [bit] NULL,
	[IncidentElementID] [int] NULL,
	[IncidentCauseID] [int] NULL,
	[IncidentTypeID] [int] NULL,
	[BeløpetgjelderID] [int] NULL,
	[IncidentType2Id] [int] NULL,
	[RTV] [bit] NOT NULL,
	[RTVContraEstimateID] [bigint] NULL,
	[Swift] [nvarchar](50) NULL,
	[IsSwift] [bit] NOT NULL,
 CONSTRAINT [PK_CaseEstimates] PRIMARY KEY CLUSTERED 
(
	[CaseEstimateID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 94) ON [CASEESTIMATES]
) ON [CASEESTIMATES]

GO
/****** Object:  Table [dbo].[CaseEstimatesOld]    Script Date: 2019-03-25 15:11:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CaseEstimatesOld](
	[CaseEstimateID] [bigint] IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
	[ClaimCaseID] [bigint] NOT NULL,
	[ProductID] [int] NOT NULL,
	[CoverID] [int] NOT NULL,
	[ClaimTypeID] [int] NOT NULL,
	[TransactionID] [int] NOT NULL,
	[Amount] [money] NULL,
	[Description] [nvarchar](250) NULL,
	[DateCreated] [datetime] NULL,
	[UserID] [int] NULL,
	[IsDisabled] [bit] NULL,
	[IsContra] [bit] NULL,
	[IncidentElementID] [int] NULL,
	[IncidentCauseID] [int] NULL,
	[IncidentTypeID] [int] NULL,
	[BeløpetgjelderID] [int] NULL,
	[IncidentType2Id] [int] NULL,
	[RTV] [bit] NOT NULL,
	[RTVContraEstimateID] [bigint] NULL,
	[Swift] [nvarchar](50) NULL,
	[IsSwift] [bit] NOT NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[CCSPartnerProductMap]    Script Date: 2019-03-25 15:11:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CCSPartnerProductMap](
	[CCSPartnerProductMapID] [int] IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
	[CCSPartnerID] [int] NOT NULL,
	[ExternalProductMapID] [int] NOT NULL,
 CONSTRAINT [pk_CCSPartnerProduct] PRIMARY KEY CLUSTERED 
(
	[CCSPartnerProductMapID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 94) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ClaimCases]    Script Date: 2019-03-25 15:11:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ClaimCases](
	[ClaimCaseID] [bigint] NOT NULL,
	[ClaimDate] [datetime] NULL,
	[ReportedDate] [datetime] NULL,
	[ClosedDate] [datetime] NULL,
	[Product] [nvarchar](50) NULL,
	[UserID] [bigint] NOT NULL,
	[Status] [int] NULL,
	[ClaimSummary] [nvarchar](2000) NULL,
	[MotorBonus] [bit] NULL,
	[CustomerBonus] [bit] NULL,
	[MotorLoss] [bit] NULL,
	[CounterPartCompany] [nvarchar](100) NULL,
	[CarDamageZone1] [bit] NULL,
	[CarDamageZone2] [bit] NULL,
	[CarDamageZone3] [bit] NULL,
	[CarDamageZone4] [bit] NULL,
	[CarDamageZone5] [bit] NULL,
	[CarDamageZone6] [bit] NULL,
	[ReOpenedDate] [datetime] NULL,
	[InsurancePolicyID] [bigint] NULL,
	[PartnerID] [int] NULL,
	[IsClosed] [bit] NULL,
	[CounterPartVehicle] [nvarchar](100) NULL,
	[OldClaimID] [bigint] NULL,
	[ContractID] [bigint] NULL,
	[CarrierID] [int] NULL,
	[PolicyVersionId] [int] NULL,
	[DeptId] [smallint] NOT NULL,
	[PersonalInjury] [bit] NULL,
	[Avkortning] [bit] NULL,
	[Avslag] [bit] NULL,
	[AvkortningPercentage] [decimal](4, 1) NULL,
	[CatastropheId] [bigint] NOT NULL,
	[IncidentCauseID] [int] NULL,
	[IncidentTypeID] [int] NULL,
	[SourceSystemId] [int] NULL,
	[AccountNumber] [varbinary](200) NULL,
	[ReserveStatus] [bit] NOT NULL,
	[GroupID] [smallint] NULL,
	[OwnerID] [bigint] NULL,
	[EventCodeID] [bigint] NOT NULL,
	[Utlevering] [nvarchar](100) NULL,
	[Statusisaken] [nvarchar](100) NULL,
	[AnsvarsfordelingId] [int] NULL,
	[Besiktigelse] [bit] NULL,
	[Avkortningsbeløp] [nvarchar](50) NULL,
	[IncidentType2Id] [int] NULL,
	[LegginnICD10kode] [nvarchar](100) NULL,
	[Created_Date] [datetime] NULL,
	[CCSInsurancePolicyHistoryID] [bigint] NOT NULL,
	[Telephone] [nvarchar](500) NULL,
	[Email] [nvarchar](100) NULL,
	[PF_Egenandelsfordel] [bit] NULL,
 CONSTRAINT [PK_ClaimCases] PRIMARY KEY CLUSTERED 
(
	[ClaimCaseID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 94) ON [CLAIMCASE]
) ON [CLAIMCASE]

GO
/****** Object:  Table [dbo].[ClaimNotes]    Script Date: 2019-03-25 15:11:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ClaimNotes](
	[ClaimsNoteID] [bigint] IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
	[ClaimCaseID] [bigint] NOT NULL,
	[Note] [nvarchar](2000) NOT NULL,
	[NoteDate] [datetime] NOT NULL,
	[UserID] [bigint] NULL,
	[Exported] [bit] NOT NULL,
 CONSTRAINT [PK_ClaimNotes] PRIMARY KEY CLUSTERED 
(
	[ClaimsNoteID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 94) ON [NOTES]
) ON [NOTES]

GO
/****** Object:  Table [dbo].[ClaimTypeCauseMap]    Script Date: 2019-03-25 15:11:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ClaimTypeCauseMap](
	[ClaimTypeID] [int] NOT NULL,
	[IncidentCauseID] [int] NOT NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ClosedClaimCases]    Script Date: 2019-03-25 15:11:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ClosedClaimCases](
	[ClaimCaseClosedID] [int] IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
	[ClaimCaseID] [bigint] NOT NULL,
	[ReasonID] [int] NOT NULL,
	[ClosedDate] [datetime] NOT NULL,
 CONSTRAINT [PK_ClosedClaimCases] PRIMARY KEY CLUSTERED 
(
	[ClaimCaseClosedID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 94) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Department]    Script Date: 2019-03-25 15:11:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Department](
	[DeptId] [smallint] IDENTITY(0,1) NOT FOR REPLICATION NOT NULL,
	[DeptName] [nvarchar](50) NULL,
	[IsCCSPL] [bit] NULL,
 CONSTRAINT [PK_DEPARTMENT_1] PRIMARY KEY CLUSTERED 
(
	[DeptId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 94) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[DepartmentGroups]    Script Date: 2019-03-25 15:11:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DepartmentGroups](
	[GroupId] [smallint] IDENTITY(0,1) NOT FOR REPLICATION NOT NULL,
	[GroupName] [nvarchar](20) NOT NULL,
	[DeptId] [smallint] NOT NULL,
	[IsActive] [bit] NOT NULL,
 CONSTRAINT [PK_DepartmentGroups] PRIMARY KEY CLUSTERED 
(
	[GroupId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 94) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ExternalProductCoverLookup]    Script Date: 2019-03-25 15:11:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ExternalProductCoverLookup](
	[ProductId] [int] NOT NULL,
	[ExtraCoversIdentifier] [int] NOT NULL,
	[ExtraCoversLabel] [nvarchar](150) NULL,
	[ProductNameOverridden] [nvarchar](150) NULL,
	[SourceSystemId] [int] NOT NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ExternalProductMap]    Script Date: 2019-03-25 15:11:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ExternalProductMap](
	[ExternalProductMapID] [int] NOT NULL,
	[ProductName] [nvarchar](50) NOT NULL,
	[ProductID] [int] NOT NULL,
	[ProductCategoryID] [int] NOT NULL,
	[SourceSystemId] [int] NULL,
	[IsProperty] [bit] NULL,
	[IsMotor] [bit] NULL,
	[IsAutoFleet] [bit] NULL,
	[IsPropertyFleet] [bit] NULL,
	[IsPersonalInjuryFleet] [bit] NULL,
	[IsOtherFleet] [bit] NULL,
	[IsActive] [bit] NOT NULL,
 CONSTRAINT [PK_ExternalProductMap] PRIMARY KEY CLUSTERED 
(
	[ExternalProductMapID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 94) ON [PRIMARY],
 CONSTRAINT [UN_ExternalProductMap_ProductInfo] UNIQUE NONCLUSTERED 
(
	[ProductName] ASC,
	[SourceSystemId] ASC,
	[ProductID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ExternalProductMapping]    Script Date: 2019-03-25 15:11:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ExternalProductMapping](
	[ExternalProductId] [int] NOT NULL,
	[ProductID] [int] NOT NULL,
	[SourceSystemId] [int] NOT NULL,
	[ExternalProductMapID] [int] NULL,
	[ExternalProductMappingID] [bigint] IDENTITY(1,1) NOT NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[FOSSIncidentCauseTypeMap]    Script Date: 2019-03-25 15:11:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FOSSIncidentCauseTypeMap](
	[FOSSIncidentTypeID] [int] NOT NULL,
	[ProductCategoryCauseMapID] [int] NOT NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[IncidentCauseElementMap]    Script Date: 2019-03-25 15:11:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[IncidentCauseElementMap](
	[ProductCategoryCauseMapID] [int] NOT NULL,
	[IncidentElementID] [int] NOT NULL,
	[IsActive] [bit] NOT NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[IncidentCauseTypeMap]    Script Date: 2019-03-25 15:11:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[IncidentCauseTypeMap](
	[ProductCategoryCauseMapID] [int] NOT NULL,
	[IncidentTypeID] [int] NOT NULL,
	[IncidentTypeMapID] [int] NOT NULL,
	[IsActive] [bit] NOT NULL,
 CONSTRAINT [PK_IncidentCauseTypeMap] PRIMARY KEY CLUSTERED 
(
	[IncidentTypeMapID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 94) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[IncidentElement]    Script Date: 2019-03-25 15:11:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[IncidentElement](
	[IncidentElementID] [int] NOT NULL,
	[IncidentElement] [nvarchar](225) NOT NULL,
	[IsPersonalInjury] [bit] NOT NULL,
	[IsActive] [bit] NOT NULL,
 CONSTRAINT [PK_IncidentElement] PRIMARY KEY CLUSTERED 
(
	[IncidentElementID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 94) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[IncidentType_Type2Map]    Script Date: 2019-03-25 15:11:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[IncidentType_Type2Map](
	[IncidentTypeMapID] [int] NOT NULL,
	[ProductCategoryCauseMapId] [int] NOT NULL,
	[IncidentType2ID] [int] NOT NULL,
	[IsActive] [bit] NOT NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[NavisionPortfolio]    Script Date: 2019-03-25 15:11:30 ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NavisionPortfolio](
	[NavisionPortfolioID] [bigint] IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
	[NavisionPortfolioCode] [nvarchar](10) NOT NULL,
	[NavisionPortfolioName] [nvarchar](50) NULL,
	[CPSCLPortfolioID] [int] NOT NULL,
 CONSTRAINT [PK_NavisionPortfolio] PRIMARY KEY CLUSTERED 
(
	[NavisionPortfolioID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 94) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[NavisionProductCode]    Script Date: 2019-03-25 15:11:30 ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NavisionProductCode](
	[NavisionProductCodeID] [bigint] IDENTITY(0,1) NOT FOR REPLICATION NOT NULL,
	[NavisionProductCode] [nvarchar](10) NOT NULL,
	[NavisionProductCodeName] [nvarchar](50) NULL,
	[IsActive] [bit] NOT NULL,
 CONSTRAINT [PK_NavisionProductCode] PRIMARY KEY CLUSTERED 
(
	[NavisionProductCodeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 94) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Partners]    Script Date: 2019-03-25 15:11:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Partners](
	[PartnerID] [int] NOT NULL,
	[PartnerName] [nvarchar](100) NOT NULL,
	[SourceSystemId] [int] NULL,
	[CCSPartnerID] [int] NOT NULL,
 CONSTRAINT [PK_CCSPID] PRIMARY KEY CLUSTERED 
(
	[CCSPartnerID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 94) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[PasswordHistory]    Script Date: 2019-03-25 15:11:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PasswordHistory](
	[PasswordHistoryId] [bigint] IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
	[UserID] [bigint] NOT NULL,
	[Password] [binary](24) NOT NULL,
	[Salt] [binary](4) NOT NULL,
	[PasswordDate] [datetime] NOT NULL,
 CONSTRAINT [PK_PasswordHistory] PRIMARY KEY CLUSTERED 
(
	[PasswordHistoryId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 94) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[PaymentApproveReassigmentHistory]    Script Date: 2019-03-25 15:11:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PaymentApproveReassigmentHistory](
	[PaymentApproveReassigmentHistoryID] [bigint] IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
	[CaseEstimateID] [bigint] NOT NULL,
	[ApproveUserID] [int] NOT NULL,
	[NewApproveUserID] [int] NOT NULL,
	[ModifiedUserID] [int] NOT NULL,
	[OperationUsed] [nvarchar](50) NOT NULL,
	[ModifiedDate] [datetime] NOT NULL,
 CONSTRAINT [PK_PaymentApproveReassigmentHistory] PRIMARY KEY CLUSTERED 
(
	[PaymentApproveReassigmentHistoryID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[PaymentRecipients]    Script Date: 2019-03-25 15:11:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PaymentRecipients](
	[PaymentRecipientID] [bigint] IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
	[Name] [nvarchar](255) NULL,
	[Address] [nvarchar](255) NULL,
	[City] [nvarchar](255) NULL,
	[ZipCode] [nvarchar](50) NULL,
	[Email] [nvarchar](50) NULL,
	[Phone] [nvarchar](50) NULL,
	[OrgOrSocialSecurity] [nvarchar](50) NULL,
	[Closed_AccountNumber] [nvarchar](50) NULL,
	[RTV] [bit] NOT NULL,
	[AccountNumber] [varbinary](200) NOT NULL,
 CONSTRAINT [PK_Recipients] PRIMARY KEY CLUSTERED 
(
	[PaymentRecipientID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 94) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[PaymentReporterDetails]    Script Date: 2019-03-25 15:11:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PaymentReporterDetails](
	[ReporterDetailID] [int] IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
	[CaseEstimateId] [bigint] NOT NULL,
	[Name] [nvarchar](255) NOT NULL,
	[Address] [nvarchar](255) NULL,
	[Zipcode] [nvarchar](255) NULL,
	[City] [nvarchar](255) NULL,
	[Email] [nvarchar](50) NULL,
	[Telephone] [nvarchar](50) NULL,
	[OrgNumber] [nvarchar](11) NOT NULL,
	[AccountNumber] [varbinary](50) NULL,
	[Innberettes] [int] NOT NULL,
 CONSTRAINT [PK_ReporterDetailID] PRIMARY KEY CLUSTERED 
(
	[ReporterDetailID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 94) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Payments]    Script Date: 2019-03-25 15:11:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Payments](
	[PaymentRef] [bigint] IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
	[CaseEstimateId] [bigint] NOT NULL,
	[RegisteredByUserId] [bigint] NOT NULL,
	[ApproveeUserId] [bigint] NOT NULL,
	[CustomerID] [nvarchar](50) NULL,
	[PartnerId] [int] NULL,
	[Name] [nvarchar](255) NULL,
	[Address] [nvarchar](255) NULL,
	[City] [nvarchar](255) NULL,
	[ZipCode] [nvarchar](50) NULL,
	[Email] [nvarchar](50) NULL,
	[Phone] [nvarchar](50) NULL,
	[OrgOrSocialSecurity] [nvarchar](50) NULL,
	[Closed_AccountNumber] [nvarchar](50) NULL,
	[InvoiceNumber] [nvarchar](50) NULL,
	[DueDate] [datetime] NULL,
	[InvoiceDate] [datetime] NULL,
	[KID] [nvarchar](50) NULL,
	[ApprovedState] [int] NULL,
	[Exported] [bit] NOT NULL,
	[Imported] [bit] NULL,
	[EX_Paid] [bit] NULL,
	[EX_FullyPaid] [bit] NULL,
	[EX_PaymentAmount] [money] NULL,
	[EX_PaymentDate] [datetime] NULL,
	[ExcludeFromExport] [bit] NULL,
	[ModifiedDate] [datetime] NULL,
	[AutoApproved] [bit] NULL,
	[DeresReference] [nvarchar](50) NULL,
	[RecipientID] [nvarchar](50) NULL,
	[ExportedDate] [datetime] NULL,
	[ImportedDate] [datetime] NULL,
	[AccountNumber] [varbinary](200) NULL,
	[RTV] [bit] NOT NULL,
	[NavisionPortfolioID] [bigint] NULL,
	[NavisionProductCodeID] [bigint] NULL,
	[ApprovedOrRejectedDate] [datetime] NULL,
	[RejectedOrHoldReason] [nvarchar](255) NULL,
 CONSTRAINT [PK_Payments] PRIMARY KEY CLUSTERED 
(
	[CaseEstimateId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 94) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[PolicySummary]    Script Date: 2019-03-25 15:11:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PolicySummary](
	[PolicyId] [bigint] NOT NULL,
	[PartnerId] [int] NOT NULL,
	[FirstName] [nvarchar](101) NULL,
	[LastName] [nvarchar](101) NULL,
	[SocialSecurity] [nvarchar](50) NULL,
	[ObjectName] [nvarchar](255) NULL,
	[ProductName] [nvarchar](100) NULL,
	[StartDate] [datetime] NULL,
	[EndDate] [datetime] NULL,
	[CarrierId] [int] NULL,
	[CustomerId] [bigint] NULL,
	[ContractId] [bigint] NULL,
	[ProductId] [int] NULL,
	[VersionId] [int] NULL,
	[ContractReference] [nvarchar](50) NULL,
	[SourceSystemId] [int] NULL,
	[AccountNumber] [varbinary](200) NULL,
	[FirmName] [nvarchar](255) NULL,
	[OrgNumber] [nvarchar](15) NULL,
	[PortfolioId] [int] NULL,
	[PartnerName] [nvarchar](100) NULL,
	[CCSInsurancePolicyHistoryID] [bigint] NOT NULL,
	[FleetObjectName] [nvarchar](255) NULL,
	[FleetCompanyName] [nvarchar](255) NULL,
	[FleetOrgNumber] [nvarchar](255) NULL,
	[FleetInsuredAddress] [nvarchar](255) NULL,
	[FleetZipCode] [nvarchar](255) NULL,
	[FleetCity] [nvarchar](255) NULL,
	[FleetGnr] [nvarchar](255) NULL,
	[FleetBnr] [nvarchar](255) NULL,
	[FleetBirthDate] [datetime] NULL,
	[FleetStartDate] [datetime] NULL,
	[FleetEndDate] [datetime] NULL,
	[FleetSocialSecurity] [nvarchar](255) NULL,
	[FleetFirstName] [nvarchar](255) NULL,
	[FleetLastName] [nvarchar](255) NULL,
	[FleetEmploymentPercentage] [nvarchar](255) NULL,
	[FleetSalary] [nvarchar](255) NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Product_Cover_Claimtype_Element]    Script Date: 2019-03-25 15:11:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Product_Cover_Claimtype_Element](
	[ProductID] [int] NOT NULL,
	[CoverID] [int] NOT NULL,
	[ClaimTypeID] [int] NOT NULL,
	[IncidentElementId] [int] NULL,
	[NavisionProductCodeID] [bigint] NOT NULL,
	[IsActive] [bit] NOT NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ProductCategoryCauseMap]    Script Date: 2019-03-25 15:11:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProductCategoryCauseMap](
	[ProductCategoryCauseMapID] [int] NOT NULL,
	[ProductCategoryID] [int] NOT NULL,
	[IncidentCauseID] [int] NOT NULL,
	[IsActive] [bit] NOT NULL,
 CONSTRAINT [PK_ProductCategoryCauseMap] PRIMARY KEY CLUSTERED 
(
	[ProductCategoryCauseMapID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 94) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ProductMarketMap]    Script Date: 2019-03-25 15:11:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProductMarketMap](
	[ExternalProductMapID] [int] NOT NULL,
	[MarketCodeID] [int] NOT NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[RecoveryPaymentImportLog]    Script Date: 2019-03-25 15:11:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RecoveryPaymentImportLog](
	[RecoveryPaymentImportLogID] [bigint] IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
	[PaymentRef] [bigint] NULL,
	[CaseEstimateID] [bigint] NULL,
	[InvoiceNummer] [nvarchar](50) NULL,
	[PaymentAmount] [money] NULL,
	[PaymentDate] [datetime] NULL,
	[ClaimCaseId] [bigint] NULL,
	[Paid] [bit] NULL,
	[FullyPaid] [bit] NULL,
	[ImportedDate] [datetime] NOT NULL,
	[RecReminderStatus] [int] NULL,
	[IsRecoveryReceivedForCloseClaim] [bit] NOT NULL,
	[IsMoreRecoveryReceived] [bit] NOT NULL,
	[IsImported] [bit] NOT NULL,
 CONSTRAINT [PK_RecoveryPaymentImportLogID] PRIMARY KEY CLUSTERED 
(
	[RecoveryPaymentImportLogID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 94) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Relation]    Script Date: 2019-03-25 15:11:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Relation](
	[RelationId] [int] NOT NULL,
	[RelationName] [nvarchar](50) NULL,
	[SourceSystemId] [int] NULL,
	[RelationRankId] [int] NOT NULL,
 CONSTRAINT [PK_RELATION _1] PRIMARY KEY CLUSTERED 
(
	[RelationId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 94) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ReopenedClaimCases]    Script Date: 2019-03-25 15:11:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ReopenedClaimCases](
	[ClaimCaseReopenID] [int] IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
	[ClaimCaseID] [bigint] NOT NULL,
	[ReasonID] [int] NOT NULL,
	[ReopnedDate] [datetime] NOT NULL,
 CONSTRAINT [PK_ReopenedClaimCases] PRIMARY KEY CLUSTERED 
(
	[ClaimCaseReopenID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 94) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Reporter]    Script Date: 2019-03-25 15:11:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Reporter](
	[ReporterId] [bigint] IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
	[ClaimCaseId] [bigint] NOT NULL,
	[Name] [nvarchar](255) NULL,
	[RelationId] [int] NOT NULL,
	[Address] [nvarchar](255) NULL,
	[Telephone] [nvarchar](500) NULL,
	[PostalNumber] [nvarchar](500) NULL,
	[City] [nvarchar](255) NULL,
	[Email] [nvarchar](100) NULL,
	[SourceSystemId] [int] NOT NULL,
 CONSTRAINT [PK_Reporter] PRIMARY KEY CLUSTERED 
(
	[ReporterId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 94) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Skadested]    Script Date: 2019-03-25 15:11:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Skadested](
	[SkadestedId] [int] IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
	[ClaimCaseId] [bigint] NOT NULL,
	[Gateadresse] [nvarchar](255) NULL,
	[Postnummer] [nvarchar](10) NULL,
	[SkadelandId] [int] NOT NULL,
 CONSTRAINT [pk_Skadestedid] PRIMARY KEY CLUSTERED 
(
	[SkadestedId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 94) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[UserDetails]    Script Date: 2019-03-25 15:11:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UserDetails](
	[ClaimCaseID] [bigint] NOT NULL,
	[UserID] [bigint] NOT NULL,
	[AccessDateTime] [datetime] NOT NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[UserLastLogin]    Script Date: 2019-03-25 15:11:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UserLastLogin](
	[UserLastLoginID] [bigint] IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
	[UserId] [bigint] NOT NULL,
	[LastLoginDate] [datetime] NULL,
 CONSTRAINT [PK_UserLastLogin] PRIMARY KEY CLUSTERED 
(
	[UserLastLoginID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[UserNotes]    Script Date: 2019-03-25 15:11:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UserNotes](
	[UserNoteID] [bigint] IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
	[UserID] [bigint] NOT NULL,
	[Note] [nvarchar](2000) NULL,
	[DisplayDate] [datetime] NOT NULL,
	[SignedOut] [bit] NULL,
	[ClaimCaseID] [bigint] NULL,
	[CaseEstimateId] [bigint] NULL,
	[AssignedToUserId] [bigint] NULL,
	[ReminderType] [int] NULL,
	[Exported] [bit] NOT NULL,
 CONSTRAINT [PK_UserNotes] PRIMARY KEY CLUSTERED 
(
	[UserNoteID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 94) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[UserPrivileges]    Script Date: 2019-03-25 15:11:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UserPrivileges](
	[UserId] [bigint] NOT NULL,
	[XML] [ntext] NULL,
 CONSTRAINT [PK_UserPrivileges] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 94) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Users]    Script Date: 2019-03-25 15:11:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Users](
	[UserID] [bigint] IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
	[FirstName] [varchar](50) NOT NULL,
	[LastName] [varchar](50) NOT NULL,
	[UserName] [varchar](50) NOT NULL,
	[Password] [binary](20) NOT NULL,
	[Salt] [binary](4) NOT NULL,
	[UserRoleID] [int] NULL,
	[IsActive] [bit] NOT NULL,
	[PasswordDate] [datetime] NOT NULL,
	[LoginFailureCount] [int] NOT NULL,
	[IsApproveRequired] [bit] NULL,
	[ApproveUserId] [bigint] NULL,
	[WindowsUserID] [nvarchar](50) NULL,
	[UserTypeId] [int] NULL,
 CONSTRAINT [PK_Users] PRIMARY KEY CLUSTERED 
(
	[UserID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 94) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[WeatherCode]    Script Date: 2019-03-25 15:11:30 ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[WeatherCode](
	[WeatherCodeId] [bigint] IDENTITY(0,1) NOT FOR REPLICATION NOT NULL,
	[CodeDescription] [nvarchar](25) NOT NULL,
	[Active] [bit] NOT NULL,
 CONSTRAINT [PK_WeatherCode] PRIMARY KEY CLUSTERED 
(
	[WeatherCodeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[WeatherCodeMapping]    Script Date: 2019-03-25 15:11:30 ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[WeatherCodeMapping](
	[WeatherCodeId] [bigint] NOT NULL,
	[ClaimCaseID] [bigint] NOT NULL
) ON [PRIMARY]

GO


USE [PR_CCS_NO_CLAIMS]
GO
/****** Object:  Table [dbo].[BatchExecutionStatus]    Script Date: 2019-03-25 15:18:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BatchExecutionStatus](
	[BatchID] [bigint] IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
	[BatchStartDate] [datetime] NULL,
	[BatchEndDate] [datetime] NULL,
	[PL_ExportStatus] [int] NULL,
	[PL_ImportStatus] [int] NULL,
	[CreatedDate] [datetime] NULL,
	[CL_ExportStatus] [int] NULL,
	[CL_ImportStatus] [int] NULL,
 CONSTRAINT [pk_BatchID] PRIMARY KEY CLUSTERED 
(
	[BatchID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 94) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[BatchSummary]    Script Date: 2019-03-25 15:18:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BatchSummary](
	[FileID] [bigint] IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
	[BatchID] [bigint] NULL,
	[FileTypeID] [int] NULL,
	[FileName] [nvarchar](300) NULL,
	[TransactionStartDate] [datetime] NULL,
	[TransactionEndDate] [datetime] NULL,
	[RecordsEligible] [bigint] NULL,
	[RecordsProcessed] [bigint] NULL,
	[Status] [int] NULL,
	[CreatedDate] [datetime] NULL,
 CONSTRAINT [pk_FileID] PRIMARY KEY CLUSTERED 
(
	[FileID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 94) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[BonusReductionHistory]    Script Date: 2019-03-25 15:18:15 ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BonusReductionHistory](
	[BonusReductionHistoryID] [bigint] IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
	[ClaimCaseID] [bigint] NOT NULL,
	[IsMotorBonus] [bit] NOT NULL,
	[BonusReductionDate] [datetime] NOT NULL,
 CONSTRAINT [PK_BonusReductionHistory] PRIMARY KEY CLUSTERED 
(
	[BonusReductionHistoryID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 94) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[CaseEstimates]    Script Date: 2019-03-25 15:18:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CaseEstimates](
	[CaseEstimateID] [bigint] IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
	[ClaimCaseID] [bigint] NOT NULL,
	[ProductID] [int] NOT NULL,
	[CoverID] [int] NOT NULL,
	[ClaimTypeID] [int] NOT NULL,
	[TransactionID] [int] NOT NULL,
	[Amount] [money] NULL,
	[Description] [nvarchar](250) NULL,
	[DateCreated] [datetime] NULL,
	[UserID] [int] NULL,
	[IsDisabled] [bit] NULL,
	[IsContra] [bit] NULL,
	[IncidentElementID] [int] NULL,
	[IncidentCauseID] [int] NULL,
	[IncidentTypeID] [int] NULL,
	[BeløpetgjelderID] [int] NULL,
	[IncidentType2Id] [int] NULL,
	[RTV] [bit] NOT NULL,
	[RTVContraEstimateID] [bigint] NULL,
	[Swift] [nvarchar](50) NULL,
	[IsSwift] [bit] NOT NULL,
 CONSTRAINT [PK_CaseEstimates] PRIMARY KEY CLUSTERED 
(
	[CaseEstimateID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 94) ON [CASEESTIMATES]
) ON [CASEESTIMATES]

GO
/****** Object:  Table [dbo].[CaseEstimatesOld]    Script Date: 2019-03-25 15:18:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CaseEstimatesOld](
	[CaseEstimateID] [bigint] IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
	[ClaimCaseID] [bigint] NOT NULL,
	[ProductID] [int] NOT NULL,
	[CoverID] [int] NOT NULL,
	[ClaimTypeID] [int] NOT NULL,
	[TransactionID] [int] NOT NULL,
	[Amount] [money] NULL,
	[Description] [nvarchar](250) NULL,
	[DateCreated] [datetime] NULL,
	[UserID] [int] NULL,
	[IsDisabled] [bit] NULL,
	[IsContra] [bit] NULL,
	[IncidentElementID] [int] NULL,
	[IncidentCauseID] [int] NULL,
	[IncidentTypeID] [int] NULL,
	[BeløpetgjelderID] [int] NULL,
	[IncidentType2Id] [int] NULL,
	[RTV] [bit] NOT NULL,
	[RTVContraEstimateID] [bigint] NULL,
	[Swift] [nvarchar](50) NULL,
	[IsSwift] [bit] NOT NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[CCSPartnerProductMap]    Script Date: 2019-03-25 15:18:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CCSPartnerProductMap](
	[CCSPartnerProductMapID] [int] IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
	[CCSPartnerID] [int] NOT NULL,
	[ExternalProductMapID] [int] NOT NULL,
 CONSTRAINT [pk_CCSPartnerProduct] PRIMARY KEY CLUSTERED 
(
	[CCSPartnerProductMapID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 94) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ClaimCases]    Script Date: 2019-03-25 15:18:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ClaimCases](
	[ClaimCaseID] [bigint] NOT NULL,
	[ClaimDate] [datetime] NULL,
	[ReportedDate] [datetime] NULL,
	[ClosedDate] [datetime] NULL,
	[Product] [nvarchar](50) NULL,
	[UserID] [bigint] NOT NULL,
	[Status] [int] NULL,
	[ClaimSummary] [nvarchar](2000) NULL,
	[MotorBonus] [bit] NULL,
	[CustomerBonus] [bit] NULL,
	[MotorLoss] [bit] NULL,
	[CounterPartCompany] [nvarchar](100) NULL,
	[CarDamageZone1] [bit] NULL,
	[CarDamageZone2] [bit] NULL,
	[CarDamageZone3] [bit] NULL,
	[CarDamageZone4] [bit] NULL,
	[CarDamageZone5] [bit] NULL,
	[CarDamageZone6] [bit] NULL,
	[ReOpenedDate] [datetime] NULL,
	[InsurancePolicyID] [bigint] NULL,
	[PartnerID] [int] NULL,
	[IsClosed] [bit] NULL,
	[CounterPartVehicle] [nvarchar](100) NULL,
	[OldClaimID] [bigint] NULL,
	[ContractID] [bigint] NULL,
	[CarrierID] [int] NULL,
	[PolicyVersionId] [int] NULL,
	[DeptId] [smallint] NOT NULL,
	[PersonalInjury] [bit] NULL,
	[Avkortning] [bit] NULL,
	[Avslag] [bit] NULL,
	[AvkortningPercentage] [decimal](4, 1) NULL,
	[CatastropheId] [bigint] NOT NULL,
	[IncidentCauseID] [int] NULL,
	[IncidentTypeID] [int] NULL,
	[SourceSystemId] [int] NULL,
	[AccountNumber] [varbinary](200) NULL,
	[ReserveStatus] [bit] NOT NULL,
	[GroupID] [smallint] NULL,
	[OwnerID] [bigint] NULL,
	[EventCodeID] [bigint] NOT NULL,
	[Utlevering] [nvarchar](100) NULL,
	[Statusisaken] [nvarchar](100) NULL,
	[AnsvarsfordelingId] [int] NULL,
	[Besiktigelse] [bit] NULL,
	[Avkortningsbeløp] [nvarchar](50) NULL,
	[IncidentType2Id] [int] NULL,
	[LegginnICD10kode] [nvarchar](100) NULL,
	[Created_Date] [datetime] NULL,
	[CCSInsurancePolicyHistoryID] [bigint] NOT NULL,
	[Telephone] [nvarchar](500) NULL,
	[Email] [nvarchar](100) NULL,
	[PF_Egenandelsfordel] [bit] NULL,
 CONSTRAINT [PK_ClaimCases] PRIMARY KEY CLUSTERED 
(
	[ClaimCaseID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 94) ON [CLAIMCASE]
) ON [CLAIMCASE]

GO
/****** Object:  Table [dbo].[ClaimNotes]    Script Date: 2019-03-25 15:18:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ClaimNotes](
	[ClaimsNoteID] [bigint] IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
	[ClaimCaseID] [bigint] NOT NULL,
	[Note] [nvarchar](2000) NOT NULL,
	[NoteDate] [datetime] NOT NULL,
	[UserID] [bigint] NULL,
	[Exported] [bit] NOT NULL,
 CONSTRAINT [PK_ClaimNotes] PRIMARY KEY CLUSTERED 
(
	[ClaimsNoteID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 94) ON [NOTES]
) ON [NOTES]

GO
/****** Object:  Table [dbo].[ClaimTypeCauseMap]    Script Date: 2019-03-25 15:18:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ClaimTypeCauseMap](
	[ClaimTypeID] [int] NOT NULL,
	[IncidentCauseID] [int] NOT NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ClosedClaimCases]    Script Date: 2019-03-25 15:18:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ClosedClaimCases](
	[ClaimCaseClosedID] [int] IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
	[ClaimCaseID] [bigint] NOT NULL,
	[ReasonID] [int] NOT NULL,
	[ClosedDate] [datetime] NOT NULL,
 CONSTRAINT [PK_ClosedClaimCases] PRIMARY KEY CLUSTERED 
(
	[ClaimCaseClosedID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 94) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Department]    Script Date: 2019-03-25 15:18:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Department](
	[DeptId] [smallint] IDENTITY(0,1) NOT FOR REPLICATION NOT NULL,
	[DeptName] [nvarchar](50) NULL,
	[IsCCSPL] [bit] NULL,
 CONSTRAINT [PK_DEPARTMENT_1] PRIMARY KEY CLUSTERED 
(
	[DeptId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 94) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[DepartmentGroups]    Script Date: 2019-03-25 15:18:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DepartmentGroups](
	[GroupId] [smallint] IDENTITY(0,1) NOT FOR REPLICATION NOT NULL,
	[GroupName] [nvarchar](20) NOT NULL,
	[DeptId] [smallint] NOT NULL,
	[IsActive] [bit] NOT NULL,
 CONSTRAINT [PK_DepartmentGroups] PRIMARY KEY CLUSTERED 
(
	[GroupId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 94) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ExternalProductCoverLookup]    Script Date: 2019-03-25 15:18:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ExternalProductCoverLookup](
	[ProductId] [int] NOT NULL,
	[ExtraCoversIdentifier] [int] NOT NULL,
	[ExtraCoversLabel] [nvarchar](150) NULL,
	[ProductNameOverridden] [nvarchar](150) NULL,
	[SourceSystemId] [int] NOT NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ExternalProductMap]    Script Date: 2019-03-25 15:18:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ExternalProductMap](
	[ExternalProductMapID] [int] NOT NULL,
	[ProductName] [nvarchar](50) NOT NULL,
	[ProductID] [int] NOT NULL,
	[ProductCategoryID] [int] NOT NULL,
	[SourceSystemId] [int] NULL,
	[IsProperty] [bit] NULL,
	[IsMotor] [bit] NULL,
	[IsAutoFleet] [bit] NULL,
	[IsPropertyFleet] [bit] NULL,
	[IsPersonalInjuryFleet] [bit] NULL,
	[IsOtherFleet] [bit] NULL,
	[IsActive] [bit] NOT NULL,
 CONSTRAINT [PK_ExternalProductMap] PRIMARY KEY CLUSTERED 
(
	[ExternalProductMapID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 94) ON [PRIMARY],
 CONSTRAINT [UN_ExternalProductMap_ProductInfo] UNIQUE NONCLUSTERED 
(
	[ProductName] ASC,
	[SourceSystemId] ASC,
	[ProductID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ExternalProductMapping]    Script Date: 2019-03-25 15:18:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ExternalProductMapping](
	[ExternalProductId] [int] NOT NULL,
	[ProductID] [int] NOT NULL,
	[SourceSystemId] [int] NOT NULL,
	[ExternalProductMapID] [int] NULL,
	[ExternalProductMappingID] [bigint] IDENTITY(1,1) NOT NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[FOSSIncidentCauseTypeMap]    Script Date: 2019-03-25 15:18:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FOSSIncidentCauseTypeMap](
	[FOSSIncidentTypeID] [int] NOT NULL,
	[ProductCategoryCauseMapID] [int] NOT NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[IncidentCauseElementMap]    Script Date: 2019-03-25 15:18:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[IncidentCauseElementMap](
	[ProductCategoryCauseMapID] [int] NOT NULL,
	[IncidentElementID] [int] NOT NULL,
	[IsActive] [bit] NOT NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[IncidentCauseTypeMap]    Script Date: 2019-03-25 15:18:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[IncidentCauseTypeMap](
	[ProductCategoryCauseMapID] [int] NOT NULL,
	[IncidentTypeID] [int] NOT NULL,
	[IncidentTypeMapID] [int] NOT NULL,
	[IsActive] [bit] NOT NULL,
 CONSTRAINT [PK_IncidentCauseTypeMap] PRIMARY KEY CLUSTERED 
(
	[IncidentTypeMapID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 94) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[IncidentElement]    Script Date: 2019-03-25 15:18:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[IncidentElement](
	[IncidentElementID] [int] NOT NULL,
	[IncidentElement] [nvarchar](225) NOT NULL,
	[IsPersonalInjury] [bit] NOT NULL,
	[IsActive] [bit] NOT NULL,
 CONSTRAINT [PK_IncidentElement] PRIMARY KEY CLUSTERED 
(
	[IncidentElementID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 94) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[IncidentType_Type2Map]    Script Date: 2019-03-25 15:18:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[IncidentType_Type2Map](
	[IncidentTypeMapID] [int] NOT NULL,
	[ProductCategoryCauseMapId] [int] NOT NULL,
	[IncidentType2ID] [int] NOT NULL,
	[IsActive] [bit] NOT NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[NavisionPortfolio]    Script Date: 2019-03-25 15:18:15 ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NavisionPortfolio](
	[NavisionPortfolioID] [bigint] IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
	[NavisionPortfolioCode] [nvarchar](10) NOT NULL,
	[NavisionPortfolioName] [nvarchar](50) NULL,
	[CPSCLPortfolioID] [int] NOT NULL,
 CONSTRAINT [PK_NavisionPortfolio] PRIMARY KEY CLUSTERED 
(
	[NavisionPortfolioID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 94) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[NavisionProductCode]    Script Date: 2019-03-25 15:18:15 ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NavisionProductCode](
	[NavisionProductCodeID] [bigint] IDENTITY(0,1) NOT FOR REPLICATION NOT NULL,
	[NavisionProductCode] [nvarchar](10) NOT NULL,
	[NavisionProductCodeName] [nvarchar](50) NULL,
	[IsActive] [bit] NOT NULL,
 CONSTRAINT [PK_NavisionProductCode] PRIMARY KEY CLUSTERED 
(
	[NavisionProductCodeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 94) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Partners]    Script Date: 2019-03-25 15:18:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Partners](
	[PartnerID] [int] NOT NULL,
	[PartnerName] [nvarchar](100) NOT NULL,
	[SourceSystemId] [int] NULL,
	[CCSPartnerID] [int] NOT NULL,
 CONSTRAINT [PK_CCSPID] PRIMARY KEY CLUSTERED 
(
	[CCSPartnerID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 94) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[PasswordHistory]    Script Date: 2019-03-25 15:18:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PasswordHistory](
	[PasswordHistoryId] [bigint] IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
	[UserID] [bigint] NOT NULL,
	[Password] [binary](24) NOT NULL,
	[Salt] [binary](4) NOT NULL,
	[PasswordDate] [datetime] NOT NULL,
 CONSTRAINT [PK_PasswordHistory] PRIMARY KEY CLUSTERED 
(
	[PasswordHistoryId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 94) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[PaymentApproveReassigmentHistory]    Script Date: 2019-03-25 15:18:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PaymentApproveReassigmentHistory](
	[PaymentApproveReassigmentHistoryID] [bigint] IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
	[CaseEstimateID] [bigint] NOT NULL,
	[ApproveUserID] [int] NOT NULL,
	[NewApproveUserID] [int] NOT NULL,
	[ModifiedUserID] [int] NOT NULL,
	[OperationUsed] [nvarchar](50) NOT NULL,
	[ModifiedDate] [datetime] NOT NULL,
 CONSTRAINT [PK_PaymentApproveReassigmentHistory] PRIMARY KEY CLUSTERED 
(
	[PaymentApproveReassigmentHistoryID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[PaymentRecipients]    Script Date: 2019-03-25 15:18:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PaymentRecipients](
	[PaymentRecipientID] [bigint] IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
	[Name] [nvarchar](255) NULL,
	[Address] [nvarchar](255) NULL,
	[City] [nvarchar](255) NULL,
	[ZipCode] [nvarchar](50) NULL,
	[Email] [nvarchar](50) NULL,
	[Phone] [nvarchar](50) NULL,
	[OrgOrSocialSecurity] [nvarchar](50) NULL,
	[Closed_AccountNumber] [nvarchar](50) NULL,
	[RTV] [bit] NOT NULL,
	[AccountNumber] [varbinary](200) NOT NULL,
 CONSTRAINT [PK_Recipients] PRIMARY KEY CLUSTERED 
(
	[PaymentRecipientID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 94) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[PaymentReporterDetails]    Script Date: 2019-03-25 15:18:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PaymentReporterDetails](
	[ReporterDetailID] [int] IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
	[CaseEstimateId] [bigint] NOT NULL,
	[Name] [nvarchar](255) NOT NULL,
	[Address] [nvarchar](255) NULL,
	[Zipcode] [nvarchar](255) NULL,
	[City] [nvarchar](255) NULL,
	[Email] [nvarchar](50) NULL,
	[Telephone] [nvarchar](50) NULL,
	[OrgNumber] [nvarchar](11) NOT NULL,
	[AccountNumber] [varbinary](50) NULL,
	[Innberettes] [int] NOT NULL,
 CONSTRAINT [PK_ReporterDetailID] PRIMARY KEY CLUSTERED 
(
	[ReporterDetailID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 94) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Payments]    Script Date: 2019-03-25 15:18:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Payments](
	[PaymentRef] [bigint] IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
	[CaseEstimateId] [bigint] NOT NULL,
	[RegisteredByUserId] [bigint] NOT NULL,
	[ApproveeUserId] [bigint] NOT NULL,
	[CustomerID] [nvarchar](50) NULL,
	[PartnerId] [int] NULL,
	[Name] [nvarchar](255) NULL,
	[Address] [nvarchar](255) NULL,
	[City] [nvarchar](255) NULL,
	[ZipCode] [nvarchar](50) NULL,
	[Email] [nvarchar](50) NULL,
	[Phone] [nvarchar](50) NULL,
	[OrgOrSocialSecurity] [nvarchar](50) NULL,
	[Closed_AccountNumber] [nvarchar](50) NULL,
	[InvoiceNumber] [nvarchar](50) NULL,
	[DueDate] [datetime] NULL,
	[InvoiceDate] [datetime] NULL,
	[KID] [nvarchar](50) NULL,
	[ApprovedState] [int] NULL,
	[Exported] [bit] NOT NULL,
	[Imported] [bit] NULL,
	[EX_Paid] [bit] NULL,
	[EX_FullyPaid] [bit] NULL,
	[EX_PaymentAmount] [money] NULL,
	[EX_PaymentDate] [datetime] NULL,
	[ExcludeFromExport] [bit] NULL,
	[ModifiedDate] [datetime] NULL,
	[AutoApproved] [bit] NULL,
	[DeresReference] [nvarchar](50) NULL,
	[RecipientID] [nvarchar](50) NULL,
	[ExportedDate] [datetime] NULL,
	[ImportedDate] [datetime] NULL,
	[AccountNumber] [varbinary](200) NULL,
	[RTV] [bit] NOT NULL,
	[NavisionPortfolioID] [bigint] NULL,
	[NavisionProductCodeID] [bigint] NULL,
	[ApprovedOrRejectedDate] [datetime] NULL,
	[RejectedOrHoldReason] [nvarchar](255) NULL,
 CONSTRAINT [PK_Payments] PRIMARY KEY CLUSTERED 
(
	[CaseEstimateId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 94) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[PolicySummary]    Script Date: 2019-03-25 15:18:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PolicySummary](
	[PolicyId] [bigint] NOT NULL,
	[PartnerId] [int] NOT NULL,
	[FirstName] [nvarchar](101) NULL,
	[LastName] [nvarchar](101) NULL,
	[SocialSecurity] [nvarchar](50) NULL,
	[ObjectName] [nvarchar](255) NULL,
	[ProductName] [nvarchar](100) NULL,
	[StartDate] [datetime] NULL,
	[EndDate] [datetime] NULL,
	[CarrierId] [int] NULL,
	[CustomerId] [bigint] NULL,
	[ContractId] [bigint] NULL,
	[ProductId] [int] NULL,
	[VersionId] [int] NULL,
	[ContractReference] [nvarchar](50) NULL,
	[SourceSystemId] [int] NULL,
	[AccountNumber] [varbinary](200) NULL,
	[FirmName] [nvarchar](255) NULL,
	[OrgNumber] [nvarchar](15) NULL,
	[PortfolioId] [int] NULL,
	[PartnerName] [nvarchar](100) NULL,
	[CCSInsurancePolicyHistoryID] [bigint] NOT NULL,
	[FleetObjectName] [nvarchar](255) NULL,
	[FleetCompanyName] [nvarchar](255) NULL,
	[FleetOrgNumber] [nvarchar](255) NULL,
	[FleetInsuredAddress] [nvarchar](255) NULL,
	[FleetZipCode] [nvarchar](255) NULL,
	[FleetCity] [nvarchar](255) NULL,
	[FleetGnr] [nvarchar](255) NULL,
	[FleetBnr] [nvarchar](255) NULL,
	[FleetBirthDate] [datetime] NULL,
	[FleetStartDate] [datetime] NULL,
	[FleetEndDate] [datetime] NULL,
	[FleetSocialSecurity] [nvarchar](255) NULL,
	[FleetFirstName] [nvarchar](255) NULL,
	[FleetLastName] [nvarchar](255) NULL,
	[FleetEmploymentPercentage] [nvarchar](255) NULL,
	[FleetSalary] [nvarchar](255) NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Product_Cover_Claimtype_Element]    Script Date: 2019-03-25 15:18:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Product_Cover_Claimtype_Element](
	[ProductID] [int] NOT NULL,
	[CoverID] [int] NOT NULL,
	[ClaimTypeID] [int] NOT NULL,
	[IncidentElementId] [int] NULL,
	[NavisionProductCodeID] [bigint] NOT NULL,
	[IsActive] [bit] NOT NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ProductCategoryCauseMap]    Script Date: 2019-03-25 15:18:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProductCategoryCauseMap](
	[ProductCategoryCauseMapID] [int] NOT NULL,
	[ProductCategoryID] [int] NOT NULL,
	[IncidentCauseID] [int] NOT NULL,
	[IsActive] [bit] NOT NULL,
 CONSTRAINT [PK_ProductCategoryCauseMap] PRIMARY KEY CLUSTERED 
(
	[ProductCategoryCauseMapID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 94) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ProductMarketMap]    Script Date: 2019-03-25 15:18:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProductMarketMap](
	[ExternalProductMapID] [int] NOT NULL,
	[MarketCodeID] [int] NOT NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[RecoveryPaymentImportLog]    Script Date: 2019-03-25 15:18:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RecoveryPaymentImportLog](
	[RecoveryPaymentImportLogID] [bigint] IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
	[PaymentRef] [bigint] NULL,
	[CaseEstimateID] [bigint] NULL,
	[InvoiceNummer] [nvarchar](50) NULL,
	[PaymentAmount] [money] NULL,
	[PaymentDate] [datetime] NULL,
	[ClaimCaseId] [bigint] NULL,
	[Paid] [bit] NULL,
	[FullyPaid] [bit] NULL,
	[ImportedDate] [datetime] NOT NULL,
	[RecReminderStatus] [int] NULL,
	[IsRecoveryReceivedForCloseClaim] [bit] NOT NULL,
	[IsMoreRecoveryReceived] [bit] NOT NULL,
	[IsImported] [bit] NOT NULL,
 CONSTRAINT [PK_RecoveryPaymentImportLogID] PRIMARY KEY CLUSTERED 
(
	[RecoveryPaymentImportLogID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 94) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Relation]    Script Date: 2019-03-25 15:18:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Relation](
	[RelationId] [int] NOT NULL,
	[RelationName] [nvarchar](50) NULL,
	[SourceSystemId] [int] NULL,
	[RelationRankId] [int] NOT NULL,
 CONSTRAINT [PK_RELATION _1] PRIMARY KEY CLUSTERED 
(
	[RelationId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 94) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ReopenedClaimCases]    Script Date: 2019-03-25 15:18:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ReopenedClaimCases](
	[ClaimCaseReopenID] [int] IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
	[ClaimCaseID] [bigint] NOT NULL,
	[ReasonID] [int] NOT NULL,
	[ReopnedDate] [datetime] NOT NULL,
 CONSTRAINT [PK_ReopenedClaimCases] PRIMARY KEY CLUSTERED 
(
	[ClaimCaseReopenID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 94) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Reporter]    Script Date: 2019-03-25 15:18:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Reporter](
	[ReporterId] [bigint] IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
	[ClaimCaseId] [bigint] NOT NULL,
	[Name] [nvarchar](255) NULL,
	[RelationId] [int] NOT NULL,
	[Address] [nvarchar](255) NULL,
	[Telephone] [nvarchar](500) NULL,
	[PostalNumber] [nvarchar](500) NULL,
	[City] [nvarchar](255) NULL,
	[Email] [nvarchar](100) NULL,
	[SourceSystemId] [int] NOT NULL,
 CONSTRAINT [PK_Reporter] PRIMARY KEY CLUSTERED 
(
	[ReporterId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 94) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Skadested]    Script Date: 2019-03-25 15:18:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Skadested](
	[SkadestedId] [int] IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
	[ClaimCaseId] [bigint] NOT NULL,
	[Gateadresse] [nvarchar](255) NULL,
	[Postnummer] [nvarchar](10) NULL,
	[SkadelandId] [int] NOT NULL,
 CONSTRAINT [pk_Skadestedid] PRIMARY KEY CLUSTERED 
(
	[SkadestedId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 94) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[UserDetails]    Script Date: 2019-03-25 15:18:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UserDetails](
	[ClaimCaseID] [bigint] NOT NULL,
	[UserID] [bigint] NOT NULL,
	[AccessDateTime] [datetime] NOT NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[UserLastLogin]    Script Date: 2019-03-25 15:18:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UserLastLogin](
	[UserLastLoginID] [bigint] IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
	[UserId] [bigint] NOT NULL,
	[LastLoginDate] [datetime] NULL,
 CONSTRAINT [PK_UserLastLogin] PRIMARY KEY CLUSTERED 
(
	[UserLastLoginID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[UserNotes]    Script Date: 2019-03-25 15:18:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UserNotes](
	[UserNoteID] [bigint] IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
	[UserID] [bigint] NOT NULL,
	[Note] [nvarchar](2000) NULL,
	[DisplayDate] [datetime] NOT NULL,
	[SignedOut] [bit] NULL,
	[ClaimCaseID] [bigint] NULL,
	[CaseEstimateId] [bigint] NULL,
	[AssignedToUserId] [bigint] NULL,
	[ReminderType] [int] NULL,
	[Exported] [bit] NOT NULL,
 CONSTRAINT [PK_UserNotes] PRIMARY KEY CLUSTERED 
(
	[UserNoteID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 94) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[UserPrivileges]    Script Date: 2019-03-25 15:18:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UserPrivileges](
	[UserId] [bigint] NOT NULL,
	[XML] [ntext] NULL,
 CONSTRAINT [PK_UserPrivileges] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 94) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Users]    Script Date: 2019-03-25 15:18:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Users](
	[UserID] [bigint] IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
	[FirstName] [varchar](50) NOT NULL,
	[LastName] [varchar](50) NOT NULL,
	[UserName] [varchar](50) NOT NULL,
	[Password] [binary](20) NOT NULL,
	[Salt] [binary](4) NOT NULL,
	[UserRoleID] [int] NULL,
	[IsActive] [bit] NOT NULL,
	[PasswordDate] [datetime] NOT NULL,
	[LoginFailureCount] [int] NOT NULL,
	[IsApproveRequired] [bit] NULL,
	[ApproveUserId] [bigint] NULL,
	[WindowsUserID] [nvarchar](50) NULL,
	[UserTypeId] [int] NULL,
 CONSTRAINT [PK_Users] PRIMARY KEY CLUSTERED 
(
	[UserID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 94) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[WeatherCodeMapping]    Script Date: 2019-03-25 15:18:16 ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[WeatherCodeMapping](
	[WeatherCodeId] [bigint] NOT NULL,
	[ClaimCaseID] [bigint] NOT NULL
) ON [PRIMARY]

GO
