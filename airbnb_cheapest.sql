SELECT
	r.id,
	c.listing_id,
	c.calender_date,
	c.available,
	l.host_id,
	min(l.price),
	l.availability_365,
FROM
	sfo_listings l
FULL JOIN
	sfo_calendar c
ON 
	l.host_id = c.listing_id
GROUP BY
	1,3,4,5,6
ORDER BY
	min(l.price) DESC;