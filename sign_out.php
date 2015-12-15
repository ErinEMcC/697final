<?php
session_start();
$_SESSION = array();
session_destroy();
include_once 'C:\xampp\htdocs\finalMcCabe\includes\header1215.php';
echo "<p>Goodbye!</p>";
echo "<p><a href=\"index.php\">Return Home</a></p>";
include_once 'C:\xampp\htdocs\finalMcCabe\includes\footer.php';
?>
