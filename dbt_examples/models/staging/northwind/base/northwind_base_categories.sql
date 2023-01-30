WITH categories AS (
    SELECT 
        categoryID AS category_id,
        categoryName AS category_name,
        description
        
    FROM {{source('northwind', 'categories')}}  
)
SELECT * FROM categories
