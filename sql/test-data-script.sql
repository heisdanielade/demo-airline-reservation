INSERT INTO country (country_id, name, code) VALUES (1, 'Czech Republic', 'PS');
INSERT INTO country (country_id, name, code) VALUES (2, 'Chile', 'VC');
INSERT INTO country (country_id, name, code) VALUES (3, 'Niger', 'PL');
INSERT INTO country (country_id, name, code) VALUES (4, 'United Kingdom', 'RW');
INSERT INTO country (country_id, name, code) VALUES (5, 'Mauritania', 'TD');
INSERT INTO country (country_id, name, code) VALUES (6, 'Malta', 'AR');
INSERT INTO country (country_id, name, code) VALUES (7, 'United States Minor Outlying Islands', 'CH');
INSERT INTO country (country_id, name, code) VALUES (8, 'Canada', 'RU');
INSERT INTO country (country_id, name, code) VALUES (9, 'Cape Verde', 'NA');
INSERT INTO country (country_id, name, code) VALUES (10, 'Gabon', 'LK');



INSERT INTO city (city_id, name, country_id) VALUES (1, 'Marshalltown', 1);
INSERT INTO city (city_id, name, country_id) VALUES (2, 'East Michael', 2);
INSERT INTO city (city_id, name, country_id) VALUES (3, 'Hinesshire', 3);
INSERT INTO city (city_id, name, country_id) VALUES (4, 'Mooneymouth', 4);
INSERT INTO city (city_id, name, country_id) VALUES (5, 'Nicholasburgh', 5);
INSERT INTO city (city_id, name, country_id) VALUES (6, 'East Carrieburgh', 6);
INSERT INTO city (city_id, name, country_id) VALUES (7, 'North Andrea', 7);
INSERT INTO city (city_id, name, country_id) VALUES (8, 'Lake Christophermouth', 8);
INSERT INTO city (city_id, name, country_id) VALUES (9, 'Jarvismouth', 9);
INSERT INTO city (city_id, name, country_id) VALUES (10, 'North Tamara', 10);



INSERT INTO airport (airport_id, name, airport_code, city_id) VALUES (1, 'John F. Kennedy International Airport', 'JFK', 1);
INSERT INTO airport (airport_id, name, airport_code, city_id) VALUES (2, 'London Heathrow Airport', 'LHR', 2);
INSERT INTO airport (airport_id, name, airport_code, city_id) VALUES (3, 'Tokyo Haneda Airport', 'HND', 3);
INSERT INTO airport (airport_id, name, airport_code, city_id) VALUES (4, 'Frankfurt Airport', 'FRA', 4);
INSERT INTO airport (airport_id, name, airport_code, city_id) VALUES (5, 'Los Angeles International Airport', 'LAX', 5);
INSERT INTO airport (airport_id, name, airport_code, city_id) VALUES (6, 'Dubai International Airport', 'DXB', 6);
INSERT INTO airport (airport_id, name, airport_code, city_id) VALUES (7, 'Paris Charles de Gaulle', 'CDG', 7);
INSERT INTO airport (airport_id, name, airport_code, city_id) VALUES (8, 'Singapore Changi Airport', 'SIN', 8);
INSERT INTO airport (airport_id, name, airport_code, city_id) VALUES (9, 'Sydney Kingsford Smith Airport', 'SYD', 9);
INSERT INTO airport (airport_id, name, airport_code, city_id) VALUES (10, 'Toronto Pearson Airport', 'YYZ', 10);



INSERT INTO aircraft_manufacturer (aircraft_manufacturer_id, name) VALUES (1, 'Boeing');
INSERT INTO aircraft_manufacturer (aircraft_manufacturer_id, name) VALUES (2, 'Airbus');
INSERT INTO aircraft_manufacturer (aircraft_manufacturer_id, name) VALUES (3, 'Embraer');
INSERT INTO aircraft_manufacturer (aircraft_manufacturer_id, name) VALUES (4, 'Bombardier');
INSERT INTO aircraft_manufacturer (aircraft_manufacturer_id, name) VALUES (5, 'McDonnell Douglas');
INSERT INTO aircraft_manufacturer (aircraft_manufacturer_id, name) VALUES (6, 'Tupolev');
INSERT INTO aircraft_manufacturer (aircraft_manufacturer_id, name) VALUES (7, 'Comac');
INSERT INTO aircraft_manufacturer (aircraft_manufacturer_id, name) VALUES (8, 'ATR');
INSERT INTO aircraft_manufacturer (aircraft_manufacturer_id, name) VALUES (9, 'Mitsubishi');
INSERT INTO aircraft_manufacturer (aircraft_manufacturer_id, name) VALUES (10, 'Ilyushin');



