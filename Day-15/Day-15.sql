CREATE DATABASE college_db;
USE college_db;

CREATE TABLE students (
    student_id INT PRIMARY KEY,
    student_name VARCHAR(50),
    gender VARCHAR(10),
    city VARCHAR(50),
    join_year INT
);

CREATE TABLE courses (
    course_id INT PRIMARY KEY,
    course_name VARCHAR(100),
    department VARCHAR(50)
);

CREATE TABLE marks (
    mark_id INT PRIMARY KEY,
    student_id INT,
    course_id INT,
    marks INT,
    FOREIGN KEY (student_id) REFERENCES students(student_id),
    FOREIGN KEY (course_id) REFERENCES courses(course_id)
);

INSERT INTO students VALUES
(1, 'Anu', 'F', 'Tumakuru', 2024),
(2, 'Ravi', 'M', 'Bengaluru', 2023),
(3, 'Kiran', 'M', 'Tumakuru', 2024),
(4, 'Sneha', 'F', 'Mysuru', 2023),
(5, 'Manu', 'M', 'Tumakuru', 2022);


INSERT INTO courses VALUES
(101, 'SQL Basics', 'Computer Science'),
(102, 'Excel for Analysts', 'Commerce'),
(103, 'Statistics', 'Mathematics');

DROP TABLE courses;
SELECT*FROM courses;

CREATE TABLE courses (
    course_id INT PRIMARY KEY,
    course_name VARCHAR(100),
    department VARCHAR(50)
);

INSERT INTO courses VALUES
(101, 'SQL Basics', 'Computer Science'),
(102, 'Excel for Analysts', 'Commerce'),
(103, 'Statistics', 'Mathematics');

SELECT*FROM courses;

INSERT INTO marks VALUES
(1, 1, 101, 85),
(2, 2, 101, 72),
(3, 3, 101, 90),
(4, 4, 102, 88),
(5, 5, 103, 67),
(6, 1, 103, 79),
(7, 2, 102, 81);

SELECT*FROM marks;

SELECT * FROM students;
SELECT student_name, city FROM students;
SELECT * FROM courses;

SELECT * FROM students
WHERE city = 'Tumakuru';

SELECT * FROM students
WHERE join_year = 2024;

SELECT * FROM students
WHERE gender = 'F';

SELECT * FROM marks
WHERE marks > 80;

SELECT course_name FROM courses
WHERE department = 'Commerce';

SELECT * FROM students
WHERE city != 'Bengaluru';

SELECT * FROM marks
WHERE marks BETWEEN 70 AND 90;

SELECT * FROM students
ORDER BY student_name ASC;

SELECT * FROM marks
ORDER BY marks DESC;

SELECT * FROM students
ORDER BY join_year DESC;

SELECT COUNT(*) AS total_students
FROM students;

SELECT AVG(marks) AS average_marks
FROM marks;

SELECT MAX(marks) AS highest_marks
FROM marks;

SELECT MIN(marks) AS lowest_marks
FROM marks;

SELECT SUM(marks) AS total_marks
FROM marks;