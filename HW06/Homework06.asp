<%@LANGUAGE="VBSCRIPT" CODEPAGE="1252"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<!-- DW6 -->
<!--#include file="../../../../Scripts/constants.asp" -->

<head>
<title>MIS452Homework06</title> 
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
    <option selected="selected">06</option>
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
  <font color="#FF0000"><b>575   points</b></font></p>
 <h2 class="MsoTitle" align="center"><font color="#cc00ff"><i><U> Chapter 7&nbsp;&nbsp; Local Area Networks </U></i></font></h2>
<h2 class="MsoTitle" align="center">Questions</h2>
 <p align="left"><strong><font color="#0000FF">(50) 1. What is the tie-in between Robert Metcalfe and CSMA/CD&nbsp;(Carrier sense multiple access / collision detection)? <br />
  Note: do not only rely on the book for the answer.<br />
  Explain your answer.
 </font></strong><br />
    <label>
    <input name="q1" type="text" id="q1" size="100" maxlength="100" />
    </label>
  </p>
 <p align="left"><strong><font color="#0000FF">(25)&nbsp; 2.&nbsp; What does &quot;promiscuous mode&quot; mean in relation to the above question?<br />
   Explain your answer.</font></strong><br /> 
   <input name="q2" type="text" id="q2" size="100" maxlength="100" />
   <br />
 </p>
 <hr />
 <h2 align="center">Review Questions</h2>
 <p align="left">page 233 </p>
 <p align="left"><strong><font color="#0000FF">(25)&nbsp; 9. What is the difference between a physical design and a logical design?</font></strong><br />
   <label>
   <textarea name="q3" cols="100" rows="4" id="q3"></textarea>
</label>
 </p>
 <p align="left">
   <label><strong><font color="#0000FF">(25)&nbsp; 12. What is meant by a &quot;nondeterministic&quot; protocol?</font></strong><br />
   <textarea name="q4" cols="100" rows="4" id="q4"></textarea>
   </label>
 </p>
 <p><strong><font color="#0000FF">(25)&nbsp; 16a. What is the primary advantage of power over Ethernet ?</font></strong><br />
    <textarea name="q5" cols="100" rows="4" id="q5"></textarea> 
 </p>
 <p><strong><font color="#0000FF">(25)&nbsp; 16b. What is the primary disadvantage of power over Ethernet ?</font></strong><br />
   <textarea name="q6" cols="100" rows="4" id="q6"></textarea>
</p>
 <hr />
 <h2 align="center">Exercises </h2>
 <p align="left">page 243 </p>
 <p align="left"><strong><font color="#0000FF">(25) 7. Is a hub a passive device? <br />
 Explain.</font></strong><br />
   <textarea name="q7" cols="100" rows="6" id="q7"></textarea>
<br />
 </p>
 <p align="left"><strong><font color="#0000FF">(25) 9. If a network were described as 1000BaseT, list everything you would know<br />
about that network.</font></strong><br />
<textarea name="q8" cols="100" rows="3" id="q8"></textarea>
</p>
 <p align="left">   <font color="#0000FF"><strong>(25)  14. Which of the wireless LAN protocols can support data rates as high as 54Mbps? Is this theoretical or actual?</strong></font><strong><br />
   <textarea name="q9" cols="100" rows="6" id="q9"></textarea>
</strong></p>
 <p align="left"><strong><font color="#0000FF">(50)&nbsp; 15. Your company wants to create a wireless network for the entire office building.<br />
   The building is 10 stories high, and the company wants to incorporate IEEE 802.11a<br />
  by placing one access point on the tenth floor.<br /> 
  Will this layout work? <br />
  Explain your answer.</font></strong><br />
  <textarea name="q10" cols="100" rows="8" id="q10"></textarea> 
  </p>
 <p align="left">&nbsp;</p>
 <hr />
 <h2 align="center">Thinking Outside the Box</h2>
 <p align="left">page 237 </p>
 <p align="left"><font color="#0000FF"><b>(75) 5. A large company has many different departments housed in a large office complex in the city.<br />
   Each department has a database of local information.<br />
   The company wants to let all the employees from around the company access any of these databases.<br />
   What type of network would you recommend for such a situation?<br />
   Explain your answer. <br />
 </b><strong>
 <textarea name="q11" cols="120" rows="14" id="q11"></textarea>
 </strong></font></p>
 <hr />
 <p align="left"><font color="#0000FF"><strong>    </strong></font></p> 
 <h2 align="center">Hands-on Project</h2>
 <p>page 238 (p246 in 5e)</p>
 <p>Windows Server 2008 virtual machine- password is Wsu5838</p>
 <p align="left"><strong><font color="#0000FF">6</font><font color="#0000FF">.&nbsp; <a href="http://en.wikipedia.org/wiki/Wireshark">Investigate</a> <a href="http://www.wireshark.org/">WireShark</a> which is installed on the WinSrv2008 vm. (note: WireShark was formerly Ethereal)<br />
   <img src="../Answers/../HW06/WireShark.png" alt="WireShark" width="960" height="619" />   <br />
  Start up both the Win 2008 server and Win982e Virtual Machines.<br />
  Make sure both network cards are set to 'local only'<br />
  Make sure that the Win 2008 server has IIS running.<br />
  Open IE in the Win 98 machine and browse to 'http://server2008v' </font></strong><strong><font color="#0000FF"><br />
  <br />
  (25)&nbsp; 6a.&nbsp; What do you see in IE?<br />
    </font></strong><font color="#0000FF">
    <strong>
    <textarea name="q12" cols="100" rows="5" id="q12"></textarea>
  </strong></font></p>
 <p align="left">&nbsp;</p>
 <p align="left">(<strong>25</strong>)&nbsp; 6b.&nbsp; Make a screen shot of the captured packets window from WireShark in the Win2008 vm</p>
 <table width="100%"  border="1" cellspacing="2" cellpadding="2">
   <tr>
     <td valign="top"><p>WireShark captured packets screen shot:</p>
       <p>&nbsp; </p>
      <p>&nbsp;</p></td>
   </tr>
 </table>
 <p align="left"><strong>(25</strong>)&nbsp; 6c.&nbsp; Make a screen shot of the WireShark window in the Win2008 vm</p>
 <table width="100%"  border="1" cellspacing="2" cellpadding="2">
   <tr>
     <td><p>WireShark window screen shot:</p>
         <p>&nbsp; </p>
         <p>&nbsp;</p></td>
   </tr>
 </table>
 <p align="left">&nbsp;</p>
 <p align="left"><strong><font color="#0000FF">(125)&nbsp; 6</font></strong><strong><font color="#0000FF">d.&nbsp; What does this data mean?<br />
   </font></strong><font color="#0000FF"><strong>
   <textarea name="q12" cols="100" rows="6" id="q12"></textarea>
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
