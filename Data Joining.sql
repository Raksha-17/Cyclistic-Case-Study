DROP TABLE IF EXISTS `capstone-cyclistic-400621.2020_trips.combined_data`;

-- combining all the 12 months data tables into a single table containing data from Jan 2020 to Dec 2020.

CREATE TABLE IF NOT EXISTS `capstone-cyclistic-400621.2020_trips.combined_data` AS (
  SELECT * FROM `capstone-cyclistic-400621.2020_trips.2020_q1`
  UNION ALL
  SELECT * FROM `capstone-cyclistic-400621.2020_trips.april2020`
  UNION ALL
  SELECT * FROM `capstone-cyclistic-400621.2020_trips.may2020`
  UNION ALL
  SELECT * FROM `capstone-cyclistic-400621.2020_trips.june2020`
  UNION ALL
  SELECT * FROM `capstone-cyclistic-400621.2020_trips.july2020`
  UNION ALL
  SELECT * FROM `capstone-cyclistic-400621.2020_trips.aug2020`
  UNION ALL
  SELECT * FROM `capstone-cyclistic-400621.2020_trips.sept2020`
  UNION ALL
  SELECT * FROM `capstone-cyclistic-400621.2020_trips.oct2020`
  UNION ALL
  SELECT * FROM `capstone-cyclistic-400621.2020_trips.nov2020`
  UNION ALL
  SELECT * FROM `capstone-cyclistic-400621.2020_trips.dec2020`
);

-- checking no of rows which are 3541683

SELECT COUNT(*) AS total_rows
FROM `capstone-cyclistic-400621.2020_trips.combined_data`;
