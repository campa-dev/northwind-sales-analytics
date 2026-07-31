# Product Category Performance

## Business Question

Which product categories generate the highest revenue and sales volume across all historical orders?

---

## Business Context

Product Management wants to evaluate category-level performance rather than individual products. Understanding which categories contribute the most revenue and sales volume supports inventory planning, merchandising, pricing strategies, and long-term product portfolio decisions.

---

## Report Grain

One row per product category.

---

## KPIs

- Category Name
- Total Revenue
- Units Sold
- Total Orders
- Revenue Rank

---

## Data Source

### Reporting Layer

- `sales_reporting` (SQL View)

### Underlying Source Tables

- orders
- order_details
- products
- categories

---

## Methodology

This report is built using the reusable `sales_reporting` reporting layer.

Sales transactions are aggregated at the product category level to calculate:

- Total Revenue
- Units Sold
- Total Orders

Categories are ranked using the `DENSE_RANK()` window function based on total historical revenue.

---

## SQL Concepts Used

- SQL Views
- Common Table Expressions (CTEs)
- Aggregate Functions
- SUM()
- COUNT(DISTINCT)
- ROUND()
- Window Functions
- DENSE_RANK()

---

## Key Findings

- Revenue and sales volume vary across product categories, highlighting differences in customer purchasing behavior.
- Categories generating the highest revenue are not always those with the highest sales volume, emphasizing the importance of analyzing multiple performance metrics.
- Combining revenue, units sold, and total orders provides a more comprehensive view of category performance than relying on a single KPI.

---

## Business Value

This report enables Product Managers to identify high-performing categories, prioritize inventory investments, evaluate merchandising strategies, and monitor category-level performance over time.

---

## Limitations

- Based on historical sales only.
- Product profitability and costs are not included.
- Product returns and inventory levels are outside the scope of this analysis.

---

## Next Steps

- Analyze revenue distribution across products within each category.
- Identify categories with high sales volume but relatively low revenue.
- Continue expanding analytical reports using the reusable `sales_reporting` reporting layer.

---

## Engineering Notes

This report demonstrates the flexibility of the reusable `sales_reporting` model. By centralizing transactional business logic in a SQL View, new analytical reports can be created by simply changing the level of aggregation rather than rewriting joins and calculations.