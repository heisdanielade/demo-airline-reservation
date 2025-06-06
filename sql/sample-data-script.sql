INSERT INTO country (name, code) VALUES ('Czech Republic', 'PS');
INSERT INTO country (name, code) VALUES ('Chile', 'VC');
INSERT INTO country (name, code) VALUES ('Niger', 'PL');
INSERT INTO country (name, code) VALUES ('United Kingdom', 'RW');
INSERT INTO country (name, code) VALUES ('Mauritania', 'TD');
INSERT INTO country (name, code) VALUES ('Malta', 'AR');
INSERT INTO country (name, code) VALUES ('United States Minor Outlying Islands', 'CH');
INSERT INTO country (name, code) VALUES ('Canada', 'RU');
INSERT INTO country (name, code) VALUES ('Cape Verde', 'NA');
INSERT INTO country (name, code) VALUES ('Gabon', 'LK');


INSERT INTO city (name, country_id) VALUES ('Marshalltown', 1);
INSERT INTO city (name, country_id) VALUES ('East Michael', 2);
INSERT INTO city (name, country_id) VALUES ('Hinesshire', 3);
INSERT INTO city (name, country_id) VALUES ('Mooneymouth', 4);
INSERT INTO city (name, country_id) VALUES ('Nicholasburgh', 5);
INSERT INTO city (name, country_id) VALUES ('East Carrieburgh', 6);
INSERT INTO city (name, country_id) VALUES ('North Andrea', 7);
INSERT INTO city (name, country_id) VALUES ('Lake Christophermouth', 8);
INSERT INTO city (name, country_id) VALUES ('Jarvismouth', 9);
INSERT INTO city (name, country_id) VALUES ('North Tamara', 10);


INSERT INTO airport (name, airport_code, city_id) VALUES ('John F. Kennedy International Airport', 'JFK', 1);
INSERT INTO airport (name, airport_code, city_id) VALUES ('London Heathrow Airport', 'LHR', 2);
INSERT INTO airport (name, airport_code, city_id) VALUES ('Tokyo Haneda Airport', 'HND', 3);
INSERT INTO airport (name, airport_code, city_id) VALUES ('Frankfurt Airport', 'FRA', 4);
INSERT INTO airport (name, airport_code, city_id) VALUES ('Los Angeles International Airport', 'LAX', 5);
INSERT INTO airport (name, airport_code, city_id) VALUES ('Dubai International Airport', 'DXB', 6);
INSERT INTO airport (name, airport_code, city_id) VALUES ('Paris Charles de Gaulle', 'CDG', 7);
INSERT INTO airport (name, airport_code, city_id) VALUES ('Singapore Changi Airport', 'SIN', 8);
INSERT INTO airport (name, airport_code, city_id) VALUES ('Sydney Kingsford Smith Airport', 'SYD', 9);
INSERT INTO airport (name, airport_code, city_id) VALUES ('Toronto Pearson Airport', 'YYZ', 10);


INSERT INTO aircraft_manufacturer (name) VALUES ('Boeing');
INSERT INTO aircraft_manufacturer (name) VALUES ('Airbus');
INSERT INTO aircraft_manufacturer (name) VALUES ('Embraer');
INSERT INTO aircraft_manufacturer (name) VALUES ('Bombardier');
INSERT INTO aircraft_manufacturer (name) VALUES ('McDonnell Douglas');
INSERT INTO aircraft_manufacturer (name) VALUES ('Tupolev');
INSERT INTO aircraft_manufacturer (name) VALUES ('Comac');
INSERT INTO aircraft_manufacturer (name) VALUES ('ATR');
INSERT INTO aircraft_manufacturer (name) VALUES ('Mitsubishi');
INSERT INTO aircraft_manufacturer (name) VALUES ('Ilyushin');


INSERT INTO aircraft_type (model, aircraft_manufacturer_id) VALUES ('737 MAX 8', 1);
INSERT INTO aircraft_type (model, aircraft_manufacturer_id) VALUES ('A320neo', 2);
INSERT INTO aircraft_type (model, aircraft_manufacturer_id) VALUES ('E195-E2', 3);
INSERT INTO aircraft_type (model, aircraft_manufacturer_id) VALUES ('CRJ900', 4);
INSERT INTO aircraft_type (model, aircraft_manufacturer_id) VALUES ('MD-11', 5);
INSERT INTO aircraft_type (model, aircraft_manufacturer_id) VALUES ('Tu-204', 6);
INSERT INTO aircraft_type (model, aircraft_manufacturer_id) VALUES ('C919', 7);
INSERT INTO aircraft_type (model, aircraft_manufacturer_id) VALUES ('ATR 72', 8);
INSERT INTO aircraft_type (model, aircraft_manufacturer_id) VALUES ('SpaceJet M90', 9);
INSERT INTO aircraft_type (model, aircraft_manufacturer_id) VALUES ('Il-96', 10);

