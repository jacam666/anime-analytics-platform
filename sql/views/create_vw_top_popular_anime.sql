CREATE VIEW vw_top_popular_anime AS
SELECT
    [Name],
    [Type],
    Score,
    Genres,
    Studios,
    Popularity,
    Members,
    Favorites,
    [Rank]
FROM vw_anime_cleaned
WHERE
    Score IS NOT NULL
    AND Members IS NOT NULL
    AND Members > 10000;