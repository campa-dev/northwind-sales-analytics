# Executive Sales Overview

## Business Question

How is the company performing overall?

---

## Business Context

The Sales Director requires a high-level summary of company performance to monitor key sales indicators and support strategic decision-making.

Rather than reviewing individual transactions, executives need a concise report that summarizes the overall health of the business in a single view.

---

## Report Grain

**One row representing the overall sales performance of the company.**

This report aggregates all completed sales transactions into a single executive summary.

---

## Key Performance Indicators (KPIs)

The report includes the following metrics:

* **Total Revenue** – Total sales generated after applying discounts.
* **Total Orders** – Number of unique customer orders.
* **Total Customers** – Number of unique customers who placed orders.
* **Average Order Value** – Average revenue generated per order.

---

## Data Sources

The report uses the following Northwind tables:

| Table           | Purpose                                     |
| --------------- | ------------------------------------------- |
| `orders`        | Customer orders                             |
| `order_details` | Products, quantities, prices, and discounts |

---

## Methodology

Revenue is calculated using the following business formula:

> Revenue = Unit Price × Quantity × (1 − Discount)

The report aggregates all sales transactions and calculates executive-level KPIs using SQL aggregate functions.

A Common Table Expression (CTE) is used to improve readability and separate the aggregation logic from the final report output.

---

## SQL Concepts Used

* Aggregate Functions (`SUM`, `COUNT`)
* `COUNT(DISTINCT)`
* `INNER JOIN`
* Common Table Expressions (CTEs)
* `NULLIF()`
* SQL Aliasing

---

## Key Findings

This report provides an executive snapshot of overall company performance by consolidating multiple business metrics into a single result.

It serves as the foundation for more detailed analytical reports such as customer segmentation, product performance, and country-level sales analysis.

---

## Business Value

This report enables business stakeholders to quickly evaluate company performance without reviewing thousands of individual sales records.

The executive summary provides a consistent set of KPIs that can be used for performance monitoring, trend analysis, and strategic decision-making.

---

## Next Steps

Future reports in this project will build upon these foundational KPIs by exploring:

* Customer Segmentation
* Product Performance
* Employee Performance
* Country Sales Analysis
* Shipping Analysis
* Executive Dashboard
