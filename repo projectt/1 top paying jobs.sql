SELECT job_id,job_title_short,job_title,name as company_name,salary_year_avg,job_location,job_posted_date,job_schedule_type
 FROM job_postings_fact
LEFT JOIN company_dim ON job_postings_fact.company_id = company_dim.company_id
where job_title_short = 'Data Analyst' and job_location = 'Anywhere' and salary_year_avg is NOT NULL 
ORDER BY salary_year_avg DESC 
LIMIT 010;
