WITH employees AS (
    SELECT
        employeeID AS employee_id,
        lastName AS last_name,
        firstName AS first_name,
        title,
        titleOfCourtesy AS title_of_courtesy,
        birthDate AS birth_date,
        hireDate AS hire_date,
        address,
        city,
        region,
        postalCode AS postal_code,
        country,
        homePhone AS home_phone,
        extension,
        notes,
        reportsTo AS reports_to,
        photoPath AS photo_path
    FROM {{source('northwind', 'employees')}} 
) 
SELECT * FROM employees