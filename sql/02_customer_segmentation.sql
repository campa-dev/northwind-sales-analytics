/*
Report: Customer Segmentation

Business Question:
Which customers generate the most revenue, and how can they be classified
into High-, Medium-, and Low-value segments?

Report Grain:
One row per customer.

Business Rules:
- Revenue is calculated after discounts.
- Customers with no orders are included.
- Customers with no revenue are assigned a revenue of 0.
*/

-- Calculate customer-level sales metrics
WITH customer_metrics AS (

    SELECT
        c.customer_id,
        c.company_name,
        c.country,

        -- Net revenue after discounts.
        -- Customers without orders return 0 instead of NULL.
 		COALESCE(
                SUM((od.unit_price * od.quantity) * (1 - od.discount)),
                0
            ),
            2
        AS total_revenue,

        COUNT(DISTINCT o.order_id) AS total_orders

    FROM customers c

    LEFT JOIN orders o
        ON c.customer_id = o.customer_id

    LEFT JOIN order_details od
        ON od.order_id = o.order_id

    GROUP BY
        c.customer_id,
        c.company_name,
        c.country
)

SELECT
    customer_id,
    company_name,
    country,
    total_revenue,
    total_orders,

    -- Rank customers by total revenue.
    -- Customers with the same revenue share the same rank.
    DENSE_RANK() OVER (
        ORDER BY total_revenue DESC
    ) AS customer_rank,

    -- Revenue thresholds defined by business requirements.
    CASE
        WHEN total_revenue >= 94265 THEN 'High'
        WHEN total_revenue BETWEEN 47133 AND 94264 THEN 'Medium'
        ELSE 'Low'
    END AS customer_segment

FROM customer_metrics

ORDER BY
    customer_rank,
    company_name;