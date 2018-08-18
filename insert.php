<?php

	include "connect.php";
	// include "insert_theory_marks.php"
	// session_start();


	// $query_link = mysqli_query($db,"select * from link_dummy_theory_marks where sub_code='$sub' and sem='$sem' and unique_code='$unique_code'") ;

	// $row = mysqli_fetch_array($query_link);
	// $seat_no = $row['seat_no'];

	$ESE = $_POST['ese'];
	$OP = $_POST['op'];
	$ORAL = $_POST['oral'];
    $IA = $_POST['ia'];
    $TW = $_POST['tw'];
   	$OVERALL_ESE = $_POST['overall_ese'];
    $OVERALL_TW = $_POST['overall_tw']; 

    $query="INSERT INTO dummy_thoery_marks (branch,sem,seat_no,unique_code,sub_code,th_marks) values ('$branch','$sem','$seat_no','$unique_code','$sub_code','$ESE');";
    
	if(!mysqli_query($db,$query))
	{
		echo "failed";
	}
	else
	{
		echo "success";
	}
	include 'insert_theory_marks.php';


?>