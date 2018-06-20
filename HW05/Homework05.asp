<%@LANGUAGE="VBSCRIPT" CODEPAGE="1252"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<!-- DW6 -->
<!--#include file="../../../../Scripts/constants.asp" -->

<head>
<title>MIS452Homework05</title> 
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<link href="../../../../global.css" rel="stylesheet" type="text/css" />
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
    <option>02</option>
    <option>03</option>
    <option>04</option>
    <option selected="selected">05</option>
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
  <font color="#FF0000"><b>400   points</b></font></p>
 <h2 class="MsoTitle" align="center"><font color="#cc00ff"><i><U> Chapter 6&nbsp;&nbsp; Errors </U></i></font></h2>
 <h2 class="MsoTitle" align="center">Questions</h2>
 <p align="left"><strong><font color="#0000FF">(50) 1. Why are CRC calculations done in hardware instead of software? <br />
  Note: do not only rely on the book for the answer.<br />
  Explain your answer.
 </font></strong><br />
    <label>
    <input name="q1" type="text" id="q1" size="100" maxlength="100" />
    </label>
    <br />
 </p>
 <hr />
 <h2 align="center">Review Questions</h2>
 <p align="left">page 190 (p198 in 5e)</p>
 <p align="left"><strong><font color="#0000FF">(25) 1. What is white noise and how does it affect a signal?</font></strong><br />
   <textarea name="q2" cols="100" rows="6" id="q2"></textarea>
 </p>
 <p align="left"><strong><font color="#0000FF">(25) 7.&nbsp; Will proper shielding of a medium increase or decrease the chance of errors? <br />
   Explain your reasoning.</font></strong><br />
   <label>
   <textarea name="q3" cols="100" rows="6" id="q3"></textarea>
