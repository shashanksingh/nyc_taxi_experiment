


WITH source as (
SELECT * 
FROM "dev"."main"."clean_source"
) ,
bucket as (
    SELECT 
    CASE 
    WHEN trip_distance < 2 THEN '<2'
    WHEN trip_distance >= 2 and trip_distance < 4 THEN '2-4'
    WHEN trip_distance >= 4 and trip_distance < 6 THEN '4-6'
    WHEN trip_distance >= 6 THEN '6+'
    END as trip_distance_bucketed,
    fare_amount
    from source
)
SELECT SUM(fare_amount) as total_fare_amount, AVG(fare_amount) as avg_fare_amount, trip_distance_bucketed 
FROM bucket
GROUP BY trip_distance_bucketed
ORDER BY trip_distance_bucketed