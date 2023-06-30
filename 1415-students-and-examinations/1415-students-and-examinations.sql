/* dont know about cross join 2.copied from submissions 3.should know cross join and alias 4.join statements are right */
SELECT 
    s.student_id,
    s.student_name, 
    sub.subject_name, 
    COUNT(e.subject_name) AS attended_exams
FROM 
    Students s 
CROSS JOIN 
    Subjects sub
LEFT JOIN 
    Examinations e
    ON s.student_id = e.student_id AND sub.subject_name = e.subject_name
GROUP BY 
    s.student_id, 
    s.student_name, 
    sub.subject_name
ORDER BY 
    s.student_id, 
    sub.subject_name;