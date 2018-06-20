<%@LANGUAGE="VBSCRIPT" CODEPAGE="1252"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<!-- DW6 -->
<!--#include file="../../../../Scripts/constants.asp" -->

<head>
<title>MIS452Homework03</title> 
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
    <option selected="selected">03</option>
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
  <font color="#FF0000"><b>425   points</b></font></p>
 <h2 class="MsoTitle" align="center"><font color="#cc00ff"><i><U> Chapter 3&nbsp;&nbsp; Conducted and Wireless Media </U></i></font></h2>
 <h2 class="MsoTitle" align="center">Questions</h2>
 <p align="left"><strong><font color="#0000FF">(50) 1. What is the media needed for the transmission of radio waves (used in wireless communications)? <br />
   Note: do not only rely on the book for the answer. </font></strong><br />
   <label>
   <input name="q1" type="text" id="q1" size="100" maxlength="100" />
   </label>
   <br />
 </p>
 <hr />
 <h2 align="center">Review Questions</h2>
 <p align="left">page 111 </p>
 <p align="left"><strong><font color="#0000FF">(25) 7. Why is fiber-optic cable immune to electromagnetic interference?</font></strong><br />
   <textarea name="q2" cols="100" rows="6" id="q2"></textarea>
 </p>
 <p align="left"><strong><font color="#0000FF">(25) 21. What are the WiMAX protocols used for? </font></strong><br />
   <label>
   <textarea name="q3" cols="100" rows="6" id="q3"></textarea>
</label>
 </p>
 <br />
 <p><strong><font color="#0000FF">(25) 27. List three possible application areas of Bluetooth </font></strong><br />
   <label>
   <textarea name="q4" cols="100" rows="6" id="q4">1.  
2. 
3. 
4. 
</textarea>
</label>
 </p>
 <p align="left">
   <label> </label>
 </p>
 <hr />
 <h2 align="center">Exercises </h2>
 <p align="left">page 112 </p>
 <p align="left">(25) <strong><font color="#0000FF"> 1. Table 3-1 shows Category 1 wire transmitting a signal for 5-6 kilometers (3-4 miles) but Category 5e for only 100 meters (328 feet).<br />
   Does this mean Category 1 is the best wire for long-distance data transmissions?   Explain.</font></strong> <br />
   <textarea name="q5" cols="100" rows="4" id="q5"></textarea>
   <br />
  <img src="Table3_1.png" width="962" height="563" border="1" /></p>
 <p align="left">&nbsp;</p>
 <p align="left">(<strong>75</strong>)  11. Your company has two offices located approximately one mile apart.&nbsp; Data needs to be transferred between the offices at speeds up to 100Mbps. <br />
   List three solutions  for interconnecting the two buildings.<br />
   Comment on the feasibility of each-technical, financial, political. </p>
 <table width="100%"  border="1" cellspacing="2" cellpadding="2">
   <tr>
     <th>Solution</th>
     <th>Technical</th>
     <th>Financial</th>
     <th>Political</th>
   </tr>
   <tr>
     <td>&nbsp;</td>
     <td>&nbsp;</td>
     <td>&nbsp;</td>
     <td>&nbsp;</td>
   </tr>
   <tr>
     <td>&nbsp;</td>
     <td>&nbsp;</td>
     <td>&nbsp;</td>
     <td>&nbsp;</td>
   </tr>
   <tr>
     <td>&nbsp;</td>
     <td>&nbsp;</td>
     <td>&nbsp;</td>
     <td>&nbsp;</td>
   </tr>
 </table>
 <p align="left"><br />
   (25) <strong><font color="#0000FF"> 12. Given that a satellite signal travels at the speed of light, how long does it take for a signal to go from Earth to a GEO satellite and back to Earth? </font></strong>&nbsp; <br />
Show your calculations, with units.<br />
<textarea name="q6" cols="100" rows="4" id="q6">
</textarea>
</p>
 <p align="left">(25) <strong><font color="#0000FF"> 17. Why do cellular telephone systems need only seven sets of frequencies in a metropolitan area?</font></strong>&nbsp; <br />
<textarea name="q7" cols="100" rows="6" id="q7"></textarea>
<br />
 </p>
 <hr />
 <p align="left">(50) <strong><font color="#0000FF"> 18.&nbsp; What is one potentially serious problem with using your personal digital assistant and Bluetooth to unlock doors wirelessly?&nbsp; Explain.</font></strong>&nbsp; <br />
  <br />
  <textarea name="q8" cols="100" rows="6" id="q8"></textarea> 
  </p>
 <hr />
 <h2 align="center">Thinking Outside the Box</h2>
 <p align="left">page 113 </p>
 <p align="left"><font color="#0000FF"><b>(25) 3. You are the technology guru for an interstate trucking company.<br />
   You need to maintain constant contact with your fleet of trucks.<br />
   Which wireless technologies will enable you to do this?
   <br />
   </b>
     <strong>
     <textarea name="q9" cols="100" rows="3" id="q9"></textarea>
     <br />
     <br />
     (25)&nbsp; 6.  You are sitting at your desk at work, using your laptop computer.&nbsp; The boss calls an emergency meeting for you and several coworkers and asks everyone to bring his or her laptop computer.&nbsp; When you get to the meeting room, the boss wants to download an important file from his laptop to all your coworker's laptops.&nbsp; List three possible media solutions that will support this download, along with their advantages and disadvantages. <br />
     <textarea name="q10" cols="100" rows="3" id="q10"></textarea>
</strong></font></p>
 <hr />
 <h2 align="center">Hands-on Projects </h2>
 page 114
 <p align="left"><font color="#0000FF"><b>(50) 11. Using the Internet or the library determine the typical height of a terrestial microwave tower.&nbsp; <br />
  If the tower's height is increased by 10 meters, how much farther will the tower be able to transmit?<br />
  Show your calculations.<br />
  Note: the typical height will vary depending on your information source. What is important is assessing the effect of height on signal transmission distance.<br />
  Ref:    <a href="http://www.rand.org/pubs/research_memoranda/RM3762/RM3762.chap5.html">http://www.rand.org/pubs/research_memoranda/RM3762/RM3762.chap5.html</a> <br />
   </b></font> <font color="#0000FF">
   <textarea name="q11" cols="120" rows="18" id="q11">

 </textarea>
 </font></p>
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
