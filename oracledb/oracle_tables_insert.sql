INSERT INTO EMPLOYEE VALUES (1, 'Иванов', 'Петр', 'Юрьевич', to_date('1998/01/10', 'yyyy/mm/dd'), 'Санкт-Петербург', 'Бакалавр', 'ПИиКТ', to_date('2019/09/01', 'yyyy/mm/dd'), to_date('2021/08/31', 'yyyy/mm/dd'));
INSERT INTO EMPLOYEE VALUES (2, 'Петров', 'Иван', 'Семенович', to_date('1998/02/10', 'yyyy/mm/dd'), 'Санкт-Петербург', 'Бакалавр', 'ПИиКТ', to_date('2019/09/01', 'yyyy/mm/dd'), to_date('2021/08/31', 'yyyy/mm/dd'));
INSERT INTO EMPLOYEE VALUES (3, 'Сидоров', 'Михаил', 'Иванович', to_date('1998/03/10', 'yyyy/mm/dd'), 'Санкт-Петербург', 'Бакалавр', 'ПИиКТ', to_date('2019/09/01', 'yyyy/mm/dd'), to_date('2021/08/31', 'yyyy/mm/dd'));
INSERT INTO EMPLOYEE VALUES (4, 'Блинов', 'Родион', 'Яковлевич', to_date('1998/04/10', 'yyyy/mm/dd'), 'Санкт-Петербург', 'Бакалавр', 'ПИиКТ', to_date('2019/09/01', 'yyyy/mm/dd'), to_date('2021/08/31', 'yyyy/mm/dd'));
INSERT INTO EMPLOYEE VALUES (5, 'Бобров', 'Ростислав', 'Вадимович', to_date('1998/05/10', 'yyyy/mm/dd'), 'Псковская область', 'Магистр', 'ПИиКТ', to_date('2019/09/01', 'yyyy/mm/dd'), to_date('2021/08/31', 'yyyy/mm/dd'));
INSERT INTO EMPLOYEE VALUES (6, 'Горшкова', 'Софья', 'Сергеевна', to_date('1998/06/10', 'yyyy/mm/dd'), 'Псковская область', 'Магистр', 'ПИиКТ', to_date('2020/09/01', 'yyyy/mm/dd'), to_date('2022/08/31', 'yyyy/mm/dd'));
INSERT INTO EMPLOYEE VALUES (7, 'Федорова', 'Лилия', 'Олеговна', to_date('1998/07/10', 'yyyy/mm/dd'), 'Псковская область', 'Магистр', 'ПИиКТ', to_date('2020/09/01', 'yyyy/mm/dd'), to_date('2022/08/31', 'yyyy/mm/dd'));
INSERT INTO EMPLOYEE VALUES (8, 'Воробьева', 'Вераника', 'Георгевна', to_date('1998/08/10', 'yyyy/mm/dd'), 'Новгородская область', 'Магистр', 'ПИиКТ', to_date('2020/09/01', 'yyyy/mm/dd'), to_date('2022/08/31', 'yyyy/mm/dd'));
INSERT INTO EMPLOYEE VALUES (9, 'Журовлева', 'Дарья', 'Вячеславовна', to_date('1998/09/10', 'yyyy/mm/dd'), 'Новгородская область', 'Магистр', 'ПИиКТ', to_date('2020/09/01', 'yyyy/mm/dd'), to_date('2022/08/31', 'yyyy/mm/dd'));
INSERT INTO EMPLOYEE VALUES (10, 'Павлова', 'Мария', 'Кирилловна', to_date('1998/10/10', 'yyyy/mm/dd'), 'Новгородская область', 'Магистр', 'ПИиКТ', to_date('2020/09/01', 'yyyy/mm/dd'), to_date('2022/08/31', 'yyyy/mm/dd'));

