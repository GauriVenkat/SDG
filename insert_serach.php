<?php
	session_start();
	include "connect.php";

	$Seat_No = $_SESSION['Seat_No'];
	$Roll_No =  $_SESSION['Roll_No'];
	$Branch = $_SESSION['Branch'];
    $Semester = $_SESSION['Semester'];
    $Pattern =  $_SESSION['Pattern'];


    // echo $Roll_No;

    $query="INSERT INTO search (Seat_No,Roll_No,Branch,Semester,Pattern) values ('$Seat_No','$Roll_No','$Branch','$Semester','$Pattern');";
    
	if(!mysqli_query($db,$query))
	{
		echo "failed";
	}
	else
	{
		// echo "Sucess";
		header("Location: display_student.php");
	}

?>