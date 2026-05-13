CREATE VIEW vw_anime_cleaned AS
SELECT *
FROM OPENROWSET(
    BULK 'https://jamiedatalake666.blob.core.windows.net/anime-analytics/processed/cleaned_anime_data.csv',
    FORMAT = 'CSV',
    PARSER_VERSION = '2.0',
    HEADER_ROW = TRUE
)
WITH (
    anime_id INT,
    [Name] VARCHAR(255) COLLATE Latin1_General_100_BIN2_UTF8,
    [English name] VARCHAR(255) COLLATE Latin1_General_100_BIN2_UTF8,
    [Other name] VARCHAR(255) COLLATE Latin1_General_100_BIN2_UTF8,
    Score FLOAT,
    Genres VARCHAR(500) COLLATE Latin1_General_100_BIN2_UTF8,
    Synopsis VARCHAR(8000) COLLATE Latin1_General_100_BIN2_UTF8,
    [Type] VARCHAR(50) COLLATE Latin1_General_100_BIN2_UTF8,
    Episodes FLOAT,
    Aired VARCHAR(100) COLLATE Latin1_General_100_BIN2_UTF8,
    Premiered VARCHAR(50) COLLATE Latin1_General_100_BIN2_UTF8,
    [Status] VARCHAR(100) COLLATE Latin1_General_100_BIN2_UTF8,
    Producers VARCHAR(500) COLLATE Latin1_General_100_BIN2_UTF8,
    Licensors VARCHAR(500) COLLATE Latin1_General_100_BIN2_UTF8,
    Studios VARCHAR(500) COLLATE Latin1_General_100_BIN2_UTF8,
    [Source] VARCHAR(100) COLLATE Latin1_General_100_BIN2_UTF8,
    Duration VARCHAR(100) COLLATE Latin1_General_100_BIN2_UTF8,
    Rating VARCHAR(100) COLLATE Latin1_General_100_BIN2_UTF8,
    [Rank] FLOAT,
    Popularity INT,
    Favorites INT,
    [Scored By] FLOAT,
    Members INT,
    [Image URL] VARCHAR(500) COLLATE Latin1_General_100_BIN2_UTF8
) AS data;