WITH post_links AS (
    SELECT
        id,
        creation_date,
        link_type_id, 
        post_id,
        related_post_id
    FROM {{source('stackoverflow', 'post_links')}}
)
SELECT * FROM post_links