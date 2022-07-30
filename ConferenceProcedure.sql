CREATE PROCEDURE ConferenceMembers @Conference varchar(50)
AS
SELECT co.Conference, p.First_Name,p.Last_Name, c.SchoolName
FROM Conference co
JOIN Colleges c
ON cO.Conference = c.Conference
JOIN Players p
ON c.SchoolName = p.College
WHERE co.Conference = @Conference

EXEC ConferenceMembers @Conference = 'PAC-12'