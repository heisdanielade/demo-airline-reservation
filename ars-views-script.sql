
CREATE OR REPLACE VIEW view_flight_seat_availability AS
SELECT 
    f.flight_id,
    ac.model AS aircraft_model,
    acc.seat_capacity,
    acc.seat_capacity - COUNT(t.ticket_id) AS available_seats
FROM flight f
JOIN aircraft a ON f.aircraft_id = a.aircraft_id
JOIN aircraft_type ac ON a.aircraft_type_id = ac.aircraft_type_id
JOIN aircraft_cabin_class acc ON a.aircraft_id = acc.aircraft_id
LEFT JOIN ticket t ON t.flight_id = f.flight_id
GROUP BY f.flight_id, ac.model, acc.seat_capacity;



CREATE OR REPLACE VIEW view_client_booking_summary AS
SELECT 
    c.client_id,
    c.first_name,
    c.last_name,
    COUNT(t.ticket_id) AS total_bookings,
    SUM(t.price) AS total_spent,
    AVG(t.price) AS avg_ticket_price
FROM client c
JOIN ticket t ON c.client_id = t.client_id
GROUP BY c.client_id, c.first_name, c.last_name;


CREATE OR REPLACE VIEW view_employee_flight_summary AS
SELECT 
    e.employee_id,
    e.first_name,
    e.last_name,
    cr.role_name,
    COUNT(fc.flight_crew_id) AS total_flights
FROM employee e
JOIN flight_crew fc ON e.employee_id = fc.employee_id
JOIN crew_role cr ON fc.role_id = cr.role_id
GROUP BY e.employee_id, e.first_name, e.last_name, cr.role_name;
