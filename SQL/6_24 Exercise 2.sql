SELECT carrier, COUNT(*)
FROM public.airline_on_time_west_coast
GROUP BY carrier
ORDER BY count;

SELECT carrier, SUM(arrival_delay)
FROM public.airline_on_time_west_coast
GROUP BY carrier
ORDER BY sum;

SELECT carrier, avg(arrival_delay)
FROM public.airline_on_time_west_coast
GROUP BY carrier
ORDER BY avg DESC;

SELECT flight_date, flight_num, carrier, arrival_delay
FROM public.airline_on_time_west_coast
ORDER BY arrival_delay
LIMIT 1;

SELECT origin_city_name, carrier, 
AVG(arrival_delay), 
MIN(arrival_delay), 
MAX(arrival_delay)
FROM public.airline_on_time_west_coast
GROUP BY origin_city_name, carrier
ORDER BY origin_city_name, avg