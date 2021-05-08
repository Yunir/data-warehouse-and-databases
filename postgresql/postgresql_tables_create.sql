CREATE TABLE EMPLOYEE(
                         ID_employee integer PRIMARY KEY CHECK(ID_employee>=0),
                         lastname varchar(100),
                         firstname varchar(100),
                         patronymic varchar(100),
                         subvision varchar(20),
                         university_name varchar(100)
);
CREATE TABLE STUDENT(
                        ID_student integer PRIMARY KEY CHECK(ID_student>=0),
                        employee integer NOT NULL REFERENCES EMPLOYEE(ID_employee),
                        training_form varchar(20) CHECK (training_form IN ('очная','заочная')),
                        specialty varchar(200),
                        training_standart_type varchar(20) CHECK (training_standart_type IN ('старый','новый'))
);
CREATE TABLE DISCIPLINE(
                           ID_discipline integer PRIMARY KEY CHECK(ID_discipline>=0),
                           discipline_name varchar(200),
                           semester integer,
                           lectures_hours integer,
                           practical_lessons_hours integer,
                           laboratory_lessons_hours integer,
                           control_form varchar(20) CHECK (control_form IN ('экзамен','зачет'))
);
CREATE TABLE DISC_STATEMENT(
                               ID_disc_statement integer PRIMARY KEY CHECK(ID_disc_statement>=0),
                               discipline integer NOT NULL REFERENCES DISCIPLINE(ID_discipline),
                               points numeric,
                               date_growing_points date
);
CREATE TABLE EMPLOYEE_DISCIPLINE(
                                    ID_emp_disp integer PRIMARY KEY CHECK(ID_emp_disp>=0),
                                    employee integer NOT NULL REFERENCES EMPLOYEE(ID_employee),
                                    discipline integer NOT NULL REFERENCES DISCIPLINE(ID_discipline)
);
CREATE TABLE STUDENT_STATEMENT(
                                  ID_stud_state integer PRIMARY KEY CHECK(ID_stud_state>=0),
                                  student integer NOT NULL REFERENCES STUDENT(ID_student),
                                  disc_statement integer NOT NULL REFERENCES DISC_STATEMENT(ID_disc_statement)
);

