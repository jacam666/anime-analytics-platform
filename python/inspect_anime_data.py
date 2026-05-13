import pandas as pd

# Load dataset
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

# Dataset info
print(df.info())

# Missing values after conversion
print("\nMissing Values:")
print(df[numeric_columns].isnull().sum())

# Show cleaned numeric columns
print("\nNumeric Column Preview:")
print(df[numeric_columns].head())

print(df[df["Score"].isnull()][["Name", "Score", "Scored By"]].head(10))