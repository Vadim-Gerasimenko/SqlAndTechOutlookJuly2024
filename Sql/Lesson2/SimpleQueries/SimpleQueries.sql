USE world;

SELECT name, district
FROM city;

SELECT * FROM city
WHERE countryCode = 'RUS'
ORDER BY name;

SELECT name 
FROM city
WHERE countryCode IN ('ESP', 'PRT', 'GRC')
ORDER BY name DESC;

SELECT name 
FROM city
WHERE population BETWEEN 300000 AND 500000;

SELECT name 
FROM city
WHERE name LIKE 'A%';

SELECT name 
FROM city
WHERE name LIKE '%A%';

SELECT name 
FROM city
WHERE countryCode = 'RUS' AND population >= 1000000;

SELECT name 
FROM city
WHERE (countryCode = 'ESP' AND name LIKE 'A%') 
	OR (countryCode = 'GRC' AND population <= 200000);