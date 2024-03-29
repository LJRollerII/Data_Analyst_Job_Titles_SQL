/*SELECT *
FROM data_analyst_jobs*/

/*WHERE lower(title) LIKE '%analyst%';*/

/*SELECT *
FROM (SELECT ROW_NUMBER () OVER () AS RowNum, *
        FROM data_analyst_jobs ) sub
WHERE RowNum = 100;*/

/*1.How many rows are in the data_analyst_jobs table?
SELECT COUNT(*) 
FROM data_analyst_jobs;
Answer: There are 1793 rows in the data table*/

/*2.Write a query to look at just the first 10 rows. What company is associated with the job posting on the 10th row?
SELECT *
FROM data_analyst_jobs
LIMIT 10
Answer: ExxonMobil is the company associated in the 10th row*/

/*3.How many postings are in Tennessee? How many are there in either Tennessee or Kentucky?
SELECT COUNT(title)
FROM data_analyst_jobs
WHERE location = 'TN'

SELECT COUNT(title)
FROM data_analyst_jobs
WHERE location = 'TN' OR location ='KY'

Answer Pt.1: There are 21 postings in TN.
Answer Pt.2: There are 27 positings in either TN or KY*/

/*4.How many postings in Tennessee have a star rating above 4?
SELECT COUNT(star_rating)
FROM data_analyst_jobs
WHERE star_rating > 4
AND location = 'TN'
Answer: 3 postings*/

/*5.How many postings in the dataset have a review count between 500 and 1000?
SELECT COUNT(review_count)
FROM data_analyst_jobs
WHERE review_count BETWEEN 500 AND 1000
Answer: 151 postings*/

/*6.Show the average star rating for companies in each state. The output should show the state as state and the average rating for the state as avg_rating. Which state shows the highest average rating?
SELECT AVG(star_rating) AS avg_rating, location AS state
FROM data_analyst_jobs
WHERE star_rating IS NOT NULL
GROUP BY state
ORDER BY avg_rating
Answer:Nebraska (NE) has the highest average rating*/

/*7.Select unique job titles from the data_analyst_jobs table. How many are there?
SELECT COUNT(DISTINCT title)
FROM data_analyst_jobs
Answer: 881 unique job titles*/

/*8.How many unique job titles are there for California companies?
SELECT COUNT(DISTINCT title)
FROM data_analyst_jobs
WHERE location = 'CA'
Answer: 230 unique job titles in California (CA)*/

/*9.Find the name of each company and its average star rating for all companies that have more than 5000 reviews across all locations. How many companies are there with more that 5000 reviews across all locations?
SELECT company, AVG(star_rating)
FROM data_analyst_jobs
WHERE company IS NOT NULL
AND review_count > 5000
GROUP BY company
Answer:40 companies*/

/*10.Add the code to order the query in #9 from highest to lowest average star rating. Which company with more than 5000 reviews across all locations in the dataset has the highest star rating? What is that rating?
SELECT company, AVG(star_rating)
FROM data_analyst_jobs
WHERE company IS NOT NULL
AND review_count > 5000
GROUP BY company
ORDER BY AVG(star_rating) DESC
Answer: Unilever 4.1999998090000000*/

/*11.Find all the job titles that contain the word ‘Analyst’. How many different job titles are there?
SELECT COUNT(DISTINCT title)
FROM data_analyst_jobs
WHERE lower(title) LIKE '%analyst%'
Answer: 774 different job titles*/ 

/*12.How many different job titles do not contain either the word ‘Analyst’ or the word ‘Analytics’? What word do these positions have in common?
SELECT DISTINCT title
FROM data_analyst_jobs
WHERE lower(title) NOT LIKE '%analyst%' 
AND lower (title) NOT LIKE '%analytics%'
Answer: 4 job titles. The word that these positions have in common is Tableau*/

/*Bonus You want to understand which jobs requiring SQL are hard to fill. Find the number of jobs by industry (domain) that require SQL and have been posted longer than 3 weeks.
SELECT COUNT(title) AS hard_to_fill , domain
FROM data_analyst_jobs
WHERE domain IS NOT NULL
AND skill Like '%SQL%'
AND days_since_posting > 21
GROUP BY domain
ORDER BY hard_to_fill  DESC
Answer Pt 1: 1. Internet and Software 2. Banks and Financial Services 3. Consulting and Business Services
Answer Pt 2: 62 jobs for Internet and Software, 61 jobs for Banks and Financial Services, 57 jobs for Consulting and Business Services, and 52 jobs for Health Care*/
