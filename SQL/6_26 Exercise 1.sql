SELECT flight_date, flight_num, carrier, origin
FROM public.airline_on_time_west_coast
LIMIT 100;

SELECT flight_date, flight_num, carrier, origin
FROM public.airline_on_time_west_coast
WHERE origin = 'SEA'
LIMIT 100;

SELECT carrier, avg(arrival_delay) as average_arrival_delay
FROM public.airline_on_time_west_coast
WHERE flight_date BETWEEN '2014-12-01' AND '2014-12-31'
GROUP BY carrier
LIMIT 100