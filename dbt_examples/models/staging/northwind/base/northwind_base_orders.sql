WITH orders AS (
    SELECT
        orderID AS order_id,
        customerID AS customer_id,
        employeeID AS employee_id, 
        orderDate AS order_date,
        requiredDate AS required_date,
        shippedDate AS shipped_date,
        shipVia AS ship_via,
        freight,
        shipName AS ship_name,
        shipAddress AS ship_address,
        shipCity AS ship_city,
        shipRegion AS ship_region,
        shipPostalCode AS ship_postal_code,
        shipCountry AS ship_country
    FROM {{source('northwind', 'orders')}} 
) 
SELECT * FROM orders