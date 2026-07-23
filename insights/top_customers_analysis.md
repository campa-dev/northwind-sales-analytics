# Top Customers Analysis

## Business Question

Who are Northwind's top 10 customers based on total historical revenue, and what purchasing patterns characterize these high-value accounts?

---

## Business Context

The Sales department needs to identify the company's most valuable customers in order to prioritize account management, strengthen customer relationships, and support customer retention strategies.

Beyond identifying the highest revenue-generating customers, the report also provides insight into customer purchasing activity by showing the total number of orders placed and the time span of each customer's relationship with the company.

---

## Report Grain

**One row per customer**

Each row represents a single customer and summarizes their historical purchasing activity.

---

## KPIs

* Total Revenue
* Total Orders
* Customer Revenue Rank
* First Order Date
* Last Order Date
* Customer Country

---

## Data Sources

* `customers`
* `orders`
* `order_details`

---

## Methodology

* Included only customers with purchasing history using `INNER JOIN`.

* Calculated total revenue using the following formula:

  **Revenue = Unit Price × Quantity × (1 − Discount)**

* Rounded total revenue to two decimal places for business readability.

* Counted distinct customer orders.

* Calculated the first and most recent order dates using aggregate functions.

* Ranked customers by total historical revenue using `DENSE_RANK()`.

* Returned only the Top 10 highest revenue-generating customers.

---

## SQL Concepts Used

* Common Table Expressions (CTEs)
* INNER JOIN
* Aggregate Functions (`SUM`, `COUNT`, `MIN`, `MAX`)
* `ROUND()`
* Window Functions (`DENSE_RANK`)
* `GROUP BY`
* `ORDER BY`
* `LIMIT`

---

## Key Findings

* The report identified the ten highest revenue-generating customers in the Northwind database.
* **QUICK-Stop (Germany)** ranked as the company's highest-value customer, generating more than **$110,000** in historical revenue.
* The top three customers each generated more than **$100,000** in revenue, demonstrating a significant concentration of sales among a small number of accounts.
* Several of the top customers continued placing orders until **1998**, indicating long-term customer relationships.
* The Top 10 customers represent multiple countries, highlighting Northwind's international customer base.

---

## Business Value

This report helps business stakeholders:

* Identify strategic customers for retention efforts.
* Prioritize account management activities.
* Understand customer purchasing frequency.
* Evaluate the longevity of customer relationships.
* Support revenue-focused sales planning.

---

## Limitations

The report is based on the complete historical dataset available in the Northwind database and does not analyze customer performance over specific time periods. Revenue is ranked using historical totals rather than recent purchasing behavior.

---

## Next Steps

Potential enhancements include:

* Calculate Average Order Value.
* Measure customer lifetime value (CLV).
* Analyze customer purchasing trends by year.
* Identify inactive high-value customers.
* Compare top customers across countries or sales regions.
