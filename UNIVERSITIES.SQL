CREATE DATABASE UniversitIES;
USE UniversitIES;
CREATE TABLE studenties (
    student_id INT PRIMARY KEY,
    student_name VARCHAR(100),
    gender VARCHAR(10),
    programme VARCHAR(50),
    year_of_study INT,
    age INT,
    marks INT,
    town VARCHAR(50)
);
INSERT INTO studenties VALUES
(105, 'Peter Ssenyonga', 'Male', 'BSIT', 2, 23, 72, 'Kampala'),
(101, 'Sarah Nakato', 'Female', 'BSIT', 1, 19, 78, 'Mukono'),
(109, 'Samuel Mugisha', 'Male', 'DIT', 3, 24, 69, 'Kampala'),
(103, 'Mary Achieng', 'Female', 'BSIT', 3, 24, 88, 'Jinja'),
(107, 'Brian Okello', 'Male', 'BSE', 3, 25, 47, 'Jinja'),
(102, 'John Kato', 'Male', 'DIT', 2, 22, 65, 'Kampala'),
(110, 'Esther Atim', 'Female', 'BSE', 1, 19, 76, 'Gulu'),
(104, 'David Ouma', 'Male', 'BSE', 1, 20, 54, 'Mukono'),
(108, 'Ruth Nakanwagi', 'Female', 'BSIT', 2, 21, 83, 'Mukono'),
(106, 'Grace Namusoke', 'Female', 'DIT', 1, 20, 91, 'Entebbe');

DESCRIBE studenties;
select*from studenties;
SELECT student_name, programme, marks FROM students;
SELECT student_name, town FROM students;
SELECT * FROM students WHERE year_of_study = 1;
SELECT student_name, marks FROM students WHERE programme = 'BSE';
SELECT student_name, age FROM students;
SELECT * FROM students WHERE programme = 'BSIT';
SELECT * FROM students WHERE marks >= 70;
SELECT * FROM students WHERE town = 'Mukono';
SELECT * FROM students WHERE gender = 'Female';
SELECT * FROM students WHERE programme = 'BSIT' AND marks > 75;
SELECT * FROM students WHERE town = 'Mukono' OR town = 'Kampala';
SELECT * FROM students WHERE gender = 'Female' AND year_of_study = 1;
SELECT * FROM students WHERE marks BETWEEN 60 AND 80;
SELECT * FROM students WHERE programme <> 'BSE';
SELECT * FROM students ORDER BY marks DESC;
SELECT * FROM students ORDER BY marks ASC;
SELECT * FROM students WHERE programme = 'BSIT' ORDER BY marks DESC;
SELECT * FROM students WHERE gender = 'Female' AND programme = 'BSIT' AND marks >= 80;
SELECT * FROM students WHERE year_of_study = 2 AND marks > 70;
SELECT * FROM students WHERE (town = 'Mukono' AND marks < 60) OR (town = 'Jinja' AND marks > 80);
CREATE VIEW MALE_STUDENTS AS SELECT* FROM STUDENTS WHERE GENDER = 'MALE';
CREATE VIEW male_students as select *from students where programme ='bsit'and programme ='dit';