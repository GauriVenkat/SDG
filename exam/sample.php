<section class="content">
		
<div>

<form method="POST" width="50%"  action="confirmvaluerev.php">
	
<center>
  
     <input type="text" class="form-control" name='seat' placeholder="Enter Seat Number" value="" required >
   </center>
<br>
   <center>
  
     <input type="text" class="form-control" name='year' placeholder="Year of Passing (May 2013)" value="" required >
   </center>
   <br>
      <center>
  
  	<select class="form-control" name="passinone">
  		<option value="1">Pass in One Attempt</option>
  		<option value="0">More than One Attempt</option>
     </select>
   </center>
<br>

   <br>
<b><center> Note: Enter - into field, which is not applicable<center></b><br>

<div class="table-responsive box box-body">
<table  class="table" border="1">

            
            
            
            <tr>
                <td rowspan="3"> SUBJECTS</td>
                <td colspan="2"> COURSE CREDITS</td>
                <td colspan="7">GRADE</td>
				<td colspan="2">CREDITS EARNED (C)</td>
				<td colspan="2">GRADE POINTS (G)</td>
				<td colspan="2">C X G</td>
            </tr>
            
            <tr>
				<td rowspan="2">TH</td>
				<td rowspan="2">TW/P</td>
			    
				<td rowspan="2">ESE</td>
				<td rowspan="2">OP</td>
				<td rowspan="2">OR</td>
				<td rowspan="2">IA</td>
				<td rowspan="2">TW</td>
				<td rowspan="1" colspan="2">OVERALL</td>
				
				<td rowspan="2">TH</td>
				<td rowspan="2">TW/P</td>
				<td rowspan="2">TH</td>
				<td rowspan="2">TW</td>
				<td rowspan="2">TH</td>
				<td rowspan="2">TW</td>
            </tr>
			<tr>
				<td>ESE</td>
				<td>TW</td>
			</tr>
