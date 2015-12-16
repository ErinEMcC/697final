<?php
session_start();

include_once 'C:\xampp\htdocs\finalMcCabe\includes\header1215.php';
require_once 'C:\xampp\htdocs\finalMcCabe\includes\login.php';
require_once 'C:\xampp\htdocs\finalMcCabe\includes\functions.php';


if (isset($_POST['submit'])) { 
	if ( empty($_POST['username']) || empty($_POST['password']) ) {
		$message = '<p class="error">Please fill out ALL of the form fields</p>';
	} else {
		$conn = new mysqli($hn, $un, $pw, $db);
		if ($conn->connect_error) die($conn->connect_error);
		$username = sanitizeMySQL($conn, $_POST['username']);
		$password = sanitizeMySQL($conn, $_POST['password']);			
		$salt1 = "qm&h*";  
		$salt2 = "pg!@";  
		$password = hash('ripemd128', $salt1.$password.$salt2);
		$query  = "SELECT f_name FROM readers WHERE username='$username' AND password='$password'";
		$result = $conn->query($query);    
		if (!$result) die($conn->error); 
		$rows = $result->num_rows;
		if ($rows==1) {
			$row = $result->fetch_assoc();
			$_SESSION['f_name'] = $row['f_name'];
			$goto = empty($_SESSION['goto']) ? '/titles/' : $_SESSION['goto'];			
			header('Location: ' . $goto);
			exit;			
		} else {
			$message = '<p class="error">Invalid username/password combination!</p>';
		}
	}
}
?>

<?php 
if (isset($message)) echo $message;
?>

<fieldset style="width:30%"><legend>Log-in</legend>
<form method="POST" action="sign_in.php">
Username:<br><input type="text" name="username" size="40"><br>
Password:<br><input type="password" name="password" size="40"><br>
<input type="submit" name="submit" value="Log-In">
</form>
</fieldset>

<?php include_once 'C:\xampp\htdocs\finalMcCabe\includes\footer.php'; ?>