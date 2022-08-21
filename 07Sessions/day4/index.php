<?php session_start();?>

<html>
	<head/>
	
    <body><center>
    	<form action="process.php" method="post">
        	<table>
            	<?php if( isset( $_SESSION[ 'error' ] ) ){ ?>
            	<tr>
                	<td colspan="2">
                    	Username and password may be incorrect.
                    </td>
                   
                </tr>
                <?php }?>
                <?php if( isset( $_GET[ 'action' ] )  && $_GET[ 'action' ] == "logout" ){ ?>
            	<tr>
                	<td colspan="2">
                    	Logout Successfully.
                    </td>
                   
                </tr>
                <?php }?>
            	<tr>
                	<td>Username:</td>
                    <td><input type="text" name="username"></td>
                </tr>
                <tr>
                	<td>Password:</td>
                    <td><input type="password" name="password"></td>
                </tr>
                <tr>
                	<td>&nbsp;</td>
                    <td><input type="submit" name="submit" value="Login"></td>
                </tr>
            </table>
        </form>
        </center>
    </body>
</html>