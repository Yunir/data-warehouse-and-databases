CREATE TABLE EMPLOYEE(
                         ID_employee INT PRIMARY KEY CHECK(ID_employee>=0),
                         lastname VARCHAR(100),
                         firstname VARCHAR(100),
                         patronymic VARCHAR(100),
                         position VARCHAR(100)
);
CREATE TABLE LIBRARY_CARD(
                             ID_library_card INT PRIMARY KEY CHECK(ID_library_card>=0),
                             reader INT, FOREIGN KEY (reader) REFERENCES EMPLOYEE(ID_employee),
                             book_name VARCHAR(200),
                             receipt_bool_date DATE,
                             return_book_date DATE,
                             status_book VARCHAR(100)
);
CREATE TABLE SCIENCE_PROJECT(
                                ID_science_project INT PRIMARY KEY CHECK(ID_science_project>=0),
                                science_project_name VARCHAR(200),
                                period_participation_start DATE,
                                period_participation_stop DATE
);
CREATE TABLE EMPLOYEE_SCIENCE_PROJECT(
                                         ID_emp_sci_pro INT PRIMARY KEY CHECK(ID_emp_sci_pro>=0),
                                         employee INT, FOREIGN KEY (employee) REFERENCES EMPLOYEE(ID_employee),
                                         science_project INT, FOREIGN KEY (science_project) REFERENCES SCIENCE_PROJECT(ID_science_project)
);
CREATE TABLE PUB_EDITION(
                            ID_pub_edition INT PRIMARY KEY CHECK(ID_pub_edition>=0),
                            pub_edition_name VARCHAR(200),
                            pub_edition_language VARCHAR(100),
                            pub_edition_scope_sheets INT,
                            pub_edition_location VARCHAR(100),
                            pub_edition_type VARCHAR(100)
);
CREATE TABLE PUBLICATION(
                            ID_publication INT PRIMARY KEY CHECK(ID_publication>=0),
                            publication_name VARCHAR(200),
                            citation_index DOUBLE,
                            publication_date DATE,
                            pub_edition INT, FOREIGN KEY (pub_edition) REFERENCES PUB_EDITION(ID_pub_edition)
);
CREATE TABLE EMPLOYEE_PUBLICATION(
                                     ID_emp_pub INT PRIMARY KEY CHECK(ID_emp_pub>=0),
                                     employee INT, FOREIGN KEY (employee) REFERENCES EMPLOYEE(ID_employee),
                                     publication INT, FOREIGN KEY (publication) REFERENCES PUBLICATION(ID_publication)
);
CREATE TABLE CONFERENCE(
                           ID_conference INT PRIMARY KEY CHECK(ID_conference>=0),
                           conference_name VARCHAR(200),
                           edition_location VARCHAR(100),
                           conference_date DATE
);
CREATE TABLE EMPLOYEE_CONFERENCE(
                                    ID_emp_conf INT PRIMARY KEY CHECK(ID_emp_conf>=0),
                                    employee INT, FOREIGN KEY (employee) REFERENCES EMPLOYEE(ID_employee),
                                    conference INT, FOREIGN KEY (conference) REFERENCES CONFERENCE(ID_conference)
);

