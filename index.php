<script type='text/javascript' src='https://public.tableau.com/javascripts/api/viz_v1.js'></script><div class='tableauPlaceholder' style='width: 982px; height: 742px;'><noscript><a href='#'><img alt='Translated Works from Around the World ' src='https:&#47;&#47;public.tableau.com&#47;static&#47;images&#47;Tr&#47;Translations_homepage&#47;Sheet1&#47;1_rss.png' style='border: none' /></a></noscript><object class='tableauViz' width='982' height='742' style='display:none;'><param name='host_url' value='https%3A%2F%2Fpublic.tableau.com%2F' /> <param name='site_root' value='' /><param name='name' value='Translations_homepage&#47;Sheet1' /><param name='tabs' value='no' /><param name='toolbar' value='yes' /><param name='static_image' value='https:&#47;&#47;public.tableau.com&#47;static&#47;images&#47;Tr&#47;Translations_homepage&#47;Sheet1&#47;1.png' /> <param name='animate_transition' value='yes' /><param name='display_static_image' value='yes' /><param name='display_spinner' value='yes' /><param name='display_overlay' value='yes' /><param name='display_count' value='yes' /><param name='showVizHome' value='no' /><param name='showTabs' value='y' /><param name='bootstrapWhenNotified' value='true' /></object></div>

<?php
session_start();

include_once 'C:\xampp\htdocs\finalMcCabe\includes\header1215.php';
require_once 'C:\xampp\htdocs\finalMcCabe\includes\login.php';
require_once 'C:\xampp\htdocs\finalMcCabe\includes\auth.php';




$conn = new mysqli($hn, $un, $pw, $db);
if ($conn->connect_error) die($conn->connect_error);

$query = "SELECT title, author, pub_year 
		FROM titles NATURAL JOIN authors";

$result = $conn->query($query);

if (!$result) die ("Database access failed: " . $conn->error);

$rows = $result->num_rows;

echo "<table><tr><th>Title</th><th>Author</th><th>Year Published</th></tr>";
while ($row = $result->fetch_assoc()) {
	echo '<tr>';
	echo "<td>".$row["title"]."</td><td>".$row["author"]."</td><td>".$row["pub_year"]."</td>";		
	echo '</tr>';
}

echo "</table>";
echo "<a href=\"C:\xampp\htdocs\finalMcCabe\regions.php\">Explore Titles by Region</a>";

include_once 'C:\xampp\htdocs\finalMcCabe\includes\footer.php';
?>