INSERT INTO aircraft_type (aircraft_type_id, model, aircraft_manufacturer_id) VALUES (1, '737 MAX 8', 1);
INSERT INTO aircraft_type (aircraft_type_id, model, aircraft_manufacturer_id) VALUES (2, 'A320neo', 2);
INSERT INTO aircraft_type (aircraft_type_id, model, aircraft_manufacturer_id) VALUES (3, 'E195-E2', 3);
INSERT INTO aircraft_type (aircraft_type_id, model, aircraft_manufacturer_id) VALUES (4, 'CRJ900', 4);
INSERT INTO aircraft_type (aircraft_type_id, model, aircraft_manufacturer_id) VALUES (5, 'MD-11', 5);
INSERT INTO aircraft_type (aircraft_type_id, model, aircraft_manufacturer_id) VALUES (6, 'Tu-204', 6);
INSERT INTO aircraft_type (aircraft_type_id, model, aircraft_manufacturer_id) VALUES (7, 'C919', 7);
INSERT INTO aircraft_type (aircraft_type_id, model, aircraft_manufacturer_id) VALUES (8, 'ATR 72', 8);
INSERT INTO aircraft_type (aircraft_type_id, model, aircraft_manufacturer_id) VALUES (9, 'SpaceJet M90', 9);
INSERT INTO aircraft_type (aircraft_type_id, model, aircraft_manufacturer_id) VALUES (10, 'Il-96', 10);


INSERT INTO aircraft (aircraft_id, registration_number, status_id, max_seat_capacity, aircraft_type_id) VALUES (1, 'WI-6121', 1, 200, 1);
INSERT INTO aircraft (aircraft_id, registration_number, status_id, max_seat_capacity, aircraft_type_id) VALUES (2, 'AX-6039', 1, 200, 2);
INSERT INTO aircraft (aircraft_id, registration_number, status_id, max_seat_capacity, aircraft_type_id) VALUES (3, 'AM-6771', 1, 220, 3);
INSERT INTO aircraft (aircraft_id, registration_number, status_id, max_seat_capacity, aircraft_type_id) VALUES (4, 'UX-2644', 1, 220, 4);
INSERT INTO aircraft (aircraft_id, registration_number, status_id, max_seat_capacity, aircraft_type_id) VALUES (5, 'YI-2825', 1, 150, 5);
INSERT INTO aircraft (aircraft_id, registration_number, status_id, max_seat_capacity, aircraft_type_id) VALUES (6, 'LK-3252', 1, 200, 6);
INSERT INTO aircraft (aircraft_id, registration_number, status_id, max_seat_capacity, aircraft_type_id) VALUES (7, 'PG-6733', 1, 220, 7);
INSERT INTO aircraft (aircraft_id, registration_number, status_id, max_seat_capacity, aircraft_type_id) VALUES (8, 'OH-2320', 1, 150, 8);
INSERT INTO aircraft (aircraft_id, registration_number, status_id, max_seat_capacity, aircraft_type_id) VALUES (9, 'YT-6391', 1, 200, 9);
INSERT INTO aircraft (aircraft_id, registration_number, status_id, max_seat_capacity, aircraft_type_id) VALUES (10, 'FU-3202', 1, 180, 10);




