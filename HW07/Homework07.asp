<%@LANGUAGE="VBSCRIPT" CODEPAGE="1252"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<!-- DW6 -->
<!--#include file="../../../../Scripts/constants.asp" -->

<head>
<title>MIS452Homework07</title> 
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
    <option selected="selected">07</option>
    <option>08</option>
    <option>09</option>
    <option>10</option>
    <option>99</option>
  </select></td>
</tr><tr bgcolor="#00FFFF"><td colspan="3">&nbsp;</td></tr><tr bgcolor="#FF0000"><td colspan="3"><div align="center"><input type="submit" name="Submit" value="Submit" />
        </div></td></tr> 
</table>
 <p><br /> 
  <font color="#FF0000"><b>350   points</b></font></p>
 <h1 class="MsoTitle" align="center"><strong><font color="#cc00ff"><span class="MsoTitle"><i><U>Chapter 8&nbsp;&nbsp; LAN Software </U></i></span></font></strong></h1>
 <h2 class="MsoTitle" align="center">Questions</h2>
 <p align="left"><strong><font color="#0000FF">(50) 1. What is the importance of a simulation tool such as  a virtual machine, in  Managing and Maintaining a Server 2008 Environment?<br />
  Explain your answer. </font></strong><br />
  <label>
  <textarea name="q1" cols="100" rows="3" id="q1"></textarea>
  </label>
 </p>
 <hr />
 <h2 align="center">Exercises </h2>
 <p align="left">page 272 (p281 in 5e)</p>
 <p align="left"><strong><font color="#0000FF">(25) 3. You want to create a local area network that protects the contents of the network<br />
   server&rsquo;s hard disks from disk crashes. List all the different techniques for providing<br />
   this protection that have been presented thus far.<br />
   </font></strong><br />
   <textarea name="q2" cols="100" rows="4" id="q2"></textarea>
   <br />
 </p>
 <p align="left"><strong><font color="#0000FF">(25) 5. Windows 2003/2008 uses Active Directory for its directory service, and NetWare<br />
   uses NDS. How are the two directory services alike?</font></strong><br />
  <textarea name="q3" cols="100" rows="3" id="q3"></textarea>
 <strong><br />
 </strong></p>
 <hr />
 <h2 align="center">Thinking Outside the Box</h2>
 <p align="left">page 273</p>
 <p align="left"><font color="#0000FF"><b>(50) 4.&nbsp; You are creating a network at home that consists of multiple computers, a high-quality printer, and a router with access to a high-speed Internet connection.<br />
   You do not need Windows 2008 server or NetWare version 6, but is there a particular desktop operating system that can be installed on each computer that will optimize the operations of your home network?
   <br />
   </b><strong>
   <textarea name="q4" cols="120" rows="14" id="q4"></textarea>
 </strong></font></p>
 <hr />
 <h2 align="center">Hands-on Projects </h2>
<p align="left">&nbsp;</p>
  <h1 align="center"><strong><font color="#cc00ff"><span class="MsoTitle"><i><U>War Driving</U></i></span></font></strong>
 </h1>
 <p align="left">What is <a href="../WarDriving/Wardriving-HOWTO.txt">War Driving</a>?&nbsp; Also see <a href="http://en.wikipedia.org/wiki/War_driving">Wikipedia</a>. And why should you care? </p>
 <p align="left"> NetStumbler-&nbsp; <a href="../WarDriving/netstumblerinstaller_0_4_0.exe">download</a> &nbsp;&nbsp;(0.4.0)<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <a href="../WarDriving/netstumbler_v0.4.0_release_notes.pdf">Overview</a> <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <a href="http://netstumbler.com/">web site </a></p>
 <p align="left">Vistumbler is also available- <a href="http://vistumbler.sourceforge.net/">http://vistumbler.sourceforge.net/</a> (9.8)</p>
 <p align="left">Screen shot of Vistumbler 9.2:<br />
   <img src="Vistumbler.png" width="1266" height="595" alt="vistumbler" /><br />
 </p>
 <p align="left">Download and install NetStumbler or Vistumbler, review the above material, then answer the following questions.&nbsp; <br />
   Feel free to work in your <a href="../../Project2/default.htm#Assignments">Project 2 groups</a>.&nbsp; <br />
  </p>
 <hr />
 <p align="left">Note: cannot use LT-20 on Win x64, skip GPS part of this assignment:
   <br />
   <br />
   <br />
   To use the Earthmate LT-20 GPS unit, you will need to install a USB to Serial port converter, from the manufacturer, Delorme:
   <br />
   <a href="SerialPortEmulator.htm">Serial Port Emulator </a><br />
   The .exe file is at: \\store\classes\20113000719\ReadOnly\SerialPortEmulator<br />
   <br />
   This is what NetStumbler 0.4 looks like when running:<br />
   <img src="../WarDriving/WarDrivingProgram.png" width="1104" height="490" />   </p>
 <p align="left"><strong><font color="#0000FF">1. (50)&nbsp; What are typical uses of  NetStumbler or Vistumbler (hint: help files are useful sources of information)?</font></strong><br />
   <font color="#0000FF"><strong>
   <textarea name="q5" cols="100" rows="7" id="q5"> </textarea>
