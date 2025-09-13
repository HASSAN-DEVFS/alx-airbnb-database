
SELECT u.id AS user_id,
       u.name AS user_name,
       COUNT(b.id) AS total_bookings
FROM Users u
LEFT JOIN Bookings b ON u.id = b.user_id
GROUP BY u.id, u.name
ORDER BY total_bookings DESC;



SELECT p.id AS property_id,
       p.name AS property_name,
       COUNT(b.id) AS total_bookings,
       ROW_NUMBER() OVER (ORDER BY COUNT(b.id) DESC) AS row_number_rank,  
       RANK() OVER (ORDER BY COUNT(b.id) DESC) AS rank_position          
FROM Properties p
LEFT JOIN Bookings b ON p.id = b.property_id
GROUP BY p.id, p.name
ORDER BY total_bookings DESC;
