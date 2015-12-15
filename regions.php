<!DOCTYPE html>
<html>
<head>
<title>Translations</title>
<link rel="stylesheet" type="text/css" href= "C:\xampp\htdocs\finalMcCabe\includes\style.css" />
</head>

<?php
session_start();

include_once 'C:\xampp\htdocs\finalMcCabe\includes\header1215.php';
require_once 'C:\xampp\htdocs\finalMcCabe\includes\login.php';
require_once 'C:\xampp\htdocs\finalMcCabe\includes\functions.php';


if (isset($_POST['submit'])) { 
	if ((empty($_POST['region']))) {
		$message = '<p class="error">Please select a region</p>';
	} else {
		$conn = new mysqli($hn, $un, $pw, $db);
		if ($conn->connect_error) die($conn->connect_error);
		$region = sanitizeMySQL($conn, $_POST['region']);
		$query = "SELECT title, language, countryDisplay FROM titles WHERE region = $region NATURAL JOIN ON countryCode";
		$result = $conn->query($query);
		if (!$result) {
			die ("Database access failed: " . $conn->error);
		} else {
			$message = "<p class=\"message\">Here are some translated reads from $region : ".$result;
			}
	}
}
?>

<html>
<head>
<title>Regions</title>
</head>
<body>

<?php 
if (isset($_POST{'submit'})){
	print "Here are some titles from ".$_GET['region']."<br>";
}
?>

<FORM method ="post" action ="regions.php">
Select a Region to Explore
<input type="radio" name="region" value = "Africa">Africa
<input type="radio" name="region" value="Asia">Asia
<input type="radio" name="region" value="Europe">Europe
<input type="radio" name="region" value="The Middle East">The Middle East
<input type="radio" name="region" value="North America">North America
<input type="radio" name="region" value="South America">South America
<input type="submit">
</FORM>

<?php 
if (isset($_POST{'region'})){
	print "Here are some titles from ".$_POST['region']."<br>";
	
}
?>

<?PHP
$hn = 'localhost';
$db = 'translated_works';
$un = 'erin';
$pw = 'mccabe';

$conn = new mysqli($hn, $un, $pw, $db);
if ($conn->connect_error) die($conn->connect_error);

function get_value($selected_radio)
 {
 $sql="SELECT title, language, pub_year, country_display 
		FROM titles NATURAL JOIN countries WHERE region = '$selected_radio'";
 $query=mysql_query($sql) or die(mysql_error());
 $result=$conn->query($query);
 return $result[result];
}

$field=$_POST['region'];
$type=$_POST['type'];
echo get_value($type,$field);
$query="SELECT title, language, pub_year, country_display 
		FROM titles NATURAL JOIN countries ORDER BY title ASC";
$result = $conn->query($query);
if (!$result) die($conn->error);

$rows = $result->num_rows;

for ($j = 0 ; $j < $rows ; ++$j) {
	$result->data_seek($j);
	$row = $result->fetch_row();
	echo $row[0]."<br>".$row[1]."<br>".$row[2]."<br>".$row[3]."<br>".$row[4]."<br>";
}
$result->close();
$conn->close();
?>



$region=$_POST['region'];
echo get_value($region);
?>


</body>
</html>



