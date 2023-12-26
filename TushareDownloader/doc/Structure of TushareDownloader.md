## All Function Structure

* API layer
* Operation layer
  Only used in the corresponding API layer
* Database layer
  Only used in the corresponding Operation layer

## Package Functions

### Download

Download data from [Tushare.pro](http://tushare.pro/) using the python API

Structure:

* API layer
  * Method name pattern: download_TABLE_NAME
* Operation layer
  * Download data → df
    * [tushare.pro](http://tushare.pro/) → df(downloaded_data)
  * Log update status → None
    * Generate update status → df(update_status)
    * df(update_status) → database
  * Save data → None
    * df(downloaded_data) → database

### Query

Query data from the database

Structure:

* API layer
  * Method name pattern: query_TABLE_NAME
* Operation layer
  * Query data

### Initialize Database

Create tables and set database connection for first-time use

Structure:

* API layer
  * get_db_config → dict
    * Get database configuration
  * update_db_config → None
    * Update database configuration
  * get_db_engine → Engine
    * Get sqlalchemy engine using database configuration
  * create_all_tables → None
    * Create all available tables based on SQL files

## Database Layer

All basic database operations, can only be used in the operation layer
