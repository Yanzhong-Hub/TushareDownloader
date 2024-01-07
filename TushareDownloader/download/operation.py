"""
download operatation

## Operation layer

### Utility

- appendding(table_name: str, df: DataFrame) -> str
  - return update_status str
- replacing(table_name: str, df: DataFrame) -> str
  - return update_status str
- logging(table_name: str, df: DataFrame)
  - loggin items:
    - table_name, str
    - update_status, str
    - update_time, timestamp
"""

from pandas import DataFrame
from sqlalchemy import text
from typing import Callable

from TushareDownloader.database import get_db_engine


def appendding(table_name: str, df: DataFrame) -> str:
    """
    appending data to database
    :param table_name: table name
    :param df: New data
    :return: update_status str: Success appending
    """
    try:
        with get_db_engine() as engine:
            df.to_sql(table_name, engine, if_exists='append', index=False)
        return 'Success appending'
    except Exception as e:
        return f'Fail appending, error: {str(e)}'[:300]


def replacing(table_name: str, df: DataFrame) -> str:
    """
    replacing data to database
    :param table_name: table name
    :param df: New data
    :return: update_status str: Success replacing
    """
    # delete all data in the table
    try:
        with get_db_engine().begin() as conn:
            conn.execute(
                text(f'UPDATE {table_name} SET delete_flag = TRUE;')
            )
    except Exception as e:
        return f'Fail deleting, error: {str(e)}'[:300]

    # saving to datbase
    try:
        with get_db_engine().connect() as conn:
            df.to_sql(table_name, con=conn, if_exists='append', index=False)
        return 'Success replacing'
    except Exception as e:
        return f'Fail replacing, error: {str(e)}'[:300]


def logging(table_name: str, update_status: str) -> None:
    """
    logging

    """
    log_df = DataFrame({
        'table_name': table_name,
        'update_status': update_status,
    }, index=[0])
    with get_db_engine().connect() as conn:
        log_df.to_sql('update_log', con=conn, if_exists='append', index=False)


TUSHARE_FUNCTION = Callable[..., DataFrame]


def download_operation(table_name: str,
                       tushare_function: TUSHARE_FUNCTION,
                       ) -> None:
    """
    download operation
    :param table_name: table name
    :param tushare_function: a function that return DataFrame, match the table structure
    :return: None

    1. Download DataFrame
    2. Save
    3. Log
    """
    # downloading
    try:
        downloaded_df = tushare_function()

        # saving
        update_status: str = replacing(table_name, downloaded_df)
    except Exception as e:
        update_status: str = f'Fail downloading, error: {str(e)}'[:300]

    # logging
    logging(table_name, update_status)
