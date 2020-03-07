CREATE TABLE [dbo].[Parcours_Distrib] (
    [id]          INT            IDENTITY (1, 1) NOT NULL,
    [Parcours]    NVARCHAR (MAX) NOT NULL,
    [dateDitrib]  DATETIME       NOT NULL,
    [dateCreate]  DATETIME       NOT NULL,
    [dateDelete]  DATETIME       NULL,
    [commentaire] NVARCHAR (MAX) NULL,
    [supprime]    BIT            CONSTRAINT [DF_Parcours_Distrib_supprime] DEFAULT ((0)) NOT NULL,
    [idAsso]      INT            NOT NULL,
    [heureDebut]  TIME (7)       NOT NULL,
    [heureFin]    TIME (7)       NOT NULL,
    CONSTRAINT [PK_Parcours_Distrib] PRIMARY KEY CLUSTERED ([id] ASC),
    CONSTRAINT [FK_Parcours_Distrib_To_Asso] FOREIGN KEY ([idAsso]) REFERENCES [dbo].[Asso] ([IdAsso])
);

