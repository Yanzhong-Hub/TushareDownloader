"""
Download module apis

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
"""

import pandas as pd

from .operation import download_operation

from .tushare_functions import get_tushare_pro
from .tushare_functions import (stock_list,
                                trading_calendar,
                                stock_daily,
                                stock_weekly,
                                stock_monthly,
                                income_statement,
                                balance_sheet,
                                cash_flow)

pro = get_tushare_pro()


def download_stock_list() -> None:
    """download stock list"""

    def all_stock_list() -> pd.DataFrame:
        """
        combine delisted and listed stock list
        """
        delisted = stock_list(pro, list_status='D')
        listed = stock_list(pro, list_status='L')
        return pd.concat([listed, delisted])

    download_operation(table_name='stock_list', tushare_function=all_stock_list)


def download_trading_calendar() -> None:
    """download """
    download_operation(table_name='trading_calendar', tushare_function=lambda: trading_calendar(pro))


def update_stock_daily() -> None:
    """update stock daily to today"""
    pass


def update_stock_weekly() -> None:
    """update stock weekly to today"""
    pass


def update_stock_monthly() -> None:
    """update stock monthly to today"""
    pass


def update_adj_factor() -> None:
    """update adj factor to today"""
    pass


def update_income_statement() -> None:
    """update income statement to today"""
    pass


def update_balance_sheet() -> None:
    """update balance sheet to today"""
    pass


def update_cash_flow() -> None:
    """update cash flow to today"""
    pass
