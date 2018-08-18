<?php
session_start();
include "connect.php";

$i = 0;

$rno = $_POST["Roll_no"];
$fname = $_POST['full_name'];
$ese = $_POST['ese'];
$op = $_POST['op'];
$oral = $_POST['oral'];
$ia =$_POST['ia'];
$tw =$_POST['tw'];
$oese =$_POST['overall_ese'];
$otw =$_POST['overall_tw'];

while(true){

 $query  = mysqli_query($db , "select * from sc_400 where Roll_no ='$rno[$i]'");

 $count = mysqli_num_rows($query);
if($count){
	
	$update = mysqli_query($db , "update sc_400 set IA = '$ia[$i]' where Roll_no = '$rno[$i]'");
	 $i++;
}
else break;


}


$no_of_elements = count($rno);

 $rem_elements = $no_of_elements - $i;

while ($rem_elements != 0){
	
	$query1 = "INSERT INTO sc_400 (Roll_no, full_name, ESE, OP, ORAL, IA, TW, OVERALL_ESE, OVERALL_TW)
                        VALUES ('$rno[$i]','$fname[$i]','$ese[$i]','$op[$i]','$oral[$i]','$ia[$i]','$tw[$i]','$oese[$i]','$otw[$i]');";

                        $update_new = mysqli_query($db , $query1);

                        $rem_elements--;
                        $i++;

}


 header('Location:internal_entry.php');
?>