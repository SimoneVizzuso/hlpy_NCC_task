INSERT INTO users (first_name, last_name, email, phone) VALUES ('Mario', 'Rossi', 'mario.rossi@example.com', '1234567890');
INSERT INTO users (first_name, last_name, email, phone) VALUES ('Luigi', 'Bianchi', 'luigi.bianchi@example.com', '1234567891');
INSERT INTO users (first_name, last_name, email, phone) VALUES ('Giulia', 'Verdi', 'giulia.verdi@example.com', '1234567892');
INSERT INTO users (first_name, last_name, email, phone) VALUES ('Francesca', 'Gialli', 'francesca.gialli@example.com', '1234567893');
INSERT INTO users (first_name, last_name, email, phone) VALUES ('Andrea', 'Neri', 'andrea.neri@example.com', '1234567894');
INSERT INTO users (first_name, last_name, email, phone) VALUES ('Marco', 'Rossi', 'marco.rossi@example.com', '1234567895');
INSERT INTO users (first_name, last_name, email, phone) VALUES ('Anna', 'Bianchi', 'anna.bianchi@example.com', '1234567896');
INSERT INTO users (first_name, last_name, email, phone) VALUES ('Sara', 'Verdi', 'sara.verdi@example.com', '1234567897');
INSERT INTO users (first_name, last_name, email, phone) VALUES ('Giovanni', 'Gialli', 'giovanni.gialli@example.com', '1234567898');
INSERT INTO users (first_name, last_name, email, phone) VALUES ('Paolo', 'Neri', 'paolo.neri@example.com', '1234567899');

INSERT INTO drivers (first_name, last_name, license_number) VALUES ('Luca', 'Marini', 'LIC123456');
INSERT INTO drivers (first_name, last_name, license_number) VALUES ('Matteo', 'Ruggiero', 'LIC123457');
INSERT INTO drivers (first_name, last_name, license_number) VALUES ('Silvia', 'Conti', 'LIC123458');
INSERT INTO drivers (first_name, last_name, license_number) VALUES ('Stefano', 'Russo', 'LIC123459');
INSERT INTO drivers (first_name, last_name, license_number) VALUES ('Federico', 'Ferrari', 'LIC123460');
INSERT INTO drivers (first_name, last_name, license_number) VALUES ('Elena', 'Fontana', 'LIC123461');
INSERT INTO drivers (first_name, last_name, license_number) VALUES ('Roberto', 'Rizzo', 'LIC123462');
INSERT INTO drivers (first_name, last_name, license_number) VALUES ('Chiara', 'Guerra', 'LIC123463');
INSERT INTO drivers (first_name, last_name, license_number) VALUES ('Alessandro', 'Grassi', 'LIC123464');
INSERT INTO drivers (first_name, last_name, license_number) VALUES ('Valeria', 'Greco', 'LIC123465');

INSERT INTO depots (address) VALUES ('Via Roma 1, Milano');
INSERT INTO depots (address) VALUES ('Corso Italia 25, Napoli');
INSERT INTO depots (address) VALUES ('Piazza Duomo 12, Firenze');
INSERT INTO depots (address) VALUES ('Via Veneto 45, Roma');
INSERT INTO depots (address) VALUES ('Via Garibaldi 3, Torino');
INSERT INTO depots (address) VALUES ('Via Dante 78, Genova');
INSERT INTO depots (address) VALUES ('Via Mazzini 89, Bologna');
INSERT INTO depots (address) VALUES ('Via Manzoni 34, Bari');
INSERT INTO depots (address) VALUES ('Via Verdi 67, Venezia');
INSERT INTO depots (address) VALUES ('Via Cavour 21, Palermo');

INSERT INTO vehicles (brand, model, capacity, license_plate, maintenance_status, disability_access, depot_id)
VALUES ('Fiat', 'Ducato', 12, 'AB123CD', 'active', TRUE, 1);
INSERT INTO vehicles (brand, model, capacity, license_plate, maintenance_status, disability_access, depot_id)
VALUES ('Ford', 'Transit', 15, 'EF456GH', 'active', FALSE, 2);
INSERT INTO vehicles (brand, model, capacity, license_plate, maintenance_status, disability_access, depot_id)
VALUES ('Mercedes', 'Sprinter', 10, 'IJ789KL', 'under_maintenance', TRUE, 3);
INSERT INTO vehicles (brand, model, capacity, license_plate, maintenance_status, disability_access, depot_id)
VALUES ('Volkswagen', 'Crafter', 14, 'MN012OP', 'active', FALSE, 4);
INSERT INTO vehicles (brand, model, capacity, license_plate, maintenance_status, disability_access, depot_id)
VALUES ('Renault', 'Master', 11, 'QR345ST', 'active', TRUE, 5);
INSERT INTO vehicles (brand, model, capacity, license_plate, maintenance_status, disability_access, depot_id)
VALUES ('Peugeot', 'Boxer', 13, 'UV678WX', 'under_maintenance', FALSE, 6);
INSERT INTO vehicles (brand, model, capacity, license_plate, maintenance_status, disability_access, depot_id)
VALUES ('Citroen', 'Jumper', 9, 'YZ901AB', 'active', TRUE, 7);
INSERT INTO vehicles (brand, model, capacity, license_plate, maintenance_status, disability_access, depot_id)
VALUES ('Iveco', 'Daily', 16, 'CD234EF', 'active', FALSE, 8);
INSERT INTO vehicles (brand, model, capacity, license_plate, maintenance_status, disability_access, depot_id)
VALUES ('Nissan', 'NV400', 12, 'GH567IJ', 'under_maintenance', TRUE, 9);
INSERT INTO vehicles (brand, model, capacity, license_plate, maintenance_status, disability_access, depot_id)
VALUES ('Opel', 'Movano', 10, 'KL890MN', 'active', FALSE, 10);

