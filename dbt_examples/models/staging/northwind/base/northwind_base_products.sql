WITH products AS (
    SELECT 
        productID AS product_id,
        productName AS product_name,
        supplierID AS supplier_id,
        categoryID AS category_id,
        quantityPerUnit AS quantity_per_unit,
        unitPrice AS unit_price,
        unitsInStock AS units_in_stock,
        unitsOnOrder AS units_on_order,
        reorderLevel AS reorder_level,
        discontinued
    FROM {{source('northwind', 'products')}} 
)
SELECT * FROM products