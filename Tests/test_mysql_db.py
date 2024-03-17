"""
Tests for mysql database

Author: Yanzhong Huang
Email: bagelquant@gmail.com
"""

from unittest import TestCase

from TushareDownloader.mysql_db import MySQLDB
from sqlalchemy import text


class TestMySQLDB(TestCase):

    def setUp(self):
        """initialize mysql db"""
        self.db = MySQLDB('localhost',
                          3306,
                          'root',
                          'Hyz.js180518',
                          'tushare')

    def test_conenction(self):
        with self.db.engine.begin() as conn:
            sql = text('SHOW TABLES')
            result = conn.execute(sql)
            print([row for row in result])
