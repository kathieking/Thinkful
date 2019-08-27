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
	t.start_date
FROM
	trips t
	
JOIN
    longrain l 
ON
    DATE(l.date) = DATE(t.start_date)

ORDER BY duration DESC
LIMIT 3;