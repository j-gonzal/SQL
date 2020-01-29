SELECT COUNT(*) AS record_count
FROM station_data;

SELECT COUNT(*) AS record_count
FROM station_data
WHERE tornado = 1;

SELECT year, COUNT(*) AS record_count
FROM station_data
WHERE tornado = 1
GROUP BY year;

SELECT year, month, COUNT(*) AS record_count
FROM station_data
WHERE tornado = 1
GROUP BY year, month;

SELECT year, month, COUNT(*) AS record_count
FROM station_data
WHERE tornado = 1
GROUP BY 1, 2;
--ordinal positions do not work with Oracle or SQL Server

SELECT year, month, COUNT(*) AS record_count
FROM station_data
WHERE tornado = 1
GROUP BY year, month
ORDER BY year, month;

SELECT year, month, COUNT(*) AS record_count
FROM station_data
WHERE tornado = 1
GROUP BY year, month
ORDER BY year DESC, month;

SELECT COUNT(snow_depth) as recorded_snow_depth_count
FROM STATION_DATA;

SELECT month, AVG(temp) as avg_temp
FROM station_data
WHERE year >= 2000
GROUP BY month;

SELECT month, round(AVG(temp),2) as avg_temp
FROM station_data
WHERE year >= 2000
GROUP BY month;

SELECT year, SUM(snow_depth) as total_snow
FROM station_data
WHERE year >= 2000
GROUP BY year;

SELECT year,
    SUM(snow_depth) as total_snow,
    SUM(precipitation) as total_precipitation,
    MAX(precipitation) as max_precipitation
FROM station_data
WHERE year >= 2000
GROUP BY year;

SELECT year,
    SUM(precipitation) as tornado_precripitation
FROM station_data
WHERE tornado = 1
GROUP BY year;

SELECT year,
    SUM(precipitation) as total_precipitation
FROM station_data
GROUP BY year
HAVING total_precipitation > 30;

-- Oracle database only example
SELECT year,
    SUM(precipitation) as total_precipitation
FROM station_data
GROUP BY year
HAVING SUM(precipitation) > 30;

SELECT station_number
FROM station_data;

SELECT DISTINCT station_number
FROM station_data;

SELECT DISTINCT station_number, year
FROM station_data;