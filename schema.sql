
CREATE TABLE hourly_weather (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    Date DATETIME,
    Precipitation FLOAT,
    Wind_speed FLOAT
);

CREATE TABLE daily_weather(
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    Date DATETIME,
    Wind_speed FLOAT
);

CREATE TABLE taxi_trips (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    pickup_datetime DATETIME,
    dropoff_datetime DATETIME,
    pickup_longitude FLOAT,
    pickup_latitude FLOAT,
    dropoff_longitude FLOAT,
    dropoff_latitude FLOAT,
    tip_amount FLOAT,
    total_amount FLOAT,
    distance FLOAT
);

CREATE TABLE uber_trips (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    total_amount FLOAT,
    pickup_datetime DATETIME,
    pickup_longitude FLOAT,
    pickup_latitude FLOAT,
    dropoff_longitude FLOAT,
    dropoff_latitude FLOAT,
    distance FLOAT
);