INSERT INTO orders (user_id, driver_id, vehicle_id, departure_datetime, is_holiday, departure_location, destination_location, passenger_count, special_requests, booking_status, price, estimated_time, estimated_distance, timezone)
VALUES (1, 1, 1, '2023-12-31 08:00:00', TRUE, 'Piazza Duomo, Milano', 'Stazione Centrale, Milano', 2, 'Nessuna', 'confirmed', 15, 30, 5, 'Europe/Rome');

INSERT INTO orders (user_id, driver_id, vehicle_id, departure_datetime, is_holiday, departure_location, destination_location, passenger_count, special_requests, booking_status, price, estimated_time, estimated_distance, timezone)
VALUES (2, 2, 2, '2023-12-31 09:00:00', TRUE, 'Via Roma, Napoli', 'Piazza Plebiscito, Napoli', 3, 'Bagagli', 'confirmed', 15, 45, 10, 'Europe/Rome');

INSERT INTO orders (user_id, driver_id, vehicle_id, departure_datetime, is_holiday, departure_location, destination_location, passenger_count, special_requests, booking_status, price, estimated_time, estimated_distance, timezone)
VALUES (3, 3, 3, '2023-12-31 10:00:00', TRUE, 'Ponte Vecchio, Firenze', 'Stazione SMN, Firenze', 4, 'Animali', 'confirmed', 15, 20, 3, 'Europe/Rome');

INSERT INTO orders (user_id, driver_id, vehicle_id, departure_datetime, is_holiday, departure_location, destination_location, passenger_count, special_requests, booking_status, price, estimated_time, estimated_distance, timezone)
VALUES (4, 4, 4, '2023-12-31 11:00:00', TRUE, 'Colosseo, Roma', 'Vaticano, Roma', 5, 'Sedia a rotelle', 'confirmed', 15, 60, 12, 'Europe/Rome');

INSERT INTO orders (user_id, driver_id, vehicle_id, departure_datetime, is_holiday, departure_location, destination_location, passenger_count, special_requests, booking_status, price, estimated_time, estimated_distance, timezone)
VALUES (5, 5, 5, '2023-12-31 12:00:00', TRUE, 'Mole Antonelliana, Torino', 'Stazione Porta Nuova, Torino', 2, 'Nessuna', 'confirmed', 15, 15, 2, 'Europe/Rome');

INSERT INTO orders (user_id, driver_id, vehicle_id, departure_datetime, is_holiday, departure_location, destination_location, passenger_count, special_requests, booking_status, price, estimated_time, estimated_distance, timezone)
VALUES (6, 6, 6, '2023-12-31 13:00:00', TRUE, 'Porto Antico, Genova', 'Acquario, Genova', 3, 'Bagagli', 'confirmed', 15, 35, 7, 'Europe/Rome');

INSERT INTO orders (user_id, driver_id, vehicle_id, departure_datetime, is_holiday, departure_location, destination_location, passenger_count, special_requests, booking_status, price, estimated_time, estimated_distance, timezone)
VALUES (7, 7, 7, '2023-12-31 14:00:00', TRUE, 'Torre degli Asinelli, Bologna', 'Stazione Centrale, Bologna', 4, 'Animali', 'confirmed', 15, 25, 4, 'Europe/Rome');

INSERT INTO orders (user_id, driver_id, vehicle_id, departure_datetime, is_holiday, departure_location, destination_location, passenger_count, special_requests, booking_status, price, estimated_time, estimated_distance, timezone)
VALUES (8, 8, 8, '2023-12-31 15:00:00', TRUE, 'Teatro Petruzzelli, Bari', 'Stazione Centrale, Bari', 5, 'Sedia a rotelle', 'confirmed', 15, 50, 9, 'Europe/Rome');

INSERT INTO orders (user_id, driver_id, vehicle_id, departure_datetime, is_holiday, departure_location, destination_location, passenger_count, special_requests, booking_status, price, estimated_time, estimated_distance, timezone)
VALUES (9, 9, 9, '2023-12-31 16:00:00', TRUE, 'Piazza San Marco, Venezia', 'Stazione Santa Lucia, Venezia', 2, 'Nessuna', 'confirmed', 15, 40, 8, 'Europe/Rome');

INSERT INTO orders (user_id, driver_id, vehicle_id, departure_datetime, is_holiday, departure_location, destination_location, passenger_count, special_requests, booking_status, price, estimated_time, estimated_distance, timezone)
VALUES (10, 10, 10, '2023-12-31 17:00:00', TRUE, 'Teatro Massimo, Palermo', 'Stazione Centrale, Palermo', 3, 'Bagagli', 'confirmed', 15, 55, 11, 'Europe/Rome');

INSERT INTO orders (user_id, driver_id, vehicle_id, departure_datetime, is_holiday, departure_location, destination_location, passenger_count, special_requests, booking_status, price, estimated_time, estimated_distance, timezone)
VALUES (1, 1, 2, '2023-12-31 18:00:00', TRUE, 'Piazza Duomo, Milano', 'Stazione Centrale, Milano', 1, 'Nessuna', 'confirmed', 15, 30, 5, 'Europe/Rome');

INSERT INTO orders (user_id, driver_id, vehicle_id, departure_datetime, is_holiday, departure_location, destination_location, passenger_count, special_requests, booking_status, price, estimated_time, estimated_distance, timezone)
VALUES (1, 2, 1, '2023-12-31 19:00:00', TRUE, 'Piazza Duomo, Milano', 'Stazione Centrale, Torino', 1, 'Nessuna', 'confirmed', 15, 400, 150, 'Europe/Rome');
