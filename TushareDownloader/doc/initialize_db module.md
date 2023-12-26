# Initialize_db module

This module is used to initialize the database for the first time use.


## Methods

### create_all_tables

- param: None
- return: None

Create all available tables based on SQL files

### get_db_config

- param: None
- return: dict[str, str|int]
Get database configuration

database configuration is stored in a json file, the default path is `TushareDownloader/database/database_config.json`

sample:
```json
{
"host": "localhost", 
"port": 3306, 
"user": "root", 
"password": "Hyz.js180518",
"database": "BagelQuant"
}
```
### get_db_engine

- param: None
- return: sqlalchemy.engine.base.Engine

Get database engine

### update_user_name

- param: user_name: str
- return: None

Update user name in database


### update_password

- param: password: str
- return: None

Update password in database

### update_host

- param: host: str
- return: None

Update host in database

### update_port

- param: port: int
- return: None

Update port in database

### update_db_name

- param: db_name: str
- return: None

Update database name in database

