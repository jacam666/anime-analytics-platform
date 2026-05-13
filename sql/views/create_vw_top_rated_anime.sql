CREATE VIEW vw_top_rated_anime AS
SELECT
    [Name],
    Score,
    Episodes,
    Genres,
    Studios,
    Members,
    Favorites,
    [Rank]
FROM vw_anime_cleaned
WHERE
    Score IS NOT NULL
    AND [Rank] IS NOT NULL
    AND [Scored By] > 50000;