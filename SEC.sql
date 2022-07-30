CREATE VIEW SupErC AS
SELECT First_Name, Last_Name, College, Draft_Rank, Year
FROM Players p JOIN Colleges c
ON p.College = c.SchoolName
JOIN Conference co
ON c.Conference = co.Conference
WHERE co.Conference = 'SEC'