USE world;

SELECT UPPER(name) AS name, LOWER(continent) AS continent
FROM country
ORDER BY CHAR_LENGTH(name) DESC;

SELECT name, surfaceArea, SQRT(surfaceArea / PI()) AS circleRadius
FROM country
ORDER BY circleRadius DESC;