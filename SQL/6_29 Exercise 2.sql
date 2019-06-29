SELECT
	starttime,
	from_station_name,
	to_station_name
FROM da_pronto.trip
ORDER BY starttime
LIMIT 100;

SELECT
	starttime,
	from_station_name,
	to_station_name
FROM da_pronto.trip
WHERE starttime BETWEEN '2015-07-01 00:00:00' AND '2015-07-01 23:59:59'
LIMIT 100;

SELECT
	starttime,
	from_station_name,
	to_station_name,
	CASE 
	WHEN from_station_name = to_station_name THEN '1'
	ELSE '0'
	END as stations_match
FROM da_pronto.trip
WHERE starttime BETWEEN '2015-07-01 00:00:00' AND '2015-07-01 23:59:59'
LIMIT 100;

SELECT 
	flight_date,
	carrier,
	avg(arrival_delay) as avg_arrival_delay
FROM public.airline_on_time_west_coast
WHERE flight_date BETWEEN '2014-12-01' AND '2014-12-31'
GROUP BY
	flight_date,
	carrier;
	
SELECT 
	flight_date,
	carrier,
	origin_city_name,
	avg(arrival_delay) as avg_arrival_delay,
	CASE
	WHEN origin_city_name LIKE ('%NY%')
	OR origin_city_name LIKE ('%CO%') 
	OR origin_city_name LIKE('%CA%')
	OR origin_city_name LIKE('%WA%')
	OR origin_city_name LIKE('%AZ%')
	THEN 'TRUE'
	ELSE 'FALSE'
	END Chosen_Origins
FROM public.airline_on_time_west_coast
WHERE flight_date BETWEEN '2014-12-01' AND '2014-12-31'
GROUP BY
	flight_date,
	carrier,
	origin_city_name