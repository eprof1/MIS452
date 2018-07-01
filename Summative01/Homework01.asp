<%@LANGUAGE="VBSCRIPT" CODEPAGE="1252"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<!-- DW6 -->
<!--#include file="../../../../Scripts/constants.asp" -->

<head>
<title>MIS452Homework01</title> 
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
</head>

<body bgcolor="#FFFFFF" text="#000000">
<form action="http://course1.winona.edu/ppaulson/Scripts/ProcessHW.asp" method="post" name="frmHW" id="frmHW"> 
<h2 align="center"><i><font color="#cc00FF">MIS 452 
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
    <option selected="selected">01</option>
    <option>02</option>
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
  <font color="#FF0000"><b>375   points</b></font></p>
 <h2 class="MsoTitle" align="center"><font color="#cc00FF"><i><U> Chapter 1 &nbsp;&nbsp; Introduction</U></i></font></h2>
 <h2 class="MsoTitle" align="center">Questions</h2>
 <p align="left"><strong><font color="#0000FF">(50) 1. What is   telecommunications? <br />
   Note: do not rely on the book for the answer. </font></strong><strong><font color="#0000FF">Please provide a clear, concise answer.</font></strong><br />
   <label>
   <input name="q1" type="text" id="q1" size="100" maxlength="100" />
   </label>
   <br />
 </p>
 <hr />
 <h2 align="center">Review Questions</h2>
 <p align="left">page 29</p>
 <p align="left">(<strong>25</strong>) 8. Fill in the seven layers of the OSI (Open Systems Interconnection) model in the table below. </p>
 <table width="50%" border="1">
   <tr>
     <th width="38%">Layer number</th>
     <th width="62%">Name</th>
   </tr>
   <tr>
     <td><div align="center">7</div></td>
     <td bgcolor="#CCFFFF">&nbsp;</td>
   </tr>
   <tr>
     <td><div align="center">6</div></td>
     <td bgcolor="#CCFFFF">&nbsp;</td>
   </tr>
   <tr>
     <td><div align="center">5</div></td>
     <td bgcolor="#CCFFFF">&nbsp;</td>
   </tr>
   <tr>
     <td><div align="center">4</div></td>
     <td bgcolor="#CCFFFF">&nbsp;</td>
   </tr>
   <tr>
     <td><div align="center">3</div></td>
     <td bgcolor="#CCFFFF">&nbsp;</td>
   </tr>
   <tr>
     <td><div align="center">2</div></td>
     <td bgcolor="#CCFFFF">&nbsp;</td>
   </tr>
   <tr>
     <td><div align="center">1</div></td>
     <td bgcolor="#CCFFFF">&nbsp;</td>
   </tr>
 </table>
 <p align="left">(<strong>25</strong>) 9. Fill in the 4 layers of the TCP/IP (Transmission Control Protocol/Internet Protocol)  suite in the table below:</p>
 <table width="50%" border="1">
   <tr>
     <th width="38%">Layer number</th>
     <th width="62%">Name</th>
   </tr>

   <tr>
     <td><div align="center">5</div></td>
     <td bgcolor="#CCFFFF">&nbsp;</td>
   </tr>
   <tr>
     <td><div align="center">4</div></td>
     <td bgcolor="#CCFFFF">&nbsp;</td>
   </tr>
   <tr>
     <td><div align="center">3</div></td>
     <td bgcolor="#CCFFFF">&nbsp;</td>
   </tr>
   <tr>
     <td><div align="center">2</div></td>
     <td bgcolor="#CCFFFF">&nbsp;</td>
   </tr>
   <tr>
     <td><div align="center">1</div></td>
     <td bgcolor="#CCFFFF">&nbsp;</td>
   </tr>
 </table>
 <p><strong><font color="#0000FF">(25) 13. How does convergence apply to the telecommunications industry? </font></strong><br />
   <label>
   <textarea name="q2" cols="100" rows="6" id="q2">with respect to technologies: 

with respect to wireless:  
</textarea>
   </label>
 </p>
 <hr />
 <h2 align="center">Exercises </h2>
 <p align="left">page 30</p>
 <p align="left">(50) 13. (Cannot use  ftp, it is now disabled on the server, just pretend you did)<br />
   <img src="ftpError.png" width="692" height="139" alt="ftp error" /><br />
   <br />
   <img src="ftpProhibited.png" alt="ftp is prohibited" width="492" height="212" /><br />
