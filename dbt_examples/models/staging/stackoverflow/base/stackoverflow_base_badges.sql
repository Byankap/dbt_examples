WITH badges AS (
    SELECT
        id,
        name,
        date,
        user_id,
        class,
        tag_based  
    FROM {{source('stackoverflow', 'badges')}}
)
SELECT * FROM badges