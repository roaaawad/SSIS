USE [WhoisDB]
GO

/****** Object:  Table [dbo].[whoisdomaininfor]    Script Date: 2023-12-20 10:54:33 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[whoisdomaininfor](
	[domainName] [varchar](500) NULL,
	[registrarName] [varchar](500) NULL,
	[contactEmail] [varchar](500) NULL,
	[whoisServer] [varchar](500) NULL,
	[nameServers] [varchar](500) NULL,
	[createdDate] [varchar](500) NULL,
	[updatedDate] [varchar](500) NULL,
	[expiresDate] [varchar](500) NULL,
	[standardRegCreatedDate] [varchar](50) NULL,
	[standardRegUpdatedDate] [varchar](50) NULL,
	[standardRegExpiresDate] [varchar](50) NULL,
	[status] [varchar](500) NULL,
	[Audit_auditUpdatedDate] [varchar](500) NULL,
	[registrant_email] [varchar](500) NULL,
	[registrant_name] [varchar](500) NULL,
	[registrant_organization] [varchar](500) NULL,
	[registrant_street1] [varchar](500) NULL,
	[registrant_street2] [varchar](500) NULL,
	[registrant_street3] [varchar](500) NULL,
	[registrant_street4] [varchar](500) NULL,
	[registrant_city] [varchar](500) NULL,
	[registrant_state] [varchar](500) NULL,
	[registrant_postalCode] [varchar](500) NULL,
	[registrant_country] [varchar](500) NULL,
	[registrant_fax] [varchar](500) NULL,
	[registrant_faxExt] [varchar](500) NULL,
	[registrant_telephone] [varchar](500) NULL,
	[registrant_telephoneExt] [varchar](500) NULL,
	[administrativeContact_email] [varchar](500) NULL,
	[administrativeContact_name] [varchar](500) NULL,
	[administrativeContact_organization] [varchar](500) NULL,
	[administrativeContact_street1] [varchar](500) NULL,
	[administrativeContact_street2] [varchar](500) NULL,
	[administrativeContact_street3] [varchar](500) NULL,
	[administrativeContact_street4] [varchar](500) NULL,
	[administrativeContact_city] [varchar](500) NULL,
	[administrativeContact_state] [varchar](500) NULL,
	[administrativeContact_postalCode] [varchar](500) NULL,
	[administrativeContact_country] [varchar](500) NULL,
	[administrativeContact_fax] [varchar](500) NULL,
	[administrativeContact_faxExt] [varchar](500) NULL,
	[administrativeContact_telephone] [varchar](500) NULL,
	[administrativeContact_telephoneExt] [varchar](500) NULL
) ON [PRIMARY]
GO








USE [WhoisDB]
GO

/****** Object:  Table [dbo].[sourceconfig]    Script Date: 2023-12-20 10:53:58 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[sourceconfig](
	[configid] [bigint] IDENTITY(1,1) NOT NULL,
	[configvalue] [nvarchar](500) NULL,
	[createdby] [nvarchar](200) NULL,
	[craetedon] [datetime] NULL
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[sourceconfig] ADD  DEFAULT (user_name()) FOR [createdby]
GO

ALTER TABLE [dbo].[sourceconfig] ADD  DEFAULT (getdate()) FOR [craetedon]
GO


