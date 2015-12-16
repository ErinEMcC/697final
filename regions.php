<?php
session_start();
include_once 'includes/header1215.php';
?>	

<FORM method ="post" action ="regions.php">
<h3>Select a Region to Explore</h3><br>
<input type="radio" name="region" value = "Africa">Africa
<input type="radio" name="region" value="Asia">Asia
<input type="radio" name="region" value="Europe">Europe
<input type="radio" name="region" value="Middle East">Middle East
<input type="radio" name="region" value="North America">North America
<input type="radio" name="region" value="South America">South America
<input type="submit">
</FORM>

<?php
if (isset($_POST['region'])) $region = $_POST['region'];
echo "<h3>Here are some titles from ".$region .":</h3><br>";
?>

<?php

require_once 'includes/login.php';

$conn = new mysqli($hn, $un, $pw, $db);
if ($conn->connect_error) die($conn->connect_error);

$query ="SELECT titles.title, 
	titles.language, 
	countries.countryDisplay 
	FROM titles 
	INNER JOIN countries
	ON titles.countryCode = countries.countryCode
	WHERE countries.region = ".$region;

$result = $conn->query($query);
	
	if (!$result) die ("Database access failed: " . $conn->error);

	if ($result->num_rows>0){
		echo "<table><tr><th>Title</th><th>Country</th><th>Language</th><th>Year Published</th></tr>";
	
		while ($row = $result->fetch_assoc()) {
			echo "<tr><td>".$row["title"]."</td><td>".$row["countryDisplay"]."</td><td>".$row["language"]."</td><td>".$row["pub_year"]."</td></tr>";
}
		echo "</table>";

}		
	else {
	echo "0 Titles Available";
}

$conn->close();


	
	
include_once 'includes/footer.php';
?>