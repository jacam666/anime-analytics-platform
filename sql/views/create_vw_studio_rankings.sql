CREATE VIEW vw_studio_rankings AS
SELECT
    Studios,
    COUNT(*) AS total_anime,
    ROUND(AVG(Score), 2) AS avg_score,
    SUM(Members) AS total_members,
    SUM(Favorites) AS total_favorites
FROM vw_anime_cleaned
WHERE
    Score IS NOT NULL
    AND Studios <> 'Unknown'
GROUP BY Studios;