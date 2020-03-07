CREATE TABLE [dbo].[Asso] (
    [IdAsso]  INT        IDENTITY (1, 1) NOT NULL,
    [NomAsso] NVARCHAR (50) NOT NULL,
    [NumAsso] NVARCHAR (50) NULL,
    [IdCouleurFond] INT NULL, 
    [IdCouleurText] INT NULL, 
    [Initial] NVARCHAR(10) NULL, 
    CONSTRAINT [PK_Asso] PRIMARY KEY CLUSTERED ([IdAsso] ASC), 
    CONSTRAINT [FK_Asso_ToCouleur1] FOREIGN KEY ([IdCouleurFond]) REFERENCES [Couleur]([id]),
    CONSTRAINT [FK_Asso_ToCouleur2] FOREIGN KEY ([IdCouleurText]) REFERENCES [Couleur]([id])
);

