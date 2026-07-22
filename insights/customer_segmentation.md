# Customer Segmentation

## Business Question

Which customers generate the most revenue for Northwind, and how can they be classified into High-, Medium-, and Low-value customer segments?

---

## Business Context

Understanding customer value helps the Sales team identify the company's most valuable customers, recognize opportunities to strengthen customer relationships, and detect customers with little or no purchasing activity.

This report segments customers according to their historical revenue contribution and provides a ranked view of customer performance.

---

## Report Grain

**One row per customer**

Each record represents a unique customer and summarizes their historical purchasing activity.

---

## KPIs

* Total Revenue
* Total Orders
* Customer Revenue Rank
* Customer Segment

---

## Data Sources

* `customers`
* `orders`
* `order_details`

---

## Methodology

* Included every customer in the Northwind database using `LEFT JOIN` to ensure customers without orders were not excluded.

* Calculated total revenue using the formula:

  `Unit Price × Quantity × (1 − Discount)`

* Replaced `NULL` revenue values with `0` using `COALESCE()`.

* Ranked customers using `DENSE_RANK()` based on total revenue.

* Classified customers into High, Medium, and Low revenue segments using predefined revenue thresholds.

---

## SQL Concepts Used

* Common Table Expressions (CTEs)
* LEFT JOIN
* Aggregate Functions (`SUM`, `COUNT`)
* `COALESCE()`
* `CASE`
* Window Functions (`DENSE_RANK`)
* `GROUP BY`
* `ORDER BY`

---

## Key Findings

* Northwind has **91 customers** in total.
* **2 customers** have never placed an order and generated **$0.00** in revenue.
* Only **3 customers** were classified as **High Value** based on the defined revenue thresholds.
* **2 customers** were classified as **Medium Value**.
* The remaining customers fell into the **Low Value** segment, indicating that a relatively small number of customers generate a significant share of total revenue.
* `QUICK-Stop` was the highest revenue-generating customer in the dataset.

---

## Business Value

This report enables business stakeholders to:

* Identify the company's highest-value customers.
* Prioritize customer retention efforts.
* Detect inactive customers for potential re-engagement campaigns.
* Support sales and marketing decisions through customer segmentation.
* Establish a foundation for more advanced customer analytics.

---

## Limitations

The revenue thresholds used for segmentation were defined for demonstration purposes within this portfolio project. In a production environment, segmentation thresholds would typically be provided by business stakeholders or derived from historical revenue distributions.

---

## Next Steps

Potential improvements include:

* Implement dynamic customer segmentation using quartiles or percentiles.
* Analyze customer performance over specific time periods.
* Measure customer growth and retention trends.
* Incorporate customer lifetime value (CLV) metrics.
* Build interactive dashboards to visualize customer segments and revenue distribution.
