<?php
include 'connect.php';

if(isset($_POST['LOGIN'])){
  $branch = $_POST['branch'];
  $sem = $_POST['sem'];
  $year = $_POST['year'];
$records = mysqli_query($db,"SELECT * FROM data where Branch='$branch' and Sem='$sem' and Year='$year'") or die("Error: " . mysqli_error($db));;
if(mysqli_num_rows($records)<1){
echo "<h2>No result found</h2>";
}
else{
?>
<!DOCTYPE html>
<html>
 <head>
   <title>Hallticket</title>
   <style>
   body{
   	padding: 16px;
   }
   h6 {
	    color: black;
		font-family: Blackadder ITC;
		font-size: 100%;
		border: 0px solid black;
		padding: 0px;
	    margin: 1px;
   }
   p {
	   color: black;
	   font-family: Calibri;
	   font-size: 100%;
	   border: 1px solid black;
	   padding: 0px;
	   margin: 0px;
	   text-align: left;
   }
   textarea {
       resize: none;
    }
   </style>
 </head>
 <body>
   <?php
      while($data=mysqli_fetch_array($records)) { ?>
  <p>
      <img src="Capture3.jpg" width="35px" align="left" caption="CBCGS"><center>
     <b>Ramrao Adik Institute of Technology<br>Navi Mumbai</b>
     <h6><center>Admission card for Examination Center at RAIT</center></h6>
  </p>
  <p>
<?php
		  echo "Mumbai University Examination of ";
		  echo  "<b>".$data['Year']."</b>";
		  echo "<b> Sem </b>";
		  echo  "<b>".$data['Sem']."</b>";
		  echo " of";
		  echo "<br>";
		  echo  $data['Branch'];
		  echo " Engg.   (CBCGS) to be held in";
		  echo "<br>";
		  echo "<b> MAY-18 with university Seat No. </b>";
		  echo "<b>".$data['Seat No.']."</b>";
       ?>
  </p>
  <p><?php
		 echo " Name of Candidate ";
		 echo  "<b><u>".$data['Name']."</u></b>";
		 echo "<br>";
       ?>

		<img src="<?php echo  $data['photo'];?>" height="100" width="100" align="right">
		<style align="right"><?php echo $data['RollNo'];?></style>
	   <textarea style="width:200px;height:30px"></textarea>
	   <br>
	    signature of Candidate<br>
		<textarea style="width:200px;height:30px"></textarea>
	   <br>
	    Signature of Principal&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;
		&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;
		&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&nbsp;&nbsp;&nbsp;<?php echo $data['Roll No.'];?>
		<center>Appearing for the following Theory Subjects<br>
	   <textarea style="width:30px;height:30px"></textarea>
	    <textarea style="width:30px;height:30px"></textarea>
		<textarea style="width:30px;height:30px"></textarea>
		<textarea style="width:30px;height:30px"></textarea>
		<textarea style="width:30px;height:30px"></textarea>
		<textarea style="width:30px;height:30px"></textarea>
		<br>
		-----Signature of Invigilator------
	   </center>

  </p>
  <p>Candidate must preserve & produce this card at each session of the Examination,Without<br>
     which admission to the Examination may be disallowed.
  </p><hr>
    <b>------------------------------------------------CUT HERE-----------------------------------------------------------------------</b>
  <?php
}
}
}
  ?>
 </body>
</html>
