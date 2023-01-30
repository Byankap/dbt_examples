WITH tags AS (
    SELECT
        id,
        tag_name,
        count,
        excerpt_post_id,
        wiki_post_id
    FROM {{source('stackoverflow', 'tags')}}
)
SELECT * FROM tags