SELECT Draft_Rank AS 'Draft Ranking', CONCAT(First_Name, ' ', Last_Name) AS 'Player', Height, Weight, Year AS 'Drafting Year', SchoolName AS 'College Attended',
CONCAT(Coach_First_Name, ' ', Coach_Last_Name) AS 'College Coach', co.Conference AS 'Conference Competition'
FROM Players p JOIN Colleges c
ON p.College = C.SchoolName
JOIN Conference co
ON c.Conference = co.Conference
