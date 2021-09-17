select 
    id as payment_id,
    orderid as order_id,
    paymentmethod as payment_method,
    status,
    round(amount/100, 2) as amount,   -- Cents to $ (1$ --> 100 cent) --
    created as created_at
from raw.stripe.payment