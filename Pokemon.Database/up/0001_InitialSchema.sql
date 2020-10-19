CREATE TABLE [Pokemons] (
    [Id] uniqueidentifier NOT NULL,
    [Name] nvarchar(max) NOT NULL,
    [CreatedAt] datetimeoffset NOT NULL,
    [Age] int NOT NULL,
    CONSTRAINT [PK_Pokemons] PRIMARY KEY ([Id])
);
GO