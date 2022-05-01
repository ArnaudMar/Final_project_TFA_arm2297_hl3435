
WITH trips AS (
    SELECT pickup_datetime FROM taxi_trips WHERE strftime ('%Y',pickup_datetime)=='2014' 
    UNION ALL 
    SELECT pickup_datetime FROM uber_trips WHERE strftime ('%Y',pickup_datetime)=='2014' )
SELECT strftime('%Y-%m-%d', trips.pickup_datetime) day_of_year,
        COUNT(trips.pickup_datetime) total_trips,
        daily_weather.wind_speed wind
FROM trips JOIN daily_weather ON strftime('%Y-%m-%d',trips.pickup_datetime)=strftime('%Y-%m-%d',daily_weather.Date)
GROUP BY day_of_year
ORDER BY wind DESC
LIMIT 10
