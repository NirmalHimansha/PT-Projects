<?php
include 'db_connect.php'; // Ensure database connection is included correctly

if(!$_POST['date_of_issue']){
    $_POST['date_of_issue'] = null;
}
// Check if the form was submitted
if ($_SERVER["REQUEST_METHOD"] == "POST") {
    if (!isset($_POST['id']) || empty($_POST['id'])) {
        die("Error: No ID provided.");
    }

    // Get values from form
    $id = intval($_POST['id']); // Ensure ID is an integer
    $serial_no = $_POST['serial_no'];
    $section = $_POST['section'];
    $user_name = $_POST['user_name'];
    $computer_name = $_POST['computer_name'];
    $monitor_brand_size = $_POST['monitor_brand_size'];
    $cpu_type = $_POST['cpu_type'];
    $cpu_brand = $_POST['cpu_brand'];
    $processor = $_POST['processor'];
    $ram = $_POST['ram'];
    $hard_disk_gb = $_POST['hard_disk_gb'];
    $operating_system = $_POST['operating_system'];
    $system_type = $_POST['system_type'];
    $office_package = $_POST['office_package'];
    $nav_user_name = $_POST['nav_user_name'];
    $other_software = $_POST['other_software'];
    $teamviewer_id = $_POST['teamviewer_id'];
    $service_tag = $_POST['service_tag'];
    $date_of_issue = $_POST['date_of_issue'];

    // Prepare the SQL statement
    $sql = "UPDATE pcs SET serial_no=?, section=?, user_name=?, computer_name=?, monitor_brand_size=?, cpu_type=?, 
            cpu_brand=?, processor=?, ram=?, hard_disk_gb=?, operating_system=?, system_type=?, office_package=?, 
            nav_user_name=?, other_software=?, teamviewer_id=?, service_tag=?, date_of_issue=? WHERE id=?";
    
    $stmt = $conn->prepare($sql);

    if (!$stmt) {
        die("Prepare failed: " . $conn->error);  // Show MySQL error if prepare fails
    }

    // Bind parameters
    $stmt->bind_param("ssssssssssssssssssi", 
        $serial_no, $section, $user_name, $computer_name, $monitor_brand_size, 
        $cpu_type, $cpu_brand, $processor, $ram, $hard_disk_gb, 
        $operating_system, $system_type, $office_package, $nav_user_name, 
        $other_software, $teamviewer_id, $service_tag, $date_of_issue, $id);

    // Execute the query
    if ($stmt->execute()) {
        echo "<script>alert('PC updated successfully!'); window.location.href='index.php';</script>";
    } else {
        die("Execution failed: " . $stmt->error); // Show MySQL execution error
    }
}

// Fetch PC data if an ID is provided in GET request
if (isset($_GET['id'])) {
    $id = intval($_GET['id']);
    $sql = "SELECT * FROM pcs WHERE id=?";
    $stmt = $conn->prepare($sql);
    $stmt->bind_param("i", $id);
    $stmt->execute();
    $result = $stmt->get_result();

    if ($result->num_rows > 0) {
        $row = $result->fetch_assoc();
    } else {
        die("Error: Record not found!");
    }
    $stmt->close();
}
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Edit PC</title>
    <link rel="stylesheet" href="styles.css">
</head>
<body>
    <h2>Edit PC</h2>
    <form action="edit_pc.php" method="post">
        <input type="hidden" name="id" value="<?php echo $row['id']; ?>">

        <label>Serial No:</label>
        <input type="text" name="serial_no" value="<?php echo $row['serial_no']; ?>" required><br>

        <label>Section:</label>
        <input type="text" name="section" value="<?php echo $row['section']; ?>" required><br>

        <label>User Name:</label>
        <input type="text" name="user_name" value="<?php echo $row['user_name']; ?>" required><br>

        <label>Computer Name:</label>
        <input type="text" name="computer_name" value="<?php echo $row['computer_name']; ?>" required><br>

        <label>Monitor Brand & Size:</label>
        <input type="text" name="monitor_brand_size" value="<?php echo $row['monitor_brand_size']; ?>" required><br>

        <label>CPU Type:</label>
        <input type="text" name="cpu_type" value="<?php echo $row['cpu_type']; ?>" required><br>

        <label>CPU Brand:</label>
        <input type="text" name="cpu_brand" value="<?php echo $row['cpu_brand']; ?>" required><br>

        <label>Processor:</label>
        <input type="text" name="processor" value="<?php echo $row['processor']; ?>" required><br>

        <label>RAM (GB):</label>
        <input type="text" name="ram" value="<?php echo $row['ram']; ?>" required><br>

        <label>Hard Disk (GB):</label>
        <input type="text" name="hard_disk_gb" value="<?php echo $row['hard_disk_gb']; ?>" required><br>

        <label>Operating System:</label>
        <input type="text" name="operating_system" value="<?php echo $row['operating_system']; ?>" required><br>

        <label>System Type:</label>
        <input type="text" name="system_type" value="<?php echo $row['system_type']; ?>" required><br>

        <label>Office package:</label>
        <input type="text" name="office_package" value="<?php echo $row['office_package']; ?>" required><br>

        <label>NAV User:</label>
        <input type="text" name="nav_user_name" value="<?php echo $row['nav_user_name']; ?>" required><br>

        <label>Othre Software:</label>
        <input type="text" name="other_software" value="<?php echo $row['other_software']; ?>" required><br>

        <label>TeamViewer ID:</label>
        <input type="text" name="teamviewer_id" value="<?php echo $row['teamviewer_id']; ?>" required><br>

        <label>Service Tag:</label>
        <input type="text" name="service_tag" value="<?php echo $row['service_tag']; ?>"><br>

        <label>Date of Issue:</label>
        <input type="date" name="date_of_issue" value="<?php echo $row['date_of_issue']; ?>"><br>

        <button type="submit">Update PC</button>
    </form>
</body>
</html>
