/*
        ??Questions to Answer??
1. what are the top-paying jobs for my role?
2. what are the skills required for tehse top-paying roles?
3. what are the most in-demand skills for my role?
4. what are the top skills based on salary for my role?
5. what are the most optimal skills to lear?
    a. optimal: High Demand AND High Paying
*/

SELECT
    job_id,
    job_title,
    job_location,
    job_schedule_type,
    salary_year_avg,
    job_posted_date
FROM    
    job_postings_fact