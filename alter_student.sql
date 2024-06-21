-- 1. Создать таблицу student с полями student_id SERIAL, first_name VARCHAR, last_name VARCHAR, birthday date, phone VARCHAR
CREATE TABLE student
(
    student_id SERIAL,
    first_name VARCHAR,
    last_name  VARCHAR,
    birthday   DATE,
    phone      VARCHAR
);


-- 2. Добавить в таблицу student колонку middle_name VARCHAR
ALTER TABLE student
    ADD COLUMN middle_name VARCHAR;

-- 3. Удалить колонку middle_name
ALTER TABLE student
    drop COLUMN middle_name;

-- 4. Переименовать колонку birthday в birth_date
ALTER TABLE student
    RENAME COLUMN birthday TO birth_date;

-- 5. Изменить тип данных колонки phone на VARCHAR(32)
ALTER TABLE student
    ALTER COLUMN phone
        SET data type VARCHAR(32);

-- 6. Вставить три любых записи с автогенерацией идентификатора
INSERT INTO student (first_name, last_name, phone)
    VALUES ('Nikolay', 'Vanechkin', '8999999999'),
           ('Vasya', 'VAsiliev', '1999999999'),
           ('Sacha', 'Sanechkin', '2999999999');

-- 7. Удалить все данные из таблицы со сбросом идентификатор в исходное состояние
TRUNCATE TABLE student RESTART identity