INSERT INTO client (client_id, first_name, last_name, email_address) VALUES (1, 'Sophia', 'Miller', 'sophia.miller@gmail.com');
INSERT INTO client (client_id, first_name, last_name, email_address) VALUES (2, 'Liam', 'Johnson', 'liam.johnson@yahoo.com');
INSERT INTO client (client_id, first_name, last_name, email_address) VALUES (3, 'Olivia', 'Smith', 'olivia.smith@hotmail.com');
INSERT INTO client (client_id, first_name, last_name, email_address) VALUES (4, 'Noah', 'Williams', 'noah.williams@outlook.com');
INSERT INTO client (client_id, first_name, last_name, email_address) VALUES (5, 'Emma', 'Brown', 'emma.brown@gmail.com');
INSERT INTO client (client_id, first_name, last_name, email_address) VALUES (6, 'James', 'Jones', 'james.jones@yahoo.com');
INSERT INTO client (client_id, first_name, last_name, email_address) VALUES (7, 'Ava', 'Garcia', 'ava.garcia@gmail.com');
INSERT INTO client (client_id, first_name, last_name, email_address) VALUES (8, 'Lucas', 'Martinez', 'lucas.martinez@live.com');
INSERT INTO client (client_id, first_name, last_name, email_address) VALUES (9, 'Isabella', 'Rodriguez', 'isabella.rodriguez@gmail.com');
INSERT INTO client (client_id, first_name, last_name, email_address) VALUES (10, 'Ethan', 'Davis', 'ethan.davis@yahoo.com');




INSERT INTO employee (employee_id, first_name, last_name, other_names, monthly_salary, date_of_birth, email_address, phone_number, hire_date, gender_id, nationality_id)
VALUES (1, 'Jack', 'Thompson', NULL, 6800, '1985-06-12', 'jack.thompson@airlinecorp.com', '+1-202-555-0143', '2018-04-20', 1, 1);

INSERT INTO employee (employee_id, first_name, last_name, other_names, monthly_salary, date_of_birth, email_address, phone_number, hire_date, gender_id, nationality_id)
VALUES (2, 'Emily', 'Scott', NULL, 7200, '1990-11-30', 'emily.scott@airlinecorp.com', '+1-202-555-0199', '2019-07-10', 2, 1);

INSERT INTO employee (employee_id, first_name, last_name, other_names, monthly_salary, date_of_birth, email_address, phone_number, hire_date, gender_id, nationality_id)
VALUES (3, 'Benjamin', 'Moore', NULL, 6400, '1982-09-15', 'benjamin.moore@airlinecorp.com', '+1-202-555-0127', '2015-03-25', 1, 1);

INSERT INTO employee (employee_id, first_name, last_name, other_names, monthly_salary, date_of_birth, email_address, phone_number, hire_date, gender_id, nationality_id)
VALUES (4, 'Avery', 'Lee', NULL, 6000, '1993-02-19', 'avery.lee@airlinecorp.com', '+1-202-555-0166', '2020-01-05', 2, 1);

INSERT INTO employee (employee_id, first_name, last_name, other_names, monthly_salary, date_of_birth, email_address, phone_number, hire_date, gender_id, nationality_id)
VALUES (5, 'Henry', 'Clark', NULL, 7100, '1988-08-22', 'henry.clark@airlinecorp.com', '+1-202-555-0188', '2017-10-18', 1, 1);

INSERT INTO employee (employee_id, first_name, last_name, other_names, monthly_salary, date_of_birth, email_address, phone_number, hire_date, gender_id, nationality_id)
VALUES (6, 'Ella', 'Turner', NULL, 6900, '1991-05-10', 'ella.turner@airlinecorp.com', '+1-202-555-0101', '2016-09-02', 2, 1);

INSERT INTO employee (employee_id, first_name, last_name, other_names, monthly_salary, date_of_birth, email_address, phone_number, hire_date, gender_id, nationality_id)
VALUES (7, 'Alexander', 'White', NULL, 7300, '1986-12-01', 'alexander.white@airlinecorp.com', '+1-202-555-0133', '2014-06-30', 1, 1);

INSERT INTO employee (employee_id, first_name, last_name, other_names, monthly_salary, date_of_birth, email_address, phone_number, hire_date, gender_id, nationality_id)
VALUES (8, 'Mia', 'Young', NULL, 6600, '1994-03-07', 'mia.young@airlinecorp.com', '+1-202-555-0174', '2021-03-15', 2, 1);

