/*
===============================================================================
Report 09: Employee Customer Efficiency Analysis
===============================================================================
Business Question:
    How efficiently does each employee generate revenue from their customer
    portfolio?

Business Context:
    Understanding customer efficiency helps management evaluate how
    effectively each employee generates value from the customers they serve.
    This report focuses on customer-based efficiency metrics rather than
    overall sales volume to support customer portfolio optimization and
    coaching opportunities.

Report Grain:
    One row per employee.

KPIs:
    - Customers Served
    - Total Orders
    - Total Revenue
    - Revenue per Customer
    - Orders per Customer

Data Source:
    - sales_reporting
    - employees

Methodology:
    This report uses the reusable sales_reporting view to aggregate
    historical sales activity by employee. Employee names are joined from
    the employees table after aggregation. Revenue per Customer and Orders
    per Customer are calculated using the aggregated business metrics from
    the CTE, allowing customer efficiency to be evaluated without
    recalculating the underlying sales data.

SQL Concepts Used:
    - SQL Views
    - Common Table Expressions (CTEs)
    - Aggregate Functions
    - INNER JOIN
    - COUNT(DISTINCT)
    - ROUND()
    - CONCAT()
    - ORDER BY

Key Findings:
    - Customer portfolio efficiency varies across employees, indicating
      that higher revenue is not always driven by managing more customers.
    - Revenue per Customer highlights employees who generate the greatest
      value from each customer relationship.
    - Orders per Customer provides additional insight into customer
      purchasing behavior and sales activity.
    - Comparing customer portfolio size with efficiency metrics helps
      identify opportunities for coaching and workload optimization.

Business Value:
    This report helps stakeholders evaluate how effectively employees
    generate value from their customer portfolios, supporting customer
    portfolio optimization, coaching initiatives, workload balancing, and
    data-driven sales management decisions.

Limitations:
    - Analysis is based on historical sales only.
    - Customer profitability and acquisition costs are not considered.
    - Customer retention and relationship duration are not included.
    - Employee territories and sales targets are not considered.

Next Steps:
    - Analyze customer efficiency by customer segment.
    - Compare customer efficiency across geographic regions.
    - Identify employees managing high-value customer portfolios.
    - Develop executive dashboards using the reusable reporting model.
===============================================================================
*/