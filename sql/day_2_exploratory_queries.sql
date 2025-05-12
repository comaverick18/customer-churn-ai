-- Query 1: Churn Rate by Contract Type
SELECT "Contract", COUNT(*) AS total_customers,
       SUM(CASE WHEN "Churn" = 'Yes' THEN 1 ELSE 0 END) AS churned,
       ROUND(100.0 * SUM(CASE WHEN "Churn" = 'Yes' THEN 1 ELSE 0 END) / COUNT(*), 2) AS churn_rate
FROM telco_churn
GROUP BY "Contract"
ORDER BY churn_rate DESC;

-- Query 2: MonthlyCharges vs. Churn Status
SELECT "Churn",
       ROUND(AVG("MonthlyCharges")::numeric, 2) AS avg_monthly,
       ROUND(MIN("MonthlyCharges")::numeric, 2) AS min_monthly,
       ROUND(MAX("MonthlyCharges")::numeric, 2) AS max_monthly
FROM telco_churn
GROUP BY "Churn";
