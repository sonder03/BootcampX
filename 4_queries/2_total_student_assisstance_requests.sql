SELECT count(assistance_requests.*) as total_assistances, students.name
FROM assistance_requests
JOIN students ON students.id = students_id
WHERE name = 'Elliot Dickinson' 
GROUP BY students.name;