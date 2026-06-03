 -- Query1: top 5 funds by AUM

 SELECT
   amfi_code,
   aum_crore
FROM fact_performance
ORDER BY aum_crore DESC
LIMIT 5;




-- query2: Average NAV by fund

SELECT
   amfi_code,
   ROUND(AVG(nav), 2) AS avg_nav
FROM fact_nav
GROUP BY amfi_code
ORDER BY avg_nav DESC;



-- query3: Transactions by State

SELECT
    state,
    COUNT(*) AS total_transactions
FROM fact_transactions
GROUP BY state
ORDER BY total_transactions DESC;


-- query4: funds with expense ratio below 1%

SELECT
    amfi_code,
    expense_ratio_pct
FROM fact_performance
WHERE expense_ratio_pct < 1
ORDER BY expense_ratio_pct;


-- query5: average transaction amount by transaction type

SELECT
    transaction_type,
    ROUND(AVG(amount_inr), 2) AS avg_amount
FROM fact_transactions
GROUP BY transaction_type;



-- query6: top 10 states by investment amount

SELECT
    state,
    ROUND(SUM(amount_inr), 2) AS total_investment
FROM fact_transactions
GROUP BY state
ORDER BY total_investment DESC
LIMIT 10;


-- query7: average AUM by fund house

SELECT
    fund_house,
    ROUND(AVG(aum_crore), 2) AS avg_aum_crore
FROM fact_aum
GROUP BY fund_house
ORDER BY avg_aum_crore DESC;


-- query8: top 10 funds by sharpe ratio

SELECT
    amfi_code,
    sharpe_ratio
FROM fact_performance
ORDER BY sharpe_ratio DESC
LIMIT 10;


-- query9: Investor count by city tier

SELECT
    city_tier,
    COUNT(DISTINCT investor_id) AS investor_count
FROM fact_transactions
GROUP BY city_tier;


-- query10: fund count by Risk category

SELECT
    risk_category,
    COUNT(*) AS fund_count
FROM dim_fund
GROUP BY risk_category
ORDER BY fund_count DESC;