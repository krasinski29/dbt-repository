WITH payments AS (
SELECT 
    id AS payment_id,
    orderid AS order_id,
    paymentmethod AS payment_method,
    status AS payment_status,
    amount/100 AS amount,
    created AS created_date,
    _batched_at
FROM raw.stripe.payment
)
SELECT * FROM payments