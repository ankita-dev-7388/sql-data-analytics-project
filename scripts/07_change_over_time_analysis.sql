	/*
=================================================================
Change Over Time Analysis
=================================================================
Purpose:
	- To track trends, growth and changes in key metrics over time.
	- For time-series analysis and identifying seasonality.
	- To measure growth or decline over specific periods.

SQL Functions Used:
	- Date Functions: DATEPART(), DATETRUNC(), FORMAT()
	- Aggregate Functions: SUM(), COUNT(), AVG()
=============================================================
*/

-- Analyse sales performance over time
-- Date functions
SELECT
MONTH(order_date) AS order_month,
YEAR(Order_date) AS order_year,
SUM(Sales_amount) AS total_sales,
COUNT(DISTINCT customer_key) AS total_customers,
SUM(quantity) AS total_quantity
FROM gold.fact_sales
WHERE order_date IS NOT NULL
GROUP BY MONTH(order_date), YEAR(order_date)
ORDER BY MONTH(order_date), YEAR(order_date);

-- DATETRUNC()
SELECT
DATETRUNC(month, order_date) AS order_date,
SUM(Sales_amount) AS total_sales,
COUNT(DISTINCT customer_key) AS total_customers,
SUM(quantity) AS total_quantity
FROM gold.fact_sales
WHERE order_date IS NOT NULL
GROUP BY DATETRUNC(month, order_date)
ORDER BY DATETRUNC(month, order_date);

--FORMAT()
SELECT
FORMAT(order_date, 'yyyy-MMM') as order_date,
SUM(Sales_amount) AS total_sales,
COUNT(DISTINCT customer_key) AS total_customers,
SUM(quantity) AS total_quantity
FROM gold.fact_sales
WHERE order_date IS NOT NULL
GROUP BY FORMAT(order_date, 'yyyy-MMM')
ORDER BY FORMAT(order_date, 'yyyy-MMM');
