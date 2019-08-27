SELECT
	COUNT(t.trip_id) as total,
	t.start_station
FROM
	trips t
	
JOIN
    stations s
ON
    t.start_station = s.name

GROUP BY
	t.start_station,
	s.dockcount
ORDER BY
	s.dockcount DESC;
