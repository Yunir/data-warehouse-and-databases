CREATE TABLE EMPLOYEE(
                         ID_employee NUMBER(5) PRIMARY KEY CHECK(ID_employee>=0),
                         lastname VARCHAR2(100),
                         firstname VARCHAR2(100),
                         patronymic VARCHAR2(100),
                         birth_date DATE,
                         birth_place VARCHAR2(200),
                         position VARCHAR2(100),
                         subvision VARCHAR2(20),
                         work_period_start DATE,
                         work_period_stop DATE
);
CREATE TABLE STUDY_GROUP(
                            ID_group NUMBER(5) PRIMARY KEY CHECK(ID_group>=0),
                            course NUMBER(1),
                            study_group_period_start DATE,
                            study_group_period_stop DATE
);
CREATE TABLE STUDENT(
                        ID_student NUMBER(5) PRIMARY KEY CHECK(ID_student>=0),
                        employee NUMBER(5) NOT NULL CONSTRAINT stud_employee_fkey REFERENCES EMPLOYEE(ID_employee),
                        study_group NUMBER(5) NOT NULL CONSTRAINT stud_study_group_fkey REFERENCES STUDY_GROUP(ID_group),
                        training_form VARCHAR2(20) CHECK (training_form IN ('очная','заочная')),
                        specialty VARCHAR2(200),
                        training_type VARCHAR2(20) CHECK (training_type IN ('бюджет','контракт')),
                        direction VARCHAR2(100)
);
CREATE TABLE DISCIPLINE(
                           ID_discipline NUMBER(5) PRIMARY KEY CHECK(ID_discipline>=0),
                           discipline_name VARCHAR2(200),
                           academic_year VARCHAR2(20)
);
CREATE TABLE DISC_STATEMENT(
                               ID_disc_statement NUMBER(5) PRIMARY KEY CHECK(ID_disc_statement>=0),
                               discipline NUMBER(5) NOT NULL CONSTRAINT stat_discipline_fkey REFERENCES DISCIPLINE(ID_discipline),
                               points NUMBER,
                               date_growing_points DATE,
                               letter VARCHAR2(1)
);
CREATE TABLE SCHEDULE(
                         ID_schedule NUMBER(5) PRIMARY KEY CHECK(ID_schedule>=0),
                         discipline NUMBER(5)  NOT NULL CONSTRAINT shed_discipline_fkey REFERENCES DISCIPLINE(ID_discipline),
                         start_time TIMESTAMP,
                         audience NUMBER(5)
);
CREATE TABLE EMPLOYEE_DISCIPLINE(
                                    ID_emp_disp NUMBER(5) PRIMARY KEY CHECK(ID_emp_disp>=0),
                                    employee NUMBER(5) NOT NULL CONSTRAINT emp_disc_employee_fkey REFERENCES EMPLOYEE(ID_employee),
                                    discipline NUMBER(5) NOT NULL CONSTRAINT emp_disc_discipline_fkey REFERENCES DISCIPLINE(ID_discipline)
);
CREATE TABLE STUDENT_STATEMENT(
                                  ID_stud_state NUMBER(5) PRIMARY KEY CHECK(ID_stud_state>=0),
                                  student NUMBER(5) NOT NULL CONSTRAINT stud_stat_student_fkey REFERENCES STUDENT(ID_student),
                                  statement NUMBER(5) NOT NULL CONSTRAINT stud_stat_disc_statement_fkey REFERENCES DISC_STATEMENT(ID_disc_statement)
);