INSERT INTO employee (employee_id, first_name, last_name, other_names, monthly_salary, date_of_birth, email_address, phone_number, hire_date, gender_id, nationality_id)
VALUES (9, 'William', 'Harris', NULL, 7000, '1983-10-28', 'william.harris@airlinecorp.com', '+1-202-555-0152', '2013-11-09', 1, 1);

INSERT INTO employee (employee_id, first_name, last_name, other_names, monthly_salary, date_of_birth, email_address, phone_number, hire_date, gender_id, nationality_id)
VALUES (10, 'Harper', 'Walker', NULL, 6800, '1992-07-14', 'harper.walker@airlinecorp.com', '+1-202-555-0119', '2022-05-23', 2, 1);




INSERT INTO crew_role (role_id, role_name) VALUES (1, 'Captain');
INSERT INTO crew_role (role_id, role_name) VALUES (2, 'First Officer');
INSERT INTO crew_role (role_id, role_name) VALUES (3, 'Flight Attendant');
INSERT INTO crew_role (role_id, role_name) VALUES (4, 'Purser');
INSERT INTO crew_role (role_id, role_name) VALUES (5, 'Ground Engineer');
INSERT INTO crew_role (role_id, role_name) VALUES (6, 'Cabin Manager');
INSERT INTO crew_role (role_id, role_name) VALUES (7, 'Safety Officer');
INSERT INTO crew_role (role_id, role_name) VALUES (8, 'Flight Operations');
INSERT INTO crew_role (role_id, role_name) VALUES (9, 'Navigator');
INSERT INTO crew_role (role_id, role_name) VALUES (10, 'Flight Engineer');




INSERT INTO flight (flight_id, base_departure_time, base_arrival_time, departure_airport_id, arrival_airport_id, aircraft_id)
VALUES (1, '2025-06-01 08:00:00', '2025-06-01 12:00:00', 1, 2, 1);

INSERT INTO flight (flight_id, base_departure_time, base_arrival_time, departure_airport_id, arrival_airport_id, aircraft_id)
VALUES (2, '2025-06-02 09:30:00', '2025-06-02 13:45:00', 3, 5, 2);

INSERT INTO flight (flight_id, base_departure_time, base_arrival_time, departure_airport_id, arrival_airport_id, aircraft_id)
VALUES (3, '2025-06-03 06:15:00', '2025-06-03 10:25:00', 4, 6, 3);

INSERT INTO flight (flight_id, base_departure_time, base_arrival_time, departure_airport_id, arrival_airport_id, aircraft_id)
VALUES (4, '2025-06-04 15:00:00', '2025-06-04 19:30:00', 7, 1, 4);

INSERT INTO flight (flight_id, base_departure_time, base_arrival_time, departure_airport_id, arrival_airport_id, aircraft_id)
VALUES (5, '2025-06-05 12:00:00', '2025-06-05 17:10:00', 8, 9, 5);

INSERT INTO flight (flight_id, base_departure_time, base_arrival_time, departure_airport_id, arrival_airport_id, aircraft_id)
VALUES (6, '2025-06-06 07:45:00', '2025-06-06 11:30:00', 10, 3, 6);

INSERT INTO flight (flight_id, base_departure_time, base_arrival_time, departure_airport_id, arrival_airport_id, aircraft_id)
VALUES (7, '2025-06-07 14:00:00', '2025-06-07 18:20:00', 2, 4, 7);

INSERT INTO flight (flight_id, base_departure_time, base_arrival_time, departure_airport_id, arrival_airport_id, aircraft_id)
VALUES (8, '2025-06-08 11:15:00', '2025-06-08 15:00:00', 5, 7, 8);

INSERT INTO flight (flight_id, base_departure_time, base_arrival_time, departure_airport_id, arrival_airport_id, aircraft_id)
VALUES (9, '2025-06-09 06:45:00', '2025-06-09 11:00:00', 6, 10, 9);

INSERT INTO flight (flight_id, base_departure_time, base_arrival_time, departure_airport_id, arrival_airport_id, aircraft_id)
VALUES (10, '2025-06-10 10:30:00', '2025-06-10 13:50:00', 9, 8, 10);




