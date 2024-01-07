# Download Module
## APIs
### Download
The Download methods are designed to:
1. Download the corresponding table data.
2. Replace all existing data in the table.
   For Example: `download_stock_list` method will delete all data in the `stock_list` table and save the newly downloaded data.  

Methods:  
- download_stock_list
- download_trading_calendar

### Update
The Update methods are designed to:
1. Retrieve the latest trade date from the corresponding table.
2. Download data from the latest trade date to 'today'.
3. Append the newly downloaded data to the existing data in the table.

Methods:  

Stocks:  
- update_stock_daily
- update_stock_weekly
- update_stock_monthly
- update_adj_factor
- update_income_statement
- update_balance_sheet
- update_cash_flow

## Operation layer

### Utility

- appendding(table_name: str, df: DataFrame) -> str
  - return update_status str
- replacing(table_name: str, df: DataFrame) -> str
  - return update_status str
- logging(table_name: str, df: DataFrame, update_status: str)
  - loggin items:
    - table_name, str
    - update_status, str
    - update_time, timestamp

### update_status str
#### Success
- Success appending
- Success replacing

#### Fail
- Fail appending, error: <error message>
- Fail deleting, error: <error message>
- Fail replacing, error: <error message>

### Operations