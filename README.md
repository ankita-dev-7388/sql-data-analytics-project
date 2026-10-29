# SQL Data Analytics Project

This project demonstrates data exploration and advanced data analytics using **Microsoft SQL Server**. This repository contains scripts designed to extract actionable business intelligence, track performance over time, and segment customers and products for strategic decision-making, and prepare reporting views.

---

## Data Model 
Database **DataWarehouseAnalytics**, schema gold, star schema:
- **dim_customers**:customer details(name, country, gender, birthdate)
- **dim_products**:prduct details(name, category, cost, subcategory)
- **fact_sales**:order transactions(order date, sales amount, quantity, price)

---

## Repository Structure & Analysis Modules
This project is organized into distinct analytical categories:
| Module | File / Script Focus | Key Objectives & Metrics |
| :--- | :--- | :--- |
| **00** | **Create Database and Schemas** | This script creates a new database named 'DataWarehouseAnalytics' after checking if it already exists |
| **01** | **Database Exploration** | Database structure exploration |
| **02** | **Dimensions Exploration** | Explores the structure of dimension tables |
| **03** | **Date Range Exploration** | To determine the temporal boundaries of key data points |
| **04** | **Measure Exploration** | To calculate aggregated metrics (e.g. totals, averages) for quick insights |
| **05** | **Magnitude Analysis** | To quantify data and group results by specific dimensions |
| **06** | **Ranking Analysis** | To rank items (e.g, products, customers) based on performance or other metrics|
| **07** | **Change Over Time Analysis** | To track trends, growth and changes in key metrics over time |
| **08** | **Cumulative Analysis** | To calculate running totals or moving averages for key metrics |
| **09** | **Performace Analysis** | To measure the performance of the products, customers, or regions over time |
| **10** | **Part-to-whole Analysis** | To compare performance or metrics across dimensions or time periods |
| **11** | **Data Segmentation Analysis** | To group the data into meaningful categories for targeted insights |
| **12** | **Customer Report** | This report consolidates key customer metrics and behaviours  |
| **13** | **Product Report** | This report consolidates key product metrics and behaviours |

---

## Final Reports
- **Customer report**: age groups, segments(VIP/Regular/New), total orders and sales, recency, average order value, average montly spend.
- **Product report**: performance segment(High/Low/Mid), total orders, sales and quantity, unique customers, recency, average selling price, average monthly revenue.




