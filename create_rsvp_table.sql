-- Create a database if it doesn't exist
CREATE DATABASE IF NOT EXISTS wedding_db;

-- Use the created database
USE wedding_db;

-- Drop the table if it already exists to avoid errors
DROP TABLE IF EXISTS rsvp;

-- Create the RSVP table
CREATE TABLE rsvp (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    attendance VARCHAR(10) NOT NULL,
    dietary TEXT,
    song VARCHAR(255)
);
