<?php
session_start();

if( isset( $_SESSION[ 'login' ] )  ){
echo "WELCOME";	
}else{
	header( 'Location:index.php' );
}



?><br/>
<a href="profile.php">Profile</a>
<br/>
<a href="logout.php">logout</a>