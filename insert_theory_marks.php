<?php
	include "connect.php";
	session_start();

  $unique_code = $_SESSION['unique_code'];
  $sub_code = $_SESSION['sub_code'];
  $sem = $_SESSION['sem'];
  $pattern = $_SESSION['pattern'];
  $branch = $_SESSION['branch'];
  // $_SESSION['seatno']

  $query_subject = mysqli_query($db,"select * from dummy_course_table_rev where sub_code='$sub_code' and sem='$sem'") ;

  $query_unique_code = mysqli_query($db,"select * from link_dummy_theory_marks where sub_code='$sub_code' and unique_code='$unique_code'") ;

  $fetch = mysqli_fetch_array($query_unique_code);
  $seat_no = $fetch['seat_no'];

  $query_course = mysqli_query($db,"select * from student_final_marksheet where sem='$sem' and pattern='$pattern' and branch='$branch' and seat='$seat_no'");

//$query_student = mysqli_query($db,"select * from student_final_marksheet where seat='$s' and branch='$b'") ;

$query_marks = mysqli_query($db,"select * from final where subcode='$sub_code'") ;
?>

<!DOCTYPE html>
<html>
<head>
	<title>Theory Marks Entry</title>

	<script>
		function validateform(){
		
			ese = document.myform.ese.value;

			if (ese==null || ese==""){  
			  alert("ese must not be blank");  
			  return false;  
			}
}
	</script>

</head>
<body>
	<?php
	$row = mysqli_fetch_array($query_subject);

	?>

	<div style="margin:3% 3%;">
		<pre>
			Subject Name:<?php echo $row['subject'];?><br>
			Subject Code:<?php echo $row['Sub_code'];?>
		</pre>
	</div>
	
	 
     
    
	<table class="table" width="698"cellspacing="0"cellpadding="5" border="01" ">
            
            <tbody>
     
      <tr>
      <td rowspan="3" width="300">Roll_No</td>
      <td rowspan="3" width="300">Name</td>
      <td colspan="7">Grade</td>
    </tr>
    <tr>
      
      <td width="10" rowspan="2">ESE</td>
      <td width="10" rowspan="2">OP</td>
      <td width="23" rowspan="2">OR</td>
      <td width="18" rowspan="2">IA</td>
      <td width="24" rowspan="2">TW</td>
      <td colspan="2">Overall</td>
    </tr>
    <tr>
      <td colspan="1">ESE</td>
      <td colspan="1">TW</td>
    </tr> 
    <form name="myform" method="POST" onsubmit="return validateform()">
      <?php
    	while($course_row = mysqli_fetch_array($query_course)){

      ?>

    
    <tr>
    <td><?php echo $course_row['Roll_no'];?></td>
    <td><?php echo $course_row['full_name']; ?></td>
    <td><input type="text" name="ese" id="ese" size="02"></td>
    <td><input type="text" name="op" size="02"></td>
    <td><input type="text" name="oral" size="02"></td>
    <td><input type="text" name="ia" size="02"></td>
    <td><input type="text" name="tw" size="02"></td>
    <td><input type="text" name="overall_ese" size="02"></td>
    <td><input type="text" name="overall_tw" size="02"></td>
    </tr>

    
   <?php 
 }
   ?>
    
  </tbody>
</table>
<input type="submit" name="submit" value="submit">
</form>



<?php
// echo $branch;


if(isset($_POST['submit'])){

	$ESE = $_POST['ese'];
	$OP = $_POST['op'];
    $ORAL = $_POST['oral'];
    $IA = $_POST['ia'];
    $TW = $_POST['tw'];
    $OVERALL_ESE = $_POST['overall_ese'];
    $OVERALL_TW = $_POST['overall_tw']; 

	// $query ="INSERT INTO dummy_thoery_marks(branch,sem,seat_no,unique_code,sub_code,th_marks) VALUES (?,?,?,?,?,?)";

	// $statement= mysli_prepare($query);

	$query="INSERT INTO dummy_theory_marks (branch,sem,seat_no,unique_code,sub_code,th_marks) VALUES ('$branch','$sem','$seat_no','$unique_code','$sub_code','$ESE')";
	// $statement->bind_param('ssssss','$branch','$sem','$seat_no','$unique_code','$sub_code',$_POST['ese']);

	// $statement->execute();
    
	if(!mysqli_query($db,$query))
	{
		echo "failed";
	}
	else
	{
		echo "success";
	}
  
  }

?> 


</body>
</html>


<!-- // $_SESSION['unique_code']=$_POST['unique_code'];
  // $_SESSION['sub_code']=$_POST['sub_code'];
  // $_SESSION['sem'] = $_POST['sem'];
  // $_SESSION['pattern'] = $_POST['pattern'];
  // $_SESSION['branch']= $_POST['branch'];
  // $_SESSION['seatno'] = $_POST['seatno'];
  //header("Location: insert_theory_marks.php"); -->