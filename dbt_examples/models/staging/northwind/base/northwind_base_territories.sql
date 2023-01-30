WITH territories AS (
    SELECT
        territoryID AS territory_id,
        territoryDescription AS territory_description,
        regionID AS region_id
    FROM {{source('northwind', 'territories')}} 
)
SELECT * FROM territories