-- Currency
INSERT INTO currency (currency_id, name, code)
VALUES (1, 'Euro', 'EUR');

-- Document Type
INSERT INTO document_type (document_type_id, name)
VALUES (1, 'Passport');

-- Payment Method
INSERT INTO payment_method (method_id, name)
VALUES (1, 'Credit Card');

-- Payment Status
INSERT INTO payment_status (status_id, name)
VALUES (1, 'Completed');


-- Cabin Class
INSERT INTO cabin_class (cabin_class_id, name, seat_pitch, seat_width, seat_layout)
VALUES (1, 'Economy', 31.0, 17.0, '3-3');

INSERT INTO cabin_class (cabin_class_id, name, seat_pitch, seat_width, seat_layout)
VALUES (2, 'Business', 35.0, 19.5, '3-3');

INSERT INTO cabin_class (cabin_class_id, name, seat_pitch, seat_width, seat_layout)
VALUES (3, 'First', 40.0, 22.0, '2-2');


INSERT INTO seat_type (type_id, name)
VALUES (1, 'Standard');

-- Seats
INSERT INTO seat (seat_id, seat_row, seat_number, type_id, aircraft_cabin_id) VALUES (1, 7, '7B', 1, 1);
INSERT INTO seat (seat_id, seat_row, seat_number, type_id, aircraft_cabin_id) VALUES (2, 7, '7E', 1, 2);
INSERT INTO seat (seat_id, seat_row, seat_number, type_id, aircraft_cabin_id) VALUES (3, 12, '12A', 1, 3);
INSERT INTO seat (seat_id, seat_row, seat_number, type_id, aircraft_cabin_id) VALUES (4, 29, '29C', 1, 4);
INSERT INTO seat (seat_id, seat_row, seat_number, type_id, aircraft_cabin_id) VALUES (5, 10, '10F', 1, 5);
INSERT INTO seat (seat_id, seat_row, seat_number, type_id, aircraft_cabin_id) VALUES (6, 21, '21B', 1, 6);
INSERT INTO seat (seat_id, seat_row, seat_number, type_id, aircraft_cabin_id) VALUES (7, 17, '17F', 1, 7);
INSERT INTO seat (seat_id, seat_row, seat_number, type_id, aircraft_cabin_id) VALUES (8, 17, '17D', 1, 8);
INSERT INTO seat (seat_id, seat_row, seat_number, type_id, aircraft_cabin_id) VALUES (9, 16, '16F', 1, 9);
INSERT INTO seat (seat_id, seat_row, seat_number, type_id, aircraft_cabin_id) VALUES (10, 29, '29F', 1, 10);



INSERT INTO aircraft_cabin_class (aircraft_cabin_id, aircraft_id, cabin_class_id, seat_capacity) VALUES (1, 1, 1, 150);
INSERT INTO aircraft_cabin_class (aircraft_cabin_id, aircraft_id, cabin_class_id, seat_capacity) VALUES (2, 2, 1, 200);
INSERT INTO aircraft_cabin_class (aircraft_cabin_id, aircraft_id, cabin_class_id, seat_capacity) VALUES (3, 3, 1, 180);
INSERT INTO aircraft_cabin_class (aircraft_cabin_id, aircraft_id, cabin_class_id, seat_capacity) VALUES (4, 4, 1, 180);
INSERT INTO aircraft_cabin_class (aircraft_cabin_id, aircraft_id, cabin_class_id, seat_capacity) VALUES (5, 5, 1, 150);
INSERT INTO aircraft_cabin_class (aircraft_cabin_id, aircraft_id, cabin_class_id, seat_capacity) VALUES (6, 6, 1, 180);
INSERT INTO aircraft_cabin_class (aircraft_cabin_id, aircraft_id, cabin_class_id, seat_capacity) VALUES (7, 7, 1, 200);
INSERT INTO aircraft_cabin_class (aircraft_cabin_id, aircraft_id, cabin_class_id, seat_capacity) VALUES (8, 8, 1, 180);
INSERT INTO aircraft_cabin_class (aircraft_cabin_id, aircraft_id, cabin_class_id, seat_capacity) VALUES (9, 9, 1, 180);
INSERT INTO aircraft_cabin_class (aircraft_cabin_id, aircraft_id, cabin_class_id, seat_capacity) VALUES (10, 10, 1, 200);


