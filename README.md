Pizza-Sales-Analytics- - End-to-End Data Analysis Project

A comprehensive data analysis project analyzing pizza sales data using Python, SQL, and Power BI. This project demonstrates the complete data analytics workflow from raw data to actionable insights.

📋 Project Overview

This project analyzes pizza sales data to extract key business insights including revenue trends, product performance, and customer ordering patterns. The analysis covers data cleaning, exploratory data analysis, SQL-based querying, and interactive visualization.

 Dataset Size:  21,350+ orders |  Time Period:  Multiple months of sales data
 
  📊 Analysis Breakdown
  1. Data Cleaning & Exploration (40%) 
   - Missing value analysis
   - Duplicate detection
   - Data type conversion (dates/times)
   - Statistical summary (describe, info)
   - Data quality assurance
 Tools:  Python (Pandas, NumPy) |  File:  `EDA.ipynb`

  2.SQL Analytics & Querying (35%) 
   - Revenue calculations (total & average order value)
   - Trend analysis (monthly order patterns)
   - Category-wise performance breakdown
   - Product-level insights (top/bottom pizzas)
   - Size-wise sales distribution with percentages
   - Multi-dimensional analysis (size × category × name)
 Tools:  PostgreSQL |  File:  `Sql_analysis.sql`

 3.Data Visualization & BI (25%) 
   - Interactive Power BI dashboard
   - Drill-down capabilities for deep analysis
   - KPI cards and trend visualizations
   - Category and product performance charts
   - Size distribution analysis
 Tools:  Power BI Desktop |  File:  `pizza.pbix`

 🔑 Key Findings
Revenue Metrics
-  Total Revenue:  Calculated using `SUM(total_price)`
-  Average Order Value:  `SUM(total_price) / COUNT(DISTINCT order_id)`
-  Total Units Sold:  21,350+ pizzas
-  Average Pizzas per Order:  2.32 pizzas

 Sales Performance
-  By Size:  Distribution analysis showing most popular pizza sizes
-  By Category:  Category-wise revenue and quantity comparison
-  By Product:  Top 5 performing pizzas by revenue and quantity
-  Monthly Trends:  Peak sales periods identification

  Customer Insights
- Peak ordering times and seasons
- Preferred pizza categories and sizes
- Order frequency and average basket size
- High-value vs low-value product tiers

 📁 Project Structure
pizza-sales-analytics/
├── EDA.ipynb                    Data exploration & cleaning (Python)
├── Sql_analysis.sql             SQL queries for business metrics
├── pizza.pbix                   Power BI dashboard
├── pizza.csv                    Raw data (reference)
└── README.md                    Project documentation


 Query Examples
Total Revenue
```sql
SELECT SUM(total_price) as Total_Revenue
FROM pizza_sales;
```
Average Order Value
```sql
SELECT SUM(total_price) / COUNT(DISTINCT order_id) as average_order_value
FROM pizza_sales;
```
Monthly Trends
```sql
SELECT 
    TRIM(TO_CHAR(order_date, 'month')) AS order_month,
    COUNT(DISTINCT order_id) AS total_orders
FROM pizza_sales
GROUP BY order_month, EXTRACT(month FROM order_date)
ORDER BY EXTRACT(month FROM order_date);
```
Top Pizzas by Revenue
```sql
SELECT pizza_name,
    ROUND(SUM(total_price)::numeric, 2) as total_revenue,
    ROUND(SUM(quantity)::numeric, 2) as total_quantity_sold
FROM pizza_sales
GROUP BY pizza_name
ORDER BY total_revenue DESC
LIMIT 5;
```

Skills Demonstrated
Data Engineering 
- ETL pipeline design (CSV → Python → PostgreSQL)
- Data quality validation
- Type conversion & transformation

Data Analysis 
- Exploratory Data Analysis (EDA)
- Statistical analysis & profiling
- Trend identification

SQL Expertise 
- Complex aggregations & grouping
- Window functions
- Date/time manipulation
- Performance optimization

Business Intelligence 
- KPI definition & tracking
- Dashboard design
- Interactive visualization
- Stakeholder communication

Python Skills 
- Pandas data manipulation
- Jupyter notebook documentation
- Database connectivity (SQLAlchemy)

Dashboard Features (Power BI)
-  KPI Cards:  Revenue, orders, quantities, averages
-  Category Analysis:  Revenue & sales by category
-  Product Insights:  Top/bottom performers
-  Size Distribution:  Sales breakdown by pizza size
-  Temporal Trends:  Monthly and seasonal patterns
-  Drill-Down Capability:  Explore data at multiple levels
-  Interactive Filters:  Category, size, date range selection

 Key Learnings
1.  Data Pipeline:  End-to-end flow from raw CSV to BI dashboard
2.  SQL Mastery:  Complex queries with aggregations and grouping
3.  Python for Data:  Pandas for efficient data manipulation
4.  Data Quality:  Importance of cleaning and validation
5.  Visualization:  Translating data into actionable insights
6.  Documentation:  Clear communication of findings

Analysis Metrics at a Glance
|  Data Cleaning  | 40% - Python EDA |
|  SQL Analysis  | 35% - Database Queries |
|  Visualization  | 25% - Power BI Dashboard |
|  Total Pizzas Sold  | 21,350+ units |
|  Average per Order  | 2.32 pizzas |
|  Data Quality  | 100% - All nulls handled |

Project Insights
This project showcases:
- Real-world data analysis workflow
- Professional query writing
- Dashboard design for business users
- End-to-end project execution
- Data-driven decision making

https://www.linkedin.com/in/jeevanrayamajhi/
Jeevan Rayamajhi 
Aspiring Data Analyst | Python • SQL • Power BI 
*A comprehensive demonstration of modern data analytics skills combining Python, SQL, and Power BI for business intelligence.*
