SELECT
	MAX(maxtemperaturef),
	trips.start_station
FROM
	weather
LEFT JOIN
	trips on weather.zip = trips.zip_code
GROUP BY
	trips.start_station; 

