<%@LANGUAGE="VBSCRIPT" CODEPAGE="1252"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<!-- DW6 -->
<!--#include file="../../../../Scripts/constants.asp" -->

<head>
<title>MIS452Homework04</title> 
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
    <option>02</option>
    <option>03</option>
    <option selected="selected">04</option>
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
  <font color="#FF0000"><b>600   points</b></font></p>
 <h2 class="MsoTitle" align="center">Chapters 4 and 5 </h2>
 <h2 class="MsoTitle" align="center"><font color="#cc00ff"><i><U>Chapter 4&nbsp;&nbsp; Connections</U></i></font></h2>
 <h2 class="MsoTitle" align="center">Questions</h2>
 <p align="left"><strong><font color="#0000FF">(50) 1. Does a Universal Serial Bus (USB 2.0) connection use an analog or digital signal? <br />
  Note: do not only rely on the book for the answer.<br />
  Check out Wikipedia!  <a href="http://en.wikipedia.org/wiki/Universal_Serial_Bus">USB</a><br />
  Explain your answer.
 </font></strong><br />
    <label>
    <input name="q1" type="text" id="q1" size="100" maxlength="100" />
    </label>
    <br />
 </p>
 <hr />
 <h2 align="center">Review Questions</h2>
 <p align="left">page 131 (p135 in 5e)</p>
 <p align="left"><strong><font color="#0000FF">(25) 2. What are the four components of an interface?</font></strong><br />
   <textarea name="q2" cols="100" rows="6" id="q2">1. 
2. 
3. 
4. 
</textarea>
 </p>
 <p align="left"><strong><font color="#0000FF">(25) 4.&nbsp; FireWire and USB are standards to interconnect what to what? </font></strong><br />
   <label>
   <textarea name="q3" cols="100" rows="6" id="q3"></textarea>
</label>
 </p>
  <p><strong>(25) 9.&nbsp; What are the primary differences among asynchronous, synchronous and isochronous connections regarding character transmission?<br />
    Complete the following table.</strong></p>
  <table width="100%"  border="1" cellspacing="2" cellpadding="2">
    <tr>
      <th>Connection</th>
      <th>Type of character transmission </th>
    </tr>
    <tr>
      <td><strong>asynchronous</strong></td>
      <td><strong></strong></td>
    </tr>
    <tr>
      <td><strong>synchronous</strong></td>
      <td><strong></strong></td>
    </tr>
    <tr>
      <td><strong>isochronous</strong></td>
      <td><strong></strong></td>
    </tr>
  </table>
  <p>&nbsp; </p>
  <hr />
 <h2 align="center">Exercises </h2>
 <p align="left">page 131 </p>
 <p align="left">(25) <strong><font color="#0000FF"> 3. Will a device with a USB 3.0 interface work on a computer that only has a USB 1.1 connector?&nbsp; <br />
   Explain why or why not. </font></strong><br />
   <textarea name="q4" cols="100" rows="4" id="q4"></textarea>
   <br />
  </p>
 <p align="left">   (25) <strong><font color="#0000FF"> 12. What types of devices are best served with an isochronous connection? </font></strong>&nbsp; <br />

   <textarea name="q5" cols="100" rows="4" id="q5"></textarea>
  
  <br />
  </p>
 <hr />
 <h2 align="center">Thinking Outside the Box</h2>
 <p align="left">page 132 </p>
 <p align="left"><font color="#0000FF"><b>(25) 4a. A computer manufacturer wants to streamline its products by producing a computer with a single USB connector and no other connectors.<br />
  Is this a good idea?<br />
 </b><strong>
 <textarea name="q6" cols="100" rows="3" id="q6"></textarea>
 </strong><b> </b></font></p>
 <p align="left"><font color="#0000FF"><b><br />
    Is it even possible?<br />
    (25) 4b. Explain your answer. <br />
    </b>
    <strong>
    <textarea name="q7" cols="100" rows="3" id="q7"></textarea>
     <br />
    </strong></font></p>
 <hr />
 <p align="left"><font color="#0000FF"><strong>    </strong></font></p> 
 <h2 align="center">Hands-on Projects </h2>
 page 137 
 <p align="left"><b>(50)</b> 3. Create a list of 10 different products that use a USB interface. </p>
 <table width="100%"  border="1" cellspacing="2" cellpadding="2">
   <tr>
     <th>Device</th>
   </tr>
   <tr>
     <td>1</td>
   </tr>
   <tr>
     <td>2</td>
   </tr>
   <tr>
     <td>3</td>
   </tr>
   <tr>
     <td>4</td>
   </tr>
   <tr>
     <td>5</td>
   </tr>
   <tr>
     <td>6</td>
   </tr>
   <tr>
     <td>7</td>
   </tr>
   <tr>
     <td>8</td>
   </tr>
   <tr>
     <td>9</td>
   </tr>
   <tr>
     <td>10</td>
   </tr>
 </table>
 <p align="left"> <font color="#0000FF"><b>(25) 4a. What is the status of the FireWire standard?&nbsp; (latest version, data transfer rate....)<br />
 </b><strong>
 <textarea name="q8" cols="100" rows="3" id="q8"></textarea>
 </strong><b> </b></font></p>
 <p align="left"><font color="#0000FF"><b><br />
  Is it going to succumb to the USB 3.0 (or later) standard? <br />
  (25) 4b. Explain your answer. <br />
   </b> <strong>
   <textarea name="q9" cols="100" rows="3" id="q9"></textarea>
