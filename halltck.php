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

<h3 align="center" style=" color: #8B0000; font-family: Arial; font-size: 36px;"> Get Hall Tickets </h3>

<div align="center" style="border: 2px solid #8B0000;margin: 0% 30%;" >
<form name="myform" method="POST" onsubmit="return validateform()" align="center" action="hallticket.php">
Branch: 	 	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<select name="branch" id="branch">
  <option value="CE">CE</option>
  <option value="IT">IT</option>
  <option value="EXTC">EXTC</option>
  <option value="ELEX">ELEX</option>
  <option value="INSTRU">INSTRU</option>
</select><br/>
Semester:	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;  <select name="sem" id="sem">
  <option value="3">3</option>
  <option value="4">4</option>
  <option value="5">5</option>
  <option value="6">6</option>
</select><br/>
<!-- Enter Roll No:&nbsp;&nbsp;&nbsp;&nbsp;<input type="text" name="rollno" id="rollno"><br/> -->
<input type="submit" value="Get MARKSHEET" id="LOGIN" name="LOGIN">
</form>
<br>
<form method="POST" onsubmit="return validateform()" align="center" action="search_hall.php">
  Enter Roll No:&nbsp;&nbsp;&nbsp;&nbsp;<input type="text" name="rollno" id="rollno"><br/>
  <input type="submit" value="search" id="search" name="search">
</form>
</div>
<div>

</div>
</body>
</html>
