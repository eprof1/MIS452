<%@LANGUAGE="VBSCRIPT" CODEPAGE="1252"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<!-- DW6 -->
<!--#include file="../../../Scripts/constants.asp" -->

<!-- DW6 -->
<head>
<title>Project3</title>

<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
</head>

<body bgcolor="#FFFFFF" text="#000000">
<form action="http://course1.winona.edu/ppaulson/scripts/ProcessHW.asp" method="post" name="frmHW" id="frmHW"> 
  <h2 align="center"><i><font color="#cc00FF">MIS 452
        <% response.write(semester) %>
   Project 3 Report</font></i></h2><table width="100%" border="1" cellspacing="1" cellpadding="1"> 
<tr bgcolor="#00FFFF"> <td width="36%">First Name:    <input type="text" name="FirstName" size="30" maxlength="50" />
</td>
<td width="40%">Last Name:  <input type="text" name="LastName" size="25" maxlength="50" /></td>
<td width="24%"> WID:  <input type="password" name="PIN" /></td>
</tr> <tr bgcolor="#00FFFF"> 
<td width="36%">Semester: <select name="Semester">
            <option selected="selected"><% response.write(semester) %></option>
</select> 
</td><td colspan="2">Class: <select name="Class">
  <option>MIS452</option>
</select> 
</td></tr> <tr bgcolor="#00FFFF"> <td width="36%">Section:    <select name="Section">
        <option selected="selected">01</option>
        <option>02</option>
        <option>99</option>
    </select>
    </td>
<td> 
Assignment:  <select name="Assignment">
  <option selected="selected">P3Report</option>
</select></td>
        <td><input name="InstID" type="hidden" id="InstID" value="00617282" /></td>
</tr><tr bgcolor="#00FFFF"><td colspan="3">&nbsp;</td></tr><tr bgcolor="#FF0000"><td colspan="3"><div align="center"><input type="submit" name="Submit" value="Submit" />
</div></td></tr> 
</table>
 <p><br /> 
    <font color="#FF0000"><b>1000 
  points</b></font></p>
 <h2 align="center"><i><font color="#cc00FF">Small Office / Home Office Networks-Part 1 </font></i></h2>
 <p>For detailed information on this report refer to<a href="default.htm"> Project 3. </a></p>
 <p><font color="#0000FF"><b>1. Group number: 
       <select name="q1" id="q1">
      <option selected="selected">99</option>
      <option>1</option>
      <option>2</option>
      <option>3</option>
      <option>4</option>
      <option>5</option>
      <option>6</option>
      <option>7</option>
      <option>8</option>
      <option>9</option>
      <option>10</option>
      <option>11</option>
      <option>12</option>
      <option>13</option>
      <option>14</option>
      <option>15</option>
      <option>16</option>
      <option>17</option>
      <option>18</option>
      <option>19</option>
      <option>20</option>
      <option>21</option>
      <option>22</option>
    </select>
 </b></font></p>
 <p  align="left"><b><font color="#0000FF">2. (25) Contact name: 
       <input name="q2" type="text" id="q2" size="30" />
 </font></b></p>
 <p  align="left"><b><font color="#0000FF">3. (25) Contact employer: 
       <input name="q3" type="text" id="q3" size="25" />
</font></b></p>
 <p  align="left"><b><font color="#0000FF">4. (25) Network issue: 
       <input name="q4" type="text" id="q4" size="50" />
 </font></b></p>
 <p  align="left"><b><font color="#0000FF">5. (100) Description of problem facing organization:<br />
 </font></b><font color="#0000FF">
 <textarea name="q5" cols="100" rows="10" id="q5"></textarea>
</font></p>
 <p  align="left"><font color="#0000FF"><strong>6. (200) Description of proposed solution:</strong><br />
 </font><textarea name="q6" cols="100" rows="12" id="q6"></textarea>
</p>
 <p  align="left"><strong><font color="#0000FF">7. (100) Issues that arose during investigation, and how your group resolved these issues:</font><br />
     <textarea name="q7" cols="100" rows="6" id="q7"></textarea> 
  </strong> </p>
 <p  align="left"><strong><font color="#0000FF">8. (25) Comments,  thoughts, suggestions for improvement of this project:</font><br />
     <textarea name="q8" cols="100" rows="6" id="q8"></textarea>
</strong></p>
 <hr />
 <h2  align="center"><strong><i><font color="#cc00FF">Small Office / Home Office Networks -Part 2 </font></i></strong></h2>
 <p  align="left">(<strong>500</strong>)&nbsp; Each group is required to write a report summarizing your experience in this project.<br />
   This document contains an outline of items that may be appropriate for inclusion in your report.<br />
  Feel free to add Visio diagrams and whatever else you deem appropriate-PowerPoint presentation, MovieMaker video....<br />
 It is suggested that you make use of the Network Computing &quot;<a href="http://www.networkcomputing.com/netdesign/soho1.html">Network Design Manua</a>l&quot; outline in order to develop your report. </p>
 <p  align="left"><a href="NetworkDesignManual.html">Local Copy-Network Design Manual</a></p>
 <ol>
   <li>Functional Requirements</li>
   <li>Network Topologies Considered</li>
   <li>Network Cabling</li>
   <li>Servers and Services</li>
   <li>Network Operating System</li>
   <li>Network Server Hardware</li>
   <li>Connectivity</li>
   <li>Client Computers
     <hr />
   </li>
 </ol>
 <p  align="left"><strong>Submit all of your files for this report (including a copy of this report) to //store/classes/20113000719/Shared/GroupX</strong></p>
 <p  align="left">Spelling, grammar and professionalism will be an important aspect of this report.&nbsp; <br />
  You can be penalized up to 25% of your report grade for sloppy work.   </p>
 <hr />
 <p>Important: Assignments can have two parts.<br />
  <b><U>1. Form Part </U></b><br />
  <b><font color="#0000FF">The form part has blue background for your personal
  information, or dark blue text for questions </font></b>. <font color="#0000FF"><b>The
  form part is answered by placing your answer in the 'Init val' field as shown
  below.&nbsp; Do not delete any of the TextField boxes! This method will keep
  your answer in your .html file when you publish / ftp your homework to your
  studentwebsite. Never change the Name field (q1, q2...)! </b></font> </p>
<p><img src="../Project2/TextFieldProperties.png" alt="Properties Panel" width="776" height="127" /></p>
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
 </p>
</form>
<p>&nbsp;</p>
</body>
</html>
