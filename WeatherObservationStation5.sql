SELECT City, LENGTH(City)
FROM STATION
WHERE LENGTH(City) = (
    SELECT MIN(LENGTH(City))
FROM STATION
)
ORDER BY City LIMIT 1;

SELECT City
,LENGTH
(City) FROM STATION WHERE LENGTH
(City) =
(
    SELECT MAX(LENGTH(City))
FROM STATION
)
ORDER BY City
LIMIT 1;