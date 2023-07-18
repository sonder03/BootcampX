select teachers.name AS TEACHER, students.name AS STUDENT, assignements.name AS ASSIGNMENT,  (completed_at - started_at) as duration_of_request
from assistance_requests
Join teachers On  teachers.id = teacher_id
JOIN students ON students.id = student_id
JOIN assignments ON assignments.id = assignment_id
ORDER BY duration;

