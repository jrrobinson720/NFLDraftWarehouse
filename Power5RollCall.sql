SELECT 
CASE
WHEN GROUPING(Last_Name) = 1 THEN ' '
ELSE Last_Name
END AS LastName, 
CASE
WHEN GROUPING(SchoolName) = 1 THEN '='
ELSE SchoolName
END AS School,
CASE
WHEN GROUPING(co.Conference) = 1 THEN 'Power 5'
ELSE co.Conference
END AS Conference, 
COUNT(p.College) AS ConferenceCount
FROM Players p JOIN Colleges c
ON p.College = c.SchoolName
JOIN Conference co
ON c.Conference = co.Conference
WHERE co.Conference = 'SEC' OR co.Conference = 'ACC' OR co.Conference = 'Big 12' OR co.Conference = 'Big 10' OR co.Conference = 'PAC-12'
GROUP BY co.Conference, SchoolName, Last_Name WITH ROLLUP;