from merge.connections import Connections


class PostgresToOracle(Connections):

    def merge(self):
        self.merge_discipline()
        self.merge_employees()
        self.merge_students()

    def merge_employees(self):
        try:
            self.oracle.cursor().execute("""
                alter table employee
                ADD university_name varchar(100) NULL 
            """)
        except Exception:
            pass
        cursor = self.postgres.cursor()
        cursor.execute('select * from employee')
        for row in cursor:
            self.oracle.cursor().execute(f"""
                update employee SET
                university_name = '{row[5]}'
                where id_employee = {row[0]}
            """)
        cursor.close()

    def merge_students(self):
        try:
            self.oracle.cursor().execute("""
                alter table student
                ADD training_standart_type varchar(20) NULL CHECK (training_standart_type IN ('старый','новый', NULL))
            """)
        except Exception:
            pass
        cursor = self.postgres.cursor()
        cursor.execute('select * from student')
        for row in cursor:
            self.oracle.cursor().execute(f"""
                update student SET
                training_standart_type = '{row[4]}'
                where id_student = {row[0]}
            """)
        cursor.close()

    def merge_discipline(self):
        try:
            self.oracle.cursor().execute("""
                alter table discipline 
                ADD semester NUMBER(5) NULL
                ADD lectures_hours NUMBER(5) NULL
                ADD practical_lessons_hours NUMBER(5) NULL
                ADD laboratory_lessons_hours NUMBER(5) NULL
                ADD control_form VARCHAR2(200) NULL
            """)
        except Exception:
            pass
        cursor = self.postgres.cursor()
        cursor.execute('select * from discipline')
        for row in cursor.fetchall():
            self.oracle.cursor().execute(f"""
                update discipline SET 
                semester = {row[2]},
                lectures_hours = {row[3]}, 
                practical_lessons_hours = {row[4]},
                laboratory_lessons_hours = {row[5]},
                control_form = '{row[6]}'
                where id_discipline = {row[0]}
            """)
        cursor.close()
