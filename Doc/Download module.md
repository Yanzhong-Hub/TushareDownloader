# Download Module
## APIs
### Download
The methods in the Download section are designed to:
1. Download the corresponding table data.
2. Replace all existing data in the table.
   For example, the `download_stock_list` method will delete all data in the `stock_list` table and save the newly downloaded data.

Methods include:
- download_stock_list
- download_trading_calendar

### Update
The methods in the Update section are designed to:
1. Retrieve the latest trade date from the corresponding table.
2. Download data from the latest trade date to 'today'.
3. Append the newly downloaded data to the existing data in the table.

Methods for Stocks include:
- update_stock_daily
- update_stock_weekly
- update_stock_monthly
- update_adj_factor
- update_income_statement
- update_balance_sheet
- update_cash_flow

## Operation Layer
### Utility
- appending(table_name: str, df: DataFrame) -> str
  - returns update_status string
- replacing(table_name: str, df: DataFrame) -> str
  - returns update_status string
- logging(table_name: str, df: DataFrame, update_status: str)
  - logging items include:
    - table_name, string
    - update_status, string
    - update_time, timestamp

### Update Status String
#### Successful cases
- Success in appending
- Success in replacing

#### Failed cases
- Failure in appending, error: <error message>
- Failure in deleting, error: <error message>
- Failure in replacing, error: <error message>

### Operations