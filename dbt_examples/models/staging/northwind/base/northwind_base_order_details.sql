WITH order_details AS (
    SELECT
        orderID AS order_id,
        productID AS product_id,
        unitPrice AS unit_price,
        quantity,
        discount
    FROM {{source('northwind', 'order_details')}} 
) 
SELECT * FROM order_details