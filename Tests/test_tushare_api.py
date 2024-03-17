"""

Author: Yanzhong Huang
Email: bagelquant@gmail.com
"""
from unittest import TestCase

from TushareDownloader.tushare_api import TushareAPI


class TestTushareAPI(TestCase):

    def setUp(self):
        """set up token"""
        self.token = 'f7ad1328a17b49b5b7d126cb3ef4ae00565cba3adc28eeeecabbeb78'
        self.tushare_api = TushareAPI(self.token)

    def test_download(self):
        api_name: str = 'stock_basic'
        kwargs = {'exchange': '',
                  'list_status': 'L',
                  'fields': ['ts_code', 'symbol', 'name', 'area', 'industry', 'list_date']}

        df = self.tushare_api.download(api_name, **kwargs)
        self.assertIsNotNone(df)
        self.assertEqual(df.shape[1], 6)
        self.assertGreater(df.shape[0], 0)
        print(df.head())
