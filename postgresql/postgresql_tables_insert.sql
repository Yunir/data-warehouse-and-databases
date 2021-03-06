INSERT INTO EMPLOYEE VALUES (1, 'Иванов', 'Петр', 'Юрьевич', 'ПИиКТ', 'ИТМО');
INSERT INTO EMPLOYEE VALUES (2, 'Петров', 'Иван', 'Семенович', 'ПИиКТ', 'ИТМО');
INSERT INTO EMPLOYEE VALUES (3, 'Сидоров', 'Михаил', 'Иванович', 'ПИиКТ', 'ИТМО');
INSERT INTO EMPLOYEE VALUES (4, 'Блинов', 'Родион', 'Яковлевич', 'ПИиКТ', 'ИТМО');
INSERT INTO EMPLOYEE VALUES (5, 'Бобров', 'Ростислав', 'Вадимович', 'ПИиКТ', 'ИТМО');
INSERT INTO EMPLOYEE VALUES (6, 'Горшкова', 'Софья', 'Сергеевна', 'ПИиКТ', 'ИТМО');
INSERT INTO EMPLOYEE VALUES (7, 'Федорова', 'Лилия', 'Олеговна', 'ПИиКТ', 'ИТМО');
INSERT INTO EMPLOYEE VALUES (8, 'Воробьева', 'Вераника', 'Георгевна', 'ПИиКТ', 'ИТМО');
INSERT INTO EMPLOYEE VALUES (9, 'Журовлева', 'Дарья', 'Вячеславовна', 'ПИиКТ', 'ИТМО');
INSERT INTO EMPLOYEE VALUES (10, 'Павлова', 'Мария', 'Кирилловна', 'ПИиКТ', 'ИТМО');

INSERT INTO EMPLOYEE VALUES (11, 'Королева', 'Юлия', 'Александровна', 'ПИиКТ', 'ИТМО');
INSERT INTO EMPLOYEE VALUES (12, 'Клеменков', 'Сергей', 'Викторович', 'ПИиКТ', 'ИТМО');
INSERT INTO EMPLOYEE VALUES (13, 'Цопа', 'Евгений', 'Алексеевич', 'ПИиКТ', 'ИТМО');
INSERT INTO EMPLOYEE VALUES (14, 'Баймуратов', 'Ильдар', 'Раисович', 'ПИиКТ', 'ИТМО');

INSERT INTO STUDENT VALUES (1, 1, 'очная', 'Нейротехнологии и программная инженерия', 'новый');
INSERT INTO STUDENT VALUES (2, 2, 'очная', 'Нейротехнологии и программная инженерия', 'новый');
INSERT INTO STUDENT VALUES (3, 3, 'очная', 'Системное и прикладное программное обеспечение', 'новый');
INSERT INTO STUDENT VALUES (4, 4, 'очная', 'Системное и прикладное программное обеспечение', 'новый');
INSERT INTO STUDENT VALUES (5, 5, 'очная', 'Аналитика данных', 'новый');
INSERT INTO STUDENT VALUES (6, 6, 'очная', 'Аналитика данных', 'новый');
INSERT INTO STUDENT VALUES (7, 7, 'заочная', 'Программное обеспечение интеллектуальных систем и технологий', 'старый');
INSERT INTO STUDENT VALUES (8, 8, 'заочная', 'Программное обеспечение интеллектуальных систем и технологий', 'старый');
INSERT INTO STUDENT VALUES (9, 9, 'заочная', 'Программирование и интернет-технологии', 'старый');
INSERT INTO STUDENT VALUES (10, 10, 'заочная', 'Программирование и интернет-технологии', 'старый');

INSERT INTO DISCIPLINE VALUES (1, 'Распределенные базы данных и знаний', 2, 5, 20, 0, 'экзамен');
INSERT INTO DISCIPLINE VALUES (2, 'Методология программной инженерии', 2, 10, 0, 40, 'экзамен');
INSERT INTO DISCIPLINE VALUES (3, 'Методы машинного обучения', 2, 4, 0, 20, 'зачет');

INSERT INTO DISC_STATEMENT VALUES (1, 1, 50, '2021/03/25');
INSERT INTO DISC_STATEMENT VALUES (2, 1, 55, '2021/03/25');
INSERT INTO DISC_STATEMENT VALUES (3, 1, 60, '2021/03/25');
INSERT INTO DISC_STATEMENT VALUES (4, 1, 65, '2021/03/25');
INSERT INTO DISC_STATEMENT VALUES (5, 1, 70, '2021/03/25');
INSERT INTO DISC_STATEMENT VALUES (6, 1, 75, '2021/04/08');
INSERT INTO DISC_STATEMENT VALUES (7, 1, 80, '2021/04/08');
INSERT INTO DISC_STATEMENT VALUES (8, 1, 85, '2021/04/08');
INSERT INTO DISC_STATEMENT VALUES (9, 1, 90, '2021/04/08');
INSERT INTO DISC_STATEMENT VALUES (10, 1, 95, '2021/04/08');

INSERT INTO DISC_STATEMENT VALUES (11, 2, 50, '2021/03/20');
INSERT INTO DISC_STATEMENT VALUES (12, 2, 55, '2021/03/20');
INSERT INTO DISC_STATEMENT VALUES (13, 2, 60, '2021/03/20');
INSERT INTO DISC_STATEMENT VALUES (14, 2, 65, '2021/03/27');
INSERT INTO DISC_STATEMENT VALUES (15, 2, 70, '2021/03/27');
INSERT INTO DISC_STATEMENT VALUES (16, 2, 75, '2021/03/27');
INSERT INTO DISC_STATEMENT VALUES (17, 2, 80, '2021/03/27');
INSERT INTO DISC_STATEMENT VALUES (18, 2, 85, '2021/04/05');
INSERT INTO DISC_STATEMENT VALUES (19, 2, 90, '2021/04/05');
INSERT INTO DISC_STATEMENT VALUES (20, 2, 95, '2021/04/05');

INSERT INTO DISC_STATEMENT VALUES (21, 3, 50, '2021/02/01');
INSERT INTO DISC_STATEMENT VALUES (22, 3, 55, '2021/02/02');
INSERT INTO DISC_STATEMENT VALUES (23, 3, 60, '2021/02/03');
INSERT INTO DISC_STATEMENT VALUES (24, 3, 65, '2021/02/04');
INSERT INTO DISC_STATEMENT VALUES (25, 3, 70, '2021/02/05');
INSERT INTO DISC_STATEMENT VALUES (26, 3, 75, '2021/02/08');
INSERT INTO DISC_STATEMENT VALUES (27, 3, 80, '2021/02/09');
INSERT INTO DISC_STATEMENT VALUES (28, 3, 85, '2021/02/10');
INSERT INTO DISC_STATEMENT VALUES (29, 3, 90, '2021/02/11');
INSERT INTO DISC_STATEMENT VALUES (30, 3, 95, '2021/02/12');

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