</strong></font></p>
 <p align="left">&nbsp;</p>
 <p align="left"><strong>2.&nbsp; (150)&nbsp; Using NetStumbler and the DeLorme LT-20 GPS receiver record the following information on at least 10 Wireless Access Points in the Winona area.<br />
   Feel free  to go further than Winona. <br />
   You are encouraged to work with your MIS452 group members.&nbsp; But each student must submit a copy of their data. </strong></p>
 <table width="100%"  border="1" cellspacing="2" cellpadding="2">
   <tr>
     <th width="7%" scope="col">Number</th>
     <th width="9%" scope="col">MAC</th>
     <th width="6%" scope="col">SSID</th>
     <th width="9%" scope="col">Channel</th>
     <th width="8%" scope="col">Vendor / <br />
       Manfctr</th>
     <th width="11%" scope="col"><p>Latitude<br />
       (d m.mm)
     </p>
      </th>
     <th width="11%" scope="col">Longitude<br />
      (d m.mm) </th>
     <th width="18%" scope="col">Encryption<br />
       (WEP/WAP/none)</th>
     <th width="6%" scope="col">Signal<br />
      (db or %)</th>
     <th width="7%" scope="col">Notes</th>
   </tr>
   <tr>
     <td><div align="right">1</div></td>
     <td>&nbsp;</td>
     <td>&nbsp;</td>
     <td>&nbsp;</td>
     <td>&nbsp;</td>
     <td bgcolor="#FF0000">&nbsp;</td>
     <td bgcolor="#FF0000">&nbsp;</td>
     <td>&nbsp;</td>
     <td>&nbsp;</td>
     <td>&nbsp;</td>
   </tr>
   <tr>
     <td><div align="right">2</div></td>
     <td>&nbsp;</td>
     <td>&nbsp;</td>
     <td>&nbsp;</td>
     <td>&nbsp;</td>
     <td bgcolor="#FF0000">&nbsp;</td>
     <td bgcolor="#FF0000">&nbsp;</td>
     <td>&nbsp;</td>
     <td>&nbsp;</td>
     <td>&nbsp;</td>
   </tr>
   <tr>
     <td><div align="right">3</div></td>
     <td>&nbsp;</td>
     <td>&nbsp;</td>
     <td>&nbsp;</td>
     <td>&nbsp;</td>
     <td bgcolor="#FF0000">&nbsp;</td>
     <td bgcolor="#FF0000">&nbsp;</td>
     <td>&nbsp;</td>
     <td>&nbsp;</td>
     <td>&nbsp;</td>
   </tr>
   <tr>
     <td><div align="right">4</div></td>
     <td>&nbsp;</td>
     <td>&nbsp;</td>
     <td>&nbsp;</td>
     <td>&nbsp;</td>
     <td bgcolor="#FF0000">&nbsp;</td>
     <td bgcolor="#FF0000">&nbsp;</td>
     <td>&nbsp;</td>
     <td>&nbsp;</td>
     <td>&nbsp;</td>
   </tr>
   <tr>
     <td><div align="right">5</div></td>
     <td>&nbsp;</td>
     <td>&nbsp;</td>
     <td>&nbsp;</td>
     <td>&nbsp;</td>
     <td bgcolor="#FF0000">&nbsp;</td>
     <td bgcolor="#FF0000">&nbsp;</td>
     <td>&nbsp;</td>
     <td>&nbsp;</td>
     <td>&nbsp;</td>
   </tr>
   <tr>
     <td><div align="right">6</div></td>
     <td>&nbsp;</td>
     <td>&nbsp;</td>
     <td>&nbsp;</td>
     <td>&nbsp;</td>
     <td bgcolor="#FF0000">&nbsp;</td>
     <td bgcolor="#FF0000">&nbsp;</td>
     <td>&nbsp;</td>
     <td>&nbsp;</td>
     <td>&nbsp;</td>
   </tr>
   <tr>
     <td><div align="right">7</div></td>
     <td>&nbsp;</td>
     <td>&nbsp;</td>
     <td>&nbsp;</td>
     <td>&nbsp;</td>
     <td bgcolor="#FF0000">&nbsp;</td>
     <td bgcolor="#FF0000">&nbsp;</td>
     <td>&nbsp;</td>
     <td>&nbsp;</td>
     <td>&nbsp;</td>
   </tr>
   <tr>
     <td><div align="right">8</div></td>
     <td>&nbsp;</td>
     <td>&nbsp;</td>
     <td>&nbsp;</td>
     <td>&nbsp;</td>
     <td bgcolor="#FF0000">&nbsp;</td>
     <td bgcolor="#FF0000">&nbsp;</td>
     <td>&nbsp;</td>
     <td>&nbsp;</td>
     <td>&nbsp;</td>
   </tr>
   <tr>
     <td><div align="right">9</div></td>
     <td>&nbsp;</td>
     <td>&nbsp;</td>
     <td>&nbsp;</td>
     <td>&nbsp;</td>
     <td bgcolor="#FF0000">&nbsp;</td>
     <td bgcolor="#FF0000">&nbsp;</td>
     <td>&nbsp;</td>
     <td>&nbsp;</td>
     <td>&nbsp;</td>
   </tr>
   <tr>
     <td><div align="right">10</div></td>
     <td>&nbsp;</td>
     <td>&nbsp;</td>
     <td>&nbsp;</td>
     <td>&nbsp;</td>
     <td bgcolor="#FF0000">&nbsp;</td>
     <td bgcolor="#FF0000">&nbsp;</td>
     <td>&nbsp;</td>
     <td>&nbsp;</td>
     <td>&nbsp;</td>
   </tr>
   <tr>
     <td>&nbsp;</td>
     <td>&nbsp;</td>
     <td>&nbsp;</td>
     <td>&nbsp;</td>
     <td>&nbsp;</td>
     <td bgcolor="#FF0000">&nbsp;</td>
     <td bgcolor="#FF0000">&nbsp;</td>
     <td>&nbsp;</td>
     <td>&nbsp;</td>
     <td>&nbsp;</td>
   </tr>
 </table>
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
