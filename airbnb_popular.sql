SELECT
	neighbourhood,
	COUNT(neighbourhood) as neighborhood_count	
FROM
	sfo_listings 
GROUP BY
	neighbourhood
ORDER BY
	neighborhood_count DESC;
	
