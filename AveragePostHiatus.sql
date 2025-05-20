-- Average Post Hiatus (Part 1)
-- Facebook SQL Interview Question

-- Given a table of Facebook posts, for each user who posted at least twice in 2021, write a query to find the number of days between each user’s first post of 
-- the year and last post of the year in the year 2021. Output the user and number of the days between each user's first and last post.

-- Solution:

SELECT x.user_id, x.days_between 
FROM 
(SELECT user_id, (MAX(post_date)::date - MIN(post_date)::date) AS days_between
FROM posts
WHERE 1 = 1 
AND EXTRACT(YEAR FROM post_date) = 2021
GROUP BY user_id) x
WHERE x.days_between > 0
GROUP BY x.user_id, x.days_between
ORDER BY x.user_id DESC;
