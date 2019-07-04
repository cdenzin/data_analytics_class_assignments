--Create a query that returns all of the distinct event types and the number of times that an event has occurred for each event value.
--Add the meal_id and meal type to the query to return the distinct events, the meal_id, the meal type and the count of the number of rows for each distinct event, meal_id, and meal type.
--Modify this query to list only the users who have not been referred.
--Verify if there are any events that didn't have matches for meal IDs in the meals table.
--Verify if there are any meal IDs in the meals table that don't have a match in the events table.

SELECT
	event,
	e.meal_id,
	m.type,
	count(event)
FROM da_readychef.events e 
LEFT JOIN da_readychef.meals m
	ON e.meal_id = m.meal_id
GROUP BY 	
	event,
	e.meal_id,
	m.type;

SELECT
	event,
	e.meal_id,
	m.type,
	r.referred,
	count(event)
FROM da_readychef.events e 
LEFT JOIN da_readychef.meals m
	ON e.meal_id = m.meal_id
FULL JOIN da_readychef.referrals r
	ON e.userid = r.referred
WHERE r.referred IS NULL
GROUP BY 	
	event,
	e.meal_id,
	m.meal_id,
	m.type,
	r.referred;

SELECT
	event,
	e.meal_id,
	m.type,
	r.referred,
	count(event)
FROM da_readychef.events e 
LEFT JOIN da_readychef.meals m
	ON e.meal_id = m.meal_id
FULL JOIN da_readychef.referrals r
	ON e.userid = r.referred
WHERE 
	r.referred IS NULL
	AND m.meal_id IS NULL
GROUP BY 	
	event,
	e.meal_id,
	m.meal_id,
	m.type,
	r.referred;

SELECT
	event,
	e.meal_id,
	m.meal_id,
	m.type,
	r.referred,
	count(event)
FROM da_readychef.events e 
RIGHT JOIN da_readychef.meals m
	ON e.meal_id = m.meal_id
FULL JOIN da_readychef.referrals r
	ON e.userid = r.referred
WHERE 
	r.referred IS NULL
	AND e.meal_id IS NULL
GROUP BY 	
	event,
	e.meal_id,
	m.meal_id,
	m.type,
	r.referred