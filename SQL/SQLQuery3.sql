USE ThucTap;

CREATE TABLE world(name1 char(20),continent char(20), area int, population1 int, gdp bigint,capital char(20));

INSERT INTO world(name1,continent,area,population1,gdp,capital)
VALUES('Afghanistan','Asia',652230,25500100,20343000000,'Algiers'),
('Albania','Europe',28748,2831741,12960000000,'Andorra la Vella'),
('Algeria','Africa',2381741,37100000,188681000000,'Bridgetown'),
('Andorra','Europe',468,78115,3712000000,'Belmopan'),
('Angola','Africa',1246700,20609294,100990000000,'Brasislia');


SELECT world.population1 FROM world WHERE world.name1='Albania'
 
SELECT world.name1, world.population1 FROM world WHERE world.name1= ('Albania') or world.name1=('Andorra')

SELECT world.name1,world.area FROM world WHERE world.area BETWEEN 200 AND 250000

SELECT world.name1, world.continent,world.population1 FROM world WHERE world.name1 in (name1)



SELECT * FROM world
