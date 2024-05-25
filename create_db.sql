CREATE TABLE users (
    id SERIAL PRIMARY KEY,
    first_name TEXT NOT NULL,
    last_name TEXT NOT NULL,
    email TEXT NOT NULL UNIQUE,
    phone TEXT NOT NULL
);

CREATE TABLE drivers (
    id SERIAL PRIMARY KEY,
    first_name TEXT NOT NULL,
    last_name TEXT NOT NULL,
    license_number TEXT NOT NULL UNIQUE
);

CREATE TABLE depots (
    id SERIAL PRIMARY KEY,
    address TEXT NOT NULL
);

CREATE TABLE vehicles (
    id SERIAL PRIMARY KEY,
    brand TEXT NOT NULL,
    model TEXT NOT NULL,
    capacity INTEGER NOT NULL,
    license_plate TEXT NOT NULL UNIQUE,
    maintenance_status TEXT CHECK(maintenance_status IN ('active', 'under_maintenance')) NOT NULL,
    disability_access BOOLEAN NOT NULL,
    depot_id INTEGER NOT NULL,
    FOREIGN KEY (depot_id) REFERENCES depots(id)
);

CREATE TABLE orders (
    id SERIAL PRIMARY KEY,
    user_id INTEGER NOT NULL,
    driver_id INTEGER NOT NULL,
    vehicle_id INTEGER NOT NULL,
    departure_datetime TIMESTAMP NOT NULL,
    is_holiday BOOLEAN NOT NULL,
    departure_location TEXT NOT NULL,
    destination_location TEXT NOT NULL,
    passenger_count INTEGER NOT NULL,
    special_requests TEXT,
    booking_status TEXT CHECK(booking_status IN ('confirmed', 'cancelled', 'completed')) NOT NULL,
    price DECIMAL(10, 2) NOT NULL,
    estimated_time INTEGER NOT NULL,
    estimated_distance DECIMAL(10, 2) NOT NULL,
    timezone TEXT NOT NULL,
    FOREIGN KEY (user_id) REFERENCES users(id),
    FOREIGN KEY (driver_id) REFERENCES drivers(id),
    FOREIGN KEY (vehicle_id) REFERENCES vehicles(id)
);