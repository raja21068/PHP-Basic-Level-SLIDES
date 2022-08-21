<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Untitled Document</title>
</head>
<center>
<h1>write any Text in textarea and find any character for replacement </h1>

<body bgcolor="#FF00FF">

<form method="post" action="#">

  

<table width="500" border="3" cellspacing="2" cellpadding="2">
  <tr>
    <td>Find<input type="text" name="text1" id="text1" /></td>
    <td>Replace<input type="text" name="text2" id="text2" /></td>
  </tr>
  <tr>
    <td colspan="2"><textarea name="textarea" id="textarea" cols="45" rows="5"></textarea></td>
  </tr>
  <tr>
    <td colspan="2"><input type="submit" name="button" id="button" value="Go" /></td>
    </tr>
</table>
</form>



</body>

</html>


<?php
if($_POST){
	
	echo "Input text==".$_POST['textarea']."<br><br>";
	
	 $d=$_POST["textarea"];
	 $b=$_POST["text1"];
	 $f=$_POST["text2"];
	 $e=strlen($d);
	 
	 			for($a=0; $a<=$e; $a++){
					
					$c=substr($d,$a,1);
					if($c==$b){
						
						$c=$f;
						
						
						
						
						
						
						}
						
						echo $c;
					
					
					}	
	
	
	
	
	}




?>



</center>