SELECT c.SchoolName, p.First_Name, p.Last_Name, (p.Weight + 10) AS GameWeight, p.Strength, p.Draft_Rank
FROM Players p
JOIN Colleges c
ON p.College = c.SchoolName
JOIN Conference co
ON c.Conference = co.Conference
WHERE co.Conference = 'SEC'  AND ((P.Weight + 10) > 225)

