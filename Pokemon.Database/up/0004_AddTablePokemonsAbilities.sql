CREATE TABLE [PokemonAbilities] (
    [PokemonId] uniqueidentifier NOT NULL,
    [AbilityId] uniqueidentifier NOT NULL,
    CONSTRAINT [PK_PokemonAbilities] PRIMARY KEY ([AbilityId], [PokemonId]),
    CONSTRAINT [FK_PokemonAbilities_Abilities_AbilityId] FOREIGN KEY ([AbilityId]) REFERENCES [Abilities] ([Id]) ON DELETE CASCADE,
    CONSTRAINT [FK_PokemonAbilities_Pokemons_PokemonId] FOREIGN KEY ([PokemonId]) REFERENCES [Pokemons] ([Id]) ON DELETE CASCADE
);
GO
CREATE INDEX [IX_PokemonAbilities_PokemonId] ON [PokemonAbilities] ([PokemonId]);
GO


