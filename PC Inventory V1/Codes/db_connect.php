<?php
// db_connect.php - Database connection file
$host = "localhost";
$username = "root";
$password = "FindPW@165";
$database = "pc_inventory";

// Create connection
$conn = new mysqli($host, $username, $password, $database);

// Check connection
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}
?>
