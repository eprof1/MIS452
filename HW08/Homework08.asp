<%@LANGUAGE="VBSCRIPT" CODEPAGE="1252"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<!-- DW6 -->
<!--#include file="../../../../Scripts/constants.asp" -->

<head>
<title>MIS452Homework08</title> 
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
    <option>04</option>
    <option>05</option>
    <option>06</option>
    <option>07</option>
    <option selected="selected">08</option>
    <option>09</option>
    <option>10</option>
    <option>99</option>
  </select></td>
</tr><tr bgcolor="#00FFFF"><td colspan="3">&nbsp;</td></tr><tr bgcolor="#FF0000"><td colspan="3"><div align="center"><input type="submit" name="Submit" value="Submit" />
        </div></td></tr> 
</table>
 <p><br /> 
  <font color="#FF0000"><b>325   points</b></font></p>
 <h1 class="MsoTitle" align="center"><font color="#cc00ff"><i><U> Chapter 9&nbsp;&nbsp; MANs and WANs </U></i></font></h1>
 <p class="MsoTitle" align="center"><u><i></i></u></p>
 <h2 class="MsoTitle" align="center">Questions</h2>
 <p align="left"><strong><font color="#0000FF">(50) 1.&nbsp; In your opinion will WANs be affected by the convergence of data, voice and video networks?<br />
  Note: do not only rely on the book for the answer.<br />
  Explain your answer.
 </font></strong><br />
    <label>
    <textarea name="q1" cols="100" rows="4" id="q1"></textarea>
    </label>
 </p>
 <hr /> 
 <h2 align="center">Exercises </h2>
 <p align="left">page 304 (p313 in 5e)</p>
 <p align="left"><strong><font color="#0000FF">(25) 9. You are downloading a file over the Internet. Is the download a connectionless<br />
   application or a connection-oriented application? Explain.</font></strong><br />
   <textarea name="q2" cols="100" rows="3" id="q2"></textarea>
<br />
</p>
 <hr />
 <h2 align="center">Hands-on Projects </h2>
 page 306
 <p align="left"><strong><font color="#0000FF">(50) </font></strong><font color="#0000FF"><b> 6a.&nbsp; What is/are the current routing algorithm(s) used on the Internet? <br />
 </b><strong>
 <textarea name="q3" cols="100" rows="3" id="q3"></textarea>
</strong></font></p>
 <p align="left"><strong><font color="#0000FF">(50) </font></strong><font color="#0000FF"><b> 6b.&nbsp; Which of the basic algorithms and techniques introduced in this chapter are used?<br />
 </b><strong>
 <textarea name="q4" cols="100" rows="3" id="q4"></textarea>
 </strong></font><font color="#0000FF"><b><br />
 </b><strong>
 </strong></font><font color="#0000FF"><strong> </strong></font></p>
 <hr />
 <hr />
 <h1 align="center"><strong><font color="#0000FF"><span class="MsoTitle"><font color="#cc00ff"><i><U>Chapter 10&nbsp;&nbsp; Internet </U></i></font></span></font></strong></h1>
 <p align="left">&nbsp;</p>
 <h2 class="MsoTitle" align="center">Questions</h2>
 <p align="left"><strong><font color="#0000FF">(50) 1.&nbsp; What organization or person(s) is/are primarily responsible for the design and structure of the Internet?<br />
  Note: do not only rely on the book for the answer.<br />
  Explain your answer. </font></strong><br />
  <label>
  <textarea name="q5" cols="100" rows="4" id="q5"></textarea>
  </label>
 </p>
 <hr />
 <h2 align="center">Exercises </h2>
 <p align="left">page 348 (p356 in 5e)</p>
 <p align="left"><strong><font color="#0000FF">(25) 23. Some of the new protocols such as Internet Protocol version 6 are not including 
   any kind of error-detection scheme on the data portion of the packet. <br />
   What is the 
   significance of this trend?</font></strong><br />
  <textarea name="q6" cols="100" rows="5" id="q6"></textarea>
  <br />
 </p>
 <hr />
 <h2 align="center">Thinking Outside the Box</h2>
 <p align="left">page 348</p>
 <p align="left"><font color="#0000FF"><b>(75) 1.&nbsp; You are working for a company that wants to begin electronic data interchange (EDI) with two other companies that supply parts.<br />
   Your company produces mobile telephones, and the other two companies produce batteries and telephone keypads.<br />
   When your company places an order with the battery company, it specifies battery size, type, power and quantity.&nbsp; <br />
   When your company places an order with the keypad company, it specifies keypad configuration, power consumption, dimensions and color.<br />
   <br />
   How might XML be used to support EDI between these companies? <br />
    </b><strong>
   <textarea name="q7" cols="120" rows="6" id="q7"></textarea>
   </strong></font></p>
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
