WITH customer AS (
    SELECT *
    FROM {{ ref('eph_customer') }}
),

orders AS (
    SELECT *
    FROM {{ ref('eph_order') }}
),

customer_orders AS (
    SELECT
        customer_id,
        MIN(order_date) AS first_order_date,
        MAX(order_date) AS most_recent_order_date,
        COUNT(*) AS number_of_orders
    FROM orders
    GROUP BY customer_id
),

final AS (
    SELECT
        customer.customer_id,
        customer.first_name,
        customer.last_name,
        customer_orders.first_order_date,
        customer_orders.most_recent_order_date,
        COALESCE(customer_orders.number_of_orders, 0) AS number_of_orders
    FROM customer
    LEFT JOIN customer_orders
        ON customer.customer_id = customer_orders.customer_id
)

SELECT *
FROM final