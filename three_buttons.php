<?php
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
</head>

<body>

<h3 style="text-align: left; color: #8B0000; font-family: Arial; font-size: 36px;"><center>Select a task</center></h3>

<div class="center" >
  <form name="myform" method="POST" onsubmit="return validateform()" >  
<input type="button" class="btn"  value="Enter Theory marks" onclick="window.location='http://localhost/SDG-RAIT/theory_marks.php'"><br/>  
<input type="button" class="btn" value="Enter Seat Numbers" onclick="window.location='http://localhost/SDG-RAIT/seat.php'"><br/> 
<input type="button" class="btn" value="Map" onclick="window.location='http://localhost/SDG-RAIT/map.php'"><br/>  
</form>  
</div>
</body>
</html>




































<!-- @Rohit Patil-->