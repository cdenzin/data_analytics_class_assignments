SELECT 
	custid, 
	prodid, 
	quantity, 
	date
FROM da_sales.purchases;

SELECT 
	custid, 
	prodid, 
	quantity, 
	date,
	name
FROM da_sales.purchases p
INNER JOIN da_sales.customers c
	ON p.custid = c.id
