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
SELECT name, population, area
FROM world
WHERE area > 3000000 OR population > 250000000;

-- Show the countries that are big by area (more than 3 million) or big by population (more than 250 million) but not both. Show name, population and area.
SELECT name, population, area
FROM world
WHERE area > 3000000 XOR population > 250000000;

-- name and population in millions and the GDP in billions for the countries of the continent 'South America'. 
SELECT name, ROUND(population / 1000000, 2), ROUND(gdp / 1000000000, 2)
FROM world
WHERE continent = 'South America';

-- name and per-capita GDP for those countries with a GDP of at least one trillion (1000000000000; that is 12 zeros). Round this value to the nearest 1000.
SELECT name, ROUND(gdp / population, -3)
FROM world
WHERE gdp >= 1000000000000;

-- name and the capital where the first letters of each match. Don't include countries where the name and the capital are the same word.
SELECT name, capital
FROM world
WHERE name <> capital AND LEFT(name,1) = LEFT(capital,1);

-- Find the country that has all the vowels and no spaces in its name.
You can use the phrase name NOT LIKE '%a%' to exclude characters from your results.
The query shown misses countries like Bahamas and Belarus because they contain at least one 'a'
SELECT name
FROM world
WHERE name LIKE '%a%' AND
      name LIKE '%e%' AND
      name LIKE '%i%' AND
      name LIKE '%o%' AND
      name LIKE '%u%' AND
      name NOT LIKE '% %';
