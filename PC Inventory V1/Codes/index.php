<?php
include 'db_connect.php'; // Ensure database connection is included
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>PC Inventory</title>
    <link rel="stylesheet" href="styles.css">
    <style>
        
    </style>
</head>
<body>
    <h2>PC Inventory System</h2>
        <!-- Search Form -->
        <form method="GET" action="">
        <input type="text" id="search" name="search_query" placeholder="PC Name or Serial No or CPU Type" value="<?php echo isset($_GET['search_query']) ? htmlspecialchars($_GET['search_query']) : ''; ?>">
        <button type="submit">Search</button>
    </form>
    
 <!-- Department Filter -->
 <select id="filter" onchange="filterByDepartment()">
        <option value="">All Departments</option>
        <option value="IT">IT</option>
        <option value="Stores">Stores</option>
        <option value="Stores Lab">LAB</option>
        <option value="Planning">Planning</option>
        <option value="HR Dep">HR</option>
        <option value="Cutting">Cutting</option>
        <option value="Sample Showroom">Sample Showroom</option>
        <option value="Sample">Sample</option>
        <option value="Sewing">Sewing</option>
        <option value="EMB">EMB</option>
        <option value="Laser">Laser</option>
        <option value="Printing">Printing</option>
        <option value="Finishing">Finishing</option>
        <option value="Quality">Quality</option>
        <option value="FM Office">FM Office</option>
        <option value="Maintenance Office">Maintenance Office</option>
        <option value="AQL">AQL</option>
        <option value="Packing">Packing</option>
        <option value="Accounts">Accounts</option>
        <option value="Main Office">Main Office</option>
    </select>

    <button onclick="document.getElementById('addPcForm').style.display='block'">Add New PC</button>
    
    <div id="addPcForm" style="display:none; margin-top:20px;">
        <form action="add_pc.php" method="POST">
            <input type="text" name="serial_no" placeholder="Serial No" required>
            <input type="text" name="section" placeholder="Section" required>
            <input type="text" name="user_name" placeholder="User Name" required>
            <input type="text" name="computer_name" placeholder="Computer Name" required>
            <input type="text" name="monitor_brand_size" placeholder="Monitor Brand & Size">
            <input type="text" name="cpu_type" placeholder="CPU Type">
            <input type="text" name="cpu_brand" placeholder="CPU Brand">
            <input type="text" name="processor" placeholder="Processor">
            <input type="text" name="ram" placeholder="RAM">
            <input type="text" name="hard_disk_gb" placeholder="Hard Disk (GB)">
            <input type="text" name="operating_system" placeholder="Operating System">
            <input type="text" name="system_type" placeholder="System Type">
            <input type="text" name="office_package" placeholder="Office Package">
            <input type="text" name="nav_user_name" placeholder="NAV User Name">
            <input type="text" name="other_software" placeholder="Other Software">
            <input type="text" name="teamviewer_id" placeholder="TeamViewer ID">
            <input type="text" name="service_tag" placeholder="Service Tag">
            <input type="date" name="date_of_issue" placeholder="Date Of Issue">
            <button type="submit">Save PC</button>
        </form>
    </div>
    
    <table>
        <thead>
            <tr>
                <?php
                $sql = "SHOW COLUMNS FROM pcs";
                $result = $conn->query($sql);
                if ($result->num_rows > 0) {
                    while ($row = $result->fetch_assoc()) {
                        echo "<th>" . ucfirst(str_replace('_', ' ', $row['Field'])) . "</th>";
                    }
                    echo "<th>Actions</th>";
                }
                ?>
            </tr>
        </thead>
        <tbody id="pcTable">
        <?php
 // Get the search query if provided
 $search_query = isset($_GET['search_query']) ? trim($_GET['search_query']) : '';

 // Build the SQL query
 $search_query = isset($_GET['search_query']) ? $conn->real_escape_string($_GET['search_query']) : '';

 $sql = "SELECT * FROM pcs";
 if (!empty($search_query)) {
     $sql .= " WHERE 
         serial_no LIKE '%$search_query%' 
         OR computer_name LIKE '%$search_query%' 
         OR cpu_type LIKE '%$search_query%' 
         OR user_name LIKE '%$search_query%'"; 
 }
 
 $result = $conn->query($sql);
 
 if (!$result) {
     die("Error executing search: " . $conn->error);
 }
 // Execute the query
 $result = $conn->query($sql);
 if (!$result) {
     die("Error executing search: " . $conn->error);
 }

 // Display results
 if ($result->num_rows > 0) {
     while ($row = $result->fetch_assoc()) {
         echo "<tr>";
         foreach ($row as $key => $value) {
             echo "<td>" . htmlspecialchars($value) . "</td>";
         }
         // Check if 'id' exists before using it
         if (isset($row['id'])) {
             echo "<td><a class='action-link' href='edit_pc.php?id=" . htmlspecialchars($row['id']) . "'>Edit</a></td>";
         } else {
             echo "<td>Invalid ID</td>";
         }
         echo "</tr>";
     }
 } else {
     echo "<tr><td colspan='100%'>No records found</td></tr>";
 }
            ?>
        </tbody>
    </table>
    
    <script>
        function searchPC() {
            let input = document.getElementById("search").value.toLowerCase();
            let table = document.getElementById("pcTable");
            let rows = table.getElementsByTagName("tr");
            for (let i = 0; i < rows.length; i++) {
                let cols = rows[i].getElementsByTagName("td");
                if (cols.length > 0) {
                    let name = cols[1].textContent.toLowerCase();
                    rows[i].style.display = name.includes(input) ? "" : "none";
                }
            }
        }
        
        function filterByDepartment() {
            let filter = document.getElementById("filter").value;
            let table = document.getElementById("pcTable");
            let rows = table.getElementsByTagName("tr");
            for (let i = 0; i < rows.length; i++) {
                let cols = rows[i].getElementsByTagName("td");
                if (cols.length > 0) {
                    let department = cols[2].textContent;
                    rows[i].style.display = (filter === "" || department === filter) ? "" : "none";
                }
            }
        }
    </script>
</body>
</html>
