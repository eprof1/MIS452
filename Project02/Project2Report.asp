<%@LANGUAGE="VBSCRIPT" CODEPAGE="1252"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<!-- DW6 -->
<!--#include file="../../../Scripts/constants.asp" -->

<!-- DW6 -->
<head>
<title>Project2</title>

<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
</head>

<body bgcolor="#FFFFFF" text="#000000">
<form action="http://course1.winona.edu/ppaulson/scripts/ProcessHW.asp" method="post" name="frmHW" id="frmHW"> 
  <h1 align="center"><i><font color="#cc00FF">MIS 452
        <% response.write(semester) %>
   Project 2 Report</font></i></h1>
   <table width="100%" border="1" cellspacing="1" cellpadding="1"> 
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
  <option selected="selected">P2Report</option>
</select></td>
        <td><input name="InstID" type="hidden" id="InstID" value="00617282" /></td>
</tr><tr bgcolor="#00FFFF"><td colspan="3">&nbsp;</td></tr><tr bgcolor="#FF0000"><td colspan="3"><div align="center"><input type="submit" name="Submit" value="Submit" />
</div></td></tr> 
</table>
 <p><br /> 
    <font color="#FF0000"><b>1000 
  points</b></font></p>
 <h1 align="center"><i><font color="#cc00FF">Understanding Computers and Networks <br />
   Using VMware Virtualization Software</font></i></h1>
 <hr />
 <h1 align="center"><i><font color="#cc00FF">Computers-Part 1</font></i></h1>
 <p>For detailed information on this project refer to<a href="default.htm"> Project 2. </a><br />
   <br />
  Note to Mac and PC users-In this report your &quot;Virtual Machines&quot; folder refers to:<br />
  on a PC- D:\Data\Documents\Virtual Machines<br />
  on a Mac:  
 </p>
 <hr />
 <p><font color="#0000FF"><b>1. (25) Your laptop: 
       <select name="q1" id="q1">
         <option selected="selected">Please select a model...</option>
         <option>Mac-Pro</option>
         <option>Mac-White</option>
         <option>PC-Toshiba R10</option>
         <option>PC-HP 8440p</option>
         <option>PC-Toshiba m700 tablet</option>
    </select>
 </b></font></p>
 <hr />
 <p  align="left"><b><font color="#0000FF">2. (25) Create a new virtual machine. <br />
   Enter BIOS setup as follows: from the VMware menu select VM&gt;Power&gt;Power on to BIOS<br />
   Record the BIOS manufacturer:<br />
   <input name="q2" type="text" id="q2" size="30" />
 </font></b></p>
 <p  align="left"><b><font color="#0000FF">3. (25) BIOS purpose:<br />
   <input name="q3" type="text" id="q3" size="120" />
