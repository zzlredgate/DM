CREATE TABLE [dbo].[DM_ASSIGNMENT]
(
[assignment_id] [int] NOT NULL,
[person_id] [int] NOT NULL,
[emp_id] [varchar] (10) COLLATE Latin1_General_CI_AS NULL,
[emp_jobtitle] [varchar] (100) COLLATE Latin1_General_CI_AS NULL,
[assignment_notes] [varchar] (1000) COLLATE Latin1_General_CI_AS NULL
) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [asgnInd1] ON [dbo].[DM_ASSIGNMENT] ([person_id], [assignment_id]) ON [PRIMARY]
GO