INSERT INTO cabin_class (name, seat_pitch, seat_width, seat_layout)
VALUES ('Economy', 31.0, 17.0, '3-3');
INSERT INTO cabin_class (name, seat_pitch, seat_width, seat_layout)
VALUES ('Business', 35.0, 19.5, '3-3');
INSERT INTO cabin_class (name, seat_pitch, seat_width, seat_layout)
VALUES ('First', 40.0, 22.0, '2-2');


INSERT INTO document_type (name)
VALUES ('Passport');


INSERT INTO payment_method (name)
VALUES ('Credit Card');

INSERT INTO currency (NAME, code)
VALUES ('Euro', 'EUR');

INSERT INTO payment_status (name)
VALUES ('Completed');

INSERT INTO seat_type (name)
VALUES ('Standard');
INSERT INTO seat_type (name)
VALUES ('Premium');

INSERT INTO activity_status (NAME) VALUES ('Active');


INSERT INTO aircraft (registration_number, status_id, max_seat_capacity, aircraft_type_id) VALUES ('WI-6121', 1, 200, 1);
INSERT INTO aircraft (registration_number, status_id, max_seat_capacity, aircraft_type_id) VALUES ('AX-6039', 1, 200, 2);
INSERT INTO aircraft (registration_number, status_id, max_seat_capacity, aircraft_type_id) VALUES ('AM-6771', 1, 220, 3);
INSERT INTO aircraft (registration_number, status_id, max_seat_capacity, aircraft_type_id) VALUES ('UX-2644', 1, 220, 4);
INSERT INTO aircraft (registration_number, status_id, max_seat_capacity, aircraft_type_id) VALUES ('YI-2825', 1, 150, 5);
INSERT INTO aircraft (registration_number, status_id, max_seat_capacity, aircraft_type_id) VALUES ('LK-3252', 1, 200, 6);
INSERT INTO aircraft (registration_number, status_id, max_seat_capacity, aircraft_type_id) VALUES ('PG-6733', 1, 220, 7);
INSERT INTO aircraft (registration_number, status_id, max_seat_capacity, aircraft_type_id) VALUES ('OH-2320', 1, 150, 8);
INSERT INTO aircraft (registration_number, status_id, max_seat_capacity, aircraft_type_id) VALUES ('YT-6391', 1, 200, 9);
INSERT INTO aircraft (registration_number, status_id, max_seat_capacity, aircraft_type_id) VALUES ('FU-3202', 1, 180, 10);


INSERT INTO gender (name) VALUES ('Male');
INSERT INTO gender (name) VALUES ('Female');


INSERT INTO nationality (name) VALUES ('American');
INSERT INTO nationality (name) VALUES ('British');
INSERT INTO nationality (name) VALUES ('Canadian');
INSERT INTO nationality (name) VALUES ('Polish');
INSERT INTO nationality (name) VALUES ('Nigerian');
INSERT INTO nationality (name) VALUES ('German');
INSERT INTO nationality (name) VALUES ('French');
INSERT INTO nationality (name) VALUES ('Indian');
INSERT INTO nationality (name) VALUES ('Japanese');
INSERT INTO nationality (name) VALUES ('Brazilian');


INSERT INTO client (first_name, last_name, email_address) VALUES ('Sophia', 'Miller', 'sophia.miller@gmail.com');
INSERT INTO client (first_name, last_name, email_address) VALUES ('Liam', 'Johnson', 'liam.johnson@yahoo.com');
INSERT INTO client (first_name, last_name, email_address) VALUES ('Olivia', 'Smith', 'olivia.smith@hotmail.com');
INSERT INTO client (first_name, last_name, email_address) VALUES ('Noah', 'Williams', 'noah.williams@outlook.com');
INSERT INTO client (first_name, last_name, email_address) VALUES ('Emma', 'Brown', 'emma.brown@gmail.com');
INSERT INTO client (first_name, last_name, email_address) VALUES ('James', 'Jones', 'james.jones@yahoo.com');
INSERT INTO client (first_name, last_name, email_address) VALUES ('Ava', 'Garcia', 'ava.garcia@gmail.com');
INSERT INTO client (first_name, last_name, email_address) VALUES ('Lucas', 'Martinez', 'lucas.martinez@live.com');
INSERT INTO client (first_name, last_name, email_address) VALUES ('Isabella', 'Rodriguez', 'isabella.rodriguez@gmail.com');
INSERT INTO client (first_name, last_name, email_address) VALUES ('Ethan', 'Davis', 'ethan.davis@yahoo.com');


