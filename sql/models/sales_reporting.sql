/*
===============================================================================
Model: sales_reporting
Project: Northwind Sales Analytics

Purpose:
Create a reusable reporting layer containing sales transactions enriched
with business context.

Grain:
One row per product sold within one order.

Business Rules:
- Revenue is calculated after discounts.
- Product and category information is included.
- Customer and employee identifiers are retained for downstream reporting.
===============================================================================
*/

CREATE OR REPLACE VIEW sales_reporting AS

SELECT
    o.order_id,
    o.order_date,
    o.customer_id,
    o.employee_id,
    o.ship_country,

    p.product_id,
    p.product_name,
    c.category_name,

    od.unit_price,
    od.quantity,
    od.discount,

    ROUND(
        ((od.unit_price * od.quantity) * (1 - od.discount))::numeric,
        2
    ) AS revenue

FROM orders o

INNER JOIN order_details od
    ON o.order_id = od.order_id

INNER JOIN products p
    ON od.product_id = p.product_id

INNER JOIN categories c
    ON p.category_id = c.category_id;