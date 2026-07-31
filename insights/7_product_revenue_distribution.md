# Product Revenue Distribution

## Business Question

How is total revenue distributed across Northwind's product portfolio?

## Business Context

Understanding how revenue is distributed across products helps identify whether the company depends heavily on a small number of products or maintains a diversified portfolio. This information supports inventory planning, pricing strategies, and product portfolio management.

## Report Grain

One row per product.

## KPIs

- Total Revenue
- Revenue Percentage
- Cumulative Revenue Percentage
- Total Orders
- Units Sold
- Revenue Rank

## Data Source

sales_reporting

## Methodology

This report uses the reusable `sales_reporting` view to aggregate historical sales by product. Revenue percentage is calculated as each product's contribution to total company revenue. Cumulative revenue percentage is calculated using window functions to show the running contribution of products ranked by revenue.

## SQL Concepts Used

- SQL Views
- Common Table Expressions (CTEs)
- Aggregate Functions
- Window Functions
- DENSE_RANK()
- SUM() OVER()
- ORDER BY
- ROUND()

## Key Findings

- Revenue contribution is not evenly distributed across products.
- A relatively small number of products generate a significant share of total revenue.
- Cumulative revenue percentage helps identify how quickly revenue accumulates across the highest-performing products.

## Business Value

This report helps stakeholders identify high-impact products, evaluate revenue concentration, and prioritize product management decisions. It also provides a foundation for Pareto (80/20) analysis and executive dashboards.

## Limitations

- Analysis is based on historical sales only.
- Product profitability is not considered.
- Inventory availability and stock-outs are not included.

## Next Steps

- Analyze revenue distribution by product category.
- Compare revenue contribution across countries.
- Build executive dashboards using the reusable reporting model.