INSERT INTO employee (first_name, last_name, other_names, monthly_salary, date_of_birth, email_address, phone_number, hire_date, gender_id, nationality_id)
VALUES ('Jack', 'Thompson', NULL, 6800, '1985-06-12', 'jack.thompson@airlinecorp.com', '+1-202-555-0143', '2018-04-20', 1, 1);

INSERT INTO employee (first_name, last_name, other_names, monthly_salary, date_of_birth, email_address, phone_number, hire_date, gender_id, nationality_id)
VALUES ('Emily', 'Scott', NULL, 7200, '1990-11-30', 'emily.scott@airlinecorp.com', '+1-202-555-0199', '2019-07-10', 2, 1);

INSERT INTO employee (first_name, last_name, other_names, monthly_salary, date_of_birth, email_address, phone_number, hire_date, gender_id, nationality_id)
VALUES ('Benjamin', 'Moore', NULL, 6400, '1982-09-15', 'benjamin.moore@airlinecorp.com', '+1-202-555-0127', '2015-03-25', 1, 1);

INSERT INTO employee (first_name, last_name, other_names, monthly_salary, date_of_birth, email_address, phone_number, hire_date, gender_id, nationality_id)
VALUES ('Avery', 'Lee', NULL, 6000, '1993-02-19', 'avery.lee@airlinecorp.com', '+1-202-555-0166', '2020-01-05', 2, 1);

INSERT INTO employee (first_name, last_name, other_names, monthly_salary, date_of_birth, email_address, phone_number, hire_date, gender_id, nationality_id)
VALUES ('Henry', 'Clark', NULL, 7100, '1988-08-22', 'henry.clark@airlinecorp.com', '+1-202-555-0188', '2017-06-15', 1, 1);

INSERT INTO employee (first_name, last_name, other_names, monthly_salary, date_of_birth, email_address, phone_number, hire_date, gender_id, nationality_id)
VALUES ('Mia', 'Lewis', NULL, 6700, '1991-12-03', 'mia.lewis@airlinecorp.com', '+1-202-555-0177', '2018-09-11', 2, 1);

INSERT INTO employee (first_name, last_name, other_names, monthly_salary, date_of_birth, email_address, phone_number, hire_date, gender_id, nationality_id)
VALUES ('Daniel', 'Walker', NULL, 6200, '1986-07-14', 'daniel.walker@airlinecorp.com', '+1-202-555-0155', '2016-11-03', 1, 1);

INSERT INTO employee (first_name, last_name, other_names, monthly_salary, date_of_birth, email_address, phone_number, hire_date, gender_id, nationality_id)
VALUES ('Ella', 'Hall', NULL, 6400, '1994-05-20', 'ella.hall@airlinecorp.com', '+1-202-555-0134', '2019-02-12', 2, 1);

INSERT INTO employee (first_name, last_name, other_names, monthly_salary, date_of_birth, email_address, phone_number, hire_date, gender_id, nationality_id)
VALUES ('Matthew', 'Allen', NULL, 7000, '1987-04-11', 'matthew.allen@airlinecorp.com', '+1-202-555-0147', '2017-08-21', 1, 1);

INSERT INTO employee (first_name, last_name, other_names, monthly_salary, date_of_birth, email_address, phone_number, hire_date, gender_id, nationality_id)
VALUES ('Chloe', 'Young', NULL, 6300, '1992-10-27', 'chloe.young@airlinecorp.com', '+1-202-555-0190', '2020-05-14', 2, 1);



INSERT INTO flight (departure_airport_id, arrival_airport_id, aircraft_id, base_departure_time, base_arrival_time)
VALUES (1, 2, 1, '2025-07-01 07:30:00', '2025-07-01 10:00:00');

INSERT INTO flight (departure_airport_id, arrival_airport_id, aircraft_id, base_departure_time, base_arrival_time)
VALUES (2, 3, 2, '2025-07-01 09:00:00', '2025-07-01 15:30:00');

