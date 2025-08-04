<?php
include "includes/db.php";

$query = "SELECT id, item_name, quantity FROM inventory";
$result = $conn->query($query);

$items = [];
$low_stock_items = [];

while ($row = $result->fetch_assoc()) {
    $items[] = $row;
    if ($row['quantity'] < 5) {  // Low stock threshold
        $low_stock_items[] = $row;
    }
}

echo json_encode([
    'items' => $items,
    'low_stock' => $low_stock_items
]);
?>
