<?php
	session_start();
	if( isset( $_POST[ 'submit' ] ) ){
		$username = $_POST[ 'username' ];
		$password = $_POST[ 'password' ];
		
		if( $username == "hidaya" && $password == "123" ){
			$_SESSION[ 'login' ] = 1;
			header( 'Location:welcome.php' );	
		}else{
			$_SESSION[ "error" ] = 1;
			header( 'Location:index.php' );	
		}
	
		
	}

?>