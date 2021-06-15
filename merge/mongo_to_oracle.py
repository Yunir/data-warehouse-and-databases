from merge.connections import Connections


class MongoToOracle(Connections):

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
        for student in self.mongo.dwdb.student.find():
            self.oracle.cursor().execute(f"""
                update student SET
                has_benefits = '{student['has_benefits']}'
                where id_student = {student['employee_id']}
            """)

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