-- Ticket
 INSERT INTO ticket (ticket_id, booking_time, price, pax_first_name, pax_last_name,
    pax_date_of_birth, pax_phone_number, pax_email_address, flight_id, client_id, document_type_id, currency_id, seat_id)
 VALUES ('TCKT0001', '2025-05-29 10:00:57', 200.0, 'Aaron', 'Williams', '1984-12-07',
        '1164945876', 'aaron.williams@yahoo.com', 1, 1, 1, 1, 1);


INSERT INTO ticket (ticket_id, booking_time, price, pax_first_name, pax_last_name,
    pax_date_of_birth, pax_phone_number, pax_email_address, flight_id, client_id, document_type_id, currency_id, seat_id) VALUES ('TCKT0002', '2025-05-06 09:50:08', 250.0, 'Dean', 'Mccann', '1959-08-26',
        '1956930983', 'dean.mccann@hotmail.com', 2, 2, 1, 1, 2);

INSERT INTO ticket (ticket_id, booking_time, price, pax_first_name, pax_last_name,
    pax_date_of_birth, pax_phone_number, pax_email_address, flight_id, client_id, document_type_id, currency_id, seat_id) VALUES ('TCKT0003', '2025-05-09 04:18:28', 150.0, 'Kenneth', 'Turner', '1978-08-16',
        '034.809.3879', 'kenneth.turner@hotmail.com', 3, 3, 1, 1, 3);

INSERT INTO ticket (ticket_id, booking_time, price, pax_first_name, pax_last_name,
    pax_date_of_birth, pax_phone_number, pax_email_address, flight_id, client_id, document_type_id, currency_id, seat_id) VALUES ('TCKT0004', '2025-05-25 01:12:04', 150.0, 'Patrick', 'Jackson', '1969-12-20',
        '(932)788-0922x9879', 'patrick.jackson@yahoo.com', 4, 4, 1, 1, 4);

INSERT INTO ticket (ticket_id, booking_time, price, pax_first_name, pax_last_name,
    pax_date_of_birth, pax_phone_number, pax_email_address, flight_id, client_id, document_type_id, currency_id, seat_id) VALUES ('TCKT0005', '2025-05-15 03:37:50', 200.0, 'Michelle', 'Evans', '1988-02-04',
        '398-311-8795x567', 'michelle.evans@hotmail.com', 5, 5, 1, 1, 5);

INSERT INTO ticket (ticket_id, booking_time, price, pax_first_name, pax_last_name,
    pax_date_of_birth, pax_phone_number, pax_email_address, flight_id, client_id, document_type_id, currency_id, seat_id) VALUES ('TCKT0006', '2025-05-13 00:38:44', 150.0, 'Patrick', 'Dorsey', '1970-02-17',
        '397.013.1262', 'patrick.dorsey@hotmail.com', 6, 6, 1, 1, 6);

INSERT INTO ticket (ticket_id, booking_time, price, pax_first_name, pax_last_name,
    pax_date_of_birth, pax_phone_number, pax_email_address, flight_id, client_id, document_type_id, currency_id, seat_id) VALUES ('TCKT0007', '2025-05-07 21:58:08', 250.0, 'Lori', 'Adkins', '1980-02-14',
        '015-796-1002', 'lori.adkins@hotmail.com', 7, 7, 1, 1, 7);

INSERT INTO ticket (ticket_id, booking_time, price, pax_first_name, pax_last_name,
    pax_date_of_birth, pax_phone_number, pax_email_address, flight_id, client_id, document_type_id, currency_id, seat_id) VALUES ('TCKT0008', '2025-05-17 18:41:30', 150.0, 'Alex', 'Lee', '2000-11-19',
        '489.643.8570x22412', 'alex.lee@hotmail.com', 8, 8, 1, 1, 8);

