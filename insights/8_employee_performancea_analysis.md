/*
===============================================================================
Report 08: Employee Performance Analysis
===============================================================================
Business Question:
    How has each employee contributed to company sales across all historical
    orders?

Business Context:
    Understanding employee sales performance helps management identify
    top-performing sales representatives, recognize high contributors,
    and uncover opportunities for coaching and performance improvement.

Report Grain:
    One row per employee.

KPIs:
    - Total Revenue
    - Total Orders
    - Customers Served
    - Units Sold
    - Average Order Value
    - Revenue Rank

Data Source:
    - sales_reporting
    - employees

Methodology:
    This report uses the reusable sales_reporting view to aggregate
    historical sales activity by employee. Employee names are joined from
    the employees table after aggregation. Average Order Value is
    calculated as Total Revenue divided by Total Orders, and employees are
    ranked by Total Revenue using DENSE_RANK().

SQL Concepts Used:
    - SQL Views
    - Common Table Expressions (CTEs)
    - Aggregate Functions
    - INNER JOIN
    - COUNT(DISTINCT)
    - DENSE_RANK()
    - CONCAT()
    - ORDER BY

Key Findings:
    - Employee performance can be evaluated using multiple business metrics,
      not revenue alone.
    - Revenue rankings identify the company's top-performing sales
      representatives.
    - Average Order Value provides additional insight into individual
      selling patterns.
    - Customers Served and Units Sold provide additional context for
      evaluating employee sales activity.

Business Value:
    This report helps stakeholders evaluate employee performance, recognize
    high-performing sales representatives, support coaching initiatives,
    and establish a foundation for employee performance dashboards.

Limitations:
    - Analysis is based on historical sales only.
    - Sales targets and quotas are not included.
    - Employee territories and customer assignments are not considered.

Next Steps:
    - Build an Employee Sales Leaderboard.
    - Analyze employee performance by customer segment.
    - Compare employee performance across product categories.
    - Develop executive dashboards using the reusable reporting model.
===============================================================================
*/