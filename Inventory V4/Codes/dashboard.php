<?php
session_start();
if (!isset($_SESSION['user_id'])) {
    header("Location: index.php");
    exit();
}

$role = $_SESSION['role'];

// Generate CSRF token for form security
if (empty($_SESSION['csrf_token'])) {
    $_SESSION['csrf_token'] = bin2hex(random_bytes(32));
}
$csrf_token = $_SESSION['csrf_token'];

include "includes/db.php";
?>

<!DOCTYPE html>
<html>
<head>
    <title>Inventory Dashboard Testing</title>
    <script src="https://cdn.jsdelivr.net/npm/chart.js"></script>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color:rgba(77, 61, 218, 0.2);
            margin: 20px;
        }
        h2 {
            color: #333;
        }
        form {
            margin-bottom: 20px;
        }
        input, select, button {
            margin: 5px;
            padding: 8px;
            font-size: 14px;
        }
        .low-stock {
            color: red;
            font-weight: bold;
        }
        button {
            background-color: #4CAF50;
            color: white;
            border: none;
            cursor: pointer;
        }
        button:hover {
            background-color: #45a049;
        }
        .logout-btn {
            background-color: #f44336;
        }
        .logout-btn:hover {
            background-color: #d32f2f;
        }
        .report-btn {
        background-color: #008CBA;
        color: white;
        border: none;
        padding: 10px;
        font-size: 14px;
        cursor: pointer;
        margin-top: 10px;
    }
    .report-btn:hover {
        background-color: #005f73;
    }


    </style>
</head>
<body>

<h2>Inventory Chart</h2>
<canvas id="inventoryChart"></canvas>

<!-- Low Stock Items Section for Both Admin and Users -->
<h2>Low Stock Items</h2>
<ul id="lowStockList">
    <!-- Items will be dynamically loaded here -->
</ul>
<a href="download_issued_report.php" target="_itself">
    <button class="report-btn">Download Issue Report</button>
</a>
<a href="issued_history.php" target="_itself">
    <button class="report-btn">Issued History</button>
</a>
    <br>

<?php if ($role === 'admin') { ?>
    <h2>Add New Item</h2>
    <form id="addItemForm">
        <input type="hidden" name="csrf_token" value="<?php echo $csrf_token; ?>">
        <input type="text" name="item_name" required placeholder="Item Name" minlength="2" maxlength="50">
        <input type="number" name="quantity" required placeholder="Quantity" min="1">
        <button type="submit">Add Item</button>
    </form>

    <h2>Issue Items</h2>
<form id="issueForm">
    <input type="hidden" name="csrf_token" value="<?php echo $csrf_token; ?>">
    <select name="item_id" id="item_id" required>
        <option value="">Select Item</option>
    </select>
    <input type="number" name="issued_quantity" required placeholder="Quantity" min="1">
    <input type="text" name="issue_note" placeholder="Note (Optional)" maxlength="255">
    <button type="submit">Issue</button>
</form>


<?php } ?>

<script>
fetch('fetch_items.php')
    .then(response => response.json())
    .then(data => {
        let items = data.items;
        let lowStockItems = data.low_stock;

        // Load Chart Data
        let itemNames = items.map(item => item.item_name);
        let itemQuantities = items.map(item => item.quantity);

        let ctx = document.getElementById('inventoryChart').getContext('2d');
        new Chart(ctx, {
            type: 'bar',
            data: {
                labels: itemNames,
                datasets: [{
                    label: 'Item Quantities',
                    data: itemQuantities,
                    backgroundColor: itemQuantities.map(qty => qty < 5 ? 'red' : 'green'),
                    borderWidth: 1
                }]
            }
        });

        // Display Low Stock Items
        let lowStockList = document.getElementById('lowStockList');
        lowStockList.innerHTML = "";
        lowStockItems.forEach(item => {
            let listItem = document.createElement('li');
            listItem.className = "low-stock";
            listItem.textContent = `${item.item_name} - ${item.quantity} left`;
            lowStockList.appendChild(listItem);
        });

        // Load Items for Issuing (Only for Admin)
        <?php if ($role === 'admin') { ?>
        let itemSelect = document.getElementById('item_id');
        items.forEach(item => {
            let option = document.createElement('option');
            option.value = item.id;
            option.textContent = item.item_name;
            itemSelect.appendChild(option);
        });
        <?php } ?>
    })
    .catch(error => {
        console.error('Error:', error);
        alert('Failed to load data. Please try again.');
    });

// Handle New Item Submission (Only for Admin)
<?php if ($role === 'admin') { ?>
document.getElementById('addItemForm').addEventListener('submit', function(e) {
    e.preventDefault();

    let formData = new FormData(this);

    fetch('add_item.php', {
        method: 'POST',
        body: formData
    })
    .then(response => response.text())
    .then(data => {
        alert(data);
        location.reload(); // Refresh to update inventory and low stock list
    })
    .catch(error => {
        console.error('Error:', error);
        alert('Failed to add item. Please try again.');
    });
});

// Handle Issue Item Submission
document.getElementById('issueForm').addEventListener('submit', function(e) {
    e.preventDefault();

    let formData = new FormData(this);

    fetch('issue_item.php', {
        method: 'POST',
        body: formData
    })
    .then(response => response.text())
    .then(data => {
        alert(data);
        location.reload(); // Refresh to update inventory
    })
    .catch(error => {
        console.error('Error:', error);
        alert('Failed to issue item. Please try again.');
    });
});
<?php } ?>
</script>

<a href="logout.php">
    <button class="logout-btn">Logout</button>
</a>

</body>
</html>
