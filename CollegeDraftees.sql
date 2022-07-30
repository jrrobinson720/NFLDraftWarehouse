SELECT c.SchoolName AS School, CONCAT(Coach_First_Name, ' ', Coach_Last_Name) AS CoachName, COUNT(p.College) AS NumberOfDraftees
FROM Colleges c
JOIN Players p
ON c.SchoolName = p.College
GROUP BY c.SchoolName, c.Coach_Last_Name, c.Coach_First_Name