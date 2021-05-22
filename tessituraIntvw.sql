SELECT professor.name, course.name
FROM schedule
JOIN course ON schedule.course_id = course.id 
JOIN professor ON schedule.professor_id = professor.id 
WHERE course.department_id != professor.department_id

