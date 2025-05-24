-- Write a query to identify the top 2 Power Users who sent the highest number of messages on Microsoft Teams in August 2022. Display the IDs of these 2 users along with the total number of messages they sent. Output the results in descending order based on the count of the messages.

-- Assumption:

--     No two users have sent the same number of messages in August 2022.

SELECT sender_id, COUNT(DISTINCT message_id) AS count_messages
FROM messages
WHERE EXTRACT(YEAR FROM sent_date) = 2022
AND EXTRACT(MONTH FROM sent_date) = 8
GROUP BY sender_id
ORDER BY count_messages DESC
LIMIT 2;
