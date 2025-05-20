-- Histogram of Tweets
-- Twitter SQL Interview Question

-- Assume you're given a table Twitter tweet data, write a query to obtain a histogram of tweets posted per user in 2022. Output the tweet count per user as the bucket and the number of Twitter users who fall into that bucket.

-- In other words, group the users by the number of tweets they posted in 2022 and count the number of users in each group.

-- Explanation:

-- Based on the example output, there are two users who posted only one tweet in 2022, and one user who posted two tweets in 2022. The query groups the users by the number of tweets they posted and displays the number of users in each group.

-- Solution:

SELECT ROW_NUMBER() OVER (ORDER BY y.tweet_sum) AS tweet_bucket, y.users_num FROM
(SELECT x.tweet_sum,
SUM(x.sum_users) AS users_num FROM 
(SELECT COUNT(DISTINCT tweet_id) AS tweet_sum, user_id, COUNT(DISTINCT user_id) 
AS sum_users FROM tweets
GROUP BY user_id
ORDER BY tweet_sum ASC) AS x
GROUP BY x.tweet_sum, x.sum_users
ORDER BY x.tweet_sum ASC) y
GROUP BY y.tweet_sum, y.users_num;
