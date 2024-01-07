"""
tests for download module
"""
from unittest import TestCase

from TushareDownloader import download_stock_list, download_trading_calendar


class TestDownload(TestCase):
    def test_download_stock_list(self):
        download_stock_list()

    def test_download_trading_calendar(self):
        download_trading_calendar()