# 🌍 Global Data Salary Insights

## 📌 Overview
This project analyzes global salary trends, hiring demand, and remote work impact for data roles using Python, SQL (BigQuery), and Power BI.

The objective is to understand how geography, experience level, and remote work influence compensation in the global data job market.

---

## 🎯 Motivation
As a data analyst aspiring to work internationally, I built this project to explore global salary benchmarks, hiring hotspots, and the impact of remote work on compensation.

---

## 🛠 Tech Stack
- Python (Pandas, Matplotlib)
- SQL (BigQuery)
- Power BI
- Google Cloud Platform

---

## 📂 Dataset
Source: Data Science Job Salaries dataset (Kaggle)

The dataset contains information on:
- Job titles
- Salary in USD
- Company location
- Experience level
- Remote work ratio

---

## 📊 Key Insights
- Experience level significantly impacts salary growth across all regions.
- Remote roles offer competitive compensation due to access to global talent.
- High-paying countries are concentrated in mature tech economies.
- Significant salary disparities exist between developed and emerging markets.
- Hiring demand is concentrated in global tech hubs.

---

## 📈 Dashboard Preview

### Salary by Country
![Salary by Country](dashboard/screenshots/salary_by_country.png)

### Experience Impact
![Experience Impact](dashboard/screenshots/experience_impact.png)

### Remote Work Impact
![Remote Work](dashboard/screenshots/remote_work.png)

### Hiring Hotspots
![Hiring Hotspots](dashboard/screenshots/hiring_hotspots.png)

---

## 🧩 Project Workflow
Raw Data → Python Cleaning → BigQuery SQL Analysis → Python EDA → Power BI Dashboard

---

## ▶️ How to Run

1. Run the data cleaning script:
```bash
python scripts/data_cleaning.py