INSERT INTO flight (departure_airport_id, arrival_airport_id, aircraft_id, base_departure_time, base_arrival_time)
VALUES (3, 4, 3, '2025-07-02 06:00:00', '2025-07-02 12:30:00');

INSERT INTO flight (departure_airport_id, arrival_airport_id, aircraft_id, base_departure_time, base_arrival_time)
VALUES (4, 5, 4, '2025-07-02 14:00:00', '2025-07-02 18:00:00');

INSERT INTO flight (departure_airport_id, arrival_airport_id, aircraft_id, base_departure_time, base_arrival_time)
VALUES (5, 6, 5, '2025-07-03 08:15:00', '2025-07-03 16:45:00');

INSERT INTO flight (departure_airport_id, arrival_airport_id, aircraft_id, base_departure_time, base_arrival_time)
VALUES (6, 7, 6, '2025-07-04 22:00:00', '2025-07-05 02:30:00');

INSERT INTO flight (departure_airport_id, arrival_airport_id, aircraft_id, base_departure_time, base_arrival_time)
VALUES (7, 8, 7, '2025-07-05 10:00:00', '2025-07-05 14:00:00');

INSERT INTO flight (departure_airport_id, arrival_airport_id, aircraft_id, base_departure_time, base_arrival_time)
VALUES (8, 9, 8, '2025-07-06 13:30:00', '2025-07-06 21:00:00');

INSERT INTO flight (departure_airport_id, arrival_airport_id, aircraft_id, base_departure_time, base_arrival_time)
VALUES (9, 10, 9, '2025-07-07 15:45:00', '2025-07-07 20:00:00');

INSERT INTO flight (departure_airport_id, arrival_airport_id, aircraft_id, base_departure_time, base_arrival_time)
VALUES (10, 1, 10, '2025-07-08 07:00:00', '2025-07-08 11:00:00');



INSERT INTO crew_role (role_name) VALUES ('Captain');
INSERT INTO crew_role (role_name) VALUES ('First Officer');
INSERT INTO crew_role (role_name) VALUES ('Flight Attendant');
INSERT INTO crew_role (role_name) VALUES ('Purser');
INSERT INTO crew_role (role_name) VALUES ('Ground Engineer');
INSERT INTO crew_role (role_name) VALUES ('Cabin Manager');
INSERT INTO crew_role (role_name) VALUES ('Safety Officer');
INSERT INTO crew_role (role_name) VALUES ('Flight Operations');
INSERT INTO crew_role (role_name) VALUES ('Navigator');
INSERT INTO crew_role (role_name) VALUES ('Flight Engineer');



INSERT INTO aircraft_cabin_class (aircraft_id, cabin_class_id, seat_capacity) VALUES (1, 1, 150);
INSERT INTO aircraft_cabin_class (aircraft_id, cabin_class_id, seat_capacity) VALUES (2, 1, 200);
INSERT INTO aircraft_cabin_class (aircraft_id, cabin_class_id, seat_capacity) VALUES (3, 1, 180);
INSERT INTO aircraft_cabin_class (aircraft_id, cabin_class_id, seat_capacity) VALUES (4, 1, 180);
INSERT INTO aircraft_cabin_class (aircraft_id, cabin_class_id, seat_capacity) VALUES (5, 1, 150);
INSERT INTO aircraft_cabin_class (aircraft_id, cabin_class_id, seat_capacity) VALUES (6, 1, 180);
INSERT INTO aircraft_cabin_class (aircraft_id, cabin_class_id, seat_capacity) VALUES (7, 1, 200);
INSERT INTO aircraft_cabin_class (aircraft_id, cabin_class_id, seat_capacity) VALUES (8, 1, 180);
INSERT INTO aircraft_cabin_class (aircraft_id, cabin_class_id, seat_capacity) VALUES (9, 1, 180);
INSERT INTO aircraft_cabin_class (aircraft_id, cabin_class_id, seat_capacity) VALUES (10, 1, 200);


