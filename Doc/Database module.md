# Database module

> Notice This module can only be used internally.
> 

## Description

This Python script, authored by Yanzhong Huang, is a database management module. It’s designed to interact with a database using SQLAlchemy. The module allows the user to read and update the database configuration from a JSON file, and to retrieve a database engine instance.

## Classes and Functions

This script doesn’t have any classes but it contains three main functions:

1. `get_db_config() -> dict[str, str|int]`: This function reads the database configuration from a JSON file. The configuration includes the user, password, host, port, and database name. It returns a dictionary containing these details.
2. `update_db_config(config: dict[str, str|int]) -> None`: This function takes a dictionary as argument which contains the database configuration details. It writes these details into the JSON file. The function doesn’t return anything.
3. `get_db_engine() -> Engine`: This function reads the database configuration from the JSON file and uses it to create an SQLAlchemy Engine instance. This engine can be used to interact with the database.

## Usage

Here is how you can use the functions in this module:

```python
# Import the module
from TushareDownloader.database import get_db_config
from TushareDownloader.database import update_db_config
from TushareDownloader.database import get_db_engine

# Get the current database 
configurationconfig = get_db_config()print(config)

# Update the database configuration
new_config = {
    "user": "new_user",
    "password": "new_password",
    "host": "new_host",
    "port": 3306,
    "database": "new_database"
}
update_db_config(new_config)

# Get the database engine
engine = get_db_engine()
```