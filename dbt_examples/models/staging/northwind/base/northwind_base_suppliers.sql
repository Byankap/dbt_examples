WITH suppliers AS (
    SELECT
        supplierID AS supplier_id,
        companyName AS company_name,
        contactName AS contact_name,
        contactTitle AS contact_title,
        address,
        city,
        region,
        postalCode AS postal_code,
        country,
        phone,
        fax,
        homePage AS home_page
    FROM {{source('northwind', 'suppliers')}}
)
SELECT * FROM suppliers