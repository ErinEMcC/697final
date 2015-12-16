<?PHP
session_start();
include_once 'includes/header.php';
require_once 'includes/login.php';

$conn = new mysqli($hn, $un, $pw, $db);
if ($conn->connect_error) die($conn->connect_error);


$query="SELECT title, 
	pub_year 
	FROM titles 
	WHERE pub_year = YEAR(CURRENT_TIMESTAMP)
	NATURAL JOIN countries"; 
$result = $conn->query($query);
if (!$result) die("Access Failed:".$conn->error);

$rows = $result->num_rows;


$result->close();
$conn->close();
?>