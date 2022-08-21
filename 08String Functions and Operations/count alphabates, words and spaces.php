<body bgcolor="pink"><center>
<font color="#0000CC">
<form method="post" action="#">
<table border = "1">
<tr><td><center> <strong><font color="#0000CC"> Enter Text </center></font></td>
</tr><tr><td><textarea name = "txt"></textarea></td></tr>

<tr><td colspan=""><center> <input type="submit" name="submit" value="Go"/></center></td></tr>

</table>
<h2><?php

if(isset($_POST["submit"]))
{
$i = $_POST["txt"];

$b = strlen($i);

$x = 0;
$y = 1;
$z = 0;

for ($a = 1; $a <= $b; $a++)
{
	$j= substr($i,$a,1);
	$k= substr($i,$a+1,1);
	if ($j != ' ')
	{
		$x += 1;
	}

	if ($j == ' ' && $k != ' ')
	{
		$y += 1;
	}
	
	if ($j == " ")
	{
		$z += 1;
	}
}
	echo "<br/>It is Strings that you write   :  ".$i;
	echo "<br/>Number of alphabets :  ".$x;
	echo "<br/>Number of spaces    :  ".$z;
	echo "<br/>Number of words     :  ".$y;
	
}
?></h2>
</strong>
</form>
</font>
</center>