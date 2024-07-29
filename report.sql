select 
CASE WHEN GRADE<8 THEN NULL
ELSE NAME END AS NAME,Grade,
MARKS
FROM(
select a.ID,
a.Name,
a.Marks,
case when a.Marks between  b.min_mark AND b.max_mark
THEN b.grade 
END AS GRADE
FROM Students a,Grades b
)C WHERE GRADE IS NOT NULL
ORDER BY GRADE DESC,NAME ASC,MARKS ASC
