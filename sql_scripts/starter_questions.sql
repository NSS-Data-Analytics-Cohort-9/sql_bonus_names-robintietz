-- 1. How many rows are in the names table?

-- SELECT COUNT(*)
-- FROM names;

--Answer: 1,957,046

-- 2. How many total registered people appear in the dataset?

-- SELECT SUM(num_registered)
-- FROM names;

--Answer: 351,653,025

-- 3. Which name had the most appearances in a single year in the dataset?

-- SELECT *
-- FROM names
-- ORDER BY num_registered DESC
-- LIMIT 10;

--Answer: Linda in 1947

-- 4. What range of years are included?

-- SELECT MIN(year), MAX(year)
-- FROM names;

--Answer: 1880-2018

-- 5. What year has the largest number of registrations?

-- SELECT year, SUM(num_registered) AS year_registered_total
-- FROM names
-- GROUP BY year
-- ORDER BY year_registered_total DESC;

--Answer: 1957

-- 6. How many different (distinct) names are contained in the dataset?

-- SELECT COUNT(DISTINCT(name)) AS unique_name_total
-- FROM names;

--Answer: 98400

-- 7. Are there more males or more females registered?

-- SELECT gender AS agab, SUM(num_registered) AS agab_num_registered
-- FROM names
-- GROUP BY agab;

--Answer: males

-- 8. What are the most popular male and female names overall (i.e., the most total registrations)?

-- SELECT name, gender, SUM(num_registered) AS total_by_name
-- FROM names
-- GROUP BY name, gender
-- ORDER BY total_by_year DESC;

--Answer: Male: James, Female: Mary

-- 9. What are the most popular boy and girl names of the first decade of the 2000s (2000 - 2009)?

-- SELECT name, gender, SUM(num_registered) AS total_by_name_2000s
-- FROM names
-- WHERE year BETWEEN 2000 AND 2009
-- GROUP BY name, gender
-- ORDER BY total_by_name_2000s DESC;

--Answer: Male: Jacob, Female: Emily

-- 10. Which year had the most variety in names (i.e. had the most distinct names)?

-- SELECT year, COUNT(DISTINCT(name)) AS unique_names
-- FROM names
-- GROUP BY year
-- ORDER BY unique_names DESC;

--Answer: 2008

-- 11. What is the most popular name for a girl that starts with the letter X?

-- SELECT name, COUNT(num_registered) AS x_count
-- FROM names
-- WHERE gender = 'F'
-- 	AND name LIKE 'X%'
-- GROUP BY name
-- ORDER BY x_count DESC;

--Answer: Xenia

-- 12. How many distinct names appear that start with a 'Q', but whose second letter is not 'u'?

-- SELECT COUNT(DISTINCT(name))
-- FROM names
-- WHERE name LIKE 'Q%'
-- 	AND name NOT LIKE 'Qu%';
	
--Answer = 46

-- 13. Which is the more popular spelling between "Stephen" and "Steven"? Use a single query to answer this question.

-- SELECT name, SUM(num_registered) AS ste_name_total
-- FROM names
-- WHERE name LIKE 'Ste%'
-- GROUP BY name
-- ORDER BY ste_name_total DESC;

--Answer: Steven

-- 14. What percentage of names are "unisex" - that is what percentage of names have been used both for boys and for girls?

SELECT gender, COUNT(DISTINCT(name)) AS names_per_gender
FROM names
GROUP BY gender;

--Answer: Male names: 41475; Female names: 67698; Total names (from Q6): 98400

-- ((41475 + 67698) - 98400) / 98400 = .09868

--9.868%

-- 15. How many names have made an appearance in every single year since 1880?

-- 16. How many names have only appeared in one year?

-- 17. How many names only appeared in the 1950s?

-- 18. How many names made their first appearance in the 2010s?

-- 19. Find the names that have not be used in the longest.

-- 20. Come up with a question that you would like to answer using this dataset. Then write a query to answer this question.