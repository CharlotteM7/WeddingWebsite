-- Create a database if it doesn't exist
CREATE DATABASE IF NOT EXISTS wedding_db;

-- Use the created database
USE wedding_db;

-- Drop the table if it already exists to avoid errors
DROP TABLE IF EXISTS rsvp;

-- Create the RSVP table with the new fields
CREATE TABLE rsvp (
    id INT AUTO_INCREMENT PRIMARY KEY,
    first_name VARCHAR(255) NOT NULL,
    last_name VARCHAR(255) NOT NULL,
    guest_name VARCHAR(255),
    attendance ENUM('Yes', 'No') NOT NULL,
    dietary VARCHAR(255),
    song VARCHAR(255)
);
