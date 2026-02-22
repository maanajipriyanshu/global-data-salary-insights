-- 1. Salary by Country
SELECT
    company_country,
    ROUND(AVG(salary_usd), 2) AS avg_salary
FROM `global-data-salary-insights.salary_analysis.jobs`
GROUP BY company_country
ORDER BY avg_salary DESC;


-- 2. Salary by Experience
SELECT
    experience_level,
    ROUND(AVG(salary_usd), 2) AS avg_salary
FROM `global-data-salary-insights.salary_analysis.jobs`
GROUP BY experience_level
ORDER BY avg_salary DESC;


-- 3. Remote Work Impact
SELECT
    remote_ratio,
    ROUND(AVG(salary_usd), 2) AS avg_salary
FROM `global-data-salary-insights.salary_analysis.jobs`
GROUP BY remote_ratio;


-- 4. Hiring Hotspots (CTE)
WITH country_counts AS (
    SELECT company_country, COUNT(*) AS job_count
    FROM `global-data-salary-insights.salary_analysis.jobs`
    GROUP BY company_country
)
SELECT *
FROM country_counts
ORDER BY job_count DESC;


-- 5. Salary Ranking (Window Function)
SELECT
    company_country,
    job_title,
    salary_usd,
    RANK() OVER (
        PARTITION BY company_country
        ORDER BY salary_usd DESC
    ) AS rank_in_country
FROM `global-data-salary-insights.salary_analysis.jobs`;