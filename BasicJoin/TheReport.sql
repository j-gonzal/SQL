SELECT (CASE WHEN grade <8 THEN NULL ELSE name END) name, grade, marks
FROM students, grades
WHERE marks BETWEEN min_Mark AND Max_Mark
ORDER BY grade DESC, name, coalesce(name,marks);