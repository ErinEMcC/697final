<?php
session_start();
include_once 'includes/header1215.php';
?>	

<FORM method ="post" action ="regions.php">
<h3>Pick a Region to Explore</h3><br>
<input type="radio" name="region" value = "Africa">Africa
<input type="radio" name="region" value="Asia">Asia
<input type="radio" name="region" value="Europe">Europe
<input type="radio" name="region" value="the Middle East">Middle East
<input type="radio" name="region" value="North America">North America
<input type="radio" name="region" value="South America">South America
<input type="submit" name="submit" value="Submit">
</FORM>

<?php
require_once 'includes/login.php';

if (isset($_POST['submit'])) { 
	if (empty($_POST['region'])){
		$message = "<p class = 'error'>Select a Region</p>";
		} 
		else {
			$conn = new mysqli($hn, $un, $pw, $db);
			if ($conn->connect_error) die($conn->connect_error);
			$region = $_POST['region'];
			$query ="SELECT titles.title, 
			titles.language, 
			titles.pub_year,
			countries.countryDisplay
			FROM titles 
			INNER JOIN countries
			ON titles.countryCode = countries.countryCode
			WHERE countries.region = '$region'";
			
			$result = $conn->query($query);
		}
		if (!$result){
			die ("Database access failed: " . $conn->error);
		}
		if ($result->num_rows>0){
			echo "<table><tr><th>Title</th><th>Country</th><th>Language</th><th>Year Published</th></tr>";
			while ($row = $result->fetch_assoc()) {
				echo "<tr><td>".$row["title"]."</td><td>".$row["countryDisplay"]."</td><td>".$row["language"]."</td><td>".$row["pub_year"]."</td></tr>";}
			echo "</table>";
		}
	else {
	echo "No Titles Available";
	}
}
$conn->close();

if (isset($message)) echo $message;
?>

<?php
include_once 'includes/footer.php';
?>