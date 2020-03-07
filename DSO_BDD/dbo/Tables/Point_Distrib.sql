CREATE TABLE [dbo].[Point_Distrib] (
    [id]          INT NOT NULL IDENTITY,
    [lat]         NVARCHAR (50)  NOT NULL,
    [long]        NVARCHAR (50)  NOT NULL,
    [dateDitrib]  DATETIME       NOT NULL,
    [dateCreate]  DATETIME       NOT NULL,
    [dateDelete]  DATETIME       NULL,
    [commentaire] NVARCHAR (MAX) NULL,
    [supprime]    BIT            CONSTRAINT [DF_Point_Distrib_supprime] DEFAULT ((0)) NOT NULL,
    [idAsso] INT NOT NULL, 
    [heureDebut] TIME NOT NULL, 
    [heureFin] TIME NOT NULL, 
    CONSTRAINT [PK_Point_Distrib] PRIMARY KEY CLUSTERED ([id] ASC), 
    CONSTRAINT [FK_Point_Distrib_To_Asso] FOREIGN KEY ([idAsso]) REFERENCES [Asso]([idAsso])
);

