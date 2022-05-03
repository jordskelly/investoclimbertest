
--Structure for the login table
--userID as primary key
CREATE TABLE [dbo].[Users]
(
[UserId] [int] NOT NULL IDENTITY,
[Username] [varchar] (15) NOT NULL ,
[Password] [varchar] (25) NOT NULL ,
[email] [varchar] (255) NOT NULL ,
[role] [varchar] (25) NOT NULL,
) ON [PRIMARY]