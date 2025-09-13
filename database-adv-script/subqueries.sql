
SELECT p.id,
       p.name,
       p.location
FROM Properties p
WHERE (
    SELECT AVG(r.rating)
    FROM Reviews r
    WHERE r.property_id = p.id
) > 4.0
ORDER BY p.id;


SELECT u.id,
       u.name,
       u.email
FROM Users u
WHERE (
    SELECT COUNT(*)
    FROM Bookings b
    WHERE b.user_id = u.id
) > 3
ORDER BY u.id;
