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
        for hostel in self.mongo.dwdb.hostel.find():
            try:
                self.oracle.cursor().execute(f"""
                    INSERT INTO HOSTEL VALUES (
                        {hostel['_id']},
                        '{hostel['hostel_location']}',
                        {hostel['rooms_number']},
                        '{hostel['has_claws']}'
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
        for room in self.mongo.dwdb.room.find():
            try:
                self.oracle.cursor().execute(f"""
                    INSERT INTO ROOM VALUES (
                        {room['_id']},
                        {room['hostel_id']},
                        {room['payment_amount']},
                        {room['room_number']},
                        {room['room_capacity']},
                        {room['livers_number']},
                        {self.format_date(room['disinfection_date'])}
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
        for tenant in self.mongo.dwdb.tenant.find():
            try:
                self.oracle.cursor().execute(f"""
                    INSERT INTO TENANT VALUES (
                        {tenant['_id']},
                        {tenant['student_id']},
                        {tenant['room_id']},
                        {self.format_date(tenant['visit_period_entered'])},
                        {self.format_date(tenant['visit_period_left'])},
                        {tenant['warnings_count']},
                        {self.format_date(tenant['arrival_date'])},
                        {self.format_date(tenant['check_out_date'])}
                    )
                """)
            except Exception:
                pass
