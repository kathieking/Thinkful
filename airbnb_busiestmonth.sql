SELECT  
	
	EXTRACT(month FROM c.calender_date) as month, 
	COUNT(c.available) as availability
		
FROM 
 	sfo_calendar c

WHERE
	c.available = 't'
	
	
GROUP BY  
   month
ORDER BY
	availability DESC;
   