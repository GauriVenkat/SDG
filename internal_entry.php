
<?php
session_start();
include "connect.php"; 

$roll_no = array();
$names = array();


$c=$_SESSION['subject_code'];
$b=$_SESSION['branch'];
$q=$_SESSION['sem'];
$z=$_SESSION['pattern'];

?>


<?php

$query_course = mysqli_query($db,"select * from student_final_marksheet where sem='$q' and pattern='$z' and branch='$b'");

$update_query = mysqli_query($db , "select * from sc_400 ");
$update_result = array();

while($row = mysqli_fetch_array($update_query)){
  array_push($update_result, $row);
}

//$query_student = mysqli_query($db,"select * from student_final_marksheet where seat='$s' and branch='$b'") ;

$query_marks = mysqli_query($db,"select * from final where subcode='$c'") ;

$query = mysqli_query($db , "select * from sc_400 ");

$count = mysqli_num_rows($query);

// echo print_r($query_student);
?>
<!doctype html>
<html lang="en">
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="css/bootstrap-grid.min.css.map">
    <link rel="stylesheet" href="css/bootstrap.min.css">
    <link rel="stylesheet" href="button.css">
    <link rel="stylesheet" href="css/Print.css">
    
    <title>INTERNAL RESULT</title>

    <script type="text/javascript">

/*--This JavaScript method for Print command--*/

    function PrintDoc() {

        var toPrint = document.getElementById('printarea');

        var popupWin = window.open('', '_blank', 'width=350,height=150,location=no,left=200px');

        popupWin.document.open();

        popupWin.document.write('<html><title>::Preview::</title><link rel="stylesheet" type="text/css" href="print.css" /></head><body onload="window.print()">')

        popupWin.document.write(toPrint.innerHTML);

        popupWin.document.write('</html>');

        popupWin.document.close();

    }

/*--This JavaScript method for Print Preview command--*/

    function PrintPreview() {

        var toPrint = document.getElementById('printarea');

        var popupWin = window.open('', '_blank', 'width=350,height=150,location=no,left=200px');

        popupWin.document.open();

        popupWin.document.write('<html><title>::Print Preview::</title><link rel="stylesheet" type="text/css" href="Print.css" media="screen"/></head><body">')

        popupWin.document.write(toPrint.innerHTML);

        popupWin.document.write('</html>');

        popupWin.document.close();

    }
    
    
//     function insert(){

// location.href = 'test.php';
//     }

// function update(){

//   var change = document.getElementById('ia').value;

//   <?php


//   ?>
  
  
// }
   


</script>


    
  </head>
  <body id="printarea">
    <div style="font-size: 20px;">
   <b><center>INTERNAL MARKSHEET</center></b></div>  
   <div style="margin-left: 3%;">

    <?php

//$row = mysqli_fetch_array($query_student);
//cho $row['course_credits_th'];
//$count = mysqli_num_rows($row);
//echo $count;
$row = mysqli_fetch_array($query_marks);
    ?>

      <pre>
            SUBJECT_CODE:<?php echo $row['subcode']; ?><br>
          </pre>
          </div>
          <div>
      


          </div>

    
        <!-- <div class="row"> -->
            <!-- <div class="col-1"></div> -->
            <!-- <div class="col"> -->

    <table class="table" width="698" cellspacing="0" cellpadding="5" border="01" >
            
            <tbody>
     
      <tr>
      <td rowspan="3" width="300">Roll_No</td>
      <td rowspan="3" width="300">Name</td>
      <td colspan="4">Grade</td>
    </tr>
    <tr>
      
      <!-- <td width="10" rowspan="1">ESE</td> -->
      <td width="10" rowspan="1">OP</td>
      <td width="23" rowspan="1">OR</td>
      <td width="18" rowspan="1">IA</td>
      <td width="24" rowspan="1">TW</td>
      <!-- <td colspan="2">Overall</td> -->
    </tr>
    <!-- <tr>
      <td colspan="1">ESE</td>
      <td colspan="1">TW</td>
    </tr> -->


    

      <?php
      echo "<form method='POST' action = 'update.php'>" ;
      $i = 0;
    while($course_row = mysqli_fetch_array($query_course)){
      
      if (@$update_result[$i][0] === $course_row['Roll_no']){
        
    
        echo "  
    <tr>
    <td> ". $course_row['Roll_no'] ."<input type = 'hidden'  name = 'Roll_no[]' value = '".$course_row['Roll_no']."' ></td>
    <td> ". $course_row['full_name']." <input type = 'hidden'  name = 'full_name[]' value = '".$course_row['full_name']."' ></td>
    <td><input type='text' name='ese[]' id ='ese' size='02' value = '".$update_result[$i][2]."' ></td>
    <td><input type='text' name='op[]' id ='op' size='02' value = '".$update_result[$i][3]."'></td>
    <td><input type='text' name='oral[]' id = 'oral' size='02' value = '".$update_result[$i][4]."'></td>
    <td><input type='text' name='ia[]' id ='ia' size='02' value = '".$update_result[$i][5]."' ></td>
    <td><input type='text' name='tw[]' id = 'tw' size='02' value = '".$update_result[$i][6]."'></td>
    <td><input type='text' name='overall_ese[]' id = 'overall_ese'  size='02' value = '".$update_result[$i][7]."'></td>
    <td><input type='text' name='overall_tw[]' id = 'overall_tw' size='02' value = '".$update_result[$i][8]."'></td>
    </tr>";
    


      }
      else {

    echo "
    <tr>
    <td> ". $course_row['Roll_no'] ."<input type = 'hidden'  name = 'Roll_no[]' value = '".$course_row['Roll_no']."' ></td>
    <td> ". $course_row['full_name']." <input type = 'hidden'  name = 'full_name[]' value = '".$course_row['full_name']."' ></td>
    <td><input type='text' name='ese[]' id ='ese' size='02'></td>
    <td><input type='text' name='op[]' id ='op' size='02'></td>
    <td><input type='text' name='oral[]' id = 'oral' size='02'></td>
    <td><input type='text' name='ia[]' id ='ia' size='02'></td>
    <td><input type='text' name='tw[]' id = 'tw' size='02'></td>
    <td><input type='text' name='overall_ese[]' id = 'overall_ese'  size='02'></td>
    <td><input type='text' name='overall_tw[]' id = 'overall_tw' size='02'></td>
    </tr>";
    

}
  $i++;

 }
   ?>
  

  </tbody>
</table>
<input type="submit" name="submit" value="submit">
</form>
    
    

  <input type="button" value="Print" class="bttn" onclick="PrintDoc()">
  
  <input type="button" value="Print Preview" class="bttn" onclick="PrintPreview()">
  
  <input type="button" value="Logout" class="bttn" onclick="window.location='http://localhost/SDG-RAIT/internal_login.php'">

  
          


 <!-- Optional JavaScript -->
    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
    <script src="Bootstrap/bootstrap-4.0.0-dist/js/bootstrap.min.js"></script>
    <!-- <a href="destroy.php">clear</a>
 -->
  </body>
</html>






<!-- <?php

//$row = mysqli_fetch_array($query_student);
//cho $row['course_credits_th'];
//$count = mysqli_num_rows($row);
//echo $count;
//while($row = mysqli_fetch_array($query_marks)){
    ?>

       -->


