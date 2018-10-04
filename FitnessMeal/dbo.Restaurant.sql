﻿CREATE TABLE [dbo].[Restaurant] (
    [RESTAURANT_ID]     NVARCHAR (20)   NOT NULL,
    [RESTAURANT_NAME]   NVARCHAR (MAX)  NOT NULL,
    [DESCRIPTION]       NVARCHAR (MAX)  NULL,
    [Main_CUSINE]       NVARCHAR (20)   NOT NULL,
    [USER_ID]           NVARCHAR (128)  NOT NULL,
    [ADDRESS_FIRST_LINE] NVARCHAR (MAX)  NULL,
    [STREET_NO]         NVARCHAR (10)   NOT NULL,
    [STREET/RD]         NVARCHAR (50)   NOT NULL,
    [SURBURB]           NVARCHAR (50)   NOT NULL,
    [POSTCODE]          NUMERIC (10)    NOT NULL,
    [STATE]             NVARCHAR (10)   NOT NULL,
    [latitude]          NUMERIC (10, 6) NULL,
    [longitude]         NUMERIC (10, 6) NULL,
    PRIMARY KEY CLUSTERED ([RESTAURANT_ID] ASC),
    UNIQUE NONCLUSTERED ([RESTAURANT_ID] ASC),
    FOREIGN KEY ([USER_ID]) REFERENCES [dbo].[USER] ([USER_ID])
);
