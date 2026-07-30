/*
===============================================================================
Report: Top Selling Products
Project: Northwind Sales Analytics

Business Question:
Which products are purchased in the greatest quantities across all
historical orders?

Report Grain:
One row per product.

Business Rules:
- Products are aggregated across all historical orders.
- Units Sold represents the total quantity sold.
- Total Orders counts distinct orders containing each product.
- Products are ranked by total units sold.
===============================================================================
*/

WITH top_selling_products AS (

    SELECT
        product_id,
        product_name,
        category_name,

        -- Number of unique orders containing each product.
        COUNT(DISTINCT order_id) AS total_orders,

        -- Total quantity of units sold across all historical orders.
        SUM(quantity) AS units_sold

    FROM sales_reporting

    GROUP BY
        product_id,
        product_name,
        category_name
)

SELECT
    product_id,
    product_name,
    category_name,
    units_sold,
    total_orders,

    -- Rank products by total units sold.
    DENSE_RANK() OVER (
        ORDER BY units_sold DESC
    ) AS sales_rank

FROM top_selling_products

ORDER BY units_sold DESC;