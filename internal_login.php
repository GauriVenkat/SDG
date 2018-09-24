<?php

include "connect.php";
include 'main.php';

session_start();
?>

<!DOCTYPE html>
<html>
<head>
<script>
function validateform(){  
//var rollno=document.myform.rollno.value;  
var subject=document.myform.subject.value; 
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
if (subject==null || subject==""){  
  alert("Subject must not be blank");  
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

<h3 style="text-align: center; color: #8B0000; font-family: Arial; font-size: 36px;"> ENTER INTERNAL MARKS</h3>

<div align="center" style="border: 2px solid #8B0000;margin: 0% 30%;" >
 <form name="myform" method="POST" onsubmit="return validateform()" >  
Subject Code: &nbsp; <input type="text" name="subject_code" id="subject_code" value="400"><br/>
Branch:  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="text" name="branch" id="branch"  value="CE"><br/>  
Semester:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;  <input type="text" name="sem" id="sem" value="4"><br/>  
Pattern: &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="text" name="pattern" id="pattern" value="REV2012"><br/>  
<input type="submit" value="Show Students" id="LOGIN" name="LOGIN"> 
 
</form>  
</div>


<?php
if(isset($_POST['LOGIN'])){
    // $r=$_POST['Rollno'];
  $q = $_POST['sem'];
  $z = $_POST['pattern'];
  $b= $_POST['branch'];
  $c = $_POST['subject_code'];
  $sel=mysqli_query($db,"select * from student_final_marksheet where Sem='$q' and pattern='$z' and branch='$b'") or die(mysqli_error($db)); ;
    if(mysqli_num_rows($sel)>0){
    //     echo 
    // "<table width=\"600\" border=\"1\" cellpadding=\"10\" cellspacing=\"1\">
    // <tr>
    // <th>Branch</th>
    // <th>Semester</th>
    // <th>Pattern</th>
    // <th>Subject</th>
    // </tr>";
    // while ($arr=mysqli_fetch_array($sel)){
    // echo "<tr>";
    // echo "<td><a href='index.php'>".$arr['branch']."</a></td>";
    // echo "<td>".$arr['Sem']."</td>";
    // echo "<td>".$arr['pattern']."</td>";
    // echo "<td>".$arr['subject']."</td>";
    // echo "</tr>";
    // }
    $_SESSION['subject_code']=$c;
    $_SESSION['branch']=$b;
    $_SESSION['sem']=$q;
    $_SESSION['pattern']=$z;


    header("Location:internal_entry.php");  

// }
    }
    else
    {
        echo "<h2>No Results Found</h2>";
    }
}
?>    

</body>
</html>



