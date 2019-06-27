SELECT 
	min_temp,
	station_name
FROM da_weather.us_weather_anomalies
WHERE 
	date_ymd BETWEEN '2013-01-01' AND '2013-12-31'
GROUP BY station_name, min_temp
LIMIT 1000;

SELECT 
	min_temp,
	station_name
FROM da_weather.us_weather_anomalies
WHERE 
	date_ymd BETWEEN '2013-01-01' AND '2013-12-31'
	AND latitude > 36
GROUP BY station_name, min_temp
LIMIT 1000;

SELECT 
	min_temp,
	station_name
FROM da_weather.us_weather_anomalies
WHERE 
	date_ymd BETWEEN '2013-01-01' AND '2013-12-31'
	AND latitude > 36
	AND min_temp <= -10
GROUP BY station_name, min_temp
ORDER BY min_temp
LIMIT 1000;

SELECT 
	min_temp,
	station_name
FROM da_weather.us_weather_anomalies
WHERE 
	date_ymd BETWEEN '2013-01-01' AND '2013-12-31'
	AND latitude > 36
	AND min_temp <= 0
GROUP BY station_name, min_temp
ORDER BY min_temp
LIMIT 1000