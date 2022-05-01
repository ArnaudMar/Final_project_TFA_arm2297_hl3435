
SELECT
    COUNT(pickup_datetime),
    strftime ('%H', pickup_datetime) hour
FROM taxi_trips
GROUP BY strftime ('%H', pickup_datetime)