INSERT INTO EMPLOYEE VALUES (11, 'Королева', 'Юлия', 'Александровна', to_date('1988/01/10', 'yyyy/mm/dd'), 'Санкт-Петербург', 'Доцент', 'ПИиКТ', to_date('2019/09/01', 'yyyy/mm/dd'), to_date('2025/08/31', 'yyyy/mm/dd'));
INSERT INTO EMPLOYEE VALUES (12, 'Клеменков', 'Сергей', 'Викторович', to_date('1968/01/10', 'yyyy/mm/dd'), 'Санкт-Петербург', 'Доцент', 'ПИиКТ', to_date('2019/09/01', 'yyyy/mm/dd'), to_date('2025/08/31', 'yyyy/mm/dd'));
INSERT INTO EMPLOYEE VALUES (13, 'Цопа', 'Евгений', 'Алексеевич', to_date('1968/01/10', 'yyyy/mm/dd'), 'Санкт-Петербург', 'Доцент', 'ПИиКТ', to_date('2019/09/01', 'yyyy/mm/dd'), to_date('2025/08/31', 'yyyy/mm/dd'));
INSERT INTO EMPLOYEE VALUES (14, 'Баймуратов', 'Ильдар', 'Раисович', to_date('1988/01/10', 'yyyy/mm/dd'), 'Санкт-Петербург', 'Доцент', 'ПИиКТ', to_date('2019/09/01', 'yyyy/mm/dd'), to_date('2025/08/31', 'yyyy/mm/dd'));

INSERT INTO STUDY_GROUP VALUES (1, 1, to_date('2018/09/01', 'yyyy/mm/dd'), to_date('2019/08/31', 'yyyy/mm/dd'));
INSERT INTO STUDY_GROUP VALUES (2, 1, to_date('2020/09/01', 'yyyy/mm/dd'), to_date('2021/08/31', 'yyyy/mm/dd'));
INSERT INTO STUDY_GROUP VALUES (3, 2, to_date('2020/09/01', 'yyyy/mm/dd'), to_date('2021/08/31', 'yyyy/mm/dd'));
INSERT INTO STUDY_GROUP VALUES (4, 2, to_date('2021/09/01', 'yyyy/mm/dd'), to_date('2022/08/31', 'yyyy/mm/dd'));

INSERT INTO STUDENT VALUES (1, 1, 1, 'очная', 'Нейротехнологии и программная инженерия', 'бюджет' , '09.04.04 Программная инженерия');
INSERT INTO STUDENT VALUES (2, 2, 1, 'очная', 'Нейротехнологии и программная инженерия', 'бюджет', '09.04.04 Программная инженерия');
INSERT INTO STUDENT VALUES (3, 3, 1, 'очная', 'Системное и прикладное программное обеспечение', 'бюджет', '09.04.04 Программная инженерия');
INSERT INTO STUDENT VALUES (4, 4, 2, 'очная', 'Системное и прикладное программное обеспечение', 'бюджет', '09.04.04 Программная инженерия');
INSERT INTO STUDENT VALUES (5, 5, 2, 'очная', 'Аналитика данных', 'бюджет', '01.04.02 - Прикладная математика и информатика');
INSERT INTO STUDENT VALUES (6, 6, 2, 'очная', 'Аналитика данных', 'бюджет', '01.04.02 - Прикладная математика и информатика');
INSERT INTO STUDENT VALUES (7, 7, 3, 'заочная', 'Программное обеспечение интеллектуальных систем и технологий', 'бюджет', '09.04.01 Информатика и вычислительная техника');
INSERT INTO STUDENT VALUES (8, 8, 3, 'заочная', 'Программное обеспечение интеллектуальных систем и технологий', 'бюджет', '09.04.01 Информатика и вычислительная техника');
INSERT INTO STUDENT VALUES (9, 9, 4, 'заочная', 'Программирование и интернет-технологии', 'контракт', '09.04.02 Информационные системы и технологии');
INSERT INTO STUDENT VALUES (10, 10, 4, 'заочная', 'Программирование и интернет-технологии', 'контракт', '09.04.02 Информационные системы и технологии');

INSERT INTO DISCIPLINE VALUES (1, 'Распределенные базы данных и знаний', '2020/2021');
INSERT INTO DISCIPLINE VALUES (2, 'Методология программной инженерии', '2020/2021');
INSERT INTO DISCIPLINE VALUES (3, 'Методы машинного обучения', '2020/2021');

