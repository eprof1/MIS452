<%@LANGUAGE="VBSCRIPT" CODEPAGE="1252"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<!-- DW6 -->
<!--#include file="../../../../Scripts/constants.asp" -->

<head>
<title>MIS452Homework09</title> 
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
    <option>08</option>
    <option selected="selected">09</option>
    <option>10</option>
    <option>99</option>
  </select></td>
</tr><tr bgcolor="#00FFFF"><td colspan="3">&nbsp;</td></tr><tr bgcolor="#FF0000"><td colspan="3"><div align="center"><input type="submit" name="Submit" value="Submit" />
        </div></td></tr> 
</table>
 <p><br /> 
  <font color="#FF0000"><b>250   points</b></font></p>
 <h1 class="MsoTitle" align="center"><font color="#cc00ff"><i><U> Chapter 11&nbsp;&nbsp; Voice and Data Networks </U></i></font></h1>
 <p class="MsoTitle" align="center"><u><i></i></u></p>
 <h2 class="MsoTitle" align="center">Questions</h2>
 <p align="left"><strong><font color="#0000FF">(50) 1. Should a company maintain separate departments for data networking and their phone systems? <br />
  Note: do not only rely on the book for the answer.<br />
  Explain your answer.
 </font></strong><br />
    <label>
    <textarea name="q1" cols="100" rows="12" id="q1"></textarea>
    </label>
 </p>
 <hr />
 <h2 align="center">Exercises </h2>
 <p align="left">page 383 (p392 in 5e)</p>
 <p align="left"><strong><font color="#0000FF">(75) 4. For each of the following scenarios, state whether a telephone line or a trunk<br />
   should be used:<br />
   a. the connection from your home to the local telephone company<br />
   b. the connection between a large company&rsquo;s PBX and the telephone company<br />
   c. the connection between two central offices</font></strong><br />
   <textarea name="q2" cols="100" rows="6" id="q2">a.  
b.  
c.  
</textarea>
<br />
 </p>
 <p align="left"><strong><font color="#0000FF">(25) 11. You dial in to your Internet service provider using your 56k modem. Once<br />
   connected, your data rate is shown as 42,000 bps,  not 56k bps. <br />
   List all possible 
   reasons.</font></strong><br />
<textarea name="q3" cols="100" rows="5" id="q3">1. 
2.
3. 
4. </textarea>
</p>
 <hr />
 <h2 align="center">Thinking Outside the Box</h2>
 <p align="left">page 385</p>
 <p align="left"><font color="#0000FF"><b>(100) 3. Your company wants to create or install an application or service that allows employees to dial in using a phone, or use some type of Internet connection from a remote (read not at the company) location and using a single connection access their e-mail, voice mail and data files.<br />
  What kind of system or systems would allow this?<br />
  Describe the necessary hardware and software requirements.</b></font><font color="#0000FF"><b><br />
   </b><strong>
   <textarea name="q4" cols="120" rows="14" id="q4">System:  




Hardware and software:</textarea>
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
