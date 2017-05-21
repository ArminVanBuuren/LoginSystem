﻿CREATE TABLE [dbo].[PasswordReset]
(
	[Id] INT IDENTITY(1,1) NOT NULL PRIMARY KEY, 
    [Key] UNIQUEIDENTIFIER NOT NULL, 
    [UserId] INT NOT NULL, 
    [DateRequested] DATETIME2 NULL DEFAULT GETDATE(), 
    CONSTRAINT [FK_PasswordReset_ToUser] FOREIGN KEY ([UserId]) REFERENCES [User]([Id]),

)
