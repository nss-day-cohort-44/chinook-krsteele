-- ERD: https://dbdiagram.io/d/60a811e3b29a09603d15fdf0

-- I need to return a table with professor.name and course.name that includes all of the professors who taught courses outside of their department. If they taught the same course for multiple semesters, I only need to show it once. 


SELECT professor.name, course.name
FROM schedule
JOIN course ON schedule.course_id = course.id 
JOIN professor ON schedule.professor_id = professor.id 
WHERE course.department_id != professor.department_id

Note: the problem had all of the table names listed as singular, so that's how I left them, but I would think they should be plural.
        