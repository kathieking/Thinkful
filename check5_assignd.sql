SELECT 
	end_station, COUNT (DISTINCT trips.end_station),
	SUM(duration)/COUNT (DISTINCT trips.end_station) as avg_trip
FROM 
	trips
GROUP BY
	end_station
ORDER BY 
	end_station,
	avg_trip DESC;
