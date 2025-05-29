USE merchandising;

SELECT m.lastName, m.firstName, m.middleName
FROM merchandiser m
INNER JOIN city c
	ON m.cityId = c.id
INNER JOIN region r
	ON c.regionId = r.id
WHERE r.nameEn = 'Siberia';

SELECT * FROM posmItem
WHERE comment IS NULL;

SELECT c.name cityName, COUNT(m.id) merchandisersCount
FROM city c
LEFT JOIN merchandiser m
	ON c.id = m.cityId
GROUP BY c.id;

SELECT r.name regionName, COUNT(m.id) merchandisersCount
FROM region r
LEFT JOIN city c
	ON r.id = c.regionId
LEFT JOIN merchandiser m
	ON c.id = m.cityId
GROUP BY r.id;

SELECT SUM(posmSetsCount) unplacedCount,
	(SELECT SUM(posmSetsCount)
     FROM placePosmTask
     GROUP BY formPosmSetTaskId, status
     HAVING status = 2) AS placedCount
FROM placePosmTask
GROUP BY formPosmSetTaskId, status
HAVING status = 1;

SELECT agentCode, SUM(posmSetsCount) SentToAgentPosmSetsCount
FROM placePosmTask
GROUP BY formPosmSetTaskId, agentCode;

SELECT m.id, m.firstName, m.lastName, 
	COUNT(p.status) tasksInWorkCount,
    (SELECT COUNT(pl.status) completedTasksCount
	 FROM merchandiser me
     LEFT JOIN placePosmTask pl
		ON me.id = pl.merchandiserId AND pl.status = 2
	GROUP BY pl.status, me.id
    HAVING me.id = m.id) completedTasksCount
FROM merchandiser m
LEFT JOIN placePosmTask p
	ON m.id = p.merchandiserId AND p.status = 1
GROUP BY p.status, m.id;

SELECT agentCode, COUNT(status) placementTasksCount
FROM placePosmTask
GROUP BY agentCode, status
HAVING status = 1 AND COUNT(status) > 2;