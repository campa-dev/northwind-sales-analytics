# Product Performance Analysis

## Business Question

Which products generate the highest revenue and sales volume across all historical orders?

---

## Business Context

The Product Management team requires visibility into product performance to identify high-performing products and support pricing, inventory, and portfolio decisions.

---

## Report Grain

One row per product.

---

## KPIs

- Product ID
- Product Name
- Category
- Units Sold
- Total Revenue
- Total Orders
- Revenue Rank

---

## Data Sources

- products
- categories
- order_details
- orders

---

## Methodology

Revenue was calculated using the following business definition:

Revenue = Unit Price × Quantity × (1 − Discount)

Products were aggregated across all historical orders.

Revenue ranking was calculated using the DENSE_RANK() window function.

---

## SQL Concepts Used

- INNER JOIN
- Aggregate Functions
- SUM()
- COUNT(DISTINCT)
- Common Table Expressions (CTEs)
- Window Functions
- DENSE_RANK()

---

## Key Findings

- Côte de Blaye generated the highest historical revenue.
- Beverage and Dairy products appear frequently among the highest-performing products.
- Revenue and units sold provide complementary perspectives on product performance.

---

## Business Value

This report enables Product Managers and Sales Leadership to identify high-performing products, prioritize inventory planning, and support strategic product decisions.

---

## Limitations

- Historical analysis only.
- Revenue reflects recorded discounts.
- Returns and product costs are not considered.

---

## Next Steps

- Analyze product performance by category.
- Build a reusable reporting layer using SQL Views.
- Extend analysis with profitability metrics if cost data becomes available.