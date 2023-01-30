WITH users AS (
    SELECT 
        id,
        display_name,
        about_me,
        age,
        creation_date,
        last_access_date,
        location,
        reputation,
        up_votes,
        down_votes,
        views,
        website_url
    FROM {{source('stackoverflow', 'users')}}
)
SELECT * FROM users