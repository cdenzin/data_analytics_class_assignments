SELECT 
	starttime,
	date_part('hour', starttime) as hour,
	date_part('minute', starttime) as minute,
	from_station_id || '_' || from_station_name as station_name_id
FROM da_pronto.trip
LIMIT 500;

SELECT 
	from_station_name,
	to_station_name,
	avg(tripduration)/60/60 as avg_tripduration,
	count (tripduration),
	cast(starttime as date) as trip_date,
	date_trunc('year', starttime)
FROM da_pronto.trip
GROUP BY 
	from_station_name,
	to_station_name,
	starttime
ORDER BY avg_tripduration DESC
LIMIT 500