INSERT INTO seat (seat_row, seat_number, type_id, aircraft_cabin_id) VALUES (7, '7B', 1, 1);
INSERT INTO seat (seat_row, seat_number, type_id, aircraft_cabin_id) VALUES (7, '7E', 1, 2);
INSERT INTO seat (seat_row, seat_number, type_id, aircraft_cabin_id) VALUES (12, '12A', 1, 3);
INSERT INTO seat (seat_row, seat_number, type_id, aircraft_cabin_id) VALUES (29, '29C', 1, 4);
INSERT INTO seat (seat_row, seat_number, type_id, aircraft_cabin_id) VALUES (10, '10F', 1, 5);
INSERT INTO seat (seat_row, seat_number, type_id, aircraft_cabin_id) VALUES (21, '21B', 1, 6);
INSERT INTO seat (seat_row, seat_number, type_id, aircraft_cabin_id) VALUES (17, '17F', 1, 7);
INSERT INTO seat (seat_row, seat_number, type_id, aircraft_cabin_id) VALUES (17, '17D', 1, 8);
INSERT INTO seat (seat_row, seat_number, type_id, aircraft_cabin_id) VALUES (16, '16F', 1, 9);
INSERT INTO seat (seat_row, seat_number, type_id, aircraft_cabin_id) VALUES (29, '29F', 1, 10);


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

INSERT INTO payment (amount_paid, payment_date, method_id, status_id, currency_id, ticket_id) VALUES (385.0, '2025-05-08 03:11:22', 1, 1, 1, 'TCKT0001');
INSERT INTO payment (amount_paid, payment_date, method_id, status_id, currency_id, ticket_id) VALUES (250.0, '2025-05-06 09:50:08', 1, 1, 1, 'TCKT0002');
INSERT INTO payment (amount_paid, payment_date, method_id, status_id, currency_id, ticket_id) VALUES (150.0, '2025-05-09 04:18:28', 1, 1, 1, 'TCKT0003');
INSERT INTO payment (amount_paid, payment_date, method_id, status_id, currency_id, ticket_id) VALUES (150.0, '2025-05-25 01:12:04', 1, 1, 1, 'TCKT0004');
INSERT INTO payment (amount_paid, payment_date, method_id, status_id, currency_id, ticket_id) VALUES (200.0, '2025-05-15 03:37:50', 1, 1, 1, 'TCKT0005');
INSERT INTO payment (amount_paid, payment_date, method_id, status_id, currency_id, ticket_id) VALUES (150.0, '2025-05-13 00:38:44', 1, 1, 1, 'TCKT0006');
INSERT INTO payment (amount_paid, payment_date, method_id, status_id, currency_id, ticket_id) VALUES (250.0, '2025-05-07 21:58:08', 1, 1, 1, 'TCKT0007');
INSERT INTO payment (amount_paid, payment_date, method_id, status_id, currency_id, ticket_id) VALUES (150.0, '2025-05-17 18:41:30', 1, 1, 1, 'TCKT0008');
INSERT INTO payment (amount_paid, payment_date, method_id, status_id, currency_id, ticket_id) VALUES (300.0, '2025-05-27 15:57:01', 1, 1, 1, 'TCKT0009');
INSERT INTO payment (amount_paid, payment_date, method_id, status_id, currency_id, ticket_id) VALUES (300.0, '2025-05-08 03:11:22', 1, 1, 1, 'TCKT0010');


INSERT INTO flight_crew (note, flight_id, employee_id, role_id) VALUES ('Assigned to role ID 1', 1, 1, 1);
INSERT INTO flight_crew (note, flight_id, employee_id, role_id) VALUES ('Assigned to role ID 2', 2, 2, 2);
INSERT INTO flight_crew (note, flight_id, employee_id, role_id) VALUES ('Assigned to role ID 3', 3, 3, 3);
INSERT INTO flight_crew (note, flight_id, employee_id, role_id) VALUES ('Assigned to role ID 4', 4, 4, 4);
INSERT INTO flight_crew (note, flight_id, employee_id, role_id) VALUES ('Assigned to role ID 5', 5, 5, 5);
INSERT INTO flight_crew (note, flight_id, employee_id, role_id) VALUES ('Assigned to role ID 6', 6, 6, 6);
INSERT INTO flight_crew (note, flight_id, employee_id, role_id) VALUES ('Assigned to role ID 7', 7, 7, 7);
INSERT INTO flight_crew (note, flight_id, employee_id, role_id) VALUES ('Assigned to role ID 8', 8, 8, 8);
INSERT INTO flight_crew (note, flight_id, employee_id, role_id) VALUES ('Assigned to role ID 9', 9, 9, 9);
INSERT INTO flight_crew (note, flight_id, employee_id, role_id) VALUES ('Assigned to role ID 10', 10, 10, 10);