<tr><td>Applied Mathematics - III</td><td>4</td><td>1</td><td><input style="width:30px"  name="ob_grade_ese[]" type="text" value="" required></input></td><td><input  style="width:30px" name="ob_grade_op[]" type="text" value="-" readonly></input></td><td><input style="width:30px" name="ob_grade_or[]" type="text" value="-" readonly></input></td><td><input style="width:30px" name="ob_grade_ia[]" type="text" value="" required></input></td><td><input style="width:30px" name="ob_grade_tw[]" type="text" value="" required></input></td><td><input style="width:30px" name="ob_overall_ese[]" type="text" value="" required></input></td><td><input style="width:30px" name="ob_overall_tw[]" type="text" value="" required></input></td><td><input style="width:30px"  name="ob_creditsearned_th[]" type="text" value="" required></input></td><td><input style="width:30px"  name="ob_creditsearned_tw[]" type="text" value="" required></input></td><td><input style="width:30px" name="ob_gradepoints_th[]" type="text" value="" required></input></td><td><input style="width:30px" name="ob_gradepoints_tw[]" type="text" value="" required></input></td><td><input style="width:30px" name="ob_cxg_th[]" type="text" value="" required></input></td><td><input style="width:30px" name="ob_cxg_tw[]" type="text" value="" required></input></td></tr><tr><td>Data Structures</td><td>4</td><td>1</td><td><input style="width:30px"  name="ob_grade_ese[]" type="text" value="" required></input></td><td><input style="width:30px" name="ob_grade_op[]" type="text" value="" required></input></td><td><input style="width:30px" name="ob_grade_or[]" type="text" value="-" readonly></input></td><td><input style="width:30px" name="ob_grade_ia[]" type="text" value="" required></input></td><td><input style="width:30px" name="ob_grade_tw[]" type="text" value="" required></input></td><td><input style="width:30px" name="ob_overall_ese[]" type="text" value="" required></input></td><td><input style="width:30px" name="ob_overall_tw[]" type="text" value="" required></input></td><td><input style="width:30px"  name="ob_creditsearned_th[]" type="text" value="" required></input></td><td><input style="width:30px"  name="ob_creditsearned_tw[]" type="text" value="" required></input></td><td><input style="width:30px" name="ob_gradepoints_th[]" type="text" value="" required></input></td><td><input style="width:30px" name="ob_gradepoints_tw[]" type="text" value="" required></input></td><td><input style="width:30px" name="ob_cxg_th[]" type="text" value="" required></input></td><td><input style="width:30px" name="ob_cxg_tw[]" type="text" value="" required></input></td></tr><tr><td>Digital Logic Design and Analysis</td><td>3</td><td>1</td><td><input style="width:30px"  name="ob_grade_ese[]" type="text" value="" required></input></td><td><input  style="width:30px" name="ob_grade_op[]" type="text" value="-" readonly></input></td><td><input style="width:30px" name="ob_grade_or[]" type="text" value="-" readonly></input></td><td><input style="width:30px" name="ob_grade_ia[]" type="text" value="" required></input></td><td><input style="width:30px" name="ob_grade_tw[]" type="text" value="" required></input></td><td><input style="width:30px" name="ob_overall_ese[]" type="text" value="" required></input></td><td><input style="width:30px" name="ob_overall_tw[]" type="text" value="" required></input></td><td><input style="width:30px"  name="ob_creditsearned_th[]" type="text" value="" required></input></td><td><input style="width:30px"  name="ob_creditsearned_tw[]" type="text" value="" required></input></td><td><input style="width:30px" name="ob_gradepoints_th[]" type="text" value="" required></input></td><td><input style="width:30px" name="ob_gradepoints_tw[]" type="text" value="" required></input></td><td><input style="width:30px" name="ob_cxg_th[]" type="text" value="" required></input></td><td><input style="width:30px" name="ob_cxg_tw[]" type="text" value="" required></input></td></tr><tr><td>Discrete Structures</td><td>4</td><td>-</td><td><input style="width:30px"  name="ob_grade_ese[]" type="text" value="" required></input></td><td><input  style="width:30px" name="ob_grade_op[]" type="text" value="-" readonly></input></td><td><input style="width:30px" name="ob_grade_or[]" type="text" value="-" readonly></input></td><td><input style="width:30px" name="ob_grade_ia[]" type="text" value="" required></input></td><td><input style="width:30px" name="ob_grade_tw[]" type="text" value="-" readonly></input></td><td><input style="width:30px" name="ob_overall_ese[]" type="text" value="" required></input></td><td><input style="width:30px" name="ob_overall_tw[]" type="text" value="" required></input></td><td><input style="width:30px"  name="ob_creditsearned_th[]" type="text" value="" required></input></td><td><input  style="width:30px" name="ob_creditsearned_tw[]" type="text" value="-" readonly></input></td><td><input style="width:30px" name="ob_gradepoints_th[]" type="text" value="" required></input></td><td><input  style="width:30px" name="ob_gradepoints_tw[]" type="text" value="-" readonly></input></td><td><input style="width:30px" name="ob_cxg_th[]" type="text" value="" required></input></td><td><input  style="width:30px" name="ob_cxg_tw[]" type="text" value="-" readonly></input></td></tr><tr><td>Electronic Circuits & Communication Fundamental</td><td>4</td><td>1</td><td><input style="width:30px"  name="ob_grade_ese[]" type="text" value="" required></input></td><td><input  style="width:30px" name="ob_grade_op[]" type="text" value="-" readonly></input></td><td><input style="width:30px" name="ob_grade_or[]" type="text" value="" required></input></td><td><input style="width:30px" name="ob_grade_ia[]" type="text" value="" required></input></td><td><input style="width:30px" name="ob_grade_tw[]" type="text" value="" required></input></td><td><input style="width:30px" name="ob_overall_ese[]" type="text" value="" required></input></td><td><input style="width:30px" name="ob_overall_tw[]" type="text" value="" required></input></td><td><input style="width:30px"  name="ob_creditsearned_th[]" type="text" value="" required></input></td><td><input style="width:30px"  name="ob_creditsearned_tw[]" type="text" value="" required></input></td><td><input style="width:30px" name="ob_gradepoints_th[]" type="text" value="" required></input></td><td><input style="width:30px" name="ob_gradepoints_tw[]" type="text" value="" required></input></td><td><input style="width:30px" name="ob_cxg_th[]" type="text" value="" required></input></td><td><input style="width:30px" name="ob_cxg_tw[]" type="text" value="" required></input></td></tr><tr><td>Object Oriented Programming Methodology</td><td>4</td><td>1</td><td><input style="width:30px"  name="ob_grade_ese[]" type="text" value="" required></input></td><td><input style="width:30px" name="ob_grade_op[]" type="text" value="" required></input></td><td><input style="width:30px" name="ob_grade_or[]" type="text" value="-" readonly></input></td><td><input style="width:30px" name="ob_grade_ia[]" type="text" value="" required></input></td><td><input style="width:30px" name="ob_grade_tw[]" type="text" value="" required></input></td><td><input style="width:30px" name="ob_overall_ese[]" type="text" value="" required></input></td><td><input style="width:30px" name="ob_overall_tw[]" type="text" value="" required></input></td><td><input style="width:30px"  name="ob_creditsearned_th[]" type="text" value="" required></input></td><td><input style="width:30px"  name="ob_creditsearned_tw[]" type="text" value="" required></input></td><td><input style="width:30px" name="ob_gradepoints_th[]" type="text" value="" required></input></td><td><input style="width:30px" name="ob_gradepoints_tw[]" type="text" value="" required></input></td><td><input style="width:30px" name="ob_cxg_th[]" type="text" value="" required></input></td><td><input style="width:30px" name="ob_cxg_tw[]" type="text" value="" required></input></td></tr></table>
<br><br>

</div>
<center>
  
     <input type="text" class="form-control" name='sgpi' placeholder="SGPI Pointer (Eg: 8.5)" value="" required >
   </center>
   <br>
<center>
  
     <input type="text" class="form-control" name='cgpi' placeholder="CGPI Pointer (Eg: 8.5)" value="">
   </center>
   <br>
<center><input type="submit" class="btn btn-danger" value="Confirm" name="submit">
</center>

</form>
</div> 
</section><!-- /.content -->
</div>