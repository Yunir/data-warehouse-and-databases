import cx_Oracle

import psycopg2

from pymongo import MongoClient

import pymysql
from pymysql.cursors import DictCursor

ORACLE_LIB_DIR = '/Users/andrey.zavodov/Desktop/instantclient_19_8'


class Connections:

    def __init__(self):
        self.mongo = self._get_mongo()
        self.oracle = self._get_oracle()
        self.mysql = self._get_mysql()
        self.postgres = self._get_postgres()

    def _get_oracle(self):
        try:
            cx_Oracle.init_oracle_client(lib_dir=ORACLE_LIB_DIR)
        except Exception as e:
            if str(e) != 'Oracle Client library has already been initialized':
                raise e
        oracle = cx_Oracle.connect(u'SYSTEM/ranger@localhost:1521/XE')
        oracle.autocommit = True
        return oracle

    def _get_mongo(self):
        return MongoClient('mongodb://manager:ranger@localhost:27017/dwdb')

    def _get_mysql(self):
        return pymysql.connect(
            host='localhost',
            port=13306,
            user='root',
            password='root',
            db='dwdb',
            cursorclass=DictCursor
        )

    def _get_postgres(self):
        return psycopg2.connect(
            dbname='dwdb',
            user='manager',
            password='ranger',
            host='localhost',
            port=15432,
        )