<?php
include "connect.php"; 

$r;$s;$count=0;
$q2 = mysqli_query($db,"select * from map");

while($row = mysqli_fetch_array($q2)){
	$r = $row['ucode'];
	$s = $row['seat'];
$q1 = mysqli_query($db,"select * from th_mks where ucode=$r");
while ($row2 = mysqli_fetch_array($q1)) { 
	$q3 = mysqli_query($db,"update th_mks set seat = $s where ucode=$r");
	$count++;
}
}
?>
<!DOCTYPE html>
<html>
<head>
	<title></title>
</head>
<body>

<?php 
	if($count>0){

		?><h2><center><?php echo "Mapped successfully"; ?></center></h2>
	
<center>
<table border="1" cellpadding="20px;" style="border-collapse: collapse;width: 100%;">
	<tr>
		<th>Department</th>
		<th>Semester</th>
		<th>Course Code</th>
		<th>Unique Code</th>
		<th>Marks</th>
		<th>Seat Number</th>
	</tr>
	<h1>
	<center>
</center></h1><?php
$sql  = mysqli_query($db,"select * from th_mks");
while ($row = mysqli_fetch_array($sql)) {
	?>
<tr>
	<td><?php echo $row['dept']; ?></td>
	<td><?php echo $row['sem']; ?></td>
	<td><?php echo $row['ccode']; ?></td>
	<td><?php echo $row['ucode']; ?></td>
	<td><?php echo $row['marks']; ?></td>
	<td><?php echo $row['seat']; ?></td>
</tr>
	<?php
}
?>
</table></center>
<?php 
}
else{
	echo "something went wrong";
}
	?>
</body>
</html>










































































































































































<!-- @Rohit Patil -->