<?php
//ob_start();
session_start();
include "connect.php";
include 'main.php';

?>

<!DOCTYPE html>
<html>
<head>
<script>
function validateform(){  
var rollno=document.myform.rollno.value;  
var seatno=document.myform.seatno.value; 
var pattern=document.myform.pattern.value;  
var branch=document.myform.branch.value;  
var sem=document.myform.sem.value;  


//var password=document.myform.password.value;  
  
if (branch==null || branch==""){  
  alert("Branch must not be blank");  
  return false;  
}
if (sem==null || sem==""){  
  alert("Semester must not be blank");  
  return false;  
}
if (seatno==null || seatno==""){  
  alert("Seat Number must not be blank");  
  return false;  
}
if (pattern==null || pattern==""){  
  alert("Pattern must not be blank");  
  return false;  
}//else if((password.length<6) ||(password.length==' ') ){  
 // alert("Password must be at least 6 characters long.");  
  //return false;  

}  
</script>
<style>
input[type=text], select {
    width: 60%;
    padding: 12px 20px;
    margin: 8px 0;
    display: inline-block;
    border: 1px solid #ccc;
    border-radius: 4px;
    box-sizing: border-box;

}

input[type=submit] {
    width: 30%;
    background-color: #8B0000;
    color: white;
    padding: 14px 20px;
    margin: 8px 0;
    border: none;
    border-radius: 4px;
    cursor: pointer;
}

input[type=submit]:hover {
    background-color: #45a049;
}
</style>
</head>

<body>

<h3 align="center" style=" color: #8B0000; font-family: Arial; font-size: 36px;"> GET MARKSHEET </h3>

<div align="center" style="border: 2px solid #8B0000;margin: 0% 30%;" >
<form name="myform" method="POST" onsubmit="return validateform()" align="center">  
Enter Roll No:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="text" name="rollno" id="rollno"><br/>  
Seat Number:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;  <input type="text" name="seatno" id="seatno"><br/>
Branch: 	 	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;  <input type="text" name="branch" id="branch" ><br/>  
Semester:	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;  <input type="text" name="sem" id="sem"><br/>  
Pattern:	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;  <input type="text" name="pattern" id="pattern"><br/>  
<input type="submit" value="Get MARKSHEET" id="LOGIN" name="LOGIN"">  
</form>  
</div>

<div>

<?php
if(isset($_POST['LOGIN'])){
  $r=$_POST['rollno'];
	$q = $_POST['sem'];
	$z = $_POST['pattern'];
	$b= $_POST['branch'];
	$s = $_POST['seatno'];
	$sel=mysqli_query($db,"select * from course_table_rev where sem='$q' and pattern='$z' and branch='$b'") or die(mysqli_error($db)); 

		if(mysqli_num_rows($sel)>0){
			// echo 
			// "<table width=\"600\" border=\"1\" cellpadding=\"10\" cellspacing=\"1\">
			// <tr>
			// <th>Branch</th>
			// <th>Semester</th>
			// <th>Pattern</th>
			// <th>Subject</th>
			// </tr>";

			// while ($arr=mysqli_fetch_array($sel)){
			// echo "<tr>";
			// echo "<td><a href=\"index.php\">".$arr['branch']."</a></td>";
			// echo "<td>".$arr['sem']."</td>";
			// echo "<td>".$arr['pattern']."</td>";
			// echo "<td>".$arr['subject']."</td>";
			// echo "</tr>";
			// }

			$_SESSION['seatno']=$s;
			$_SESSION['branch']=$b;
			$_SESSION['sem']=$q;
			$_SESSION['pattern']=$z;
	    	$_SESSION['rollno']=$r;
			header("Location: dummy_marksheet_template.php");
		}
		else{
		    echo "<h2>No Results Found</h2>";
		}
}

//ob_end_flush();
?>  

</div>
</body>
</html>



