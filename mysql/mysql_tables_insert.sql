INSERT INTO EMPLOYEE VALUES (1, 'Иванов', 'Петр', 'Юрьевич', 'Бакалавр');
INSERT INTO EMPLOYEE VALUES (2, 'Петров', 'Иван', 'Семенович', 'Бакалавр');
INSERT INTO EMPLOYEE VALUES (3, 'Сидоров', 'Михаил', 'Иванович','Бакалавр');
INSERT INTO EMPLOYEE VALUES (4, 'Блинов', 'Родион', 'Яковлевич', 'Бакалавр');
INSERT INTO EMPLOYEE VALUES (5, 'Бобров', 'Ростислав', 'Вадимович','Магистр');
INSERT INTO EMPLOYEE VALUES (6, 'Горшкова', 'Софья', 'Сергеевна', 'Магистр');
INSERT INTO EMPLOYEE VALUES (7, 'Федорова', 'Лилия', 'Олеговна', 'Магистр');
INSERT INTO EMPLOYEE VALUES (8, 'Воробьева', 'Вераника', 'Георгевна', 'Магистр');
INSERT INTO EMPLOYEE VALUES (9, 'Журовлева', 'Дарья', 'Вячеславовна', 'Магистр');
INSERT INTO EMPLOYEE VALUES (10, 'Павлова', 'Мария', 'Кирилловна', 'Магистр');

INSERT INTO EMPLOYEE VALUES (11, 'Королева', 'Юлия', 'Александровна', 'Доцент');
INSERT INTO EMPLOYEE VALUES (12, 'Клеменков', 'Сергей', 'Викторович', 'Доцент');
INSERT INTO EMPLOYEE VALUES (13, 'Цопа', 'Евгений', 'Алексеевич', 'Доцент');
INSERT INTO EMPLOYEE VALUES (14, 'Баймуратов', 'Ильдар', 'Раисович', 'Доцент');

INSERT INTO LIBRARY_CARD VALUES (1, 1, 'Джонсон Г.В., Грэхем М. Конструирование высокоскоростных цифровых устройств. Начальный курс черной магии.', '2020/09/10', null, 'взял книгу');
INSERT INTO LIBRARY_CARD VALUES (2, 1, 'Джонсон Г.В., Грэхем М. Высокоскоростная передача цифровых данных. Высший курс черной магии.', '2020/09/12', null, 'взял книгу');
INSERT INTO LIBRARY_CARD VALUES (3, 1, 'Налим Талеб. Черный лебедь. Под знаком непредсказуемости.', '2020/09/14', null, 'взял книгу');
INSERT INTO LIBRARY_CARD VALUES (4, 2, 'Роберт Мартин.Чистая архитектура. Искусство разработки программного обеспечения.', '2020/10/16', null, 'взял книгу');
INSERT INTO LIBRARY_CARD VALUES (5, 2, 'Брукс Ф. Мифический человеко-месяц или как создаются программные системы.', '2020/10/18', null, 'потерял книгу');
INSERT INTO LIBRARY_CARD VALUES (6, 2, 'Буч Г. Объектно-ориентированный анализ и проектирование с примерами приложений.', '2020/10/20', null, 'потерял книгу');
INSERT INTO LIBRARY_CARD VALUES (7, 3, 'Непейвода Н.Н., Скопин И.Н. Основания программирования.', '2021/01/22', null, 'потерял книгу');
INSERT INTO LIBRARY_CARD VALUES (8, 3, 'Джонсон Г.В., Грэхем М. Конструирование высокоскоростных цифровых устройств. Начальный курс черной магии.', '2020/01/24', '2021/02/11', 'отдал книгу');
INSERT INTO LIBRARY_CARD VALUES (9, 3, 'Джонсон Г.В., Грэхем М. Высокоскоростная передача цифровых данных. Высший курс черной магии.', '2020/01/26', '2021/03/11', 'отдал книгу');
INSERT INTO LIBRARY_CARD VALUES (10, 3, 'Налим Талеб. Черный лебедь. Под знаком непредсказуемости.', '2020/01/28', '2021/04/11', 'отдал книгу');

INSERT INTO SCIENCE_PROJECT VALUES (1, 'Автоматическая обработка объектно-ориентированного кода с использованием семантической сети', '2019/11/10', '2020/02/24');
INSERT INTO SCIENCE_PROJECT VALUES (2, 'Акторная модель программирования на примере технологии Akka.NET', '2019/12/14', '2020/03/26');
INSERT INTO SCIENCE_PROJECT VALUES (3, 'Анализ объявлений о недвижимости с использованием фреймовой семантики', '2020/01/18', '2021/04/28');
INSERT INTO SCIENCE_PROJECT VALUES (4, 'Алгоритмы определения размеров камней в потоке на конвейере по видео', '2020/02/22', '2021/05/30');
INSERT INTO SCIENCE_PROJECT VALUES (5, 'Аппаратное удаленное управление компьютером с помощью одноплатного мини-компьютера', '2020/03/26', '2021/06/02');

