import psycopg2
from contextlib import closing

import cx_Oracle

import pymysql
from pymysql.cursors import DictCursor

from pymongo import MongoClient

from merge.connections import ORACLE_LIB_DIR

with closing(psycopg2.connect(
        dbname='dwdb',
        user='manager',
        password='ranger',
        host='localhost',
        port=15432,
)) as conn:
    with conn.cursor() as cursor:
        cursor.execute('SELECT * FROM student')
        for row in cursor:
            print(row)


cx_Oracle.init_oracle_client(lib_dir=ORACLE_LIB_DIR)
conn_str = u'SYSTEM/ranger@localhost:1521/XE'
conn = cx_Oracle.connect(conn_str)
c = conn.cursor()
c.execute(u'select * from employee')
for row in c:
    print(row[0], "-", row[1])
conn.close()


with closing(
        pymysql.connect(
            host='localhost',
            port=13306,
            user='root',
            password='root',
            db='dwdb',
            cursorclass=DictCursor
        )
) as connection:
    with connection.cursor() as cursor:
        cursor.execute("select * from EMPLOYEE")
        for row in cursor:
            print(row)


client = MongoClient('mongodb://manager:ranger@localhost:27017/dwdb')
db = client.dwdb
for employee in db.employee.find():
    print(employee)
