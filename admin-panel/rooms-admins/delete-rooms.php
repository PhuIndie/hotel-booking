<?php 
    require "../../config/config.php";
    if(isset($_GET['id'])) {
        $id = $_GET['id'];
        $getImage = $conn->query("SELECT * FROM rooms WHERE id='$id'");
        $fetch = $getImage->fetch(PDO::FETCH_OBJ);
?>

<!DOCTYPE html>
<html>
<head>
    <title>Delete Confirmation</title>
    <script>
        function confirmDelete() {
            var result = confirm("Are you sure you want to delete this item?");
            if (result) {
                window.location.href = "delete.php?id=<?php echo $id; ?>";
            }
        }
    </script>
</head>
<body>
    <button onclick="confirmDelete()">Delete</button>
    <a href="show-rooms.php">Cancel</a>
</body>
</html>

<?php 
    } // End of isset($_GET['id'])
?>