INSERT INTO DISC_STATEMENT VALUES (1, 1, 50, to_date('2021/03/25', 'yyyy/mm/dd'), 'F');
INSERT INTO DISC_STATEMENT VALUES (2, 1, 55, to_date('2021/03/25', 'yyyy/mm/dd'), 'F');
INSERT INTO DISC_STATEMENT VALUES (3, 1, 60, to_date('2021/03/25', 'yyyy/mm/dd'), 'E');
INSERT INTO DISC_STATEMENT VALUES (4, 1, 65, to_date('2021/03/25', 'yyyy/mm/dd'), 'E');
INSERT INTO DISC_STATEMENT VALUES (5, 1, 70, to_date('2021/03/25', 'yyyy/mm/dd'), 'D');
INSERT INTO DISC_STATEMENT VALUES (6, 1, 75, to_date('2021/04/08', 'yyyy/mm/dd'), 'C');
INSERT INTO DISC_STATEMENT VALUES (7, 1, 80, to_date('2021/04/08', 'yyyy/mm/dd'), 'B');
INSERT INTO DISC_STATEMENT VALUES (8, 1, 85, to_date('2021/04/08', 'yyyy/mm/dd'), 'B');
INSERT INTO DISC_STATEMENT VALUES (9, 1, 90, to_date('2021/04/08', 'yyyy/mm/dd'), 'A');
INSERT INTO DISC_STATEMENT VALUES (10, 1, 95, to_date('2021/04/08', 'yyyy/mm/dd'), 'A');

INSERT INTO DISC_STATEMENT VALUES (11, 2, 50, to_date('2021/03/20', 'yyyy/mm/dd'), 'F');
INSERT INTO DISC_STATEMENT VALUES (12, 2, 55, to_date('2021/03/20', 'yyyy/mm/dd'), 'F');
INSERT INTO DISC_STATEMENT VALUES (13, 2, 60, to_date('2021/03/20', 'yyyy/mm/dd'), 'E');
INSERT INTO DISC_STATEMENT VALUES (14, 2, 65, to_date('2021/03/27', 'yyyy/mm/dd'), 'E');
INSERT INTO DISC_STATEMENT VALUES (15, 2, 70, to_date('2021/03/27', 'yyyy/mm/dd'), 'D');
INSERT INTO DISC_STATEMENT VALUES (16, 2, 75, to_date('2021/03/27', 'yyyy/mm/dd'), 'C');
INSERT INTO DISC_STATEMENT VALUES (17, 2, 80, to_date('2021/03/27', 'yyyy/mm/dd'), 'B');
INSERT INTO DISC_STATEMENT VALUES (18, 2, 85, to_date('2021/04/05', 'yyyy/mm/dd'), 'B');
INSERT INTO DISC_STATEMENT VALUES (19, 2, 90, to_date('2021/04/05', 'yyyy/mm/dd'), 'A');
INSERT INTO DISC_STATEMENT VALUES (20, 2, 95, to_date('2021/04/05', 'yyyy/mm/dd'), 'A');

INSERT INTO DISC_STATEMENT VALUES (21, 3, 50, to_date('2021/02/01', 'yyyy/mm/dd'), 'F');
INSERT INTO DISC_STATEMENT VALUES (22, 3, 55, to_date('2021/02/02', 'yyyy/mm/dd'), 'F');
INSERT INTO DISC_STATEMENT VALUES (23, 3, 60, to_date('2021/02/03', 'yyyy/mm/dd'), 'E');
INSERT INTO DISC_STATEMENT VALUES (24, 3, 65, to_date('2021/02/04', 'yyyy/mm/dd'), 'E');
INSERT INTO DISC_STATEMENT VALUES (25, 3, 70, to_date('2021/02/05', 'yyyy/mm/dd'), 'D');
INSERT INTO DISC_STATEMENT VALUES (26, 3, 75, to_date('2021/02/06', 'yyyy/mm/dd'), 'C');
INSERT INTO DISC_STATEMENT VALUES (27, 3, 80, to_date('2021/02/07', 'yyyy/mm/dd'), 'B');
INSERT INTO DISC_STATEMENT VALUES (28, 3, 85, to_date('2021/02/08', 'yyyy/mm/dd'), 'B');
INSERT INTO DISC_STATEMENT VALUES (29, 3, 90, to_date('2021/02/09', 'yyyy/mm/dd'), 'A');
INSERT INTO DISC_STATEMENT VALUES (30, 3, 95, to_date('2021/02/10', 'yyyy/mm/dd'), 'A');

INSERT INTO EMPLOYEE_DISCIPLINE VALUES (1, 11, 1);
INSERT INTO EMPLOYEE_DISCIPLINE VALUES (2, 12, 2);
INSERT INTO EMPLOYEE_DISCIPLINE VALUES (3, 13, 2);
INSERT INTO EMPLOYEE_DISCIPLINE VALUES (4, 14, 3);

