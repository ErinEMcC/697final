<?php
session_start();
include_once 'includes/header1215.php';
?>

<script type='text/javascript' src='https://public.tableau.com/javascripts/api/viz_v1.js'></script><div class='tableauPlaceholder' style='width: 982px; height: 742px;'><noscript><a href='#'><img alt='Translated Works from Around the World ' src='https:&#47;&#47;public.tableau.com&#47;static&#47;images&#47;Tr&#47;Translations_homepage2&#47;Sheet1&#47;1_rss.png' style='border: none' /></a></noscript><object class='tableauViz' width='982' height='742' style='display:none;'><param name='host_url' value='https%3A%2F%2Fpublic.tableau.com%2F' /> <param name='site_root' value='' /><param name='name' value='Translations_homepage2&#47;Sheet1' /><param name='tabs' value='no' /><param name='toolbar' value='yes' /><param name='static_image' value='https:&#47;&#47;public.tableau.com&#47;static&#47;images&#47;Tr&#47;Translations_homepage2&#47;Sheet1&#47;1.png' /> <param name='animate_transition' value='yes' /><param name='display_static_image' value='yes' /><param name='display_spinner' value='yes' /><param name='display_overlay' value='yes' /><param name='display_count' value='yes' /><param name='showVizHome' value='no' /><param name='showTabs' value='y' /><param name='bootstrapWhenNotified' value='true' /></object></div>

<?php

require_once 'includes/login.php';

$conn = new mysqli($hn, $un, $pw, $db);
if ($conn->connect_error) die($conn->connect_error);

$query = "SELECT titles.title, 
	titles.language, 
	countries.countryDisplay, 
	titles.pub_year
	FROM titles
	INNER JOIN countries
	ON titles.countryCode = countries.countryCode
	ORDER BY title ASC";
	
$result = $conn->query($query);

if (!$result) die ("Database access failed: " . $conn->error);

if ($result->num_rows>0){
	echo "<table><tr><th>Title</th><th>Language</th><th>Country</th><th>Year Published</th></tr>";
	
	while ($row = $result->fetch_assoc()) {
		echo "<tr><td>".$row["title"]."</td><td>".$row["language"]."</td><td>".$row["countryDisplay"]."</td><td>".$row["pub_year"]."</td></tr>";
}
		echo "</table>";

}		
	else {
	echo "0 Titles Availble";
}

$conn->close();
	
include_once 'includes/footer.php';
?>



