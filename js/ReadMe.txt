// PgP 6/7/2018
// Do not put constants.js in this folder
// Students will add it to their individual website.
// Below is the constants.js file for MIS202

// save this file as constants.js in /js folder
// then update your constants below



// *** start of sample constants.js ***

// these are constants for course during current semester

// student- update variables below this line

var xeMail = "YourEmail@winona.edu";

var xFirstName = "Your First Name";

var xLastName = "Your Last Name";

var xStarID = "Your StarID";

var xSection = "Your Section";


// student-do no modify variables below here, unless told to do so.

// Creative Commons License footer
var ccLicense = '<a rel="license" href="http://creativecommons.org/licenses/by/4.0/"><img alt="Creative Commons License"  src="https://i.creativecommons.org/l/by/4.0/88x31.png" /></a><br /><span >eProfessor Immersive Learning Environment</span> by <a xmlns:cc="http://creativecommons.org/ns#" href="https://eprofessor.azurewebsites.net" property="cc:attributionName" rel="cc:attributionURL">Patrick G Paulson</a> is licensed under a <a rel="license" href="http://creativecommons.org/licenses/by/4.0/">Creative Commons Attribution 4.0 International License</a>.';

// variables below tell students where to save screen shot and .pdf files
var xxPath = "<code>/Documents/";   // may want to change this to add the 'MyWebSites' folder, or One Drive for Business ???
var xxPath = "<code>/Documents/";

var zzPath = "<code> C:/Users/";
var xzPath = "/</code>";

// current semester
var xSemester = "Fall2018";
var xClass = "MIS452";

// variables below tell students where to save screen shot and .pdf files
var startPath = "<code> C:&#92;Users&#92;";


function setVariables() {
    document.getElementById("email").value = xeMail;
    document.getElementById("FirstName").value = xFirstName;
    document.getElementById("LastName").value = xLastName;
    document.getElementById("pin").value = xStarID;

    document.getElementById("semester").value = xSemester;
    document.getElementById("class").value = xClass;
    document.getElementById("section").value = xSection;


    document.getElementById("xLicense").innerHTML = ccLicense;
    document.getElementById("xfooter").innerHTML = Date();
}

// *** end of sample constants.js ***

