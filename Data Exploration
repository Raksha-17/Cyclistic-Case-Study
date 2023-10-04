-- Data Exploration

-- checking the data types of all columns
SELECT column_name, data_type
FROM `2020_trips`.INFORMATION_SCHEMA.COLUMNS
WHERE table_name = 'combined_data';

-- checking for number of null values in all columns

SELECT COUNT(*) - COUNT(ride_id) AS ride_id,
 COUNT(*) - COUNT(rideable_type) AS rideable_type,
 COUNT(*) - COUNT(started_at) AS started_at,
 COUNT(*) - COUNT(ended_at) AS ended_at,
 COUNT(*) - COUNT(start_station_name) AS start_station_name,
 COUNT(*) - COUNT(start_station_id) AS start_station_id,
 COUNT(*) - COUNT(end_station_name) AS end_station_name,
 COUNT(*) - COUNT(end_station_id) AS end_station_id,
 COUNT(*) - COUNT(start_lat) AS start_lat,
 COUNT(*) - COUNT(start_lng) AS start_lng,
 COUNT(*) - COUNT(end_lat) AS end_lat,
 COUNT(*) - COUNT(end_lng) AS end_lng,
 COUNT(*) - COUNT(member_casual) AS member_casual
FROM `2020_trips.combined_data`;

-- checking for duplicate rows

SELECT 
COUNT(ride_id) - COUNT(DISTINCT ride_id) AS duplicate_rows
 FROM `capstone-cyclistic-400621.2020_trips.combined_data`;
 

 -- ride_id - all have length of 16

SELECT 
LENGTH(ride_id) AS length_ride_id, 
COUNT(ride_id) AS no_of_rows
FROM `capstone-cyclistic-400621.2020_trips.combined_data`
GROUP BY length_ride_id;

-- rideable_type - 3 unique types of bikes

SELECT DISTINCT rideable_type, COUNT(rideable_type) AS no_of_trips
FROM `capstone-cyclistic-400621.2020_trips.combined_data`
GROUP BY rideable_type;

-- started_at, ended_at - TIMESTAMP - YYYY-MM-DD hh:mm:ss UTC

SELECT started_at, ended_at
FROM `capstone-cyclistic-400621.2020_trips.combined_data`
LIMIT 10;

SELECT COUNT(*) AS longer_than_a_day
FROM `capstone-cyclistic-400621.2020_trips.combined_data`
WHERE (
  EXTRACT(HOUR FROM (ended_at - started_at)) * 60 +
  EXTRACT(MINUTE FROM (ended_at - started_at)) +
  EXTRACT(SECOND FROM (ended_at - started_at)) / 60) >= 1440;   -- longer than a day - total rows = 2856

SELECT COUNT(*) AS less_than_a_minute
FROM `capstone-cyclistic-400621.2020_trips.combined_data`
WHERE (
  EXTRACT(HOUR FROM (ended_at - started_at)) * 60 +
  EXTRACT(MINUTE FROM (ended_at - started_at)) +
  EXTRACT(SECOND FROM (ended_at - started_at)) / 60) <= 1;      -- less than a minute - total rows = 63011

-- start_station_name, start_station_id - total 164932 rows with both start station name and id missing

SELECT DISTINCT start_station_name
FROM `capstone-cyclistic-400621.2020_trips.combined_data`
ORDER BY start_station_name;

SELECT COUNT(ride_id) AS rows_with_start_station_null          -- return 164237 rows
FROM `capstone-cyclistic-400621.2020_trips.combined_data`
WHERE start_station_name IS NULL OR start_station_id IS NULL;

-- end_station_name, end_station_id - total 179615 rows with both end station name and id missing

SELECT DISTINCT end_station_name
FROM `capstone-cyclistic-400621.2020_trips.combined_data`
ORDER BY end_station_name;

SELECT COUNT(ride_id) AS rows_with_null_end_station          -- return 178920 rows
FROM `capstone-cyclistic-400621.2020_trips.combined_data`
WHERE end_station_name IS NULL OR end_station_id IS NULL;

-- end_lat, end_lng - total 4255 rows with both missing

SELECT COUNT(ride_id) AS rows_with_null_end_loc
FROM `capstone-cyclistic-400621.2020_trips.combined_data`
WHERE end_lat IS NULL OR end_lng IS NULL;

-- member_casual - 2 unique values - member 1366575 trips and casual riders 2175108 trips

SELECT DISTINCT member_casual, COUNT(member_casual) AS no_of_trips
FROM `capstone-cyclistic-400621.2020_trips.combined_data`
GROUP BY member_casual;
