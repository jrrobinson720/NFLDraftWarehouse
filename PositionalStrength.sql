SELECT po.PositionType, COUNT(PositionType) AS NumberOfTop15, AVG(p.Draft_Rank) AS AveragePositionRank
FROM Positions po
JOIN Players p
ON po.PositionType = p.Position
GROUP BY po.PositionType
ORDER BY AveragePositionRank
