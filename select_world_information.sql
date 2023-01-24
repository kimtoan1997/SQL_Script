
IF NOT EXISTS (SELECT * FROM INFORMATION_SCHEMA.TABLES WHERE TABLE_NAME = N'World')
BEGIN
	CREATE TABLE dbo.World
	(
		name VARCHAR(255)
		,continent VARCHAR(255)
		,area BIGINT
		,population BIGINT
		,gdp BIGINT
	)
END


TRUNCATE TABLE dbo.World
INSERT INTO dbo.World (name, continent, area, population, gdp) VALUES ('Afghanistan', 'Asia', 652230, 25500100, 20343000000)
INSERT INTO dbo.World (name, continent, area, population, gdp) VALUES ('Albania', 'Europe', 28748, 2831741, 12960000000)
INSERT INTO dbo.World (name, continent, area, population, gdp) VALUES ('Algeria', 'Africa', 2381741, 37100000, 188681000000)
INSERT INTO dbo.World (name, continent, area, population, gdp) VALUES ('Andorra', 'Europe', 468, 78115, 3712000000)
INSERT INTO dbo.World (name, continent, area, population, gdp) VALUES ('Angola', 'Africa', 1246700, 20609294, 100990000000)

/*
	A country is big if:

	it has an area of at least three million (i.e., 3000000 km2), or
	it has a population of at least twenty-five million (i.e., 25000000).
	Write an SQL query to report the name, population, and area of the big countries.

	Return the result table in any order.

	The query result format is in the following example.
*/

SELECT name
		,continent
		,area
		,population
		,gdp
FROM dbo.World
WHERE area >= 3000000
OR population >= 25000000