/*
============================================================
Report: Executive Sales Overview
Author: Camilo Patiño
Project: Northwind Sales Analytics Portfolio

Business Question:
How is the company performing overall?

Report Grain:
One row representing overall company sales performance.

Metrics:
- Total Revenue
- Total Orders
- Total Customers
- Average Order Value
============================================================
*/

WITH sales_summary AS (

    SELECT

        SUM(
            (od.unit_price * od.quantity)
            * (1 - od.discount)
        ) AS total_revenue,

        COUNT(DISTINCT o.order_id) AS total_orders,

        COUNT(DISTINCT o.customer_id) AS total_customers

    FROM order_details od

    INNER JOIN orders o
        ON od.order_id = o.order_id

)

SELECT

    total_revenue,

    total_orders,

    total_customers,

    total_revenue
        / NULLIF(total_orders,0) AS average_order_value

FROM sales_summary;