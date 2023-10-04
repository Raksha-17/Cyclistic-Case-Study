--Convert Data type from String to INT64

SELECT 
 ride_id,rideable_type,started_at,ended_at,start_station_name,
 SAFE_CAST(start_station_id AS INT64) AS start_station_id,
 end_station_name,
 SAFE_CAST(end_station_id AS INT64) AS end_station_id,
 start_lat,start_lng,end_lat,end_lng,member_casual

 FROM `capstone-cyclistic-400621.2020_trips.dec2020`
