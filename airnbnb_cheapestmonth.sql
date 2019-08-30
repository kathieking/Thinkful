SELECT  
	
	EXTRACT(month FROM c.calender_date) as month, 
	AVG(l.price) as avg_price
		
FROM 
 	sfo_calendar c

LEFT JOIN
	sfo_listings l
ON
	c.listing_id = l.id


WHERE
	c.available = 't'
	
	
GROUP BY  
   month
ORDER BY
	avg_price;
   