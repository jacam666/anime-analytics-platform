import pandas as pd

# Load cleaned dataset
df = pd.read_csv("data/cleaned_anime_data.csv")

# Select relevant columns
genre_df = df[["anime_id", "Name", "Genres"]].copy()

# Split genres into lists
genre_df["Genres"] = genre_df["Genres"].str.split(",")

# Create separate row for each genre
genre_df = genre_df.explode("Genres")

# Clean whitespace
genre_df["Genres"] = genre_df["Genres"].str.strip()

# Rename column
genre_df.rename(columns={"Genres": "Genre"}, inplace=True)

# Remove possible nulls
genre_df = genre_df.dropna()

# Save normalized dataset
genre_df.to_csv("data/anime_genres_normalized.csv", index=False)

print("Genre normalization complete.")
print(genre_df.head())