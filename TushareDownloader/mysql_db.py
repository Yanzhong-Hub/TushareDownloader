"""
MySQL connection

Author: Yanzhong Huang
Email: bagelquant@gmail.com
"""

from sqlalchemy import create_engine


class MySQLDB:
    """
    MySQL connection
    """

    def __init__(self, host, port, user, password, db):
        self.host = host
        self.port = port
        self.user = user
        self.password = password
        self.db = db
        self.engine = self._create_engine()

    def _create_engine(self):
        return create_engine(
            f'mysql+pymysql://{self.user}:{self.password}@{self.host}:{self.port}/{self.db}'
        )
