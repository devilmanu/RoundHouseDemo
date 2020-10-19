DECLARE @var0 sysname;
SELECT @var0 = [d].[name]
FROM [sys].[default_constraints] [d]
INNER JOIN [sys].[columns] [c] ON [d].[parent_column_id] = [c].[column_id] AND [d].[parent_object_id] = [c].[object_id]
WHERE ([d].[parent_object_id] = OBJECT_ID(N'[Pokemons]') AND [c].[name] = N'Age');
IF @var0 IS NOT NULL EXEC(N'ALTER TABLE [Pokemons] DROP CONSTRAINT [' + @var0 + '];');
ALTER TABLE [Pokemons] ALTER COLUMN [Age] int NULL;
GO

