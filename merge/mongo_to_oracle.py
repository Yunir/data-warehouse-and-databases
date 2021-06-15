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
        self.merge_hostel()
        self.merge_room()
        self.merge_tenant()
        self.merge_student()

    def merge_student(self):
        try:
            self.oracle.cursor().execute("""
                alter table student
                ADD has_benefits VARCHAR2(10)
            """)
        except Exception:
            pass

    def merge_hostel(self):
        try:
            self.oracle.cursor().execute("""
                CREATE TABLE HOSTEL(
                    ID_hostel NUMBER(5) PRIMARY KEY CHECK(ID_hostel>=0),
                    hostel_location VARCHAR2(1000),
                    rooms_number NUMBER(5),
                    claws VARCHAR2(10)
                )
            """)
        except Exception:
            pass

    def merge_room(self):
        try:
            self.oracle.cursor().execute("""
                CREATE TABLE ROOM(
                    ID_room NUMBER(5) PRIMARY KEY CHECK(ID_room>=0),
                    hostel NUMBER(5) NOT NULL CONSTRAINT room_hostel_fkey REFERENCES HOSTEL(ID_hostel),
                    payment_amount NUMBER(5),
                    room_number NUMBER(5),
                    room_capacity NUMBER(5),
                    livers_number NUMBER(5),
                    disinfection_date DATE
                )
            """)
        except Exception:
            pass

    def merge_tenant(self):
        try:
            self.oracle.cursor().execute("""
                CREATE TABLE TENANT(
                    ID_tenant NUMBER(5) PRIMARY KEY CHECK(ID_tenant>=0),
                    student NUMBER(5) NOT NULL CONSTRAINT tenant_student_fkey REFERENCES STUDENT(ID_student),
                    room NUMBER(5) NOT NULL CONSTRAINT tenant_room_fkey REFERENCES ROOM(ID_room),
                    visit_period_entered DATE,
                    visit_period_left DATE,
                    warnings_count NUMBER(5),
                    arrival_date DATE,
                    check_out_date DATE
                )
            """)
        except Exception:
            pass

mg = MongoToOracle()
mg.merge()