--payment and plan details and info
CREATE TABLE [dbo].[plans]
(
[planid] [int] NOT NULL IDENTITY,
[name] [varchar] (15) NOT NULL ,
[descrption] [varchar] (255) NOT NULL ,
[cost] [int] (5) NOT NULL ,
)

CREATE TABLE [dbo].[payment]
(
[paymentid] [int] NOT NULL IDENTITY,
[subscriptionid] [int] (15) NOT NULL ,
[amount] [int] (10) NOT NULL ,
[datepaid] [datetime] NOT NULL ,
)

CREATE TABLE [dbo].[subscription]
(
[subscriptionid] [int] NOT NULL IDENTITY,
[userid] [int] NOT NULL ,
[planid] [int] (25) NOT NULL ,
[price] [int] (10) NOT NULL ,
[enddate] [datetime] NOT NULL,
)