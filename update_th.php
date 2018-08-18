<?php
include "connect.php";
session_start();
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

input[type=submit],.btn {
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

input[type=submit]:hover,.btn:hover {
    background-color: #B22222;
    
}

div {
    width: 50%;
    height: 50%;
    align-content:  center;
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

<h3 style="text-align: left; color: #8B0000; font-family: Arial; font-size: 36px;"><center>Update Theory marks</center> </h3>

<div class="center">
  <form name="myform" method="POST" onsubmit="return validateform()" > 
Enter Unique code : <input type="text" name="ucode" id="ucoed" ><br/>
Enter Theory Marks: <input type="text" name="marks" id="marks" ><br/>  

<input type="submit" value="Update" id="Update" name="Update"">  
</form>  
</div>

<?php
if(isset($_POST['Update'])){
  $ucode = $_POST['ucode'];
  $marks = $_POST['marks'];

  $check = mysqli_query($db,"update th_mks set marks=$marks where ucode=$ucode;");

  echo ("<script LANGUAGE='JavaScript'>
    window.alert('succesfully Updated');
    </script>");
     
    }
?>    
 <center>
<input type="button" value="Back" class="btn" onclick="window.location='http://localhost/SDG-RAIT/enter_th_marks.php'"/>
</center>
</body>
</html>



































<!-- @Rohit Patil -->