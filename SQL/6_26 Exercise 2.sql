SELECT 
	origin, 
	dest_city_name, 
	carrier,
	avg(arrival_delay),
	min(arrival_delay),
	max(arrival_delay)
FROM public.airline_on_time_west_coast
GROUP BY 
	origin, dest_city_name, carrier
LIMIT 1000;

SELECT 
	origin, 
	dest_city_name, 
	carrier,
	avg(arrival_delay),
	min(arrival_delay),
	max(arrival_delay)
FROM public.airline_on_time_west_coast
WHERE 
	origin IN('DEN', 'LAX', 'SFO', 'SEA', 'PHX') 
	AND dest_city_name LIKE ('%CA%')
GROUP BY 
	origin, dest_city_name, carrier
LIMIT 1000;

SELECT 
	origin, 
	dest_city_name, 
	carrier,
	avg(arrival_delay),
	min(arrival_delay),
	max(arrival_delay)
FROM public.airline_on_time_west_coast
WHERE 
	origin IN('DEN', 'LAX', 'SFO', 'SEA', 'PHX')
	AND (dest_city_name LIKE ('%CA%')
	OR dest_city_name LIKE ('%NY%'))
GROUP BY 
	origin, dest_city_name, carrier
LIMIT 1000