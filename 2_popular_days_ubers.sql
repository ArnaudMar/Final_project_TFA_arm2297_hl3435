
SELECT
    COUNT(pickup_datetime),
    strftime ('%w', pickup_datetime) weekday
FROM taxi_trips
GROUP BY strftime ('%w', pickup_datetime)
