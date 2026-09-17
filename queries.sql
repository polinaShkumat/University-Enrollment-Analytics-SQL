-- ============================================================
-- University Enrollment Analytics — SQL
-- Schema (inferred): Teachers, Students, Classes, Enrollments
-- ============================================================

-- 1. All teachers from the Computer Science department whose
--    first name has exactly 5 letters
SELECT first_name
FROM Teachers
WHERE department = 'Computer Science'
  AND LENGTH(first_name) = 5;
-- Example result: Laura


-- 2. Number of students enrolled in each enrollment year
SELECT enrollment_year, COUNT(*) AS number_of_students
FROM Students
GROUP BY enrollment_year;
-- 2022  9
-- 2023  15
-- 2024  18
-- 2025  15
-- 2026  3


-- 3. Total number of classes run in Spring and Fall combined
SELECT COUNT(*) AS total_classes
FROM Classes
WHERE semester IN ('Spring', 'Fall');
-- 16


-- 4. All enrollment years with more than 2 students
SELECT enrollment_year, COUNT(*) AS number_of_students
FROM Students
GROUP BY enrollment_year
HAVING COUNT(*) > 2;
-- 2022  9
-- 2023  15
-- 2024  18
-- 2025  15
-- 2026  3


-- 5. ID of the teacher who teaches the highest number of classes
SELECT teacher_id, COUNT(*) AS number_of_classes
FROM Classes
GROUP BY teacher_id
ORDER BY number_of_classes DESC
LIMIT 1;
-- teacher_id 1, 6 classes


-- 6. All student IDs enrolled in more than 5 classes
SELECT student_id
FROM Enrollments
GROUP BY student_id
HAVING COUNT(DISTINCT class_id) > 5;
-- students 1, 3


-- 7. All class IDs with more than 5 students enrolled
SELECT class_id
FROM Enrollments
GROUP BY class_id
HAVING COUNT(DISTINCT student_id) > 5;
-- classes 2, 8
