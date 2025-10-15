#### online docs & helpful links
- https://neon.com/postgresql/tutorial
- https://neon.com/postgresql/postgresql-functions
- https://neon.com/postgresql/postgresql-advanced

#### start the client
```bash
sudo -u postgres psql postgres
```
#### run file
```bash 
sudo -u postgres psql postgres -f <filename>.sql
```

#### load CSV file
```bash
copy t1 from '/home/gabrieldhofer/Desktop/input.txt' WITH (FORMAT csv);
```

#### load non-CSV (text) file
```postgres
postgres=# copy report3 from '/home/gabrieldhofer/Desktop/advent24/input.txt';
```

#### learning about psql arrays
```postgres
select unnest(string_to_array(col1, ' ')) as val1 from report3 limit 3;
```

#### Run Pl/pgSQL file with alias
```bash
alias run='sudo -u postgres psql postgres -f'
```

#### Vim aliases
```vimscript
iab se SELECT
iab fr FROM
```