INSERT INTO EMPLOYEE_SCIENCE_PROJECT VALUES (1, 1, 1);
INSERT INTO EMPLOYEE_SCIENCE_PROJECT VALUES (2, 1, 2);
INSERT INTO EMPLOYEE_SCIENCE_PROJECT VALUES (3, 2, 1);
INSERT INTO EMPLOYEE_SCIENCE_PROJECT VALUES (4, 2, 2);
INSERT INTO EMPLOYEE_SCIENCE_PROJECT VALUES (5, 3, 3);
INSERT INTO EMPLOYEE_SCIENCE_PROJECT VALUES (6, 3, 4);
INSERT INTO EMPLOYEE_SCIENCE_PROJECT VALUES (7, 4, 4);
INSERT INTO EMPLOYEE_SCIENCE_PROJECT VALUES (8, 4, 5);

INSERT INTO PUB_EDITION VALUES (1, 'Наносистемы: физика, химия, математика', 'Английский', 20, 'Тверь', 'вак');
INSERT INTO PUB_EDITION VALUES (2, 'Экономика и экологический менеджмент', 'Английский', 20, 'Тверь', 'вак');
INSERT INTO PUB_EDITION VALUES (3, 'Процессы и аппараты пищевых производств', 'Английский', 40, 'Тверь', 'вак');
INSERT INTO PUB_EDITION VALUES (4, 'Известия высших учебных заведений. Приборостроение', 'Русский', 40, 'Москва', 'ринц');
INSERT INTO PUB_EDITION VALUES (5, 'Научно-технический вестник информационных технологий, механики и оптики', 'Русский', 100, 'Москва', 'ринц');

INSERT INTO PUBLICATION VALUES (1, 'БИФУРЦИОННЫЕ СТОЯЧИЕ ВОЛНЫ ДЛЯ ЭФФЕКТИВНЫХ УРАВНЕНИЙ В СТРУКТУРАХ С ЗАЩЕЛЕННЫМИ МЕДОВЫМИ ГОНКАМИ', 2, '2020/09/14', 1);
INSERT INTO PUBLICATION VALUES (2, 'ДИСКРЕТНЫЙ АНАЛИЗ СПЕКТРА С ПОМОЩЬЮ ПРЕОБРАЗОВАНИЯ ЛАПЛАСА И УРАВНЕНИЙ ВОЛЬТЕРРА (DALV-МЕТОД)', 2, '2020/09/18', 1);
INSERT INTO PUBLICATION VALUES (3, 'СОВРЕМЕННЫЕ КАДРОВЫЕ ТЕХНОЛОГИИ В ОРГАНАХ ГОСУДАРСТВЕННОЙ ВЛАСТИ', 5, '2020/10/22', 2);
INSERT INTO PUBLICATION VALUES (4, 'ПРИМЕНЕНИЕ НЕЧЕТКОЙ ЛОГИКИ В УПРАВЛЕНИИ ПРЕДПРИЯТИЕМ ПИЩЕВОЙ ПРОМЫШЛЕННОСТИ', 5, '2020/10/26', 2);
INSERT INTO PUBLICATION VALUES (5, 'ФУРЬЕ-СПЕКТРОСКОПИЯ САРКОПЛАЗМАТИЧЕСКИХ, МИОФИБРИЛЛЯРНЫХ И СОЕДИНИТЕЛЬНОТКАННЫХ БЕЛКОВ МЫШЕЧНОЙ ТКАНИ СВИНИНЫ', 5, '2020/11/30', 3);
INSERT INTO PUBLICATION VALUES (6, 'ВЛИЯНИЕ ЩЕЛЕВОГО ЗАЗОРА НА ПРОЦЕСС ФОРМИРОВАНИЯ ДАВЛЕНИЯ ПО ДЛИНЕ ШНЕКОВОЙ ПОВЕРХНОСТИ ЭКСТРУДЕРОВ', 8, '2020/11/04', 3);
INSERT INTO PUBLICATION VALUES (7, 'ОБОСНОВАНИЕ ПЕРЕХОДА ГИПОТЕЗЫ АДАМАРА В ТЕОРЕМУ', 8, '2020/12/08', 4);
INSERT INTO PUBLICATION VALUES (8, 'СТАБИЛИЗАЦИЯ ЛИНЕЙНОЙ НЕСТАЦИОНАРНОЙ СИСТЕМЫ В УСЛОВИЯХ ЗАПАЗДЫВАНИЯ И АДДИТИВНОГО СИНУСОИДАЛЬНОГО ВОЗМУЩЕНИЯ ВЫХОДА', 8, '2020/12/12', 4);
INSERT INTO PUBLICATION VALUES (9, 'РАЗРАБОТКА И ПОДДЕРЖАНИЕ ОБЪЕКТИВНОЙ РАСПРЕДЕЛЕННОЙ МУЛЬТИМЕДИА ИНФОРМАЦИОННОЙ СИСТЕМЫ', 9, '2021/01/24', 5);
INSERT INTO PUBLICATION VALUES (10, 'СОЗДАНИЕ УНИФИЦИРОВАННОЙ СИСТЕМЫ ПОЛЬЗОВАТЕЛЬСКОГО ИНТЕРФЕЙСА НА ОСНОВЕ XML В АРХИТЕКТУРЕ J2EE', 9, '2021/01/28', 5);

