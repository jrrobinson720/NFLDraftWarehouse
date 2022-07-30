CREATE FUNCTION fnRanges
(	
	@DraftRank int
)
RETURNS TABLE 
AS
RETURN 
(
	SELECT p.Draft_Rank, p.Last_Name, p.First_Name, Strength
	FROM Players p
	WHERE @DraftRank >= 5 AND @DraftRank <= 12
	)
GO
