-- Show name, continent and population of all countries
SELECT name, continent, population FROM world;

-- Show nae of countries of population at least 200 million
SELECT name
FROM world
WHERE population >= 200000000;

-- name and the per capita GDP for those countries with a population of at least 200 million.
SELECT name,gdp/population
FROM world
WHERE population >= 200000000;

-- Name and population in millions for countries in the continent 'South America'
SELECT name, population / 1000000
FROM world
WHERE continent = 'South America';

-- Name and population for France, Germany, Italy
SELECT name, population
FROM world
WHERE name IN ('France', 'Germany', 'Italy');

-- countries which have a name that includes the word 'United'
SELECT name
FROM world
WHERE name LIKE '%united%';

-- countries that are big by area or big by population. Show name, population and area.

