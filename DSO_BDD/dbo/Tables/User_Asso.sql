CREATE TABLE [dbo].[User_Asso] (
    [UserFK] NVARCHAR (128) NOT NULL,
    [AssoFK] INT            NOT NULL,
    CONSTRAINT [User_Asso_pk] PRIMARY KEY CLUSTERED ([UserFK] ASC, [AssoFK] ASC),
    CONSTRAINT [FK_Asso] FOREIGN KEY ([AssoFK]) REFERENCES [dbo].[Asso] ([IdAsso]),
    CONSTRAINT [FK_User] FOREIGN KEY ([UserFK]) REFERENCES [dbo].[AspNetUsers] ([Id])
);

