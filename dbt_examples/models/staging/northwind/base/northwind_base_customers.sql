WITH customers AS (
    SELECT
        string_field_0 AS customer_id,
        string_field_1 AS company_name,
        string_field_2 AS contact_name,
        string_field_3 AS contact_title,
        string_field_4 AS address,
        string_field_5 AS city,
        string_field_6 AS region,
        string_field_7 AS postal_code,
        string_field_8 AS country,
        string_field_9 AS phone,
        string_field_10 AS fax
    FROM {{source('northwind', 'customers')}}  

)
SELECT * FROM customers