<?php
session_start();
if (!isset($_SESSION['user_id'])) {
    header("Location: login.php");
    exit();
}

include "includes/db.php";

// Get filter values
$search = isset($_GET['search']) ? trim($_GET['search']) : '';
$start_date = isset($_GET['start_date']) ? $_GET['start_date'] : '';
$end_date = isset($_GET['end_date']) ? $_GET['end_date'] : '';

// Build SQL query with filters
$query = "
    SELECT issued_items.id, inventory.item_name, issued_items.issued_quantity, users.username, issued_items.issued_date, issued_items.issue_note
    FROM issued_items
    JOIN inventory ON issued_items.item_id = inventory.id
    JOIN users ON issued_items.issued_by = users.id
    WHERE 1=1
";

// Add search filter
if ($search) {
    $query .= " AND (inventory.item_name LIKE '%$search%' OR users.username LIKE '%$search%')";
}

// Add date filter
if ($start_date && $end_date) {
    $query .= " AND issued_items.issued_date BETWEEN '$start_date' AND '$end_date'";
}

$query .= " ORDER BY issued_items.issued_date DESC";
$result = $conn->query($query);
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Issued Items History</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 20px;
        }
        table {
            width: 100%;
            border-collapse: collapse;
            margin-top: 20px;
        }
        table, th, td {
            border: 1px solid #ddd;
            padding: 8px;
        }
        th {
            background-color: #4CAF50;
            color: white;
        }
        .filter-form {
            margin-bottom: 20px;
        }
    </style>
</head>
<body>

<h2>Issued Items History</h2>

<!-- Filter Form -->
<form method="GET" class="filter-form">
    <input type="text" name="search" placeholder="Search Item or User" value="<?php echo htmlspecialchars($search); ?>">
    <label>From: <input type="date" name="start_date" value="<?php echo $start_date; ?>"></label>
    <label>To: <input type="date" name="end_date" value="<?php echo $end_date; ?>"></label>
    <button type="submit">Filter</button>
    <a href="issued_history.php"><button type="button">Reset</button></a>
    <a href="download_issued_report.php?search=<?php echo $search; ?>&start_date=<?php echo $start_date; ?>&end_date=<?php echo $end_date; ?>">
        <button type="button">Download CSV</button>
    </a>
    <a href="download_issued_report_pdf.php?search=<?php echo $search; ?>&start_date=<?php echo $start_date; ?>&end_date=<?php echo $end_date; ?>">
        <button type="button">Download PDF</button>
    </a>
</form>

<table>
    <tr>
        <th>ID</th>
        <th>Item Name</th>
        <th>Issued Quantity</th>
        <th>Issued By</th>
        <th>Issued Date</th>
        <th>Issue Note</th>
    </tr>
    <?php while ($row = $result->fetch_assoc()) { ?>
        <tr>
            <td><?php echo $row['id']; ?></td>
            <td><?php echo htmlspecialchars($row['item_name']); ?></td>
            <td><?php echo $row['issued_quantity']; ?></td>
            <td><?php echo htmlspecialchars($row['username']); ?></td>
            <td><?php echo $row['issued_date']; ?></td>
            <td><?php echo $row['issue_note']; ?></td>
        </tr>
    <?php } ?>
</table>

<a href="dashboard.php">Back to Dashboard</a>

</body>
</html>
