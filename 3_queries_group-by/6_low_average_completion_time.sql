SELECT students.name as student, AVG(assignment_submissions.duration) as average_assignment_duration,  AVG(assignments.duration) as average_estimated_duration 
FROM students
JOIN assignment_submissions ON assignment_submissions.student_id= students.id
JOIN assignments ON assignments.id = assignment_submissions.assignment_id
WHERE students.end_date IS NULL
GROUP BY student
HAVING AVG(assignment_submissions.duration) <  AVG(assignments.duration)
ORDER BY average_assignment_duration;