INSERT INTO EMPLOYEE_PUBLICATION VALUES (1, 1, 1);
INSERT INTO EMPLOYEE_PUBLICATION VALUES (2, 1, 2);
INSERT INTO EMPLOYEE_PUBLICATION VALUES (3, 2, 1);
INSERT INTO EMPLOYEE_PUBLICATION VALUES (4, 2, 2);
INSERT INTO EMPLOYEE_PUBLICATION VALUES (5, 3, 3);
INSERT INTO EMPLOYEE_PUBLICATION VALUES (6, 4, 4);
INSERT INTO EMPLOYEE_PUBLICATION VALUES (7, 5, 5);
INSERT INTO EMPLOYEE_PUBLICATION VALUES (8, 6, 6);
INSERT INTO EMPLOYEE_PUBLICATION VALUES (9, 6, 7);
INSERT INTO EMPLOYEE_PUBLICATION VALUES (10, 6, 8);
INSERT INTO EMPLOYEE_PUBLICATION VALUES (11, 7, 7);
INSERT INTO EMPLOYEE_PUBLICATION VALUES (12, 7, 8);
INSERT INTO EMPLOYEE_PUBLICATION VALUES (13, 7, 9);
INSERT INTO EMPLOYEE_PUBLICATION VALUES (14, 8, 9);
INSERT INTO EMPLOYEE_PUBLICATION VALUES (15, 8, 10);

INSERT INTO CONFERENCE VALUES (1, 'XXXVII Международная научно-практическая конференция «Российская наука в современном мире»', 'Санкт-Петербург', '2020/11/22');
INSERT INTO CONFERENCE VALUES (2, 'IV Международная научно-практическая конференция «Инновационные технологии, экономика и менеджмент в промышленности»', 'Санкт-Петербург', '2020/11/28');
INSERT INTO CONFERENCE VALUES (3, 'II Международная научно-практическая конференция «Новые вызовы новой науки: опыт теоретического и эмпирического анализа»', 'Тверь', '2021/02/20');
INSERT INTO CONFERENCE VALUES (4, 'Международная научно-практическая конференция «Инновационное развитие современной науки: актуальные вопросы теории и практики»', 'Тверь', '2021/03/18');
INSERT INTO CONFERENCE VALUES (5, 'XXI Международная научно-практическая конференция «Научное сообщество XXI века»', 'Москва', '2021/04/12');

INSERT INTO EMPLOYEE_CONFERENCE VALUES (1, 1, 1);
INSERT INTO EMPLOYEE_CONFERENCE VALUES (2, 1, 2);
INSERT INTO EMPLOYEE_CONFERENCE VALUES (3, 1, 3);
INSERT INTO EMPLOYEE_CONFERENCE VALUES (4, 2, 1);
INSERT INTO EMPLOYEE_CONFERENCE VALUES (5, 2, 2);
INSERT INTO EMPLOYEE_CONFERENCE VALUES (6, 2, 3);
INSERT INTO EMPLOYEE_CONFERENCE VALUES (7, 3, 1);
INSERT INTO EMPLOYEE_CONFERENCE VALUES (8, 3, 2);
INSERT INTO EMPLOYEE_CONFERENCE VALUES (9, 4, 4);
INSERT INTO EMPLOYEE_CONFERENCE VALUES (10, 4, 5);
INSERT INTO EMPLOYEE_CONFERENCE VALUES (11, 5, 4);
INSERT INTO EMPLOYEE_CONFERENCE VALUES (12, 5, 5);
INSERT INTO EMPLOYEE_CONFERENCE VALUES (13, 6, 3);
INSERT INTO EMPLOYEE_CONFERENCE VALUES (14, 7, 4);
INSERT INTO EMPLOYEE_CONFERENCE VALUES (15, 8, 5);

