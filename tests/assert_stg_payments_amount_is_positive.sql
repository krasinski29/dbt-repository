WITH payments AS (

    SELECT * FROM {{ ref('stg_payments') }}
)

SELECT 
    order_id,
    sum(amount) as total_amount
FROM payments
GROUP BY order_id
having total_amount < 0