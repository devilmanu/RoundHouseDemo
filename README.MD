## 1.Installation
```
dotnet tool install --global dotnet-roundhouse --version 1.2.2
```
## 2.Create Folder structure and scripts
```
📦Pokemon.Database
 ┣ 📂alterDatabase
 ┣ 📂functions
 ┣ 📂indexes
 ┣ 📂permissions
 ┣ 📂runAfterCreateDatabase
 ┣ 📂runAfterOtherAnyTimeScripts
 ┣ 📂runBeforeUp
 ┣ 📂runFirstAfterUp -> Seed tables or Rebase data in specific environment
 ┃ ┣ 📜DEV.0001_SeedPokemons.env.sql
 ┃ ┣ 📜DEV.0002_SeedAbilities.env.sql
 ┃ ┗ 📜PRO.0003_SeedAbilitiesPokemons.env.sql
 ┣ 📂sprocs
 ┣ 📂up  -> Incremental Scripts
 ┃ ┣ 📜0001_InitialSchema.sql
 ┃ ┣ 📜0002_CreateTableAbilities.sql
 ┃ ┣ 📜0003_AlterPokemonsAgeToNull.sql
 ┃ ┣ 📜0004_AddTablePokemonsAbilities.sql
 ┃ ┗ 📜0005_AddEmailToPokemon.sql
 ┗ 📂views
```
## 2.Execute (Recommended)
-  -f path to scripts folders
- --databasename= Database name it creates if not exist
- --connectionstring= just connection string, Database name **MUST** be the same 💥
- --silent no interaction
- -t this warps all scripts in ``` BEGIN TRANSACTION ```
- --env The scripts with this name ``` PRO.0003_SeedAbilitiesPokemons.env.sql ```, **PROD** its the environment, they search scripts and execute
### More docs in official [Wiki](https://github.com/chucknorris/roundhouse/wiki)

```

rh -f {{PATHFOLADERS}} --databasename={{DATABASENAME}} --connectionstring="User ID=sa;Password={{xx}}.;Database={{xx}};server={{xx}};" --silent -t --env LOCAL 

```

2020-10-19T19:48:52.2663982Z rh -f /azp/agent/_work/r1/a/_devilmanu.RoundHouseDemo/drop/Pokemon.Database --databasename=pokemon-DEV --connectionstring="User ID=sa;Password=fMJkotp0p.;Database=pokemon-DEV;server=sql;" --silent -t --env DEV
