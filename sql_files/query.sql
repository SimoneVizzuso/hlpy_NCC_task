WITH driver_trip_counts
     AS (SELECT drivers.id                     AS driver_id,
                drivers.first_name,
                drivers.last_name,
                Sum(orders.estimated_distance) AS total_distance,
                Count(orders.id)               AS trip_count
         FROM   drivers
                JOIN orders
                  ON drivers.id = orders.driver_id
         WHERE  Date(orders.departure_datetime) = '2023-12-31'
         GROUP  BY drivers.id,
                   drivers.first_name,
                   drivers.last_name
         HAVING Count(orders.id) = 2),
     ranked_drivers
     AS (SELECT driver_id,
                first_name,
                last_name,
                total_distance,
                Row_number()
                  OVER (
                    ORDER BY total_distance DESC) AS rank
         FROM   driver_trip_counts)
SELECT first_name,
       last_name,
       total_distance
FROM   ranked_drivers
WHERE  rank = 2;