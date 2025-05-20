-- Page With No Likes
-- Facebook SQL Interview Question

-- Assume you're given two tables containing data about Facebook Pages and their respective likes (as in "Like a Facebook Page").

-- Write a query to return the IDs of the Facebook pages that have zero likes. The output should be sorted in ascending order based on the page IDs.

SELECT pages.page_id FROM pages
LEFT JOIN page_likes ON pages.page_id = page_likes.page_id
WHERE 1 = 1
AND page_likes.user_id IS NULL
ORDER BY pages.page_id DESC;
