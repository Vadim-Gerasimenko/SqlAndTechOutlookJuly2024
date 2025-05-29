USE world;

SELECT countryCode, COUNT(name) AS citiesCount
FROM city
GROUP BY countryCode;

SELECT countryCode, COUNT(name) AS citiesCount
FROM city
GROUP BY countryCode
HAVING COUNT(name) >= 2;

SELECT countryCode, COUNT(name) AS citiesCount
FROM city
WHERE population >= 1000000
GROUP BY countryCode
HAVING COUNT(name) >= 2;

SELECT countryCode, AVG(population) AS averagePopulation
FROM city
GROUP BY countryCode
ORDER BY averagePopulation DESC;