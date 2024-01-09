"""
tests for download module
"""
from unittest import TestCase

from TushareDownloader import download_stock_list, download_trading_calendar
from TushareDownloader import update_stock_daily, update_stock_weekly, update_stock_monthly


class TestDownload(TestCase):
    # def test_download_stock_list(self):
    #     download_stock_list()
    #
    # def test_download_trading_calendar(self):
    #     download_trading_calendar()

    def test_update_stock_daily(self):
        update_stock_daily()

    def test_update_stock_weekly(self):
        update_stock_weekly()

    def test_update_stock_monthly(self):
        update_stock_monthly()