<?php
session_start();
if (!isset($_SESSION['user_id'])) {
    die("Unauthorized access.");
}

require('includes/fpdf/fpdf.php');
include "includes/db.php";

// Create PDF
$pdf = new FPDF();
$pdf->AddPage();
$pdf->SetFont('Arial', 'B', 16);
$pdf->Cell(190, 10, 'Issued Items Report', 1, 1, 'C');
$pdf->Ln(10);

// Table Header
$pdf->SetFont('Arial', 'B', 12);
$pdf->Cell(40, 10, 'Item Name', 1);
$pdf->Cell(30, 10, 'Quantity', 1);
$pdf->Cell(40, 10, 'Issued By', 1);
$pdf->Cell(40, 10, 'Issued Date', 1);
$pdf->Ln();

// Fetch Data from Database
$query = "SELECT issued_items.quantity, issued_items.issued_date, 
                 inventory.item_name, users.username 
          FROM issued_items
          JOIN inventory ON issued_items.item_id = inventory.id
          JOIN users ON issued_items.issued_by = users.id
          ORDER BY issued_items.issued_date DESC";

$result = $conn->query($query);

$pdf->SetFont('Arial', '', 12);
while ($row = $result->fetch_assoc()) {
    $pdf->Cell(40, 10, $row['item_name'], 1);
    $pdf->Cell(30, 10, $row['quantity'], 1);
    $pdf->Cell(40, 10, $row['username'], 1);
    $pdf->Cell(40, 10, $row['issued_date'], 1);
    $pdf->Ln();
}

// Output PDF
$pdf->Output();
?>