INSERT INTO STUDENT_STATEMENT VALUES (1, 1, 1);
INSERT INTO STUDENT_STATEMENT VALUES (2, 2, 2);
INSERT INTO STUDENT_STATEMENT VALUES (3, 3, 3);
INSERT INTO STUDENT_STATEMENT VALUES (4, 4, 4);
INSERT INTO STUDENT_STATEMENT VALUES (5, 5, 5);
INSERT INTO STUDENT_STATEMENT VALUES (6, 6, 6);
INSERT INTO STUDENT_STATEMENT VALUES (7, 7, 7);
INSERT INTO STUDENT_STATEMENT VALUES (8, 8, 8);
INSERT INTO STUDENT_STATEMENT VALUES (9, 9, 9);
INSERT INTO STUDENT_STATEMENT VALUES (10, 10, 10);

INSERT INTO STUDENT_STATEMENT VALUES (11, 1, 11);
INSERT INTO STUDENT_STATEMENT VALUES (12, 2, 12);
INSERT INTO STUDENT_STATEMENT VALUES (13, 3, 13);
INSERT INTO STUDENT_STATEMENT VALUES (14, 4, 14);
INSERT INTO STUDENT_STATEMENT VALUES (15, 5, 15);
INSERT INTO STUDENT_STATEMENT VALUES (16, 6, 16);
INSERT INTO STUDENT_STATEMENT VALUES (17, 7, 17);
INSERT INTO STUDENT_STATEMENT VALUES (18, 8, 18);
INSERT INTO STUDENT_STATEMENT VALUES (19, 9, 19);
INSERT INTO STUDENT_STATEMENT VALUES (20, 10, 20);

INSERT INTO STUDENT_STATEMENT VALUES (21, 1, 21);
INSERT INTO STUDENT_STATEMENT VALUES (22, 2, 22);
INSERT INTO STUDENT_STATEMENT VALUES (23, 3, 23);
INSERT INTO STUDENT_STATEMENT VALUES (24, 4, 24);
INSERT INTO STUDENT_STATEMENT VALUES (25, 5, 25);
INSERT INTO STUDENT_STATEMENT VALUES (26, 6, 26);
INSERT INTO STUDENT_STATEMENT VALUES (27, 7, 27);
INSERT INTO STUDENT_STATEMENT VALUES (28, 8, 28);
INSERT INTO STUDENT_STATEMENT VALUES (29, 9, 29);
INSERT INTO STUDENT_STATEMENT VALUES (30, 10, 30);

INSERT INTO SCHEDULE VALUES (1, 1, to_date('2021/03/20 18:00', 'yyyy/mm/dd hh24:mi'), 285);
INSERT INTO SCHEDULE VALUES (2, 1, to_date('2021/03/21 18:00', 'yyyy/mm/dd hh24:mi'), 285);
INSERT INTO SCHEDULE VALUES (3, 1, to_date('2021/03/22 18:00', 'yyyy/mm/dd hh24:mi'), 285);
INSERT INTO SCHEDULE VALUES (4, 1, to_date('2021/03/23 18:00', 'yyyy/mm/dd hh24:mi'), 285);
INSERT INTO SCHEDULE VALUES (5, 2, to_date('2021/03/26 14:00', 'yyyy/mm/dd hh24:mi'), 405);
INSERT INTO SCHEDULE VALUES (6, 2, to_date('2021/03/27 14:00', 'yyyy/mm/dd hh24:mi'), 405);
INSERT INTO SCHEDULE VALUES (7, 2, to_date('2021/03/28 14:00', 'yyyy/mm/dd hh24:mi'), 405);
INSERT INTO SCHEDULE VALUES (8, 2, to_date('2021/03/29 14:00', 'yyyy/mm/dd hh24:mi'), 405);
INSERT INTO SCHEDULE VALUES (9, 3, to_date('2021/04/01 08:20', 'yyyy/mm/dd hh24:mi'), 1214);
INSERT INTO SCHEDULE VALUES (10, 3, to_date('2021/04/02 08:20', 'yyyy/mm/dd hh24:mi'), 1214);
INSERT INTO SCHEDULE VALUES (11, 3, to_date('2021/04/03 08:20', 'yyyy/mm/dd hh24:mi'), 1214);
INSERT INTO SCHEDULE VALUES (12, 3, to_date('2021/04/04 08:20', 'yyyy/mm/dd hh24:mi'), 1214);
