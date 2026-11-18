USE sen307_vug_sen_24_13127;
INSERT INTO Department (dept_name) VALUES
('Software Engineering'),
('Computer Science'),
('Artificial Intelligence'),
('Data Science'),
('Cybersecurity');

INSERT INTO Course
(course_code, course_title, credit_units, description, dept_id)
VALUES

('SEN307', 'Database Systems', 3,
'Relational database design, SQL queries, normalization, transactions and indexing using MySQL.',
(SELECT dept_id FROM Department WHERE dept_name = 'Software Engineering')),

('SEN301', 'Software Architecture', 3,
'Architectural styles, design patterns, microservices and how to structure large software systems.',
(SELECT dept_id FROM Department WHERE dept_name = 'Software Engineering')),

('COS301', 'Operating Systems', 3,
'Processes, threads, CPU scheduling, memory management and file systems.',
(SELECT dept_id FROM Department WHERE dept_name = 'Computer Science')),

('COS305', 'Computer Networks', 3,
'TCP/IP, routing, switching, LAN and WAN design and network protocols.',
(SELECT dept_id FROM Department WHERE dept_name = 'Computer Science')),

('AIN301', 'Introduction to Artificial Intelligence', 3,
'Intelligent agents, search algorithms, knowledge representation and reasoning.',
(SELECT dept_id FROM Department WHERE dept_name = 'Artificial Intelligence')),

('AIN305', 'Machine Learning', 3,
'Supervised and unsupervised learning, neural networks, deep learning and model evaluation.',
(SELECT dept_id FROM Department WHERE dept_name = 'Artificial Intelligence')),

('AIN307', 'Natural Language Processing', 3,
'Text processing, word embeddings, language models, sentiment analysis and chatbots.',
(SELECT dept_id FROM Department WHERE dept_name = 'Artificial Intelligence')),

('DTS301', 'Data Visualization and Analytics', 2,
'Exploratory data analysis, charts, dashboards and telling stories with data.',
(SELECT dept_id FROM Department WHERE dept_name = 'Data Science')),

('DTS305', 'Big Data Technologies', 3,
'Distributed storage and processing of very large datasets with Hadoop and Spark.',
(SELECT dept_id FROM Department WHERE dept_name = 'Data Science')),

('CYB301', 'Network Security', 3,
'Firewalls, cryptography, intrusion detection and protecting networks from attacks.',
(SELECT dept_id FROM Department WHERE dept_name = 'Cybersecurity'));

SELECT * FROM Department;
SELECT * FROM Course;

SELECT d.dept_name, COUNT(c.course_id) AS courses
FROM Department d LEFT JOIN Course c ON d.dept_id = c.dept_id
GROUP BY d.dept_name;

INSERT INTO Lecturer (staff_no, full_name, email, dept_id)
VALUES
('VUA/ST/101', 'Dr Amaka Okafor', 'a.okafor@vua.edu.ng',
 (SELECT dept_id FROM Department WHERE dept_name = 'Software Engineering')),

('VUA/ST/102', 'Dr Musa Bello', 'm.bello@vua.edu.ng',
 (SELECT dept_id FROM Department WHERE dept_name = 'Software Engineering')),

('VUA/ST/103', 'Dr Chinedu Eze', 'c.eze@vua.edu.ng',
 (SELECT dept_id FROM Department WHERE dept_name = 'Computer Science')),

('VUA/ST/104', 'Dr Fatima Abdullahi', 'f.abdullahi@vua.edu.ng',
 (SELECT dept_id FROM Department WHERE dept_name = 'Computer Science')),

('VUA/ST/105', 'Dr Grace Nwosu', 'g.nwosu@vua.edu.ng',
 (SELECT dept_id FROM Department WHERE dept_name = 'Artificial Intelligence')),

('VUA/ST/106', 'Dr Ibrahim Sani', 'i.sani@vua.edu.ng',
 (SELECT dept_id FROM Department WHERE dept_name = 'Artificial Intelligence')),

('VUA/ST/107', 'Dr Esther Adeyemi', 'e.adeyemi@vua.edu.ng',
 (SELECT dept_id FROM Department WHERE dept_name = 'Data Science')),

('VUA/ST/108', 'Dr David Ojo', 'd.ojo@vua.edu.ng',
 (SELECT dept_id FROM Department WHERE dept_name = 'Data Science')),

('VUA/ST/109', 'Dr Ngozi Ekwueme', 'n.ekwueme@vua.edu.ng',
 (SELECT dept_id FROM Department WHERE dept_name = 'Cybersecurity')),

('VUA/ST/110', 'Dr Samuel Danjuma', 's.danjuma@vua.edu.ng',
 (SELECT dept_id FROM Department WHERE dept_name = 'Cybersecurity'));

INSERT INTO Student
(matric_no, full_name, gender, date_of_birth, dept_id)
VALUES

('vug_sen_24_13127', 'Essien Josephine Utibe', 'F', '2009-03-15',
 (SELECT dept_id FROM Department WHERE dept_name = 'Software Engineering')),

('20231235', 'Ada Obi', 'F', '2005-03-14',
 (SELECT dept_id FROM Department WHERE dept_name = 'Software Engineering')),

('20231236', 'John Musa', 'M', '2004-11-02',
 (SELECT dept_id FROM Department WHERE dept_name = 'Computer Science')),

('20231237', 'Chika Eze', 'F', '2006-05-20',
 (SELECT dept_id FROM Department WHERE dept_name = 'Artificial Intelligence')),

