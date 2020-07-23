CREATE TABLE [dbo].[DM_EMPLOYEE]
(
[person_id] [int] NOT NULL,
[assignment_id] [int] NOT NULL,
[emp_id] [varchar] (50) COLLATE Latin1_General_CI_AS NULL,
[first_name] [varchar] (40) COLLATE Latin1_General_CI_AS NULL,
[last_name] [varchar] (40) COLLATE Latin1_General_CI_AS NULL,
[full_name] [varchar] (40) COLLATE Latin1_General_CI_AS NULL,
[birth_date] [datetime] NULL,
[gender] [varchar] (1) COLLATE Latin1_General_CI_AS NULL,
[title] [varchar] (10) COLLATE Latin1_General_CI_AS NULL,
[emp_data] [varchar] (100) COLLATE Latin1_General_CI_AS NULL
) ON [PRIMARY]
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO

create trigger [dbo].[EMP_trig1]
on [dbo].[DM_EMPLOYEE] after update
AS
BEGIN
  DECLARE @person_id integer
  DECLARE @assignment_id integer
  DECLARE @emp_id varchar(10)
  DECLARE @first_name varchar(40)
  DECLARE @last_name varchar(40)
  DECLARE @full_name varchar(40)
  Select @person_id=person_id, @assignment_id=assignment_id, @emp_id=emp_id, @first_name=first_name, @last_name=last_name, @full_name=full_name from DM_EMPLOYEE;
  insert into DM_EMP_AUDIT (person_id,assignment_id, emp_id,first_name,last_name,full_name) 
     values (@person_id,@assignment_id, @emp_id,@first_name,@last_name,@full_name);
END
GO
DISABLE TRIGGER [dbo].[EMP_trig1] ON [dbo].[DM_EMPLOYEE]
GO
CREATE UNIQUE NONCLUSTERED INDEX [empInd1] ON [dbo].[DM_EMPLOYEE] ([person_id], [emp_id]) ON [PRIMARY]
GO
