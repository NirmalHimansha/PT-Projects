<?php
session_start();
if (!isset($_SESSION['user_id'])) {
    header("Location: login.php");
    exit();
}

require('fpdf/fpdf.php'); 
include "includes/db.php";

// Get filter values
$search = isset($_GET['search']) ? trim($_GET['search']) : '';
$start_date = isset($_GET['start_date']) ? $_GET['start_date'] : '';
$end_date = isset($_GET['end_date']) ? $_GET['end_date'] : '';

// Build SQL query with filters
$query = "
    SELECT issued_items.id, inventory.item_name, issued_items.issued_quantity, users.username, issued_items.issued_date
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

// Create PDF
$pdf = new FPDF();
$pdf->AddPage();
$pdf->SetFont('Arial', 'B', 16);
$pdf->Cell(190, 10, 'Issued Items Report', 1, 1, 'C');
$pdf->Ln(10);

// Table Header
$pdf->SetFont('Arial', 'B', 12);
$pdf->Cell(20, 10, 'ID', 1);
$pdf->Cell(60, 10, 'Item Name', 1);
$pdf->Cell(30, 10, 'Quantity', 1);
$pdf->Cell(40, 10, 'Issued By', 1);
$pdf->Cell(40, 10, 'Issued Date', 1);
$pdf->Ln();

// Table Data
$pdf->SetFont('Arial', '', 12);
while ($row = $result->fetch_assoc()) {
    $pdf->Cell(20, 10, $row['id'], 1);
    $pdf->Cell(60, 10, $row['item_name'], 1);
    $pdf->Cell(30, 10, $row['issued_quantity'], 1);
    $pdf->Cell(40, 10, $row['username'], 1);
    $pdf->Cell(40, 10, $row['issued_date'], 1);
    $pdf->Ln();
}

// Output PDF
$pdf->Output('D', 'Issued_Items_Report.pdf');
exit();
?>
