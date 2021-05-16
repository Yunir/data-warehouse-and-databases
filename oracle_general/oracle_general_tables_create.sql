CREATE SCHEMA AUTHORIZATION manager
CREATE TABLE EMPLOYEE(
	ID_employee NUMBER(5) PRIMARY KEY CHECK(ID_employee>=0),
	lastname VARCHAR2(1000),
	firstname VARCHAR2(1000),
	patronymic VARCHAR2(1000),
	birth_date DATE,
	birth_place VARCHAR2(2000),
	position VARCHAR2(1000),
	qualification VARCHAR2(1000),
	subvision VARCHAR2(200),
	university_name varchar(1000),
	work_period_start DATE,
	work_period_stop DATE
)
CREATE TABLE STUDY_GROUP(
	ID_group NUMBER(5) PRIMARY KEY CHECK(ID_group>=0),
	course NUMBER(1),
	study_group_period_start DATE,
	study_group_period_stop DATE
)
CREATE TABLE STUDENT(
	ID_student NUMBER(5) PRIMARY KEY CHECK(ID_student>=0),
	employee NUMBER(5) NOT NULL CONSTRAINT stud_employee_fkey REFERENCES EMPLOYEE(ID_employee),
	study_group NUMBER(5) NOT NULL CONSTRAINT stud_study_group_fkey REFERENCES STUDY_GROUP(ID_group),
	training_form VARCHAR2(200) CHECK (training_form IN ('очная','заочная')),
	specialty VARCHAR2(2000),
	training_standart_type varchar(200),
	training_type VARCHAR2(200) CHECK (training_type IN ('бюджет','контракт')),
	direction VARCHAR2(1000),
	has_benefits VARCHAR2(10)
)
CREATE TABLE DISCIPLINE(
	ID_discipline NUMBER(5) PRIMARY KEY CHECK(ID_discipline>=0),
	discipline_name VARCHAR2(2000),
	semester NUMBER(5),
	lectures_hours NUMBER(5),
	practical_lessons_hours NUMBER(5),
	laboratory_lessons_hours NUMBER(5),
	control_form VARCHAR2(200),
	academic_year VARCHAR2(200)
)
CREATE TABLE DISC_STATEMENT(
	ID_disc_statement NUMBER(5) PRIMARY KEY CHECK(ID_disc_statement>=0),
	discipline NUMBER(5) NOT NULL CONSTRAINT stat_discipline_fkey REFERENCES DISCIPLINE(ID_discipline),
	points NUMBER,
	date_growing_points DATE,
	letter VARCHAR2(10)
)
CREATE TABLE SCHEDULE(
	ID_schedule NUMBER(5) PRIMARY KEY CHECK(ID_schedule>=0),
	discipline NUMBER(5)  NOT NULL CONSTRAINT shed_discipline_fkey REFERENCES DISCIPLINE(ID_discipline),
	start_time TIMESTAMP,
	audience NUMBER(5)
)
CREATE TABLE EMPLOYEE_DISCIPLINE(
	ID_emp_disp NUMBER(5) PRIMARY KEY CHECK(ID_emp_disp>=0),
	employee NUMBER(5) NOT NULL CONSTRAINT emp_disc_employee_fkey REFERENCES EMPLOYEE(ID_employee),
	discipline NUMBER(5) NOT NULL CONSTRAINT emp_disc_discipline_fkey REFERENCES DISCIPLINE(ID_discipline)
)
CREATE TABLE STUDENT_STATEMENT(
	ID_stud_state NUMBER(5) PRIMARY KEY CHECK(ID_stud_state>=0),
	student NUMBER(5) NOT NULL CONSTRAINT stud_stat_student_fkey REFERENCES STUDENT(ID_student),
	statement NUMBER(5) NOT NULL CONSTRAINT stud_stat_disc_statement_fkey REFERENCES DISC_STATEMENT(ID_disc_statement)
)
CREATE TABLE LIBRARY_CARD(
	ID_library_card NUMBER(5) PRIMARY KEY CHECK(ID_library_card>=0),
	reader NUMBER(5) NOT NULL CONSTRAINT lib_card_employee_fkey REFERENCES EMPLOYEE(ID_employee),
	book_name VARCHAR2(2000),
	receipt_bool_date DATE,
	return_book_date DATE,
	status_book VARCHAR2(1000)
)
CREATE TABLE SCIENCE_PROJECT(
	ID_science_project NUMBER(5) PRIMARY KEY CHECK(ID_science_project>=0),
	science_project_name VARCHAR2(2000),
	period_participation_start DATE,
	period_participation_stop DATE
)
CREATE TABLE EMPLOYEE_SCIENCE_PROJECT(
	ID_emp_sci_pro NUMBER(5) PRIMARY KEY CHECK(ID_emp_sci_pro>=0),
	employee NUMBER(5) NOT NULL CONSTRAINT emp_sci_pro_employee_fkey REFERENCES EMPLOYEE(ID_employee),
	science_project NUMBER(5) NOT NULL CONSTRAINT emp_sci_pro_science_project_fkey REFERENCES SCIENCE_PROJECT(ID_science_project)
)
CREATE TABLE PUB_EDITION(
	ID_pub_edition NUMBER(5) PRIMARY KEY CHECK(ID_pub_edition>=0),
	pub_edition_name VARCHAR2(2000),
	pub_edition_language VARCHAR2(1000),
	pub_edition_scope_sheets NUMBER(5),
	pub_edition_location VARCHAR2(1000),
	pub_edition_type VARCHAR2(1000)
)
CREATE TABLE PUBLICATION(
	ID_publication NUMBER(5) PRIMARY KEY CHECK(ID_publication>=0),
	publication_name VARCHAR2(2000),
	citation_index NUMBER,
	publication_date DATE,
	pub_edition NUMBER(5) NOT NULL CONSTRAINT publication_edition_fkey REFERENCES PUB_EDITION(ID_pub_edition)
)
CREATE TABLE EMPLOYEE_PUBLICATION(
	ID_emp_pub NUMBER(5) PRIMARY KEY CHECK(ID_emp_pub>=0),
	employee NUMBER(5) NOT NULL CONSTRAINT emp_pub_employee_fkey REFERENCES EMPLOYEE(ID_employee),
	publication NUMBER(5) NOT NULL CONSTRAINT emp_pub_publication_fkey REFERENCES PUBLICATION(ID_publication)
)
CREATE TABLE CONFERENCE(
	ID_conference NUMBER(5) PRIMARY KEY CHECK(ID_conference>=0),
	conference_name VARCHAR2(2000),
	edition_location VARCHAR2(1000),
	conference_date DATE
)
CREATE TABLE EMPLOYEE_CONFERENCE(
	ID_emp_conf NUMBER(5) PRIMARY KEY CHECK(ID_emp_conf>=0),
	employee NUMBER(5) NOT NULL CONSTRAINT emp_conf_employee_fkey REFERENCES EMPLOYEE(ID_employee),
	conference NUMBER(5) NOT NULL CONSTRAINT emp_pub_conference_fkey REFERENCES CONFERENCE(ID_conference)
)
CREATE TABLE HOSTEL(
	ID_hostel NUMBER(5) PRIMARY KEY CHECK(ID_hostel>=0),
	hostel_location VARCHAR2(1000),
	rooms_number NUMBER(5),
	claws VARCHAR2(10)
)
CREATE TABLE ROOM(
	ID_room NUMBER(5) PRIMARY KEY CHECK(ID_room>=0),
	hostel NUMBER(5) NOT NULL CONSTRAINT room_hostel_fkey REFERENCES HOSTEL(ID_hostel),
	payment_amount NUMBER(5),
	room_number NUMBER(5),
	room_capacity NUMBER(5),
	livers_number NUMBER(5),
	disinfection_date DATE
)
CREATE TABLE TENANT(
	ID_tenant NUMBER(5) PRIMARY KEY CHECK(ID_tenant>=0),
	student NUMBER(5) NOT NULL CONSTRAINT tenant_student_fkey REFERENCES STUDENT(ID_student),
	room NUMBER(5) NOT NULL CONSTRAINT tenant_room_fkey REFERENCES ROOM(ID_room),
	visit_period_entered DATE,
	visit_period_left DATE,
	warnings_count NUMBER(5),
	arrival_date DATE,
	check_out_date DATE
);
