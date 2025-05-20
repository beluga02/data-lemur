-- Laptop vs. Mobile Viewership
-- NY Times SQL Interview Question

-- This is the same question as problem #3 in the SQL Chapter of Ace the Data Science Interview!

-- Assume you're given the table on user viewership categorised by device type where the three types are laptop, tablet, and phone.

-- Write a query that calculates the total viewership for laptops and mobile devices where mobile is defined as the sum of tablet and phone viewership. 
-- Output the total viewership for laptops as laptop_reviews and the total viewership for mobile devices as mobile_views.

-- Explanation

-- Based on the example input, there are a total of 2 laptop views and 3 mobile views.

-- Solution:

-- mobile = tablet + phone
SELECT laptop.laptop_views, mobile.mobile_views
FROM (SELECT  COUNT(view_time) AS mobile_views FROM viewership
WHERE device_type = 'tablet' OR device_type = 'phone') mobile,
(SELECT  COUNT(view_time) AS laptop_views FROM viewership
WHERE device_type = 'laptop') laptop;
