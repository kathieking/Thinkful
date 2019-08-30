SELECT
	l.id,
	l.name,
	l.neighbourhood,
	l.room_type,
	l.minimum_nights,
	l.last_review,
	max(l.price),
	l.availability_365,
	r.comments,
	c.available
FROM
	sfo_listings l
LEFT JOIN
	sfo_reviews r
ON 
	l.id = r.id
LEFT JOIN
	sfo_calendar c
ON
	c.listing_id = r.listing_id
GROUP BY
	1,2,3,4,5,6,8,9,10
ORDER BY
	max(l.price) DESC
LIMIT 1;