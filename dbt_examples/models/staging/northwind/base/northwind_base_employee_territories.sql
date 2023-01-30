WITH employee_territories AS (
    SELECT 
        employeeID AS employee_id,
        territoryID AS territory_id
    FROM {{source('northwind', 'employee_territories')}}  
)
SELECT * FROM employee_territories