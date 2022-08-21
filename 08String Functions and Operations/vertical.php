<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Untitled Document</title>
</head>
<center>

<body bgcolor="#FF00FF">

<form method="post" action="#">

  <input type="text" name="text" id="textfield" />
  <input type="submit" name="submit" id="submit" value="Go" />
</form>



</body>

</html>


<?php
if($_POST){
	
	
	$a=$_POST['text'];
		
		for($i=0; $i<strlen($a); $i++){
			
			echo substr($a, $i, 1);
			
				echo "<br>";
			
			}
	
	
	}



?>
</center>