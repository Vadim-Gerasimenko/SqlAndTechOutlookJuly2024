USE world;

SELECT * FROM city
CROSS JOIN country;

SELECT co.code countryCode, co.name countryName, ci.name cityName
FROM country co
INNER JOIN city ci
	ON co.capital = ci.id;
    
SELECT ci.name cityName, ci.population cityPopulation,
	ci.countryCode, co.name countryName
FROM city ci
INNER JOIN country co
	ON ci.countryCode = co.code;
    
SELECT co.continent, COUNT(ci.id) citiesCount
FROM country co
LEFT JOIN city ci
	ON ci.countryCode = co.code
GROUP BY co.continent;

SELECT c.name, COUNT(cl.language) officialLanguagesCount
FROM country c
LEFT JOIN countryLanguage cl
	ON c.code = cl.countryCode AND isOfficial = 'T'
GROUP BY c.name
ORDER BY officialLanguagesCount DESC;