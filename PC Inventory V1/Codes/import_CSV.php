<?php
include 'index.php';

if (isset($_POST["import"])) {
    $filename = $_FILES["file"]["tmp_name"];
    
    if ($_FILES["file"]["size"] > 0) {
        $file = fopen($filename, "r");

        // Skip the first row if it contains column headers
        fgetcsv($file);
        
        while (($data = fgetcsv($file, 1000, ",")) !== FALSE) {
            $sql = "INSERT INTO pcs (serial_no, section, user, computer_name, monitor_brand_size, cpu_type, cpu_brand, processor, ram, hard_disk_gb, operating_system, system_type, work_group_domain, office_package, navision, nav_user_name, attendance, payroll, other_software, teamviewer_id, mobile_email, service_tag, experience_code, mac, date_of_issue) 
            VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)";

            $stmt = $conn->prepare($sql);
            $stmt->bind_param("sssssssssssssssssssssssss", ...$data);
            $stmt->execute();
        }

        fclose($file);
        echo "CSV file imported successfully!";
    } else {
        echo "Invalid file!";
    }
}
?>

<form method="POST" enctype="multipart/form-data">
    <input type="file" name="file" required>
    <button type="submit" name="import">Import CSV</button>
</form>
