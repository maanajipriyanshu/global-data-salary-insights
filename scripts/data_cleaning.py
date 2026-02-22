import pandas as pd

# Load raw dataset
df = pd.read_csv("data/raw/ds_salaries.csv")

# 1. Drop unwanted index column if present
if "Unnamed: 0" in df.columns:
    df = df.drop(columns=["Unnamed: 0"])

# 2. Rename columns for clarity
df = df.rename(columns={
    "salary_in_usd": "salary_usd",
    "employee_residence": "employee_country",
    "company_location": "company_country"
})

# 3. Remove duplicate rows
df = df.drop_duplicates()

# 4. Save cleaned dataset
df.to_csv("data/cleaned/jobs_cleaned.csv", index=False)

print("✔ Cleaning complete. Clean dataset saved.")