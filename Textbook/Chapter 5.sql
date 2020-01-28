SELECT *
FROM station_data;

SELECT *
FROM station_data
WHERE year = 2010;

-- both below queries find every year except for 2010
SELECT *
FROM station_data
WHERE year != 2010;

SELECT *
FROM station_data
WHERE year <> 2010;

-- inclusive ranges
SELECT *
FROM station_data
WHERE year BETWEEN 2005 and 2010;

-- AND, OR, and IN statements
SELECT *
FROM station_data
WHERE year >= 2005 AND year <= 2010;

SELECT *
FROM station_data
WHERE year > 2005 AND year < 2010;

SELECT *
FROM station_data
WHERE MONTH = 3
    OR MONTH = 6
    OR MONTH = 9
    OR MONTH = 12;

-- more efficient way of above query with IN statement
SELECT *
FROM station_data
WHERE MONTH IN (3,6,9,12);

SELECT *
FROM station_data
WHERE MONTH NOT IN (3,6,9,12);

SELECT *
FROM station_data
WHERE MONTH % 3 = 0;
-- Oracle does not use modulus operator, instead uses the MOD() function

-- using WHERE on Text
SELECT *
FROM station_data
WHERE report_code = '513A63';
-- you must wrap literals (or text values you specify) in single quotes

SELECT *
FROM station_data
WHERE report_code IN ('513A63', '1F8A7B', 'EF616A');

SELECT *
FROM station_data
WHERE length(report_code) != 6;

SELECT *
FROM station_data
WHERE report_code LIKE 'A%';

SELECT *
FROM station_data
WHERE report_code LIKE 'B_C%';

SELECT *
FROM station_data
WHERE tornado = true AND hail = true;

SELECT *
FROM station_data
WHERE tornado = 1 AND hail = 1;

SELECT *
FROM station_data
WHERE tornado and hail;

SELECT *
FROM station_data
WHERE tornado = 0 AND hail = 1;

SELECT *
FROM station_data
WHERE NOT tornado AND hail;

SELECT *
FROM station_data
WHERE snow_depth IS NULL;

SELECT *
FROM station_data
WHERE precipitation <= 0.5;

SELECT *
FROM station_data
WHERE precipitation IS NULL OR precipitation <= 0.5;

SELECT *
FROM station_data
WHERE coalesce(precipitation, 0) <= 0.5;

SELECT report_code, coalesce(precipitation, 0) as rainfall
FROM station_data;

SELECT *
FROM station_data
WHERE rain = 1 AND temperature <= 32
    OR snow_depth > 0;

-- better to group explicitly
SELECT *
FROM station_data
WHERE (rain = 1 AND temperature <= 32)
    OR snow_depth > 0;