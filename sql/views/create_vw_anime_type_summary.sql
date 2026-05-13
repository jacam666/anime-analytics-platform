CREATE VIEW vw_anime_type_summary AS
SELECT
    [Type],
    COUNT(*) AS total_anime,
    ROUND(AVG(Score), 2) AS avg_score,
    ROUND(AVG(Episodes), 2) AS avg_episodes,
    SUM(Members) AS total_members,
    SUM(Favorites) AS total_favorites
FROM vw_anime_cleaned
WHERE Score IS NOT NULL
GROUP BY [Type];