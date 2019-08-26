SELECT 
	start_station,
	COUNT(*) AS trip
FROM 
	trips
GROUP BY
	start_station
ORDER BY 
	trip DESC;
