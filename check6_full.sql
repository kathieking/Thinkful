SELECT
	station_id,
	COUNT (bikes_available)
FROM
	status s
	
GROUP BY
	s.station_id,
	s.bikes_available

ORDER BY bikes_available DESC; 