</font></b></p>
 <p  align="left">3a. (<strong>50</strong>) Provide a virtual machine BIOS screenshot, any screen:</p>
 <table width="90%" border="2" align="left">
   <tr>
     <td valign="top" scope="col"><p>bios screen shot</p>
      <p align="left">&nbsp;</p>
      <p>&nbsp;</p></td>
   </tr>
 </table>
 <p  align="left">&nbsp;</p>
 <p  align="left">&nbsp;</p>
 <p  align="left"><br />
  </p>
 <p  align="left">You are strongly encouraged to explore the BIOS settings.<br />
   Feel free to change the BIOS settings in this virtual machine.<br />
   If you cause a problem in a virtual machine you can just delete the virtual machine and start over.<br />
   The virtual machine environment is a great learning opportunity.
   <br />
   The BIOS in this virtual machine is similar to the BIOS in any Intel CPU based machine.<br />
   This is a great way to explore without causing damage to a 'real' computer.<br />
   Unless you know what you are doing, do not change the BIOS settings in your host laptop machine.
 </p>
 <hr />
 <p  align="left">Next explore the settings for your network adapter(s).<br />
   This can be from the virtual machine you just created, or another one such as the Win98se or Windows Server 2008 vm used  during class.
   <br />
   Note:  make sure that any virtual machine that you run while logged into the WSU network has the network adapter(s) set to:  'Host-only'. (This does not apply to students with MacBooks running the school supplied Windows 7 virtual machine.
 </p>
 <p  align="left"><b><font color="#0000FF">4. (25) What is the purpose of a Network Interface Card (NIC)? :<br />
   <input name="q4" type="text" id="q4" size="120" />
 </font></b></p>
 <p  align="left">4a. (50) Virtual Machine Settings Dialog box screen shot:</p>
 <table width="90%" border="2" align="left">
   <tr>
     <td valign="top" scope="col"><p>VM settings screen shot:</p>
       <p>&nbsp;</p>
       <p>&nbsp;</p></td>
   </tr>
 </table>
 <p>&nbsp;</p>
 <p>&nbsp;</p>
 <p><br />
   <br />
   <br />
 </p>
 <hr />
 <p  align="left">Use the VMware help screen to find and read the help topic &quot;using snapshots&quot;</p>
 <p  align="left"><b><font color="#0000FF">5. (50) What is the purpose of a Snapshot?:<br />
   </font></b><font color="#0000FF">
    <textarea name="q5" cols="120" rows="4" id="q5"></textarea>
</font></p>
 <p  align="left">5a. (<strong>50</strong>) Provide a screen shot of a virtual machine snapshot using the Snapshot Manager Dialog box:<br />
 </p>
 <table width="90%" border="2" align="left">
   <tr>
     <td valign="top" scope="col"><p>snapshot screen shot:</p>
       <p>&nbsp;</p>
       <p>&nbsp;</p></td>
   </tr>
 </table>
 <p>&nbsp;</p>
 <p><br />
   <br />
   <br />
   <br />
   <br />
 </p>
<hr />
<p  align="left">Use the VMware help screen to find and read the help topic &quot;using shared folders&quot;</p>
<p  align="left"><font color="#0000FF"><strong>6. (50) What is the purpose of Shared Folders?:</strong><br />
  </font>
  <textarea name="q6" cols="120" rows="4" id="q6"></textarea>
</p>
 <p  align="left">6a. (<strong>50</strong>) Provide a screen shot of your Shared Folders:<br />
 </p>
 <table width="90%" border="2" align="left">
   <tr>
     <td valign="top" scope="col"><p>Shared Folders screen shot:</p>
       <p>&nbsp;</p>
       <p>&nbsp;</p></td>
   </tr>
 </table>
 <p>&nbsp;</p>
 <p>&nbsp;</p>
 <p><br />
   <br />
   <br />
 </p>
 <hr />
<p  align="left">Use the VMware help screen to find and read the help topic &quot;Components of VMware Tools&quot;</p>
<p  align="left"><strong><font color="#0000FF">7. (50) What is the purpose of VMware Tools (PC)? :</font><br />
  <textarea name="q7" cols="120" rows="6" id="q7"></textarea> 
</strong> </p>
<hr />
<hr />
<p  align="left">Create a FreeDOS vm using the FreeDOS1fullcd.iso file available at: <br />
  \\mispgp\VirtuaMachineImages\MIS452Fall2010\FreeDOS </p>
<p  align="left">To create the DOS vm, first download this .iso file to your laptop, in your 'Virtual Machines' folder.</p>
<p  align="left">8. (<strong>100</strong>) Make a screen shot showing your FreeDOS vm running:</p>
<table width="90%" border="2" align="left">
  <tr>
    <td valign="top" scope="col"><p>FreeDOS vm, screen shot with vm RUNNING:</p>
      <p>&nbsp;</p>
      <p>&nbsp;</p></td>
  </tr>
</table>
<p  align="left">&nbsp;</p>
<p  align="left">&nbsp;</p>
<p  align="left">&nbsp;</p>
<hr />
<p  align="left">Create a Windows XP SP3 vm using the WinXPSP3.iso file available at: <br />
\\mispgp\VirtuaMachineImages\MIS452Fall2010\WinXP</p>
<p  align="left">To create the WinXP vm, first download this .iso file to your laptop, in your 'Virtual Machines' folder.<br />
  <br />
  Make sure you set the hard drive size to at least 4GB.
  <br />
  If you want a Product Key for your VM, please contact me.  If you do not plan on using this VM after 30 days from installation, a Product Key is not necessary.<br />
  Make sure to remember your &quot;Computer Name&quot; for your WinXP VM.  Note that you can make it whatever you want.
</p>
<p  align="left">9. (<strong>100</strong>) Make a screen shot showing your WinXP vm running:</p>
<table width="90%" border="2" align="left">
  <tr>
    <td valign="top" scope="col"><p>WinXP vm, screen shot with vm RUNNING:</p>
      <p>&nbsp;</p>
      <p>&nbsp;</p></td>
  </tr>
</table>
<p  align="left">&nbsp;</p>
<p  align="left">&nbsp;</p>
<p  align="left">&nbsp;</p>
<p  align="left">Using your WinXP vm, install a new app.<br />
  <a href="http://audacity.sourceforge.net/">Audacity</a> is recommended. It is a small download, only 2.1MB<br />
  A copy is also available in the folder:<br />
  \\mispgp\VirtuaMachineImages\MIS452Fall2010\WinXP<br />
  <br />
  Move the Audacity installation file into your VM by using Shared Folders.
  <br />
</p>
<p  align="left">10. (<strong>50</strong>) Make screen shot showing your application running in the WinXP vm.<br />
</p>
<table width="90%" border="2" align="left">
  <tr>
    <td valign="top" scope="col"><p>WinXP vm, screen shot with vm and new application RUNNING:</p>
      <p>&nbsp;</p>
      <p>&nbsp;</p></td>
  </tr>
</table>
<p  align="left">&nbsp; </p>
<p  align="left">&nbsp;</p>
<p  align="left">&nbsp;</p>
<p  align="left">&nbsp;</p>
<p  align="left">Again using your WinXP vm, install, partition, and format a new 'virtual' IDE hard drive.<br />
  Make sure the virtual hard drive is small, dynamic and a maximum of 102MB.<br />
In VMware help, search for &quot;Add a New Virtual Disk to a Virtual Machine&quot;<br />
In the XP vm, Go to Start&gt;Control Panel&gt; (Switch to Classic View)&gt;Administrative Tools&gt;Computer Management&gt;Disk Management<br />
The XP vm may need to be restarted for the vm to recognize the new hard drive.
</p>
<p  align="left">11. (<strong>100</strong>) Make a screen shot showing the disk management console and the new hard drive installed in the WinXP vm:<br />
</p>
<table width="90%" border="2" align="left">
  <tr>
    <td valign="top" scope="col"><p>WinXP vm, screen shot of disk management console with new virtual hard drive installed:</p>
      <p>&nbsp;</p>
      <p>&nbsp;</p></td>
  </tr>
</table>
<p  align="left">&nbsp; </p>
 <p  align="left">&nbsp;</p>
 <p  align="left">&nbsp;</p>
 <p  align="left">&nbsp;</p>
<hr />
 <hr />
 <h1  align="center"><strong><i><font color="#cc00FF">Networks-Part  2 </font></i></strong></h1>
 <p  align="left"> In  this part connect the  WinXP vm from Part 1 to the Windows 2008 Server vm used in <a href="../Homework/HW06/Homework06.asp">Homework 6</a>.<br />
   <br />
 Make sure both vms have the NICs set to &quot;Host only&quot;</p>
 <p  align="left">12. (<strong>175</strong>) Make a screen shot showing both VMs running, with the Windows 2008 server accessing the virtual hard drive installed in step 11 into the WinXP workstation. The Win 2008 Server should be using  Windows Explorer.</p>
 <table width="90%" border="2" align="left">
   <tr>
     <td valign="top" scope="col"><p>Screen shot showing both VMs:</p>
       <p>&nbsp;</p>
       <p>&nbsp;</p></td>
   </tr>
 </table>
 <p  align="left">&nbsp;</p>
 <p  align="left">&nbsp; </p>
 <p  align="left">&nbsp;</p>
 <hr />
 <p  align="left"><strong><font color="#0000FF">13. (25) Comments,  thoughts, suggestions for improvement of this project:</font><br />
    <textarea name="q8" cols="120" rows="6" id="q8"></textarea>
 </strong><br />
 </p>
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
 </p>
</form>
<p>&nbsp;</p>
</body>
</html>
