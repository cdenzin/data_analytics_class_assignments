SELECT 
	name,
	population
FROM da_world.city;

SELECT 
	ci.name,
	co.name,
	co.population,
	co.region,
	co.continent
FROM da_world.city ci
INNER JOIN da_world.country co
	ON ci.countrycode = co.code;

SELECT 
	ci.name,
	co.name,
	co.continent
FROM da_world.city ci
INNER JOIN da_world.country co
	ON ci.countrycode = co.code;

SELECT 
	ci.name,
	co.name,
	co.continent
FROM da_world.city ci
INNER JOIN da_world.country co
	ON ci.countrycode = co.code
WHERE continent = 'Africa';

SELECT 
	ci.name,
	co.name,
	co.continent,
	ci.population
FROM da_world.city ci
INNER JOIN da_world.country co
	ON ci.countrycode = co.code
WHERE co.continent = 'Africa'
	AND ci.population > 1000000