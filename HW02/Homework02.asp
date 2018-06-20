<%@LANGUAGE="VBSCRIPT" CODEPAGE="1252"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<!-- DW6 -->
<!--#include file="../../../../Scripts/constants.asp" -->

<head>
<title>MIS452Homework02</title> 
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
</head>

<body bgcolor="#FFFFFF" text="#000000">
<form action="http://course1.winona.edu/ppaulson/Scripts/ProcessHW.asp" method="post" name="frmHW" id="frmHW"> 
<h2 align="center"><i><font color="#cc00ff">MIS 452 
      <% response.write(semester) %> 
  Homework Assignment</font></i></h2>
<table width="100%" border="1" cellspacing="1" cellpadding="1"> 
<tr bgcolor="#00FFFF"> <td width="36%">First Name:    <input type="text" name="FirstName" size="30" maxlength="50" />
</td>
<td width="40%">Last Name:  <input type="text" name="LastName" size="25" maxlength="50" /></td>
<td width="24%"> WID:  <input type="password" name="PIN" /></td>
</tr> <tr bgcolor="#00FFFF"> 
<td width="36%">Semester: <select name="Semester">
            <option selected="selected"><% response.write(semester) %></option>
</select> 
</td><td>Class: <select name="Class">
  <option>MIS452</option>
</select> 
</td>
<td><input name="InstID" type="hidden" id="InstID" value="00617282" /></td>
</tr> <tr bgcolor="#00FFFF"> <td width="36%">Section: 
    <select name="Section">
      <option selected="selected">01</option>
      <option>99</option>
    </select>
</td>
<td colspan="2"> 
Assignment:  <select name="Assignment">
    <option>01</option>
    <option selected="selected">02</option>
    <option>03</option>
    <option>04</option>
    <option>05</option>
    <option>06</option>
    <option>07</option>
    <option>08</option>
    <option>09</option>
    <option>10</option>
    <option>99</option>
  </select></td>
</tr><tr bgcolor="#00FFFF"><td colspan="3">&nbsp;</td></tr><tr bgcolor="#FF0000"><td colspan="3"><div align="center"><input type="submit" name="Submit" value="Submit" />
        </div></td></tr> 
</table>
 <p><br /> 
  <font color="#FF0000"><b>525   points</b></font></p>
 <h2 class="MsoTitle" align="center"><font color="#cc00ff"><i><U> Chapter 2 &nbsp;&nbsp; Data and Signals </U></i></font></h2>
 <h2 class="MsoTitle" align="center">Questions</h2>
 <p align="left"><strong><font color="#0000FF">(50) 1. Of what value is a basic knowledge of Data and Signals? <br />
   Note: do not rely on the book for the answer. </font></strong><br />
   <label>
   <input name="q1" type="text" id="q1" size="100" maxlength="100" />
   </label>
   <br />
 </p>
 <hr />
 <h2 align="center">Review Questions</h2>
 <p align="left">page 65 </p>
 <p align="left"><strong><font color="#0000FF">(25) 2. What are the main advantages of digital signals over analog signals?</font></strong><br />
   <textarea name="q2" cols="100" rows="6" id="q2"></textarea>
 </p>
 <p align="left"><strong><font color="#0000FF">(25) 4. What are the three basic components of all signals? </font></strong><br />
   <label>
   <textarea name="q3" cols="100" rows="6" id="q3"></textarea>
   </label>
 </p>
 <hr />
 <h2 align="center">Exercises </h2>
 <p align="left">page 65 </p>
 <p align="left">(25) <strong><font color="#0000FF"> 1a. What is the frequency in Hertz (cycles/sec) of a signal that repeats 80,000 times within one minute?</font></strong>&nbsp; <br />
   Show your calculations, with units.
   <br /> 
   <textarea name="q4" cols="100" rows="4" id="q4"></textarea>
  </p>
 <p align="left">(25) <strong><font color="#0000FF"> 1b. What is this signal's period (the length of one complete cycle)?</font></strong>&nbsp; <br />
Show your calculations, with units.<br />
<textarea name="q5" cols="100" rows="4" id="q5"></textarea>
</p>
 <p align="left"><br />
   (25) <strong><font color="#0000FF"> 2. What is the bandwidth of a signal composed of frequencies from 50Hz to 500Hz?</font></strong>&nbsp; <br />
Show your calculations, with units.<br />
<textarea name="q6" cols="100" rows="4" id="q6">

</textarea>
</p>
 <p align="left">(25) <strong><font color="#0000FF"> 4. What is the baud rate of a digital signal that employs differential Manchester and has a data transfer rate of 2000 bps?</font></strong>&nbsp; <br />
