WITH shippers AS (
    SELECT
        shipperID AS shipper_id,
        companyName AS company_name,
        phone
    FROM {{source('northwind', 'shippers')}} 
)
SELECT * FROM shippers