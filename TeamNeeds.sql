CREATE VIEW SFDraft AS
SELECT NFL_Team, po.PositionType, p.First_Name, p.Last_Name, P.NFL_Comparison, P.Draft_Rank
FROM Players p
JOIN Positions po
ON p.Position = po.PositionType
JOIN NFLTeam n
ON po.PositionType = n.Need
WHERE NFL_Team = 'San Francisco 49ers'