/*
        ??Questions to Answer??
1. what are the top-paying jobs for my role?
2. what are the skills required for tehse top-paying roles?
3. what are the most in-demand skills for my role?
4. what are the top skills based on salary for my role?
5. what are the most optimal skills to lear?
    a. optimal: High Demand AND High Paying
*/

/*
Question: What are the top-paying data Scientist jobs?
- Identify the top 10 highest-paying Data Scientist roles that are available remotely
- Focuses on job postings with specified salaries (remove nulls)
- BONUS: Include company names of top 10 roles
- Why? Highlight the top-paying opportunities for Data Scientist, offering insights into employment options and location flexibility.
*/


SELECT
    job_id,
    job_title,
    job_location,
    job_schedule_type,
    salary_year_avg,
    job_posted_date,
    name AS company_name
FROM  job_postings_fact
LEFT JOIN company_dim ON job_postings_fact.company_id = company_dim.company_id
WHERE job_title_short = 'Data Scientist' AND 
      job_location = 'Anywhere' AND
      salary_year_avg IS NOT NULL
ORDER BY salary_year_avg DESC
LIMIT 10;