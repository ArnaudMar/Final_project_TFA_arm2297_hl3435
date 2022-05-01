
WITH trips AS (
    SELECT pickup_datetime,distance FROM taxi_trips WHERE strftime ('%Y',pickup_datetime)=='2009' 
    UNION ALL 
    SELECT pickup_datetime,distance FROM uber_trips WHERE strftime ('%Y',pickup_datetime)=='2009' )
SELECT strftime('%Y-%m-%d', pickup_datetime) day_of_year,
        COUNT(pickup_datetime) total_trips,
        AVG(distance) avg_distance
FROM trips
GROUP BY day_of_year
ORDER BY total_trips DESC
LIMIT 10
