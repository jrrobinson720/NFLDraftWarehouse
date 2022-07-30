SELECT po.PositionType, CONCAT(First_Name, ' ', Last_Name) AS DrafteeName, NFL_Comparison
FROM Positions po
JOIN Players P
ON po.PositionType = p.Position
WHERE po.PositionType = 'WR'
