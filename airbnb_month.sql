SELECT  
	c.calender_date, 
	EXTRACT(month FROM c.calender_date) as month, 
	c.listing_id,
	l.price, 
	AVG(l.price) as avg_cost
		WHERE (month = '1')
FROM 
 	sfo_calendar c

LEFT JOIN
	sfo_listings l
ON
	c.listing_id = l.id


WHERE
	c.available = 't'
	
	
GROUP BY  
   month,
   c.listing_id,
   c.calender_date, 
   l.price