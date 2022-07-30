SELECT Draft_Rank, First_Name, Last_Name, Height, Weight, Year, College
FROM Players p 
JOIN Colleges c
ON p.College = c.SchoolName