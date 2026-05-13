import pandas as pd

# Load raw dataset
df = pd.read_csv("data/anime-dataset-2023.csv")

# Convert numeric columns
numeric_columns = [
    "Score",
    "Episodes",
    "Rank",
    "Scored By"
]

for col in numeric_columns:
    df[col] = pd.to_numeric(df[col], errors="coerce")

# Save cleaned dataset
df.to_csv("data/cleaned_anime_data.csv", index=False)

print("Cleaned dataset saved.")