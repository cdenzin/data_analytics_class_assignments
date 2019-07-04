SELECT 
	distinct id
FROM da_sales.customers;

SELECT 
	DISTINCT (c.id)
FROM da_sales.customers c
INNER JOIN da_sales.purchases p
	ON c.id = p.custid
LIMIT 100;

SELECT 
	DISTINCT (c.id)
FROM da_sales.customers c
LEFT JOIN da_sales.purchases p
	ON c.id = p.custid
LIMIT 100;

SELECT 
	DISTINCT (c.id)
FROM da_sales.customers c
RIGHT JOIN da_sales.purchases p
	ON c.id = p.custid
LIMIT 100;
   
SELECT 
	DISTINCT (c.name), 
	pr.name
FROM da_sales.purchases p
   LEFT JOIN da_sales.products pr
   ON p.prodid = pr.id 
   RIGHT JOIN da_sales.customers c
   ON p.custid = c.id
ORDER BY
	1,2;

