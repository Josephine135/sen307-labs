USE sen307_vug_sen_24_13127;

-- TASK 1: Students in Software Engineering, sorted A-Z

SELECT
    s.full_name,
    d.dept_name
FROM Student s
INNER JOIN Department d
    ON s.dept_id = d.dept_id
WHERE d.dept_name = 'Software Engineering'
ORDER BY s.full_name ASC;


USE sen307_vug_sen_24_13127;

-- TASK 2: Courses with their lecturers

SELECT
    c.course_code,
    c.course_title,
    l.full_name AS lecturer_name
FROM Course c
INNER JOIN CourseAllocation ca
    ON c.course_id = ca.course_id
INNER JOIN Lecturer l
    ON ca.lecturer_id = l.lecturer_id
ORDER BY c.course_title ASC;

USE sen307_vug_sen_24_13127;

-- TASK 3: Every student and their courses

SELECT
    s.full_name,
    c.course_title
FROM Student s
LEFT JOIN Enrolment e
    ON s.student_id = e.student_id
LEFT JOIN Course c
    ON e.course_id = c.course_id
ORDER BY s.full_name ASC;

USE sen307_vug_sen_24_13127;

-- TASK 4: Filtering students using AND, IN and BETWEEN

SELECT
    s.full_name,
    s.gender,
    d.dept_name,
    s.date_of_birth
FROM Student s
INNER JOIN Department d
    ON s.dept_id = d.dept_id
WHERE s.gender = 'F'
AND d.dept_name IN ('Software Engineering', 'Artificial Intelligence')
AND s.date_of_birth BETWEEN '2004-01-01' AND '2005-12-31'
ORDER BY s.full_name ASC;

-- TASK 5

SELECT *
FROM Enrolment
ORDER BY enrolment_id ASC
LIMIT 10 OFFSET 0;

SELECT *
FROM Enrolment
ORDER BY enrolment_id ASC
LIMIT 10 OFFSET 10;




USE sen307_vug_sen_24_13127;

-- OPTIONAL CHALLENGE: Task 3 using RIGHT JOIN

SELECT
    s.full_name,
    c.course_title
FROM Enrolment e
RIGHT JOIN Student s
    ON e.student_id = s.student_id
LEFT JOIN Course c
    ON e.course_id = c.course_id
ORDER BY s.full_name ASC;

-- Explanation:
-- RIGHT JOIN keeps all students, including those
-- without enrolments. LEFT JOIN connects their
-- enrolments to the corresponding courses.

-- Comment:
-- LEFT JOIN is easier to read in this example
-- because Student is the main table we want to preserve.


