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


-- Query 3: Churn Rate by Internet Service Type [fiber optics]
SELECT "InternetService", COUNT(*) AS total_customers,
       SUM(CASE WHEN "Churn" = 'Yes' THEN 1 ELSE 0 END) AS churned,
       ROUND(100.0 * SUM(CASE WHEN "Churn" = 'Yes' THEN 1 ELSE 0 END) / COUNT(*), 2) AS churn_rate
FROM telco_churn
GROUP BY "InternetService"
ORDER BY churn_rate DESC;

-- Query 4: Churn Rate by Payment Method [electronic check]
SELECT "PaymentMethod", COUNT(*) AS total_customers,
       SUM(CASE WHEN "Churn" = 'Yes' THEN 1 ELSE 0 END) AS churned,
       ROUND(100.0 * SUM(CASE WHEN "Churn" = 'Yes' THEN 1 ELSE 0 END) / COUNT(*), 2) AS churn_rate
FROM telco_churn
GROUP BY "PaymentMethod"
ORDER BY churn_rate DESC;

-- Query 5: Determine Distinct Values for Categorical Columns to Standardize Table
SELECT DISTINCT "Partner" FROM telco_churn;
SELECT DISTINCT "Dependents" FROM telco_churn;
SELECT DISTINCT "PhoneService" FROM telco_churn;
SELECT DISTINCT "PaperlessBilling" FROM telco_churn;
SELECT DISTINCT "Churn" FROM telco_churn;
SELECT DISTINCT "MultipleLines" FROM telco_churn;
SELECT DISTINCT "OnlineSecurity" FROM telco_churn;
SELECT DISTINCT "OnlineBackup" FROM telco_churn;
SELECT DISTINCT "DeviceProtection" FROM telco_churn;
SELECT DISTINCT "TechSupport" FROM telco_churn;
SELECT DISTINCT "StreamingTV" FROM telco_churn;
SELECT DISTINCT "StreamingMovies" FROM telco_churn;