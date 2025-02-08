USE whr;

-- Export for comparing avg. hours to GDP
SELECT 
    w.year AS 'year',
    c.country_name AS 'country', 
    r.region_name AS 'region',
    AVG(h.average_hours) AS 'average_hours', 
    AVG(w.gdp_per_capita) AS 'gdp_per_capita' 
FROM whr.whr_table AS w
JOIN whr.country_table AS c ON w.country_id = c.country_id
JOIN whr.region_table AS r ON r.region_id = w.region_id  
JOIN whr.hours_table AS h  
ON h.country_id = w.country_id 
AND h.year = w.year 
GROUP BY w.year, c.country_name, r.region_name
ORDER BY w.year DESC, c.country_name DESC;


-- Happiness & Health to Hours Worked

SELECT 
    w.year AS 'year',
    c.country_name AS 'country', 
    r.region_name AS 'region',
    AVG(h.average_hours) AS 'average_hours', 
    AVG(w.happiness) AS 'happiness', 
    AVG(w.social_support) AS 'social_support',
    AVG(w.govt_corruption) AS 'govt_corruption',
    AVG(w.life_expectancy) AS 'life_expectancy',
    AVG(w.freedom) AS 'freedom'
FROM whr.whr_table AS w
JOIN whr.country_table AS c ON w.country_id = c.country_id
JOIN whr.region_table AS r ON r.region_id = w.region_id  
JOIN whr.hours_table AS h  
ON h.country_id = w.country_id 
AND h.year = w.year 
GROUP BY w.year, c.country_name, r.region_name
ORDER BY w.year DESC, c.country_name DESC;


