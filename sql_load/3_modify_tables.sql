
SELECT 
    job_title_short,
    job_location,
    job_via,
    job_posted_date::DATE,
    salary_year_avg
FROM(
    SELECT *
    FROM january_jobs
    UNION ALL
    SELECT *
    FROM february_jobs
    UNION ALL
    SELECT *
    FROM march_jobs
) AS quater1_job_postings   
WHERE  
    salary_year_avg>7000 AND
    job_title_short = 'Date Analyst'
ORDER BY   
    salary_year_avg DESC;