('20231238', 'Ibrahim Bello', 'M', '2003-08-12',
 (SELECT dept_id FROM Department WHERE dept_name = 'Cybersecurity')),

('20231239', 'Grace Okafor', 'F', '2005-12-01',
 (SELECT dept_id FROM Department WHERE dept_name = 'Data Science')),

('20231240', 'Daniel Adeyemi', 'M', '2004-06-18',
 (SELECT dept_id FROM Department WHERE dept_name = 'Software Engineering')),

('20231241', 'Fatima Sani', 'F', '2007-02-25',
 (SELECT dept_id FROM Department WHERE dept_name = 'Computer Science')),

('20231242', 'Samuel Ojo', 'M', '2005-09-10',
 (SELECT dept_id FROM Department WHERE dept_name = 'Artificial Intelligence')),

('20231243', 'Ngozi Ekwueme', 'F', '2006-01-30',
 (SELECT dept_id FROM Department WHERE dept_name = 'Data Science')),

('20231244', 'David Nwosu', 'M', '2003-04-22',
 (SELECT dept_id FROM Department WHERE dept_name = 'Cybersecurity')),

('20231245', 'Esther James', 'F', '2004-07-15',
 (SELECT dept_id FROM Department WHERE dept_name = 'Software Engineering')),

('20231246', 'Peter Danjuma', 'M', '2006-10-05',
 (SELECT dept_id FROM Department WHERE dept_name = 'Computer Science')),

('20231247', 'Maryam Yusuf', 'F', '2005-02-17',
 (SELECT dept_id FROM Department WHERE dept_name = 'Artificial Intelligence')),

('20231248', 'Emeka Nnamdi', 'M', '2007-06-09',
 (SELECT dept_id FROM Department WHERE dept_name = 'Data Science')),

('20231249', 'Blessing Akinola', 'F', '2004-09-23',
 (SELECT dept_id FROM Department WHERE dept_name = 'Cybersecurity')),

('20231250', 'Michael Uche', 'M', '2003-12-11',
 (SELECT dept_id FROM Department WHERE dept_name = 'Software Engineering')),

('20231251', 'Ruth Ibrahim', 'F', '2006-03-08',
 (SELECT dept_id FROM Department WHERE dept_name = 'Computer Science')),

('20231252', 'Joseph Patrick', 'M', '2005-11-19',
 (SELECT dept_id FROM Department WHERE dept_name = 'Artificial Intelligence')),

('20231253', 'Hannah Samuel', 'F', '2007-04-14',
 (SELECT dept_id FROM Department WHERE dept_name = 'Data Science'));

SELECT * FROM Lecturer;
SELECT COUNT(*) AS total_lecturers FROM Lecturer;
SELECT * FROM Student;
SELECT COUNT(*) AS total_students FROM Student;

SELECT student_id, matric_no, full_name FROM Student;
SELECT lecturer_id, full_name FROM Lecturer;

INSERT INTO Enrolment (student_id, course_id) VALUES
(1, 1), (1, 2), (1, 3),
(2, 1), (2, 3),
(3, 1), (3, 4), (3, 5),
(4, 1), (4, 2),
(5, 1), (5, 6),
(6, 1), (6, 7), (6, 8),
(7, 2), (7, 3),
(8, 2), (8, 9),
(9, 3), (9, 4),
(10, 4), (10, 10),
(11, 5), (11, 6),
(12, 5), (12, 7),
(13, 6), (13, 8),
(14, 7), (14, 9),
(15, 8), (15, 10),
(16, 9), (16, 10),
(17, 3), (17, 5),
(18, 2), (18, 6), (18, 10);

INSERT INTO CourseAllocation (course_id, lecturer_id) VALUES
(1, 1), (1, 2),
(2, 2),
(3, 3),
(4, 4),
(5, 5),
(6, 6),
(7, 5),
(8, 7),
(9, 8),
(10, 9), (10, 10);

SELECT matric_no, full_name, dept_id FROM Student WHERE matric_no = '20231235';

SET SQL_SAFE_UPDATES = 0;
UPDATE Student SET dept_id = 2 WHERE matric_no = '20231235';
SET SQL_SAFE_UPDATES = 1;
SELECT matric_no, full_name, dept_id FROM Student WHERE matric_no = '20231235';

INSERT INTO Department (dept_name) VALUES ('Library and Information Science');

INSERT INTO Student (matric_no, full_name, dept_id)
VALUES ('20239999', 'Transfer Student',
(SELECT dept_id FROM Department WHERE dept_name = 'Library and Information Science'));

SET SQL_SAFE_UPDATES = 0;
UPDATE Student
SET dept_id = (SELECT dept_id FROM Department
               WHERE dept_name = 'Software Engineering')
WHERE matric_no = '20239999';

DELETE FROM Department WHERE dept_name = 'Library and Information Science';
SET SQL_SAFE_UPDATES = 1;
SELECT * FROM Department;

SELECT 'Departments' AS tbl, COUNT(*) AS total FROM Department
UNION ALL SELECT 'Lecturers', COUNT(*) FROM Lecturer
UNION ALL SELECT 'Students', COUNT(*) FROM Student
UNION ALL SELECT 'Courses', COUNT(*) FROM Course
UNION ALL SELECT 'Enrolments', COUNT(*) FROM Enrolment
UNION ALL SELECT 'Allocations', COUNT(*) FROM CourseAllocation;
