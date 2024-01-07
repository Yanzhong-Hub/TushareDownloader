# Initialzie_db module

## Description

The `initialize_db` module is used to manage and initialize the database for the TushareDownloader application. It includes methods to get and update the database configuration, create all tables, and update the database parameters such as user name, password, host, port, and database name.

## Class and Functions

- **get_db_config()**: Returns the current database configuration as a dictionary. The keys are the configuration parameters, and the values are the corresponding settings.
- **update_user_name(user: str)**: Updates the user name in the database configuration.
- **update_password(password: str)**: Updates the password in the database configuration.
- **update_host(host: str)**: Updates the host in the database configuration.
- **update_port(port: int)**: Updates the port in the database configuration.
- **update_db_name(db_name: str)**: Updates the database name in the database configuration.
- **create_all_tables()**: Reads SQL files from the `TushareDownloader/initialize_db/table_structures` directory and executes them to create all necessary tables in the database.

## Usage

```python
from TushareDownloader.initialize_db import get_db_config, update_user_name, update_password, update_host, update_port, update_db_name, create_all_tables

# Get the current database configuration
current_config = get_db_config()

# Update the database configuration
update_user_name('new_username')
update_password('new_password')
update_host('new_host')
update_port(5432)
update_db_name('new_db_name')

# Create all tables
create_all_tables()
```

This usage will update the database configuration with the new parameters and then create all the necessary tables in the database by executing the SQL files in the specified directory.