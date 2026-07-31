# Top Selling Products

## Business Question

Which products are purchased in the greatest quantities across all historical orders?

---

## Business Context

The Product Management team wants to understand which products customers purchase most frequently in terms of units sold. This information supports inventory planning, demand forecasting, and product strategy.

---

## Report Grain

One row per product.

---

## KPIs

- Product ID
- Product Name
- Category Name
- Units Sold
- Total Orders
- Sales Rank

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

This report is built on top of the reusable `sales_reporting` model.

The reporting layer centralizes transactional sales data, product information, category information, and standardized revenue calculations.

Products are aggregated across all historical orders to calculate:

- Total Units Sold
- Total Orders

Products are ranked using the `DENSE_RANK()` window function based on total units sold.

---

## SQL Concepts Used

- SQL Views
- Common Table Expressions (CTEs)
- Aggregate Functions
- SUM()
- COUNT(DISTINCT)
- Window Functions
- DENSE_RANK()

---

## Key Findings

- Products with the highest units sold are not necessarily the products generating the highest revenue.
- Total Orders provides additional context by showing how frequently products appear in customer purchases.
- Sales volume and revenue should be analyzed together to gain a more complete understanding of product performance.

---

## Business Value

This report helps Product Managers identify high-demand products, improve inventory planning, support purchasing decisions, and better understand customer buying behavior.

---

## Limitations

- Historical analysis only.
- Product profitability is not considered.
- Returns and inventory availability are not included.

---

## Next Steps

- Analyze product performance by category.
- Compare revenue leaders with volume leaders.
- Continue expanding reports using the reusable `sales_reporting` model.

---

## Engineering Notes

This report leverages the reusable `sales_reporting` SQL View introduced during Milestone 3.

By centralizing business logic in a reusable reporting layer, analytical reports become easier to maintain, more consistent, and require significantly less SQL code.