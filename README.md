# Anime Analytics Platform

Azure-based data engineering project analysing anime industry trends using Python, Synapse Serverless, SQL, and Power BI.

## 🏗️ Architecture

```text
Kaggle Dataset
→ Python Cleaning & Transformation
→ Azure Blob Storage
→ Synapse Serverless SQL
→ Reporting Views
→ Power BI Dashboard
```

## 🛠️ Technologies Used

- Python (pandas)
- Azure Blob Storage
- Azure Synapse Serverless SQL
- SQL
- Power BI
- Git & GitHub

## 🔄 Data Pipeline

1. Raw anime dataset ingested from Kaggle
2. Python scripts used for:
   - data inspection
   - type conversion
   - genre normalization
3. Cleaned datasets uploaded to Azure Blob Storage
4. Synapse Serverless used to query external CSV data with OPENROWSET
5. SQL views created for reporting and analytics
6. Power BI connected to reporting views for dashboard visualisation

## 🧠 Key Engineering Concepts

- Data cleaning and type conversion using Python/pandas
- Genre normalization using pandas explode()
- Layered data architecture (raw → processed → reporting)
- SQL view creation and reusable reporting logic
- Relational joins between normalized datasets
- UTF-8 schema handling in Synapse Serverless

## 📁 Project Structure

anime-analytics-platform/
├── data/
├── python/
├── sql/
│   ├── views/
│   ├── queries/
│   └── reporting/
├── screenshots/
└── README.md
