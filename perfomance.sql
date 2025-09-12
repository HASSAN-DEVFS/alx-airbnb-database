SELECT b.booking_id,
       b.booking_date,
       u.user_id,
       u.name AS user_name,
       u.email,
       p.property_id,
       p.name AS property_name,
       pay.payment_id,
       pay.amount,
       pay.status
FROM bookings b
JOIN users u ON b.user_id = u.user_id
JOIN properties p ON b.property_id = p.property_id
JOIN payments pay ON b.booking_id = pay.booking_id;
