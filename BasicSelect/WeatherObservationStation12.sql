SELECT DISTINCT City
FROM STATION
WHERE City
REGEXP '^[^aeiou].*[^aeiou]$';
