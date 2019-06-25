SELECT count (*)
FROM da_pronto.trip;

SELECT count (*), sum(tripduration)
FROM da_pronto.trip;

SELECT  to_station_name, count (*), sum(tripduration)
FROM da_pronto.trip
GROUP BY to_station_name;

SELECT to_station_name, count (*), sum(tripduration)
FROM da_pronto.trip
GROUP BY to_station_name
ORDER BY sum