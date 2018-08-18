<?php
include "connect.php";
session_start();
function alert($msg) {
    echo "<script type='text/javascript'>alert('$msg');</script>";
}
?>

<!DOCTYPE html>
<html>
<head>
<script>
function validateform(){  
var seatno=document.myform.seatno.value; 
var pattern=document.myform.pattern.value;  
var sem=document.myform.sem.value;  

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
}
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

input[type=submit],input[type=button] {
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

input[type=submit]:hover,input[type=button]:hover {
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

<h3 style="text-align: left; color: #8B0000; font-family: Arial; font-size: 36px;"><center>Theory Marks Entry </center></h3>

<div class="center">
<pre>
Department:<?php echo $_SESSION['Departent']; ?> <br>        
Semester:<?php echo $_SESSION['sem'];  ?><br>
Course Code: <?php echo $_SESSION['pattern']; ?><br>
</pre>
<form name="marks" method="POST" onsubmit="return validateform()">
    <table  style="margin-left: 20%;border-collapse: collapse" border="1" >
    <tr>
      <th>Unique Code</th><th>Theory marks</th>
    </tr>
  <?php
$d=$_SESSION['Departent'];
$s=$_SESSION['sem'];
$p=$_SESSION['pattern'];
$ucode;$i=0;
$sql = mysqli_query($db,"select * from th_mks where dept='$d' and sem='$s' and ccode='$p'");
while($row=mysqli_fetch_array($sql)){
?>
  <tr>
  <td>
<?php echo $row["ucode"];
$ucode=$row["ucode"];
 ?>  
</td>
 <td>      
  <input type="text" name="mks[]" value="<?php echo $row["marks"] ?>">
</td>
</tr>

<?php

if(isset($_POST['Enter'])){
$rowth = $_POST['mks'];
 $query = mysqli_query($db,"update th_mks set marks=$rowth[$i] where ucode=$ucode;");
 $i++;
}


}
echo ("<script LANGUAGE='JavaScript'>
    window.alert('Database succesfully Updated');
    </script>");

?> </table>
<input type="submit" name="Enter" value="Insert" style="width: 33%" />
 

<input type="button" name="update" value="Update" style="width: 33%"  onclick="window.location='http://localhost/SDG-RAIT/update_th.php'"/> 
<input type="button" value="Logout" class="btn" style="width: 33%"  onclick="window.location='http://localhost/SDG-RAIT/theory_marks.php'"/>
</form> 
</div>
</form>  
</div>
</body>
</html>








































<!-- @Rohit Patil-->