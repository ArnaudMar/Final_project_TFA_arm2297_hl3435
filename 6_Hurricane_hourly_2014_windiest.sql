
WITH trips AS (
    SELECT pickup_datetime FROM taxi_trips WHERE strftime('%Y-%m-%d',pickup_datetime)=='2012-10-29' 
      OR strftime('%Y-%m-%d', pickup_datetime)=='2012-10-30'
      OR strftime('%Y-%m-%d', pickup_datetime)=='2012-10-28'
      OR strftime('%Y-%m-%d', pickup_datetime)=='2012-10-27'
      OR strftime('%Y-%m-%d', pickup_datetime)=='2012-10-26'
      OR strftime('%Y-%m-%d', pickup_datetime)=='2012-10-25'
      OR strftime('%Y-%m-%d', pickup_datetime)=='2012-10-24'
      OR strftime('%Y-%m-%d', pickup_datetime)=='2012-10-23'
      OR strftime('%Y-%m-%d', pickup_datetime)=='2012-10-22'
    UNION ALL 
    SELECT pickup_datetime FROM uber_trips WHERE strftime('%Y-%m-%d',pickup_datetime)=='2012-10-29' 
      OR strftime('%Y-%m-%d', pickup_datetime)=='2012-10-30'
      OR strftime('%Y-%m-%d', pickup_datetime)=='2012-10-28'
      OR strftime('%Y-%m-%d', pickup_datetime)=='2012-10-27'
      OR strftime('%Y-%m-%d', pickup_datetime)=='2012-10-26'
      OR strftime('%Y-%m-%d', pickup_datetime)=='2012-10-25'
      OR strftime('%Y-%m-%d', pickup_datetime)=='2012-10-24'
      OR strftime('%Y-%m-%d', pickup_datetime)=='2012-10-23'
      OR strftime('%Y-%m-%d', pickup_datetime)=='2012-10-22')
SELECT strftime('%Y-%m-%d-%H', trips.pickup_datetime) hour_of_day,
        COUNT(trips.pickup_datetime) total_trips,
        hourly_weather.Precipitation,
        hourly_weather.Wind_speed
FROM trips JOIN hourly_weather ON trips.pickup_datetime=hourly_weather.Date
GROUP BY hour_of_day
