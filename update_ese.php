 <?php

	echo "string";
?>



               $query_display =  mysqli_query($db,"select * from sc_400 ") ;

               if (isset($_POST['display'])) {
                 echo '<br><br><br><table class="table" width="698"cellspacing="0"cellpadding="5" border="01">
                  <tbody>
                  <tr>
                  <td rowspan="3" width="300">Roll_No</td>
                  <td rowspan="3" width="300">Name</td>
                  <td colspan="7">Grade</td>
                  </tr>

                  <tr>
                  <td width="10" rowspan="2">ESE</td>
                  <td width="10" rowspan="2">OP</td>
                  <td width="23" rowspan="2">OR</td>
                  <td width="18" rowspan="2">IA</td>
                  <td width="24" rowspan="2">TW</td>
                  <td colspan="2">Overall</td>
                  </tr>
                  <tr>
                  <td colspan="1">ESE</td>
                  <td colspan="1">TW</td>
                  </tr>';

                  while ($course_row = mysqli_fetch_array($query_display)) {
                   
                    echo "
                    <tr>
                    <td> ". $course_row['Roll_no'] ."</td>
                    <td> ". $course_row['full_name']." </td>
                    <td><input type='text' name='ese_update' value='".$course_row['ESE']."'></td>
                    <td>".$course_row['OP']."</td>
                    <td>".$course_row['ORAL']."</td>
                    <td>".$course_row['IA']."</td>
                    <td>".$course_row['TW']."</td>
                    <td>".$course_row['OVERALL_ESE']."</td>
                    <td>".$course_row['OVERALL_TW']."</td>
                    </tr>";

                  }
                } 