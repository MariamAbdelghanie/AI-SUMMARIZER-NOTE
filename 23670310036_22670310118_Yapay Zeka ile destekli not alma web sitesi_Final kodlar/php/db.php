<?php
// Database configuration
$host = "localhost";        // Database host
$username = "root";         // Default XAMPP username
$password = "";             // Default XAMPP password (empty)
$dbname = "freesum";        // Database name

// Create connection
$conn = new mysqli($host, $username, $password, $dbname);

// Check connection
if ($conn->connect_error) {
    // Avoid showing detailed errors in production
    die("Connection failed. Please try again later.");
}

// Set character encoding to UTF-8 for multilingual support
$conn->set_charset("utf8mb4");
?>

