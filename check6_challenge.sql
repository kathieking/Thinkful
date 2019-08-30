WITH
	longrain AS
	(
	SELECT
		weather.date
	FROM
		weather
	WHERE events LIKE '%Rain%'
)
SELECT
	t.trip_id,
	t.start_date,
	MAX(t.duration) as longest
FROM
	trips t
	
JOIN
    longrain l 
ON
    DATE(l.date) = DATE(t.start_date)

GROUP BY
	t.start_date,
	t.trip_id
	
ORDER BY longest DESC;