</label>
 </p>
  <p><strong>(25) 15.&nbsp; What type of errors will cyclic checksum not detect?</strong></p>
  <table width="100%"  border="1" cellspacing="2" cellpadding="2">
    <tr>
      <th><div align="left">
        <p>&nbsp;</p>
        <p>&nbsp;</p>
        <p>&nbsp;</p>
      </div></th>
    </tr>
  </table>
  <p><strong><font color="#0000FF">(25)&nbsp; 20. In communication systems, what does timeout mean?</font></strong><br />
    <textarea name="q4" cols="100" rows="4" id="q4"></textarea> 
  </p>
  <hr />
 <h2 align="center">Exercises </h2>
 <p align="left">page 191 </p>
 <p align="left">(25) <strong><font color="#0000FF"> 6. Given the character <br />
  1010010<br />
  what bit will be added to support odd parity?
 </font></strong><br />
    <textarea name="q5" cols="100" rows="4" id="q5"></textarea>
    <br />
  </p>
 <p align="left">   (25) <strong> 7.&nbsp; Generate the parity bits and longitudanal parity bits for even parity for the characters:</strong> </p>
 <table width="100%"  border="1" cellspacing="2" cellpadding="2">
   <tr>
     <th width="25%">&nbsp;</th>
     <th width="57%">Characters</th>
     <th width="18%">Even Parity</th>
   </tr>
   <tr>
     <td>&nbsp;</td>
     <td><div align="center"><strong>0 1 0 1 0 1 0</strong></div></td>
     <td>&nbsp;</td>
   </tr>
   <tr>
     <td>&nbsp;</td>
     <td><div align="center"><strong>0 0 1 1 0 1 0</strong></div></td>
     <td>&nbsp;</td>
   </tr>
   <tr>
     <td>&nbsp;</td>
     <td><div align="center"><strong>0 0 1 1 1 1 0</strong></div></td>
     <td>&nbsp;</td>
   </tr>
   <tr>
     <td>&nbsp;</td>
     <td><div align="center"><strong>1 1 1 1 1 1 0</strong></div></td>
     <td>&nbsp;</td>
   </tr>
   <tr>
     <td>&nbsp;</td>
     <td><div align="center"><strong>0 0 0 0 1 1 0</strong></div></td>
     <td>&nbsp;</td>
   </tr>
   <tr>
     <th>Longitudanal Even Parity </th>
     <td><div align="center"><strong></strong></div></td>
     <td>&nbsp;</td>
   </tr>
 </table>
 <p align="left">&nbsp;  </p>
 <p align="left">(<strong>75</strong>) 25. The 12-bit string 010111110010 with embedded Hamming code bits (c8, c4, c2, c1) has just arrived.&nbsp; <font color="#0000FF"><strong>Is there an error?&nbsp; If so, which bit is in error?</strong></font><br />
  Use the following table to solve this problem.<br />
  Reference pages 193, 194</p>
 <table width="100%"  border="1" cellspacing="2" cellpadding="2">
   <tr>
     <td>b12</td>
     <td>b11</td>
     <td>b10</td>
     <td>b9</td>
     <td>c8</td>
     <td>b7</td>
     <td>b6</td>
     <td>b5</td>
     <td>c4</td>
     <td>b3</td>
     <td>c2</td>
     <td>c1</td>
    </tr>
   <tr>
     <td bgcolor="#FFFF00">0</td>
     <td bgcolor="#FFFF00">1</td>
     <td bgcolor="#FFFF00">0</td>
     <td bgcolor="#FFFF00">1</td>
     <td>1</td>
     <td bgcolor="#FFFF00">1</td>
     <td bgcolor="#FFFF00">1</td>
     <td bgcolor="#FFFF00">1</td>
     <td>0</td>
     <td bgcolor="#FFFF00">0</td>
     <td>1</td>
     <td>0</td>
    </tr>
   <tr>
     <td bgcolor="#333333">&nbsp;</td>
     <td bgcolor="#333333">&nbsp;</td>
     <td bgcolor="#333333">&nbsp;</td>
     <td bgcolor="#333333">&nbsp;</td>
     <td bgcolor="#333333">&nbsp;</td>
     <td bgcolor="#333333">&nbsp;</td>
     <td bgcolor="#333333">&nbsp;</td>
     <td bgcolor="#333333">&nbsp;</td>
     <td bgcolor="#333333">&nbsp;</td>
     <td bgcolor="#333333">&nbsp;</td>
     <td bgcolor="#333333">&nbsp;</td>
     <td bgcolor="#333333">&nbsp;</td>
   </tr>
   <tr>
     <td>c8</td>
     <td>&nbsp;</td>
     <td>&nbsp;</td>
     <td>&nbsp;</td>
     <td>&nbsp;</td>
     <td>&nbsp;</td>
     <td>&nbsp;</td>
     <td>&nbsp;</td>
     <td>&nbsp;</td>
     <td>&nbsp;</td>
     <td>&nbsp;</td>
     <td>&nbsp;</td>
   </tr>
   <tr>
     <td>c4</td>
     <td>&nbsp;</td>
     <td>&nbsp;</td>
     <td>&nbsp;</td>
     <td>&nbsp;</td>
     <td>&nbsp;</td>
     <td>&nbsp;</td>
     <td>&nbsp;</td>
     <td>&nbsp;</td>
     <td>&nbsp;</td>
     <td>&nbsp;</td>
     <td>&nbsp;</td>
   </tr>
   <tr>
     <td>c2</td>
     <td>&nbsp;</td>
     <td>&nbsp;</td>
     <td>&nbsp;</td>
     <td>&nbsp;</td>
     <td>&nbsp;</td>
     <td>&nbsp;</td>
     <td>&nbsp;</td>
     <td>&nbsp;</td>
     <td>&nbsp;</td>
     <td>&nbsp;</td>
     <td>&nbsp;</td>
   </tr>
   <tr>
     <td>c1</td>
     <td>&nbsp;</td>
     <td>&nbsp;</td>
     <td>&nbsp;</td>
     <td>&nbsp;</td>
     <td>&nbsp;</td>
     <td>&nbsp;</td>
     <td>&nbsp;</td>
     <td>&nbsp;</td>
     <td>&nbsp;</td>
     <td>&nbsp;</td>
     <td>&nbsp;</td>
   </tr>
 </table>
 <p align="left"><strong class="FormQuestion">Is there an error? If so, where?</strong><br />
   <textarea name="q6" cols="100" rows="3" id="q6"></textarea>
  </p>
 <hr />
 <h2 align="center">Thinking Outside the Box</h2>
 <p align="left">page 192 </p>
 <p align="left"><font color="#0000FF"><b>(75) 2. Your boss has heard a lot about cyclic redundancy checksum (CRC) but is not convinced that it is much better than simple parity.<br />
   You quote some of the numbers and probabilities of error detection, but they mean little to him.<br />
   If you could give a more concrete example of how good cyclic redundancy checksum is, you might win the boss over.<br />
   Reference the probabilities in Table 6-4.<br />
   <img src="CRCErrors.png" width="759" height="316" border="1" /><br />
 </b></font></p>
 <p align="left">
   <label>
     <textarea name="q9" cols="120" id="q9"></textarea>
   </label>
 </p>
 <hr />
 <p align="left"><font color="#0000FF"><b>   If your company transmits a continuous stream at 128,000 bits per second, how much time will pass before CRC lets an error slip through? <br />
   Assume an error rate of one frame in 10,000<br />
   Assume a frame consists of 1,000 bits <br />
   Explain your reasoning, and show your calculations. <br />
   </b><strong>
    <textarea name="q7" cols="120" rows="14" id="q7"></textarea>
    </strong></font><font color="#0000FF"><strong>
    </strong></font></p>
 <hr />
 <p align="left"><font color="#0000FF"><strong>    </strong></font></p> 
 <h2 align="center">Hands-on Projects </h2>
 page 193 
 <p align="left"><strong><font color="#0000FF">(50) 7.&nbsp; Are there any CRC generating polynomials other than those listed in this chapter? </font></strong><font color="#0000FF"><b><br />
 </b><strong>
 <textarea name="q8" cols="100" rows="3" id="q8"></textarea>
 </strong></font> </p>
 <hr />
 <hr />
 <p align="left">Important: Assignments can have two parts.<br />
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
