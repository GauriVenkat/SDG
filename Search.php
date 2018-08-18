<?php
include "connect.php";
session_start();
?>

<!DOCTYPE html>
<html>
<head>
<script>
function validateform(){  
var unique_code=document.myform.unique_code.value; 
var sub_code=document.myform.sub_code.value;
var seatno=document.myform.seatno.value; 
var pattern=document.myform.pattern.value;  
var branch=document.myform.branch.value;  
var sem=document.myform.sem.value;  


//var password=document.myform.password.value;  
  
if (unique_code==null || unique_code==""){  
  alert("Unique code must not be blank");  
  return false;  
}

if (branch==null || branch==""){  
  alert("Branch must not be blank");  
  return false;  
}

if (sub_code==null || sub_code==""){  
  alert("Subject code must not be blank");  
  return false;  
}
if (sem==null || sem==""){  
  alert("Semester must not be blank");  
  return false;  
}
// if (seatno==null || seatno==""){  
//   alert("Seat Number must not be blank");  
//   return false;  
// }
if (pattern==null || pattern==""){  
  alert("Pattern must not be blank");  
  return false;  
}//else if((password.length<6) ||(password.length==' ') ){  
 // alert("Password must be at least 6 characters long.");  
  //return false;  

}  
</script>
</head>

<style>
input[type=text], select {
    width: 50%;
    height:50%;
    padding: 12px 20px;
    margin: 8px 0;
    display: inline-block;
    border: 1px solid #ccc;
    border-radius: 4px;
    box-sizing: border-box;
   font-size: 20px;
}

input[type=password], select {
    width: 50%;
height:50%;
    padding: 12px 20px;
    margin: 8px 0;
    display: inline-block;
    border: 1px solid #ccc;
    border-radius: 4px;
    box-sizing: border-box;
    font-size: 20px;
    
}

input[type=submit] {
    width: 50%;
    background-color: #DC143C;
    color: black;
    padding: 14px 20px;
    margin: 8px 0;
    border: none;
    border-radius: 4px;
    cursor: pointer;
    font-weight: bold;
    font-size: 20px;
}

input[type=submit]:hover {
    background-color: #B22222;
    
}

div {
    width: 50%;
    height: 50%;
    align: center;
    border-radius: 2px;
    background-color: #f2f2f2;
    padding: 20px;
}
.center {
    margin: auto;
    width: 50%;
    border: 3px solid #800000;
    padding: 10px;
    text-align: center;
    font-size: 20px;
   font-weight : bold; 
}
</style>
<body>

<h3 style="text-align: left; color: #8B0000; font-family: Arial; font-size: 36px;">&nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
&nbsp; Search </h3>

<div class="center">
  <form name="myform" method="POST" onsubmit="return validateform()" >  
Seat No : <input type="text" name="seat_no" id="unique_code" maxlength="8"><br/>
Roll No: <input type="text" name="roll_no" id="sub_code"><br/>  
Branch: <input type="text" name="branch" id="branch" ><br/>  
Semester:  <input type="text" name="sem" id="sem"><br/>  
Pattern: <input type="text" name="pattern" id="pattern"><br/>  
<input type="submit" value="Search" id="LOGIN" name="LOGIN">  
</form>  
</div>


<?php
if(isset($_POST['LOGIN'])){
  $_SESSION['Seat_No']=$_POST['seat_no'];
  $_SESSION['Roll_No']=$_POST['roll_no'];
  $_SESSION['Branch'] = $_POST['branch'];
  $_SESSION['Semester'] = $_POST['sem'];
  $_SESSION['Pattern']= $_POST['pattern'];
  
  header("Location: insert_serach.php");
  }
  // else
  // {
  //   echo "<h2>No Results Found</h2>";
  // }

?>    

</body>
</html>

