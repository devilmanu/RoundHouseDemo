```
dotnet tool install --global dotnet-roundhouse --version 1.2.2
rh -f Pokemon.Database --databasename=pokemon-LOCAL --connectionstring="User ID=sa;Password=fMJkotp0p.;Database=pokemon-LOCAL;server=localhost;" --silent -t --env LOCAL

```

```
rh -f {{PATHFOLADERS}} --databasename={{DATABASENAME}} --connectionstring="User ID=sa;Password=BALBLA.;Database=BALBLA;server=BALBLA;" --silent -t --env LOCAL 
```