Show your calculations, with units.<br />
<textarea name="q7" cols="100" rows="6" id="q7"></textarea>
</p>
 <hr />
 <p align="left">(50) <strong><font color="#0000FF"> 22. Using Shannon's theorem, calculate the data transfer rate given the following information:</font></strong>&nbsp; <br />
  signal frequency = 10,000 Hz<br />
  signal power = 5000 watts<br />
  noise power = 230 watts <br />
  see page 58<br />
    Show your calculations.<br />
    <textarea name="q8" cols="100" rows="6" id="q8"></textarea>
 </p>
 <hr />
 <h2 align="center">Thinking Outside the Box</h2>
 <p align="left">page 67 </p>
 <p align="left"><font color="#0000FF"><b>(25) 2. Telephone systems are designed to transfer voice signals (0 to 4000 Hz).&nbsp; <br />
   a. When a voice signal is digitized using pulse code modulation, what is the sampling rate?<br /> 
   </b>
     <strong>
     <textarea name="q9" cols="100" rows="3" id="q9"></textarea>
     <br />
     <br />
     b. (25) How many quantization levels are used?
     <br />
     <textarea name="q10" cols="100" rows="3" id="q10"></textarea>
     </strong></font></p>
 <p align="left"><strong><font color="#0000FF">c. (25). How much data does that generate in one second?<br />
       <textarea name="q11" cols="100" rows="3" id="q11"></textarea>
 </font></strong></p>
 <p align="left"><strong><font color="#0000FF">d. (50) Are these the same sampling rate and quantization levels as used on a compact disc?&nbsp; Explain your answer.</font></strong><font color="#0000FF"><br />
   <textarea name="q12" cols="100" rows="3" id="q12"></textarea> 
 </font></p>
 <p align="left">ref:&nbsp; <a href="http://www.cs.columbia.edu/%7Ehgs/audio/44.1.html">http://www.cs.columbia.edu/~hgs/audio/44.1.html</a></p>
 <hr />
 <p><strong><font color="#0000FF">3.&nbsp; (75)&nbsp; a. If a telephone line can carry&nbsp;a signal with a baud rate of 6000 and we want to transmit data at 33,600 bps, how many different signal levels will be necessary?<br />
   Hint:  use Nyquist's theorem.<br />
   Show your calculations.</font></strong><br />
   <textarea name="q13" cols="100" rows="15" id="q13"></textarea>
 </p>
 <p>&nbsp;</p>
 <p><strong><font color="#0000FF">(25) b. Is this how a 33,600 bps modem operates?  Explain. </font></strong><br />
   <font color="#0000FF">
   <textarea name="q14" cols="100" rows="7" id="q14"></textarea>
  </font> </p>
 <hr />
 <p align="left">&nbsp;</p>
 <h2 align="center">Hands-on Projects </h2>
 page 68 
 <p align="left"><font color="#0000FF"><b>(50) 6. What are the sampling rates for the following devices?<br />
   iPod, CD player, DVD video player, DVD audio player, Blu-Ray DVD player</b></font><br />
 <font color="#0000FF">
<textarea name="q15" cols="100" rows="7" id="q15"></textarea>

 <br />
 </font> </p>
 <hr />
 <p>Important: Assignments can have two parts.<br />
  <b><U>1. Form Part </U></b><br />
  <b><font color="#0000FF">The form part has blue background for your personal
  information, or dark blue text for questions </font></b>. <font color="#0000FF"><b>The
  form part is answered by placing your answer in the 'Init val' field as shown
  below.&nbsp; Do not delete any of the TextField boxes! This method will keep
  your answer in your .html file when you publish / ftp your homework to your
  studentwebsite. Never change the Name field (q1, q2...)! </b></font> </p>
<p><img src="../HW01/TextFieldProperties.png" alt="Properties Panel" width="776" height="127" /></p>
<table width="98%" border="1" cellspacing="1" cellpadding="1"> 
<tr> <td>&nbsp;</td>
</tr> 
</table><p><U><b>2. Normal Html Part</b></U><br />
  The 
normal html sections will have black text. You can type your answers into the 
table provided.<br />
When you have completed this HW assignment 
publish (ftp) it to your studentwebs site.<br /> 
Make sure to activate the hyperlink 
for this assignment on your HW template file.<br /> 
Use a web browser to make sure 
you can view the completed assignment with your answers and make sure that any 
graphics files are visible and correctly linked.<br /> 
Correct any problems that 
you find.</p><p>When you are satisfied that your assignment has been done correctly 
fill in the form fields for First Name, Last Name, PIN, Semester, Class, Section 
and Assignment. Remember to choose a PIN number at the start of the semester. 
You will use this PIN number to verify that your homework was indeed submitted.</p><table width="29%" border="1" cellspacing="1" cellpadding="1" bgcolor="#00FFFF"> 
<tr> <td> <div align="center">These fields have a blue background. </div></td></tr> 
</table><p>Once this is done, press the submit button. This sends a copy of your 
assignment answers to the professor. If all goes well, you will see a confirmation 
page. At this point your homework has been submitted. Before this, you have not 
completed your assignment.<br />
 </p></form>
<p>&nbsp;</p>
</body>
</html>
