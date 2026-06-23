create database students_data;
use students_data;

CREATE TABLE Students
 (
    id INT PRIMARY KEY,
    student_name VARCHAR(50),
    subject VARCHAR(50),
    marks INT,
    course VARCHAR(50)
);


INSERT INTO Students VALUES
(101, 'Aasik', 'SQL', 45, 'BCA'),
(102, 'Shahul', 'Machine Learning', 78, 'BCA'),
(103, 'Khaja', 'statistics', 96, 'BCA'),
(104, 'Zainul', 'python', 85, 'BSC'),
(105, 'Aziz', 'Data Science', 80, 'BCom'),
(106,'yusuf','SQL',48,'BCA');

select * from students;

##---Student details whose mark is greater than average

SELECT * FROM Students
WHERE mark >
(
    SELECT AVG(mark) FROM Students
);

##---Multi Row Subquery: Students with Marks > 50

SELECT * FROM Students
WHERE id IN
(
    SELECT id FROM Students 
    WHERE mark > 50
);
