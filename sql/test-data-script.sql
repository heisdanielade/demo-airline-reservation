




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


INSERT INTO payment VALUES (385.0, '2025-05-08 03:11:22', 1, 1, 1, 'TCKT0001');
INSERT INTO payment VALUES (250.0, '2025-05-06 09:50:08', 1, 1, 1, 'TCKT0002');
INSERT INTO payment VALUES (150.0, '2025-05-09 04:18:28', 1, 1, 1, 'TCKT0003');
INSERT INTO payment VALUES (150.0, '2025-05-25 01:12:04', 1, 1, 1, 'TCKT0004');
INSERT INTO payment VALUES (200.0, '2025-05-15 03:37:50', 1, 1, 1, 'TCKT0005');
INSERT INTO payment VALUES (150.0, '2025-05-13 00:38:44', 1, 1, 1, 'TCKT0006');
INSERT INTO payment VALUES (250.0, '2025-05-07 21:58:08', 1, 1, 1, 'TCKT0007');
INSERT INTO payment VALUES (150.0, '2025-05-17 18:41:30', 1, 1, 1, 'TCKT0008');
INSERT INTO payment VALUES (300.0, '2025-05-27 15:57:01', 1, 1, 1, 'TCKT0009');
INSERT INTO payment VALUES (300.0, '2025-05-08 03:11:22', 1, 1, 1, 'TCKT0010');


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



