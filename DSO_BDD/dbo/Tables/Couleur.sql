CREATE TABLE [dbo].[Couleur] (
    [id]      INT          IDENTITY (1, 1) NOT NULL,
    [couleur] VARCHAR (50) NOT NULL,
    CONSTRAINT [PK_dbo.couleur] PRIMARY KEY CLUSTERED ([id] ASC)
);