</strong></font><font color="#0000FF">
       
 </font></p>
 <hr />
 <hr />
 <p>&nbsp;</p>
 <h2 class="MsoTitle" align="center"><font color="#cc00ff"><i><U>Chapter 5&nbsp;&nbsp; Multiplexing and Compression </U></i></font></h2>
 <h2 class="MsoTitle" align="center">Questions</h2>
 <p align="left"><strong><font color="#0000FF">(50) 1. What is similar about multiplexing and compression? <br />
  Note: do not only rely on the book for the answer.<br />
  Explain your answer. </font></strong><br />
  <label>
  <input name="q10" type="text" id="q10" size="100" maxlength="100" />
  </label>
  <br />
 </p>
 <hr />
 <h2 align="center">Exercises</h2>
 <p align="left">page 163 (p170 in 5e)</p>
 <p align="left"><strong><font color="#0000FF">(25) 20. Can you (or would you want to) compress a customer's bank statements using JPEG compression?</font></strong> <br />
   Explain your answer.
   <br />
     <textarea name="q11" cols="100" rows="6" id="q11">
   </textarea>
    <br />
 </p>
 <hr />
 <h2 align="center">Thinking Outside the Box</h2>
 <p align="left">page 164 </p>
 <p align="left"><font color="#0000FF"><b>(50) 6. Consider a VGA screen that has 640 x 800 pixels per screen.<br />
   Assume that each pixel uses 24 bits (8 for red, 8 for green, 8 bits for blue).<br />
   If a movie video presents 30 frames per second, how many bytes will a two (2) hour movie require for storage? <br />
   Show your calculations, with units. <br />
   </b><strong>
   <textarea name="q12" cols="100" rows="14" id="q12"></textarea>
 </strong><b> </b></font></p>
 <p align="left"><font color="#0000FF"><b><br />
  (25) 6b. How many bytes can a standard DVD hold?&nbsp; (Single Layer, not Dual Layer) <br />
   </b> <strong>
   <textarea name="q13" cols="100" rows="3" id="q13"></textarea>
   </strong></font></p>
 <p align="left"><font color="#0000FF"><strong><br />
 </strong><b>(25) 6c. Based on the above calculations, what then is the compression ratio of a DVD? <br />
 </b> <strong>
 <textarea name="q14" cols="100" rows="3" id="q14"></textarea>
 </strong><strong>   </strong></font></p>
 <hr />
 <p align="left"><font color="#0000FF"><strong> </strong></font></p>
 <h2 align="center">Hands-on Projects </h2>
 page 164 
 <p align="left"><font color="#0000FF"><b>(50) 2. Digital broadcast television will someday replace conventional analog television.<br />
   What form of multiplexing is used to broadcast digital television signals? <br />
   </b><strong>
   <textarea name="q15" cols="100" rows="3" id="q15"></textarea>
   </strong><b> </b></font></p>
 <p align="left"><font color="#0000FF"><b><br />
  </b></font><b>(50) </b>6. Numerous kinds of MPEG compression exist.<br />
  List each of the forms and describe what type of data is used in each type of compression. <font color="#0000FF"><b>  </b></font></p>
 <table width="100%"  border="1" cellspacing="2" cellpadding="2">
   <tr>
     <th width="12%">Compression</th>
     <th width="88%">Data description</th>
   </tr>
   <tr>
     <td>MPEG-1</td>
     <td>&nbsp;</td>
   </tr>
   <tr>
     <td>MPEG-2</td>
     <td>&nbsp;</td>
   </tr>
   <tr>
     <td>MPEG-3</td>
     <td>&nbsp;</td>
   </tr>
   <tr>
     <td>MPEG-4</td>
     <td>&nbsp;</td>
   </tr>
 </table>
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
