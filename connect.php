<?php
$servername = "localhost";
$username = "root";
$password = "";
$dbname="sdg_rait_exam_s_w";
// Create connection
$db = new mysqli($servername, $username, $password,$dbname);
// Check connection
if ($db->connect_error) {
    // echo 'hebed';
    die("Connection failed: " . $db->connect_error);
}
?>
