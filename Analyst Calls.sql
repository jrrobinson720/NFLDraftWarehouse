SELECT First_Name, Last_Name, Year, College, Conference, Coach_First_Name, Coach_Last_Name
FROM Players p JOIN Colleges c
ON p.College = c.SchoolName