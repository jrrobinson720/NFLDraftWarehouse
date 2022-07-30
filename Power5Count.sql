SELECT co.Conference, COUNT(p.College) AS ConferenceCount
FROM Players p JOIN Colleges c
ON p.College = c.SchoolName
JOIN Conference co
ON c.Conference = co.Conference
WHERE co.Conference = 'SEC' OR co.Conference = 'ACC' OR co.Conference = 'Big 12' OR co.Conference = 'Big 10' OR co.Conference = 'PAC-12'
GROUP BY co.Conference WITH ROLLUP