<br />
     <img src="ftp.png" alt="Windows Explorer ftp" width="512" height="256" /><br />
     Windows Explorer does this using a 'Get File' command.<br />
     <br />
       Using the TCP/IP suite show the progression of messages as the 'Get File' command moves from your computer, through routers, to the server 'classes' and back.  <br />
 Assume it travels from your computer, through 2 routers, then to the web server. </p>
 <p align="left">Hint: remember the TCP/IP suite from Review Question 9 above.</p>
 <table width="98%" border="1">
   <tr>
     <td><p>&nbsp;</p>
      <p>&nbsp;</p>
      <p>&nbsp;</p>
      <p>&nbsp;</p>
      <p>&nbsp;</p></td>
   </tr>
 </table>
 <p align="left">&nbsp; </p>
 <p align="left"><br /> 
   <strong><font color="#0000FF">(25) 14. What two characteristics distinguish a personal area network from other types of networks?</font></strong><br /> 
   <textarea name="q3" cols="100" rows="4" id="q3">1.

2.</textarea>
   <br />
  </p>
 <hr />
 <h2 align="center">Thinking Outside the Box</h2>
 <p align="left">page 31</p>
 <p align="left">Refer to  the list of eleven (11) types of general network connections found on page 6:</p>
 <p align="left">Computer Networks &ndash; Basic Connections<br />
   a. Terminal/microcomputer-to-mainframe computer connections<br />
   b. Microcomputer-to-local area network connections<br />
   c. Microcomputer-to-Internet connections<br />
   d. Local area network-to-local area network connections<br />
   e. Personal area network-to-workstation connections<br />
   f. Local area network-to-metropolitan area network connections<br />
   g. Local area network-to-wide area network connections<br />
   h. Wide area network-to-wide area network connections<br />
   i. Sensor-to-local area network connections<br />
   j. Satellite and microwave connections<br />
  k. Wireless telephone connections</p>
 <p align="left"><strong><font color="#0000FF"> page 31 </font></strong></p>
 <p align="left"><font color="#0000FF"><b>(25) Which of the eleven network connections listed above would most likely involve a connection to the Internet?</b>
     <textarea name="q4" cols="100" rows="3" id="q4">
</textarea>
 </font></p>
 <hr />
 <p align="left">&nbsp;</p>
 <h2 align="center">Hands-on Projects </h2>
 page 31
 <p align="left"><font color="#0000FF"><b>(50) 4. List at least four network applications and the type of network connection used, (see list above)  at Winona State University.
 </b></font><br />
 <font color="#0000FF">
<textarea name="q5" cols="100" rows="7" id="q5"></textarea>
<br />
 <br />
 </font></p>
 <p align="left"><b><font color="#0000FF">(25) Are local area networks involved?</font></b><br />
   <font color="#0000FF">
     <textarea name="q6" cols="100" rows="3" id="q6"></textarea>
  </font></p>
 <p align="left"><b><font color="#0000FF">(25) Are wide area networks involved?</font></b><br />
   <font color="#0000FF">
     <textarea name="q7" cols="100" rows="3" id="q7"></textarea>
   </font><br />
 </p>
 <p align="left"><b><font color="#0000FF">(50) Draw a diagram or map of these applications and their connections using Microsoft Visio 2010.<br />
   Make sure to label all 4 applications, and show the corresponding server.<br />
   Also make sure to use, at a minimum, firewalls, switches and routers, as appropriate.
   <br />
 Save the file as a web page, upload it to your web site, and create a hyperlink below:</font></b></p>
 <h2 align="left"><b><font color="#0000FF">MyVisioDiagram</font></b><br /> 
 </h2>
 <hr />
 <p>Important: Assignments can have two parts.<br />
  <b><U>1. Form Part </U></b><br />
  <b><font color="#0000FF">The form part has blue background for your personal
  information, or dark blue text for questions </font></b>. <font color="#0000FF"><b>The
  form part is answered by placing your answer in the 'Init val' field as shown
  below.&nbsp; Do not delete any of the TextField boxes! This method will keep
  your answer in your .html file when you publish / ftp your homework to your
  studentwebsite. Never change the Name field (q1, q2...)! </b></font> </p>
<p><img src="TextFieldProperties.png" alt="Properties Panel" width="776" height="127" /></p>
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
 </p></form><p>&nbsp;</p>
</body>
</html>
