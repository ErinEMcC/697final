<?PHP
$hn = 'localhost';
$db = 'translated_works';
$un = 'erin';
$pw = 'mccabe';

$conn = new mysqli($hn, $un, $pw, $db);
if ($conn->connect_error) die($conn->connect_error);

$query="SELECT title, pub_year FROM titles NATURAL JOIN countryCode";
$result = $conn->query($query);
if (!$result) die("Access Failed:".$conn->error);

$rows = $result->num_rows;


$result->close();
$conn->close();
?>