select students.name, Avg(assignment_submissions.duration) as average_assignment_duration, avg(assignments.duration) as average_estimated_duration
from students
JOIN assignment_submissions ON student_id = students.id
where end_date is NULL
GROUP BY students.name
Order BY average_assignment_duration desc;