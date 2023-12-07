-- How has the prevalence of fentanyl-related overdose deaths evolved over time
-- , and are there any significant trends or patterns?

SELECT "year", AVG("unemployment rate")
FROM "pop_un_in"
WHERE "location" = 'South Dakota' AND "year" = 2010
GROUP BY "year";

-- 2000_2021 related deaths over time.

SELECT avghouseincome
FROM pop_un_in;

SELECT 
    location AS state,
    year,
    SUM(population) AS total_population,
    AVG("unemployment rate") AS average_unemployment_rate,
    AVG(avghouseincome) AS average_household_income
FROM 
    pop_un_in 
GROUP BY 
    location, year
ORDER BY 
    year, location;
	
SELECT DISTINCT location FROM pop_un_in;


SELECT 
    location AS state,
    SUM(population) AS total_population,
    AVG("unemployment rate") AS average_unemployment_rate,
    AVG(avghouseincome) AS average_household_income, year
FROM 
    pop_un_in 
GROUP BY 
    year, location;

SELECT *
FROM pop_un_in
INNER JOIN drugod USING year;


SELECT DISTINCT pop_un_in.location, pop_un_in.year, drugod.Any_Opioid
FROM pop_un_in
JOIN drugod ON pop_un_in.year = drugod.year
GROUP BY pop_un_in.location, pop_un_in.year, drugod.Any_Opioid
ORDER BY pop_un_in.year DESC;



SELECT *
FROM drugod







