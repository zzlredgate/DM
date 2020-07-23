CREATE TABLE [dbo].[DM_CUSTOMER_CONTACTS]
(
[CONTACT_ID] [int] NOT NULL IDENTITY(1, 1),
[CONTACT_PERSON] [xml] NOT NULL CONSTRAINT [DF__DM_CUSTOM__CONTA__2F10007B] DEFAULT ('<Company />')
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[DM_CUSTOMER_CONTACTS] ADD CONSTRAINT [PK__DM_CUSTO__99DE4258A3F94364] PRIMARY KEY CLUSTERED  ([CONTACT_ID]) ON [PRIMARY]
GO