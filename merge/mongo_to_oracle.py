from pymongo import MongoClient
import cx_Oracle


class MongoToOracle:

    def __init__(self):
        self.mongo = MongoClient('mongodb://manager:ranger@localhost:27017/dwdb')
        cx_Oracle.init_oracle_client(
            lib_dir='/Users/andrey.zavodov/Desktop/instantclient_19_8'
        )
        self.oracle = cx_Oracle.connect(u'SYSTEM/ranger@localhost:1521/XE')
        self.oracle.autocommit = True

    def merge(self):
        self.merge_employee()
        self.merge_hostel()
        self.merge_room()
        self.merge_student()
        self.merge_tenant()

    def merge_employee(self):
        pass

    def merge_hostel(self):
        pass

    def merge_room(self):
        pass

    def merge_student(self):
        pass

    def merge_tenant(self):
        pass
