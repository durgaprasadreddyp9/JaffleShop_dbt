select 
    ID as payment_id,
    ORDERID as order_id,
    PAYMENTMETHOD as payment_method,
    STATUS,
    {{ cents_to_dollars('amount',4) }} as amount,
    CREATED as created_at
from {{ source('stripe', 'payment') }}