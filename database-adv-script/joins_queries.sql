
SELECT b.id AS booking_id,
       b.property_id,
       b.booking_date,
       u.id AS user_id,
       u.name AS user_name,
       u.email
FROM Bookings b
INNER JOIN Users u ON b.user_id = u.id
ORDER BY b.booking_date DESC;   -- ✅ ajout d’un ORDER BY



SELECT p.id AS property_id,
       p.name AS property_name,
       r.id AS review_id,
       r.rating,
       r.comment
FROM Properties p
LEFT JOIN Reviews r ON p.id = r.property_id
ORDER BY p.id;   -- ✅ tri par ID propriété



SELECT u.id AS user_id,
       u.name AS user_name,
       b.id AS booking_id,
       b.property_id,
       b.booking_date
FROM Users u
FULL OUTER JOIN Bookings b ON u.id = b.user_id
ORDER BY u.id NULLS LAST;   -- ✅ tri par ID utilisateur
