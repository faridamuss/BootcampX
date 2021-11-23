SELECT assignments.day, COUNT(assignments.*) as number_of_assignments, SUM(assignments.duration) as duration
FROM assignments
GROUP BY assignments.day
ORDER BY assignments.day;