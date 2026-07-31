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

### Reporting Layer

- sales_reporting (SQL View)

### Underlying Source Tables

- orders
- order_details
- products
- categories

---

## Methodology

This report is built on top of the `sales_reporting` reusable reporting layer.

The reporting layer centralizes:

- Sales transaction data
- Product information
- Category information
- Standardized revenue calculations

The report aggregates sales transactions to the product level and calculates:

- Total Revenue
- Total Orders
- Units Sold

Products are ranked using the `DENSE_RANK()` window function based on total historical revenue.

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

- Côte de Blaye generated the highest historical revenue.
- Beverage and Dairy products appear frequently among the highest-performing products.
- Revenue and units sold provide complementary perspectives on product performance.

---

## Business Value

## Business Value

This report enables Product Managers and Sales Leadership to identify high-performing products and support inventory, pricing, and product portfolio decisions.

From an engineering perspective, the report leverages a reusable reporting layer (`sales_reporting`) that centralizes business logic and promotes consistent metrics across analytical reports.
---

## Limitations

- Historical analysis only.
- Revenue reflects recorded discounts.
- Returns and product costs are not considered.

---

## Next Steps

- Build additional Product Analytics reports using the `sales_reporting` model.
- Extend the reusable reporting layer as new business requirements emerge.
- Continue standardizing business metrics across the analytics project.

## Engineering Notes

This report was initially developed using direct joins to the transactional tables.

As the project evolved, a reusable SQL View (`sales_reporting`) was introduced to centralize sales business logic and standardize revenue calculations.

This refactoring reduced query complexity, improved maintainability, and established a reusable reporting layer for future analytical reports.