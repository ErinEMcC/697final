<!DOCTYPE html>
<html>
<head>
<title>Translations</title>
<link rel="stylesheet" type="text/css" href= "C:\xampp\htdocs\finalMcCabe\includes\style.css" />
</head>

<body>
<header>
	<a href="C:\xampp\htdocs\finalMcCabe\index.php"><img src="C:\xampp\htdocs\finalMcCabe\images\houseSparrow.gif"</a>
></a>

<?php
	if (isset($_SESSION['fname']) && isset($_SESSION['lname']) ) {
		echo "<h3>Welcome, ".$_SESSION['fname']." ".$_SESSION['lname'];
		echo " | <small><a href=\"C:\xampp\htdocs\finalMcCabe\includes\sign_out.php\">Logout</a></small></h3>";
	}
	?>
</header>
<div id="body">
