-- Query 1: Count of customers by churn status
SELECT
    "Churn",
    COUNT(*) AS total_customers
FROM
    telco_churn -- Assuming your table is named telco_churn
GROUP BY
    "Churn";


-- Example Query 2: Average monthly charges for churned vs. non-churned customers
SELECT
    "Churn",
    AVG("MonthlyCharges") AS average_monthly_charges
FROM
    telco_churn
GROUP BY
    "Churn";


-- Example Query 3: View some customer reviews for churned customers
SELECT
    "customerID",
    "CustomerReview"
FROM
    telco_churn
WHERE
    "Churn" = 'Yes' AND "CustomerReview" IS NOT NULL -- Adjust 'Yes' if your Churn column uses 1/0
LIMIT 10;


-- Query 5: Determine Distinct Values for Categorical Columns to Standardize Table
SELECT DISTINCT "Partner" FROM telco_churn;
-- SELECT DISTINCT "Dependents" FROM telco_churn;
-- SELECT DISTINCT "PhoneService" FROM telco_churn;
-- SELECT DISTINCT "PaperlessBilling" FROM telco_churn;
-- SELECT DISTINCT "Churn" FROM telco_churn;
-- SELECT DISTINCT "MultipleLines" FROM telco_churn;
-- SELECT DISTINCT "OnlineSecurity" FROM telco_churn;
-- SELECT DISTINCT "OnlineBackup" FROM telco_churn;
-- SELECT DISTINCT "DeviceProtection" FROM telco_churn;
-- SELECT DISTINCT "TechSupport" FROM telco_churn;
-- SELECT DISTINCT "StreamingTV" FROM telco_churn;
-- SELECT DISTINCT "StreamingMovies" FROM telco_churn;
-- SELECT DISTINCT "Contract" FROM telco_churn;
-- SELECT DISTINCT "InternetService" FROM telco_churn;
-- SELECT DISTINCT "PaymentMethod" FROM telco_churn;
-- SELECT DISTINCT "CustomerReview" FROM telco_churn; -- Added CustomerReview here