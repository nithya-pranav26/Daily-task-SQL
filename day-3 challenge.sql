CREATE DATABASE University;
USE University;

insert into Students (StudentID, StudentName, Department, GPA, Email) values
(1, 'viha', 'Chemistry', 7.3, 'viha@gmail.com'),
(2, 'sri', 'Physics', 8.6, 'sri@gamail.com'),
(3, 'hema', 'Chemitry', 6.3, 'NULL');

SELECT DISTINCT Department FROM Students;

SELECT * FROM Students WHERE GPA > 8.0;

SELECT * FROM Students WHERE Email IS NULL;

SELECT * FROM Students WHERE Email IS NOT NULL;

SELECT * FROM Students WHERE Department IN ('CSE', 'IT');

SELECT * FROM Students WHERE GPA BETWEEN 7.0 AND 8.0;

SELECT * FROM Students WHERE GPA NOT BETWEEN 9.0 AND 5.0;