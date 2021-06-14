-- Show name, continent and population of all countries
SELECT name, continent, population FROM world

-- Show nae of countries of population at least 200 million
SELECT name
  FROM world
  WHERE population > 200000000