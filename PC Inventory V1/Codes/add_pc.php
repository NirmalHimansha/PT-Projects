<?php
error_reporting(E_ALL);
ini_set('display_errors', 1);
include 'db_connect.php';

if ($_SERVER["REQUEST_METHOD"] == "POST") {
    if (empty($_POST['serial_no']) || empty($_POST['computer_name']) || empty($_POST['section'])) {
        die("Error: Some required fields are missing.");
    }

    if(!$_POST['date_of_issue']){
        $_POST['date_of_issue'] = null;
    }

    $stmt = $conn->prepare("INSERT INTO pcs 
        (serial_no, computer_name, section, user_name, monitor_brand_size, cpu_type, cpu_brand, processor, ram, hard_disk_gb, 
        operating_system, system_type, office_package, nav_user_name, other_software, teamviewer_id, service_tag, date_of_issue) 
        VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)");

    if (!$stmt) {
        die("Error in SQL Prepare: " . $conn->error);
    }

    $stmt->bind_param(
        "ssssssssssssssssss",
        $_POST['serial_no'],
        $_POST['computer_name'],
        $_POST['section'],
        $_POST['user_name'],
        $_POST['monitor_brand_size'],
        $_POST['cpu_type'],
        $_POST['cpu_brand'],
        $_POST['processor'],
        $_POST['ram'],
        $_POST['hard_disk_gb'],
        $_POST['operating_system'],
        $_POST['system_type'],
        $_POST['office_package'],
        $_POST['nav_user_name'],
        $_POST['other_software'],
        $_POST['teamviewer_id'],
        $_POST['service_tag'],
        $_POST['date_of_issue']
    );

    if ($stmt->execute()) {
        echo "<script>alert('PC added successfully!'); window.location.href='index.php';</script>";
    } else {
        die("Error executing SQL: " . $stmt->error);
    }

    $stmt->close();
    $conn->close();
} else {
    die("Invalid Request");
}
?>
