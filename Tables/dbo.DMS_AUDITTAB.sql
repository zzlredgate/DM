CREATE TABLE [dbo].[DMS_AUDITTAB]
(
[runid] [varchar] (100) COLLATE Latin1_General_CI_AS NOT NULL,
[ruleid] [varchar] (50) COLLATE Latin1_General_CI_AS NOT NULL,
[rulestatus] [char] (1) COLLATE Latin1_General_CI_AS NULL,
[rulecreated] [datetime] NOT NULL,
[ruleupdated] [datetime] NULL,
[ruleblock] [int] NULL,
[rulenum] [int] NULL,
[rulesubscript] [int] NULL,
[ruletype] [varchar] (50) COLLATE Latin1_General_CI_AS NULL,
[ruletarget] [varchar] (250) COLLATE Latin1_General_CI_AS NULL,
[rstat1] [int] NULL,
[rstat2] [int] NULL,
[rstat3] [int] NULL,
[rstat4] [decimal] (18, 0) NULL,
[rstat5] [datetime] NULL,
[rstat6] [varchar] (50) COLLATE Latin1_General_CI_AS NULL
) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_DMS_AUDITTAB] ON [dbo].[DMS_AUDITTAB] ([runid], [ruleid]) ON [PRIMARY]
GO
