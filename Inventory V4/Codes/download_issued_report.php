<?php
session_start();
if (!isset($_SESSION['user_id'])) {
    header("Location: login.php");
    die("Unauthorized access.");
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

if ($search) {
    $query .= " AND (inventory.item_name LIKE '%$search%' OR users.username LIKE '%$search%')";
}

if ($start_date && $end_date) {
    $query .= " AND issued_items.issued_date BETWEEN '$start_date' AND '$end_date'";
}

$query .= " ORDER BY issued_items.issued_date DESC";
$result = $conn->query($query);

// Generate CSV file
header('Content-Type: text/csv');
header('Content-Disposition: attachment; filename="issued_items_report_PT.csv"');

$output = fopen('php://output', 'w');
fputcsv($output, ['ID', 'Item Name', 'Issued Quantity', 'Issued By', 'Issued Date', 'Issue Note']);

while ($row = $result->fetch_assoc()) {
    fputcsv($output, $row);
}

fclose($output);
exit();
?>
