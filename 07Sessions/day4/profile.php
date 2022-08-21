<?php
session_start();

if( isset( $_SESSION[ 'login' ] )  ){
echo "Profile";	
}else{
	header( 'Location:index.php' );
}