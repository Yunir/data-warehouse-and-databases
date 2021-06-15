import pymysql
from pymysql.cursors import DictCursor
import cx_Oracle


class MysqlToOracle:

    def __init__(self):
        self.mysql = pymysql.connect(
            host='localhost',
            port=13306,
            user='root',
            password='root',
            db='dwdb',
            cursorclass=DictCursor
        )
        cx_Oracle.init_oracle_client(
            lib_dir='/Users/andrey.zavodov/Desktop/instantclient_19_8'
        )
        self.oracle = cx_Oracle.connect(u'SYSTEM/ranger@localhost:1521/XE')
        self.oracle.autocommit = True

    def merge(self):
        self.merge_conference()
        self.merge_library_card()
        self.merge_pub_edition()
        self.merge_publication()
        self.merge_science_project()
        self.merge_employee_conference()
        self.merge_employee_publication()
        self.merge_employee_science_project()

    def format_date(self, field):
        if field is None:
            return "to_date(null, 'yyyy/mm/dd')"
        return f"to_date('{field.strftime('%Y/%m/%d')}', 'yyyy/mm/dd')"

    def merge_conference(self):
        try:
            self.oracle.cursor().execute("""
                CREATE TABLE CONFERENCE(
                   ID_conference NUMBER(5) PRIMARY KEY CHECK(ID_conference>=0),
                   conference_name VARCHAR2(200),
                   edition_location VARCHAR2(100),
                   conference_date DATE
                )
            """)
        except Exception:
            pass
        mysql_cursor = self.mysql.cursor()
        mysql_cursor.execute('select * from CONFERENCE')
        for row in mysql_cursor:
            try:
                self.oracle.cursor().execute(f"""
                    INSERT INTO CONFERENCE VALUES (
                        {row['ID_conference']}, 
                        '{row['conference_name']}', 
                        '{row['edition_location']}', 
                        {self.format_date(row['conference_date'])}
                    )
                """)
            except Exception as e:
                pass

    def merge_library_card(self):
        try:
            self.oracle.cursor().execute("""
                CREATE TABLE LIBRARY_CARD(
                    ID_library_card NUMBER(5) PRIMARY KEY CHECK(ID_library_card>=0),
                    reader NUMBER(5) NOT NULL CONSTRAINT lib_card_employee_fkey REFERENCES EMPLOYEE(ID_employee),
                    book_name VARCHAR2(2000),
                    receipt_bool_date DATE,
                    return_book_date DATE NULL,
                    status_book VARCHAR2(1000)
                )
            """)
        except Exception:
            pass
        mysql_cursor = self.mysql.cursor()
        mysql_cursor.execute('select * from LIBRARY_CARD')
        for row in mysql_cursor:
            try:
                # TODO - проблема с NULL датами. нужно поправить...
                self.oracle.cursor().execute(f"""
                    INSERT INTO CONFERENCE VALUES (
                        {row['ID_library_card']}, 
                        {row['reader']},
                        '{row['book_name']}',
                        {self.format_date(row['receipt_bool_date'])},
                        {self.format_date(row['return_book_date'])}, 
                        '{row['status_book']}'
                    )
                """)
            except Exception:
                pass

    def merge_pub_edition(self):
        try:
            self.oracle.cursor().execute("""
                CREATE TABLE PUB_EDITION(
                    ID_pub_edition NUMBER(5) PRIMARY KEY CHECK(ID_pub_edition>=0),
                    pub_edition_name VARCHAR2(2000),
                    pub_edition_language VARCHAR2(1000),
                    pub_edition_scope_sheets NUMBER(5),
                    pub_edition_location VARCHAR2(1000),
                    pub_edition_type VARCHAR2(1000)
                )
            """)
        except Exception as e:
            pass
        mysql_cursor = self.mysql.cursor()
        mysql_cursor.execute('select * from PUB_EDITION')
        for row in mysql_cursor:
            try:
                self.oracle.cursor().execute(f"""
                    INSERT INTO PUB_EDITION VALUES (
                        {row['ID_pub_edition']}, 
                        '{row['pub_edition_name']}',
                        '{row['pub_edition_language']}',
                        {row['pub_edition_scope_sheets']},
                        '{row['pub_edition_location']}',
                        '{row['pub_edition_type']}'
                    )
                """)
            except Exception:
                pass

    def merge_publication(self):
        try:
            self.oracle.cursor().execute("""
                CREATE TABLE PUBLICATION(
                    ID_publication NUMBER(5) PRIMARY KEY CHECK(ID_publication>=0),
                    publication_name VARCHAR2(2000),
                    citation_index NUMBER,
                    publication_date DATE,
                    pub_edition NUMBER(5) NOT NULL CONSTRAINT publication_edition_fkey REFERENCES PUB_EDITION(ID_pub_edition)
                )
            """)
        except Exception as e:
            pass
        mysql_cursor = self.mysql.cursor()
        mysql_cursor.execute('select * from PUBLICATION')
        for row in mysql_cursor:
            try:
                self.oracle.cursor().execute(f"""
                    INSERT INTO PUBLICATION VALUES (
                        {row['ID_publication']}, 
                        '{row['publication_name']}',
                        {row['citation_index']},
                        {self.format_date(row['publication_date'])},
                        {row['pub_edition']}
                    )
                """)
            except Exception as e:
                pass

    def merge_science_project(self):
        try:
            self.oracle.cursor().execute("""
                CREATE TABLE SCIENCE_PROJECT(
                    ID_science_project NUMBER(5) PRIMARY KEY CHECK(ID_science_project>=0),
                    science_project_name VARCHAR2(2000),
                    period_participation_start DATE,
                    period_participation_stop DATE
                )
            """)
        except Exception as e:
            pass
        mysql_cursor = self.mysql.cursor()
        mysql_cursor.execute('select * from SCIENCE_PROJECT')
        for row in mysql_cursor:
            try:
                self.oracle.cursor().execute(f"""
                    INSERT INTO SCIENCE_PROJECT VALUES (
                        {row['ID_science_project']}, 
                        '{row['science_project_name']}',
                        {self.format_date(row['period_participation_start'])},
                        {self.format_date(row['period_participation_stop'])}
                    )
                """)
            except Exception as e:
                pass

    def merge_employee_conference(self):
        try:
            self.oracle.cursor().execute("""
                CREATE TABLE EMPLOYEE_CONFERENCE(
                    ID_emp_conf NUMBER(5) PRIMARY KEY CHECK(ID_emp_conf>=0),
                    employee NUMBER(5) NOT NULL CONSTRAINT emp_conf_employee_fkey REFERENCES EMPLOYEE(ID_employee),
                    conference NUMBER(5) NOT NULL CONSTRAINT emp_pub_conference_fkey REFERENCES CONFERENCE(ID_conference)
                )
            """)
        except Exception as e:
            pass
        mysql_cursor = self.mysql.cursor()
        mysql_cursor.execute('select * from EMPLOYEE_CONFERENCE')
        for row in mysql_cursor:
            try:
                self.oracle.cursor().execute(f"""
                    INSERT INTO EMPLOYEE_CONFERENCE VALUES (
                        {row['ID_emp_conf']}, 
                        {row['employee']},
                        {row['conference']}
                    )
                """)
            except Exception as e:
                pass

    def merge_employee_publication(self):
        try:
            self.oracle.cursor().execute("""
                CREATE TABLE EMPLOYEE_PUBLICATION(
                    ID_emp_pub NUMBER(5) PRIMARY KEY CHECK(ID_emp_pub>=0),
                    employee NUMBER(5) NOT NULL CONSTRAINT emp_pub_employee_fkey REFERENCES EMPLOYEE(ID_employee),
                    publication NUMBER(5) NOT NULL CONSTRAINT emp_pub_publication_fkey REFERENCES PUBLICATION(ID_publication)
                )
            """)
        except Exception as e:
            pass
        mysql_cursor = self.mysql.cursor()
        mysql_cursor.execute('select * from EMPLOYEE_PUBLICATION')
        for row in mysql_cursor:
            try:
                self.oracle.cursor().execute(f"""
                    INSERT INTO EMPLOYEE_PUBLICATION VALUES (
                        {row['ID_emp_pub']}, 
                        {row['employee']},
                        {row['publication']}
                    )
                """)
            except Exception as e:
                pass

    def merge_employee_science_project(self):
        try:
            self.oracle.cursor().execute("""
                CREATE TABLE EMPLOYEE_SCIENCE_PROJECT(
                    ID_emp_sci_pro NUMBER(5) PRIMARY KEY CHECK(ID_emp_sci_pro>=0),
                    employee NUMBER(5) NOT NULL CONSTRAINT emp_sci_pro_employee_fkey REFERENCES EMPLOYEE(ID_employee),
                    science_project NUMBER(5) NOT NULL CONSTRAINT emp_sci_pro_science_project_fkey REFERENCES SCIENCE_PROJECT(ID_science_project)
                )
            """)
        except Exception as e:
            pass
        mysql_cursor = self.mysql.cursor()
        mysql_cursor.execute('select * from EMPLOYEE_SCIENCE_PROJECT')
        for row in mysql_cursor:
            try:
                self.oracle.cursor().execute(f"""
                    INSERT INTO EMPLOYEE_SCIENCE_PROJECT VALUES (
                        {row['ID_emp_sci_pro']}, 
                        {row['employee']},
                        {row['science_project']}
                    )
                """)
            except Exception as e:
                pass
