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

select * from [sourceconfig]

insert into [sourceconfig] (configvalue)
select ('sample_com_v32_simple_1000.csv.gz') union all
select ('sample_net_v32_simple_1000.csv.gz') union all
select ('sample_org_v32_simple_1000.csv.gz') union all
select ('sample_info_v32_simple_1000.csv.gz') union all
select ('sample_dev_v32_simple_1000.csv.gz')



USE [WhoisDB]
GO
