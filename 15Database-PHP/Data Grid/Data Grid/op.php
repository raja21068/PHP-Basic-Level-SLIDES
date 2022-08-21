<?php

include('db_connect.php');

if(isset($_GET['up_id'])){
	$id=$_GET['up_id'];
	$s=mysql_query("select * from student where id=$id LIMIT 1 ") or die(mysql_error());
	$result=mysql_fetch_array($s,MYSQL_NUM);
	?>
    <form method="post" action="<?php PHP_SELF ?>">
    Name<input type="text" name="fname" value="<?php echo $result[1]?>"  />
    <input type="hidden" name="id" value="<?php echo $id?>"  />
    <br />
    <input type="submit" value="update" name="update"  />
    </form>
    <?php
	
}


if(isset($_GET['del_id'])){
	$id=$_GET['del_id'];
	$q=mysql_query("delete from student where id=$id") or die('unable to delete');	
	if($q){
		header('location:grid.php');
		
	}
}

if(isset($_POST['update'])){
	
	$id=$_POST['id'];
	$name=$_POST['fname'];
	
	$q=mysql_query("update student set name='".$name."' where id='".$id."'") or die(mysql_error());
	if($q){
		header('location:grid.php');
		
	}
}

?>