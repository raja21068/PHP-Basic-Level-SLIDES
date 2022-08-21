<?php

include('db_connect.php');

$q=mysql_query('select * from student') or die('query error');
?>
<table border=1>
<thead>
<tr>
	<td>ID</td>	<td>Name</td>	<td>Operations</td>
</tr>

</thead>
<tbody>
<?php
while($row=mysql_fetch_array($q)){
?>
    <tr>
        <td><?php echo $row[0]?></td>
        <td><?php echo $row[1]?></td>
        <td>
        <a href="op.php?up_id=<?php echo $row[0] ?>">Update</a>&nbsp;|&nbsp;
        <a href="op.php?del_id=<?php echo $row[0] ?>">Delete</a>
        </td>
    </tr>
<?php

}

?>
</tbody>
</table>