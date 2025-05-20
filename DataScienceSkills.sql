-- Data Science Skills
-- LinkedIn SQL Interview Question

-- Given a table of candidates and their skills, you're tasked with finding the candidates best suited for an open Data Science job. You want to find candidates who are proficient in Python, Tableau, and PostgreSQL.

-- Write a query to list the candidates who possess all of the required skills for the job. Sort the output by candidate ID in ascending order.

-- Explanation

-- Candidate 123 is displayed because they have Python, Tableau, and PostgreSQL skills. 345 isn't included in the output because they're missing one of the required skills: PostgreSQL.

SELECT t1.candidate_id FROM
candidates t1, candidates t2, candidates t3
WHERE (t1.candidate_id = t2.candidate_id AND t2.candidate_id = t3.candidate_id)
AND t1.skill = 'Python' AND t2.skill = 'Tableau' and t3.skill = 'PostgreSQL';