INSERT INTO ticket (ticket_id, booking_time, price, pax_first_name, pax_last_name,
    pax_date_of_birth, pax_phone_number, pax_email_address, flight_id, client_id, document_type_id, currency_id, seat_id) VALUES ('TCKT0009', '2025-05-27 15:57:01', 300.0, 'Eric', 'Brewer', '1966-10-11',
        '780-242-9107', 'eric.brewer@gmail.com', 9, 9, 1, 1, 9);

INSERT INTO ticket (ticket_id, booking_time, price, pax_first_name, pax_last_name,
    pax_date_of_birth, pax_phone_number, pax_email_address, flight_id, client_id, document_type_id, currency_id, seat_id) VALUES ('TCKT0010', '2025-05-08 03:11:22', 300.0, 'Steven', 'Forbes', '1995-08-19',
        '273.088.2659x99360', 'steven.forbes@gmail.com', 10, 10, 1, 1, 10);



-- Payments
INSERT INTO payment (payment_id, amount_paid, payment_date, method_id, status_id, currency_id, ticket_id)
VALUES (1, 200.0, '2025-05-29 10:00:57', 1, 1, 1, 'TCKT0001');

INSERT INTO payment VALUES (2, 250.0, '2025-05-06 09:50:08', 1, 1, 1, 'TCKT0002');
INSERT INTO payment VALUES (3, 150.0, '2025-05-09 04:18:28', 1, 1, 1, 'TCKT0003');
INSERT INTO payment VALUES (4, 150.0, '2025-05-25 01:12:04', 1, 1, 1, 'TCKT0004');
INSERT INTO payment VALUES (5, 200.0, '2025-05-15 03:37:50', 1, 1, 1, 'TCKT0005');
INSERT INTO payment VALUES (6, 150.0, '2025-05-13 00:38:44', 1, 1, 1, 'TCKT0006');
INSERT INTO payment VALUES (7, 250.0, '2025-05-07 21:58:08', 1, 1, 1, 'TCKT0007');
INSERT INTO payment VALUES (8, 150.0, '2025-05-17 18:41:30', 1, 1, 1, 'TCKT0008');
INSERT INTO payment VALUES (9, 300.0, '2025-05-27 15:57:01', 1, 1, 1, 'TCKT0009');
INSERT INTO payment VALUES (10, 300.0, '2025-05-08 03:11:22', 1, 1, 1, 'TCKT0010');


-- Flight crew
INSERT INTO flight_crew (flight_crew_id, note, flight_id, employee_id, role_id) VALUES (1, 'Assigned to role ID 1', 1, 1, 1);
INSERT INTO flight_crew (flight_crew_id, note, flight_id, employee_id, role_id) VALUES (2, 'Assigned to role ID 2', 2, 2, 2);
INSERT INTO flight_crew (flight_crew_id, note, flight_id, employee_id, role_id) VALUES (3, 'Assigned to role ID 3', 3, 3, 3);
INSERT INTO flight_crew (flight_crew_id, note, flight_id, employee_id, role_id) VALUES (4, 'Assigned to role ID 4', 4, 4, 4);
INSERT INTO flight_crew (flight_crew_id, note, flight_id, employee_id, role_id) VALUES (5, 'Assigned to role ID 5', 5, 5, 5);
INSERT INTO flight_crew (flight_crew_id, note, flight_id, employee_id, role_id) VALUES (6, 'Assigned to role ID 6', 6, 6, 6);
INSERT INTO flight_crew (flight_crew_id, note, flight_id, employee_id, role_id) VALUES (7, 'Assigned to role ID 7', 7, 7, 7);
INSERT INTO flight_crew (flight_crew_id, note, flight_id, employee_id, role_id) VALUES (8, 'Assigned to role ID 8', 8, 8, 8);
INSERT INTO flight_crew (flight_crew_id, note, flight_id, employee_id, role_id) VALUES (9, 'Assigned to role ID 9', 9, 9, 9);
INSERT INTO flight_crew (flight_crew_id, note, flight_id, employee_id, role_id) VALUES (10, 'Assigned to role ID 10', 10, 10, 10);



