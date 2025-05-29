<?php
$conn = new mysqli("localhost", "root", "", "crm_dashboard");
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}
?>
