WITH regions AS (
    SELECT
        regionID AS region_id,
        regionDescription AS region_description
    FROM {{source('northwind', 'regions')}} 
)
SELECT * FROM regions