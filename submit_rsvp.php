<?php
// Database credentials
$servername = "your_servername";
$username = "your_username";
$password = "your_password";
$dbname = "your_database_name";

// Create connection
$conn = new mysqli($servername, $username, $password, $dbname);

// Check connection
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}

// Prepare and bind
$stmt = $conn->prepare("INSERT INTO rsvp (first_name, last_name, guest_name, attendance, dietary, song) VALUES (?, ?, ?, ?, ?, ?)");
$stmt->bind_param("ssssss", $first_name, $last_name, $guest_name, $attendance, $dietary, $song);

// Set parameters and execute
$first_name = $_POST['first_name'];
$last_name = $_POST['last_name'];
$guest_name = $_POST['guest_name']; 
$attendance = $_POST['attendance'];
$dietary = $_POST['dietary'];
$song = $_POST['song'];
$stmt->execute();

echo "RSVP received successfully!";

$stmt->close();
$conn->close();
?>
