SELECT reservations.id, title, cost_per_night, start_date, AVG(property_reviews.rating) as average_rating
FROM reservations
JOIN properties ON properties.id = reservations.property_id
JOIN property_reviews ON property_reviews.property_id = properties.id
WHERE reservations.guest_id = 1
GROUP BY properties.id, reservations.id
ORDER BY start_date
LIMIT 10;
-- reservations.id, .start_date, .property_id
-- properties.title, .cost_per_night
-- property_reviews.property_id