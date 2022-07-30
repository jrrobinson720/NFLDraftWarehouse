CREATE FUNCTION fnCoachCalls
	(@CollegeID int)
	RETURNS @Calls TABLE
(
FirstName varchar(50),
LastName varchar(50),
School varchar(50),
Player varchar(50)
)
AS
BEGIN

SELECT c.Coach_First_Name, c.Coach_Last_Name, SchoolName, p.Last_Name
FROM Colleges c
JOIN Players p
ON c.SchoolName = p.College
WHERE c.CollegeID = @CollegeID
