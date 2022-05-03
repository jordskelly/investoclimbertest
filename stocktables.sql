--Structure for the stock table
-- ticker (stock symbol) as primary key
CREATE TABLE [dbo].[stocks]
(
[stockid] [int] NOT NULL IDENTITY,
[ticker] [varchar] (6) NOT NULL ,
[name] [varchar] (25) NOT NULL ,
) ON [PRIMARY]

--Second table for datetime and value

CREATE TABLE [dbo].[values]
(
[stockid] [int] NOT NULL IDENTITY,
[datetime] [datetime] NOT NULL ,
[value] [int] (7) NOT NULL ,
) ON [PRIMARY]

--info about the stocks

CREATE TABLE [dbo].[attributes]
(
[stockid] [int] NOT NULL IDENTITY,
[attribute] [varchar] (255) NOT NULL ,
[value] [varchar] (255) NOT NULL ,
) ON [PRIMARY]