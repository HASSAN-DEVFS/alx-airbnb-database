
CREATE INDEX idx_users_userid ON users(user_id);
CREATE INDEX idx_users_email ON users(email);

CREATE INDEX idx_bookings_userid ON bookings(user_id);
CREATE INDEX idx_bookings_propertyid ON bookings(property_id);
CREATE INDEX idx_bookings_date ON bookings(booking_date);

CREATE INDEX idx_properties_propertyid ON properties(property_id);
CREATE INDEX idx_properties_name ON properties(name);


EXPLAIN SELECT u.name, COUNT(b.booking_id)
FROM users u
JOIN bookings b ON u.user_id = b.user_id
GROUP BY u.user_id;
