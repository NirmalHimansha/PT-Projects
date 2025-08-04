<?php
session_start();
if (!isset($_SESSION['user_id']) || $_SESSION['role'] !== 'admin') {
    die("Unauthorized access.");
}

include "includes/db.php";

if ($_SERVER['REQUEST_METHOD'] === 'POST') {
    $item_id = $_POST['item_id'];
    $issued_quantity = $_POST['issued_quantity'];
    $issue_note = isset($_POST['issue_note']) ? trim($_POST['issue_note']) : null;
    $issued_by = $_SESSION['user_id']; // Get logged-in user ID

    // Start transaction
    $conn->begin_transaction();

    try {
        // Step 1: Update inventory quantity
        $update_query = "UPDATE inventory SET quantity = quantity - ? WHERE id = ? AND quantity >= ?";
        $update_stmt = $conn->prepare($update_query);
        $update_stmt->bind_param("iii", $issued_quantity, $item_id, $issued_quantity);

        if (!$update_stmt->execute()) {
            throw new Exception("Error updating inventory.");
        }

        // Step 2: Insert into issued_items table
        $insert_query = "INSERT INTO issued_items (item_id, issued_quantity, issued_by, issue_note, issued_date) VALUES (?, ?, ?, ?, NOW())";
        $insert_stmt = $conn->prepare($insert_query);
        $insert_stmt->bind_param("iiis", $item_id, $issued_quantity, $issued_by, $issue_note);

        if (!$insert_stmt->execute()) {
            throw new Exception("Error inserting issued item record.");
        }

        // Commit transaction
        $conn->commit();
        echo "Item issued successfully!";
    } catch (Exception $e) {
        $conn->rollback(); // Rollback on error
        echo "Error: " . $e->getMessage();
    }
}
?>
