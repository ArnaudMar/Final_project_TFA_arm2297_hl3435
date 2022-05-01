
WITH dist AS (
    SELECT distance FROM taxi_trips WHERE strftime ('%Y',pickup_datetime)=='2013' AND strftime ('%m',pickup_datetime)=='07'
    UNION ALL 
    SELECT distance from uber_trips WHERE strftime ('%Y',pickup_datetime)=='2013' AND strftime ('%m',pickup_datetime)=='07' )
SELECT distance
FROM dist
ORDER BY distance ASC
LIMIT 1
OFFSET (SELECT COUNT(*) FROM dist )*95/100-1
