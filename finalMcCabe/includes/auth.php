<?php

if (!isset($_SESSION['fname']) || !isset($_SESSION['lname']) ) {
	# Set a session variable with the current file so we know 
	# where to return to after login
	$_SESSION['goto'] = basename($_SERVER['PHP_SELF']);
	if (isset($_SERVER['QUERY_STRING'])) {
		$_SESSION['goto'] .= '?'.$_SERVER['QUERY_STRING'];	
	}
	header("Location: sign_in.php");
}
?>