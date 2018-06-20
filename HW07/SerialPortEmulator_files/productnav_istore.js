// JavaScript Document
	
/* Change the Displayed Content */

var num;
function showContent(whichContent) {

if (whichContent != null) {
	num = whichContent;
 } else {
	num = 1;
}	
for (i = 1; i < 7; i++) {
	if (window.document.getElementById("tab" + i + "a") != null) {
									   
		if (i == num) {
			window.document.getElementById("tab" + i + "a").style.borderBottomColor = '#FFF';
			window.document.getElementById("tab" + i + "a").style.backgroundColor = '#FFF';
			window.document.getElementById("tab" + i + "a").style.color = '#F60';
			window.document.getElementById("content" + i).style.display = '';
			}
		 else {
			window.document.getElementById("tab" + i + "a").style.borderBottomColor = '#CCC';
			window.document.getElementById("tab" + i + "a").style.color = '#333';
			window.document.getElementById("tab" + i + "a").style.backgroundColor = '';
			window.document.getElementById("content" + i).style.display = 'none';
			}
	}  
}
}

//----- Sample Popup Window -----------

function popUp(url, textOnly) {
	
	currentSite = window.document.location.href;
	
	if (currentSite.search("vise") != -1) {
		 url = "http://webstage.delorme.com/" + url;
	} else if (currentSite.search("test-shop") != -1) {
		 url = "http://webstage2.delorme.com/" + url;	
	 } else if (currentSite.search("webstage2") != -1) {
		 url = "http://webstage2.delorme.com/" + url;	
	} else {
		 url = "http://www.delorme.com/" + url;
	} 
	
	/*else if (currentSite.search("webstage") != -1) {
		 url = "http://webstage.delorme.com/" + url;
	} else {
		 url = "http://www.delorme.com/" + url;
	}*/
	
	windowWidth=screen.width;
	windowHeight=screen.height;
	//There's only text, so make it smaller
	if (textOnly == "smaller") {
		var newWindow=window.open(url,"Sample","width=550,height=500,left=10,top=25,scrollbars=yes,resizable=yes");
		newWindow.focus();
	
	} else {
		//800x600 res
		if (windowWidth<1024) {
			var newWindow=window.open(url,"Sample","width=760,height=500,left=10,top=25,scrollbars=yes,resizable=yes");
			newWindow.focus();
		//all higher resolutions	
		}else if (windowHeight>800) {
			var newWindow=window.open(url,"Sample","width=1000,height=740,left=10,top=25,scrollbars=yes,resizable=yes");
			newWindow.focus();
		//1024x768 res	
		} else {
			var newWindow=window.open(url,"Sample","width=850,height=673,left=10,top=25,scrollbars=yes,resizable=yes");
			newWindow.focus();
		}
	}
}

//-------- Sample Popup Image Swap ----------

function changeProportions (fullImage, croppedImage) {
	if (window.document.getElementById("popUpInfo").style.display == '') {
		window.document.getElementById("popUpInfo").style.display = 'none';
		window.document.getElementById("sample").src = fullImage;
		window.document.getElementById("popUpFullScreenshot").style.display = 'none';
		window.document.getElementById("popUpRestoreText").style.display = '';
		
	} else {
		window.document.getElementById("popUpInfo").style.display = '';
		window.document.getElementById("sample").src = croppedImage;
		window.document.getElementById("popUpFullScreenshot").style.display = '';
		window.document.getElementById("popUpRestoreText").style.display = 'none';
	}
}

function hideChoice() {
	window.document.getElementById("popUpRestoreText").style.display = 'none';
}

//-------  Closing Pop-up Windows or Going to DeLorme.com if there's no parent window ----------

function closeSample() {
	if (!window.opener || window.opener.closed) {
	 	document.location = "http://www.delorme.com";
	}
	else {
		window.close();
	}
}

//-------  Page Navigation: This determines which site you're on and which site you're trying to get to before completing the URL ---------


function choosePage(pageURL) {
	sectionID = window.document.location.href;
	if (sectionID.search(".jsp") == -1) { //Its .Net
		if (sectionID.search("stage2") != -1) { //If In .Net #2
			if (pageURL.search("jsp") != -1) { //If link goes to an iStore page
				window.document.location = "http://test-shop.delorme.com/OA_HTML/" + pageURL + "&minisite=10020";
			} 
			else { //the link goes to .Net
				window.document.location = pageURL;
			}
		} 
		else if (sectionID.search("stage") != -1) { //If In .Net #1
			if (pageURL.search("jsp") != -1) { //If link goes to an iStore page
				window.document.location = "http://vise.delorme.com:8079/OA_HTML/" + pageURL + "&minisite=10020";
			} 
			else { //the link goes to .Net
				window.document.location = pageURL;
			}
		} 
		else  { //If Live on .Net
			if (pageURL.search("jsp") != -1) { //If link goes to an iStore page
				window.document.location = "http://shop.delorme.com/OA_HTML/" + pageURL + "&minisite=10020";
			} 
			else { //the link goes to .Net
				window.document.location = pageURL;
			}
		}
	}
	if (sectionID.search(".jsp") != -1) { //Its iStore
		if (sectionID.search("8079") != -1) { //If in Gold 
			if (pageURL.search("jsp") != -1) { //if Link goes to an iStore page
				window.document.location = "/OA_HTML/" + pageURL;
			} 
			else { // Link goes to .Net
				window.document.location = "http://webstage.delorme.com" + pageURL;
			}
		} 
		else if (sectionID.search("test-shop") != -1) { //If in TEST
			if (pageURL.search("jsp") != -1) { //if Link goes to an iStore page
				window.document.location = "/OA_HTML/" + pageURL;
			} 
			else { // Link goes to .Net
				window.document.location = "http://webstage2.delorme.com" + pageURL;
			}
		} 
		else { //If Live in iStore
			if (pageURL.search("jsp") != -1) { //if Link goes to an iStore page
				window.document.location = "/OA_HTML/" + pageURL;
			} 
			else { // Link goes to .Net
				window.document.location = "http://www.delorme.com" + pageURL;
			}
		} 
	}
}

//--------- Drops down a chosen section to see sub-categories/pages ---------------*/

function openSection (theSection) {
	if (window.document.getElementById(theSection).style.display != 'block') {
		window.document.getElementById("navArrow" + theSection).src = '/OA_HTML/images/down_arrow.gif';
		window.document.getElementById(theSection).style.display = 'block';
	} else {
		window.document.getElementById("navArrow" + theSection).src = '/OA_HTML/images/right_arrow.gif';
		window.document.getElementById(theSection).style.display = '';
	}
}

/*----------------      Hide Add to Cart Area on specified pages   ------------------*/



function hideBuy() {
	if (window.document.location.href.search("item=17271") != -1) {
		window.document.getElementById("addItem").style.display = 'none';
	}
/*	else if (window.document.location.href.search("item=24664") != -1) {
		window.document.getElementById("addItem").style.display = 'none';
	}
	else if (window.document.location.href.search("item=24662") != -1) {
		window.document.getElementById("addItem").style.display = 'none';
	}
	else if (window.document.location.href.search("section=10180") != -1) {
		window.document.getElementById("sectionpriceRow").style.display = 'none';
	}
*/	
	else if (window.document.location.href.search("section=10069") != -1) {
		window.document.getElementById("sectionpriceRow").style.display = 'none';
	}
}

/* ---------------        Show Correct Navigation         ------------------------- */
/* -------------------------------------------------------------------------------- */



function openNav() {
	sectionID = window.document.location.href;
	
	//-------  .Net Pages  ---------
	
	//if (sectionID.search("http://") != -1) {
		
		//------------ Customer Service Pages ----------------
		if (sectionID.search("customerservice") != -1) {
				if (sectionID.search("contactus.aspx") != -1) {
					window.document.getElementById("shop").style.display = 'block';
					window.document.getElementById("customerService").style.display = 'block';
					window.document.getElementById("contactUs").style.color = '#F60';
				}
				if (sectionID.search("productdonations.aspx") != -1) {
					window.document.getElementById("shop").style.display = 'block';
					window.document.getElementById("customerService").style.display = 'block';
					window.document.getElementById("contactUs").style.color = '#F60';
				}				
				if (sectionID.search("customdev") != -1) {
					window.document.getElementById("shop").style.display = 'block';
					window.document.getElementById("customerService").style.display = 'block';
					window.document.getElementById("contactUs").style.color = '#F60';
				}
				if (sectionID.search("pricingsalestax.aspx") != -1) {
					window.document.getElementById("navArrowshoppingHelp").src = '/OA_HTML/images/down_arrow.gif';
					window.document.getElementById("shop").style.display = 'block';
					window.document.getElementById("customerService").style.display = 'block';
					window.document.getElementById("shoppingHelp").style.display = 'block';
					window.document.getElementById("pricingTax").style.backgroundColor = '#EEE';
					window.document.getElementById("pricingTax").style.borderBottom = '1px solid #CCC';
					window.document.getElementById("pricingTax").style.borderTop = '1px solid #FFF';
					window.document.getElementById("pricingTax").style.color = '#F60';
				}
				if (sectionID.search("internationalorders.aspx") != -1) {
					window.document.getElementById("navArrowshoppingHelp").src = '/OA_HTML/images/down_arrow.gif';
					window.document.getElementById("shop").style.display = 'block';
					window.document.getElementById("customerService").style.display = 'block';
					window.document.getElementById("shoppingHelp").style.display = 'block';
					window.document.getElementById("internationalOrders").style.backgroundColor = '#EEE';
					window.document.getElementById("internationalOrders").style.borderBottom = '1px solid #CCC';
					window.document.getElementById("internationalOrders").style.borderTop = '1px solid #FFF';
					window.document.getElementById("internationalOrders").style.color = '#F60';
				}
				if (sectionID.search("shippingdelivery.aspx") != -1) {
					window.document.getElementById("navArrowshoppingHelp").src = '/OA_HTML/images/down_arrow.gif';
					window.document.getElementById("shop").style.display = 'block';
					window.document.getElementById("customerService").style.display = 'block';
					window.document.getElementById("shoppingHelp").style.display = 'block';
					window.document.getElementById("shipping").style.backgroundColor = '#EEE';
					window.document.getElementById("shipping").style.borderBottom = '1px solid #CCC';
					window.document.getElementById("shipping").style.borderTop = '1px solid #FFF';
					window.document.getElementById("shipping").style.color = '#F60';
				}
				if (sectionID.search("returnpolicy.aspx") != -1) {
					window.document.getElementById("navArrowshoppingHelp").src = '/OA_HTML/images/down_arrow.gif';
					window.document.getElementById("shop").style.display = 'block';
					window.document.getElementById("customerService").style.display = 'block';
					window.document.getElementById("shoppingHelp").style.display = 'block';
					window.document.getElementById("returns").style.backgroundColor = '#EEE';
					window.document.getElementById("returns").style.borderBottom = '1px solid #CCC';
					window.document.getElementById("returns").style.borderTop = '1px solid #FFF';
					window.document.getElementById("returns").style.color = '#F60';
				}
				if (sectionID.search("privacy.aspx") != -1) {
					window.document.getElementById("navArrowpolicies").src = '/OA_HTML/images/down_arrow.gif';
					window.document.getElementById("shop").style.display = 'block';
					window.document.getElementById("customerService").style.display = 'block';
					window.document.getElementById("policies").style.display = 'block';
					window.document.getElementById("privacy").style.backgroundColor = '#EEE';
					window.document.getElementById("privacy").style.borderBottom = '1px solid #CCC';
					window.document.getElementById("privacy").style.borderTop = '1px solid #FFF';
					window.document.getElementById("privacy").style.color = '#F60';
				}	
				if (sectionID.search("secureshopping.aspx") != -1) {
					window.document.getElementById("shop").style.display = 'block';
					window.document.getElementById("customerService").style.display = 'block';
					window.document.getElementById("policies").style.display = 'block';
					window.document.getElementById("security").style.backgroundColor = '#EEE';
					window.document.getElementById("security").style.borderBottom = '1px solid #CCC';
					window.document.getElementById("security").style.borderTop = '1px solid #FFF';
					window.document.getElementById("security").style.color = '#F60';
				}
				if (sectionID.search("upgradepolicy.aspx") != -1) {
					window.document.getElementById("shop").style.display = 'block';
					window.document.getElementById("customerService").style.display = 'block';
					window.document.getElementById("policies").style.display = 'block';
					window.document.getElementById("upgrades").style.backgroundColor = '#EEE';
					window.document.getElementById("upgrades").style.borderBottom = '1px solid #CCC';
					window.document.getElementById("upgrades").style.borderTop = '1px solid #FFF';
					window.document.getElementById("upgrades").style.color = '#F60';
				}
				if (sectionID.search("auctionsandpiracy.aspx") != -1) {
					window.document.getElementById("navArrowpolicies").src = '/OA_HTML/images/down_arrow.gif';
					window.document.getElementById("shop").style.display = 'block';
					window.document.getElementById("customerService").style.display = 'block';
					window.document.getElementById("policies").style.display = 'block';
					window.document.getElementById("auctions").style.backgroundColor = '#EEE';
					window.document.getElementById("auctions").style.borderBottom = '1px solid #CCC';
					window.document.getElementById("auctions").style.borderTop = '1px solid #FFF';
					window.document.getElementById("auctions").style.color = '#F60';
				}
				if (sectionID.search("copyrightinfo.aspx") != -1) {
					window.document.getElementById("navArrowpolicies").src = '/OA_HTML/images/down_arrow.gif';
					window.document.getElementById("shop").style.display = 'block';
					window.document.getElementById("customerService").style.display = 'block';
					window.document.getElementById("policies").style.display = 'block';
					window.document.getElementById("copyright").style.backgroundColor = '#EEE';
					window.document.getElementById("copyright").style.borderBottom = '1px solid #CCC';
					window.document.getElementById("copyright").style.borderTop = '1px solid #FFF';
					window.document.getElementById("copyright").style.color = '#F60';
				}
				if (sectionID.search("licenseagreements.aspx") != -1) {
					window.document.getElementById("navArrowpolicies").src = '/OA_HTML/images/down_arrow.gif';
					window.document.getElementById("shop").style.display = 'block';
					window.document.getElementById("customerService").style.display = 'block';
					window.document.getElementById("policies").style.display = 'block';
					window.document.getElementById("agreements").style.backgroundColor = '#EEE';
					window.document.getElementById("agreements").style.borderBottom = '1px solid #CCC';
					window.document.getElementById("agreements").style.borderTop = '1px solid #FFF';
					window.document.getElementById("agreements").style.color = '#F60';
				}		
				if (sectionID.search("newsletters.aspx") != -1) {
					window.document.getElementById("navArrowproductHelp").src = '/OA_HTML/images/down_arrow.gif';
					window.document.getElementById("shop").style.display = 'block';
					window.document.getElementById("customerService").style.display = 'block';
					window.document.getElementById("productHelp").style.display = 'block';
					window.document.getElementById("newsletterArchive").style.color = '#F60';
				}
				else {
					window.document.getElementById("shop").style.display = 'block';
					window.document.getElementById("customerService").style.display = 'block';
				}
		}
		
		//------------ About DeLorme Pages ----------------
		if (sectionID.search("about") != -1) {
				if (sectionID.search("pressreleaseandnews.aspx") != -1) {
					window.document.getElementById("navArrowtheCompany").src = '/OA_HTML/images/down_arrow.gif';
					window.document.getElementById("shop").style.display = 'block';
					window.document.getElementById("aboutDeLorme").style.display = 'block';
					window.document.getElementById("theCompany").style.display = 'block';
					window.document.getElementById("news").style.backgroundColor = '#EEE';
					window.document.getElementById("news").style.color = '#F60';
				}
				if (sectionID.search("history.aspx") != -1) {
					window.document.getElementById("navArrowtheCompany").src = '/OA_HTML/images/down_arrow.gif';
					window.document.getElementById("shop").style.display = 'block';
					window.document.getElementById("aboutDeLorme").style.display = 'block';
					window.document.getElementById("theCompany").style.display = 'block';
					window.document.getElementById("history").style.backgroundColor = '#EEE';
					window.document.getElementById("history").style.color = '#F60';
				}
				if (sectionID.search("thecompany.aspx") != -1) {
					window.document.getElementById("navArrowtheCompany").src = '/OA_HTML/images/down_arrow.gif';
					window.document.getElementById("shop").style.display = 'block';
					window.document.getElementById("aboutDeLorme").style.display = 'block';
					window.document.getElementById("theCompany").style.display = 'block';
					window.document.getElementById("theCompanyLink").style.color = '#F60';
				}
				if (sectionID.search("careers.aspx") != -1) {
					window.document.getElementById("navArrowtheCompany").src = '/OA_HTML/images/down_arrow.gif';
					window.document.getElementById("shop").style.display = 'block';
					window.document.getElementById("aboutDeLorme").style.display = 'block';
					window.document.getElementById("theCompany").style.display = 'block';
					window.document.getElementById("careers").style.backgroundColor = '#EEE';
					window.document.getElementById("careers").style.color = '#F60';
				}
				if (sectionID.search("careers/default.asp") != -1) {
					window.document.getElementById("navArrowtheCompany").src = '/OA_HTML/images/down_arrow.gif';
					window.document.getElementById("shop").style.display = 'block';
					window.document.getElementById("aboutDeLorme").style.display = 'block';
					window.document.getElementById("theCompany").style.display = 'block';
					window.document.getElementById("careers").style.backgroundColor = '#EEE';
					window.document.getElementById("careers").style.color = '#F60';
				}
				if (sectionID.search("benefits.aspx") != -1) {
					window.document.getElementById("navArrowtheCompany").src = '/OA_HTML/images/down_arrow.gif';
					window.document.getElementById("shop").style.display = 'block';
					window.document.getElementById("aboutDeLorme").style.display = 'block';
					window.document.getElementById("theCompany").style.display = 'block';
					window.document.getElementById("careers").style.backgroundColor = '#EEE';
					window.document.getElementById("careers").style.color = '#F60';
				}
				if (sectionID.search("environmentalresponsibility.aspx") != -1) {
					window.document.getElementById("navArrowtheCompany").src = '/OA_HTML/images/down_arrow.gif';
					window.document.getElementById("shop").style.display = 'block';
					window.document.getElementById("aboutDeLorme").style.display = 'block';
					window.document.getElementById("theCompany").style.display = 'block';
					window.document.getElementById("environment").style.backgroundColor = '#EEE';
					window.document.getElementById("environment").style.color = '#F60';
				}				
				if (sectionID.search("ourcompany.aspx") != -1) {
					window.document.getElementById("navArrowtheCompany").src = '/OA_HTML/images/down_arrow.gif';
					window.document.getElementById("shop").style.display = 'block';
					window.document.getElementById("aboutDeLorme").style.display = 'block';
					window.document.getElementById("theCompany").style.display = 'block';
					window.document.getElementById("introduction").style.backgroundColor = '#EEE';
					window.document.getElementById("introduction").style.color = '#F60';
				}
				if (sectionID.search("innovation.aspx") != -1) {
					window.document.getElementById("navArrowtheCompany").src = '/OA_HTML/images/down_arrow.gif';
					window.document.getElementById("shop").style.display = 'block';
					window.document.getElementById("aboutDeLorme").style.display = 'block';
					window.document.getElementById("theCompany").style.display = 'block';
					window.document.getElementById("history").style.backgroundColor = '#EEE';
					window.document.getElementById("history").style.color = '#F60';
				}				
				if (sectionID.search("copyrightinfo.aspx") != -1) {
					window.document.getElementById("navArrowtheCompany").src = '/OA_HTML/images/down_arrow.gif';
					window.document.getElementById("shop").style.display = 'block';
					window.document.getElementById("aboutDeLorme").style.display = 'block';
					window.document.getElementById("theCompany").style.display = 'block';
					window.document.getElementById("copyright").style.backgroundColor = '#EEE';
					window.document.getElementById("copyright").style.color = '#F60';
				}
				if (sectionID.search("servicesandprograms.aspx") != -1) {
					window.document.getElementById("navArrowservicesPrograms").src = '/OA_HTML/images/down_arrow.gif';
					window.document.getElementById("shop").style.display = 'block';
					window.document.getElementById("aboutDeLorme").style.display = 'block';
					window.document.getElementById("servicesPrograms").style.display = 'block';
					window.document.getElementById("servicesProgramsLink").style.color = '#F60';
				}
				if (sectionID.search("eartha.aspx") != -1) {
					window.document.getElementById("navArrowservicesPrograms").src = '/OA_HTML/images/down_arrow.gif';
					window.document.getElementById("shop").style.display = 'block';
					window.document.getElementById("aboutDeLorme").style.display = 'block';
					window.document.getElementById("servicesPrograms").style.display = 'block';
					window.document.getElementById("eartha").style.backgroundColor = '#EEE';
					window.document.getElementById("eartha").style.color = '#F60';
				}	
				else {
					window.document.getElementById("shop").style.display = 'block';
					window.document.getElementById("aboutDeLorme").style.display = 'block';
				}
		}
		//------------ Technical Support Pages ----------------
		if (sectionID.search("support") != -1) {
				if (sectionID.search("search.aspx") != -1) {
					//window.document.getElementById("shop").style.display = 'block';
					window.document.getElementById("technicalSupport").style.display = 'block';
					window.document.getElementById("TSSearch").style.color = '#F60';
				}	
				if (sectionID.search("Results.aspx") != -1) {
					//window.document.getElementById("shop").style.display = 'block';
					window.document.getElementById("technicalSupport").style.display = 'block';
					window.document.getElementById("TSSearch").style.color = '#F60';
				}	
				if (sectionID.search("supporttemplate.aspx") != -1) {
					//window.document.getElementById("shop").style.display = 'block';
					window.document.getElementById("technicalSupport").style.display = 'block';
					window.document.getElementById("TSSearch").style.color = '#F60';
				}					
				if (sectionID.search("recent=Yes") != -1) {
					//window.document.getElementById("shop").style.display = 'block';
					window.document.getElementById("technicalSupport").style.display = 'block';
					window.document.getElementById("TSNewest").style.color = '#F60';
					window.document.getElementById("TSSearch").style.color = '#555';
				}	
				if (sectionID.search("tt=yes") != -1) {
					//window.document.getElementById("shop").style.display = 'block';
					window.document.getElementById("technicalSupport").style.display = 'block';
					window.document.getElementById("TSTT").style.color = '#F60';
					window.document.getElementById("TSSearch").style.color = '#555';
				}	
				if (sectionID.search("policy.asp") != -1) {
					//window.document.getElementById("shop").style.display = 'block';
					window.document.getElementById("technicalSupport").style.display = 'block';
					window.document.getElementById("TSContact").style.color = '#F60';
				}	
				if (sectionID.search("email.asp") != -1) {
					//window.document.getElementById("shop").style.display = 'block';
					window.document.getElementById("technicalSupport").style.display = 'block';
					window.document.getElementById("TSContact").style.color = '#F60';
				}	
				if (sectionID.search("Email_TS.asp") != -1) {
					//window.document.getElementById("shop").style.display = 'block';
					window.document.getElementById("technicalSupport").style.display = 'block';
					window.document.getElementById("TSContact").style.color = '#F60';
				}					
				if (sectionID.search("auction.aspx") != -1) {
					//window.document.getElementById("shop").style.display = 'block';
					window.document.getElementById("technicalSupport").style.display = 'block';
					window.document.getElementById("TSContact").style.color = '#F60';
				}	
				if (sectionID.search("contecttech.aspx") != -1) {
					//window.document.getElementById("shop").style.display = 'block';
					window.document.getElementById("technicalSupport").style.display = 'block';
					window.document.getElementById("TSContact").style.color = '#F60';
				}					
				if (sectionID.search("revisions.asp") != -1) {
					//window.document.getElementById("shop").style.display = 'block';
					window.document.getElementById("technicalSupport").style.display = 'block';
					window.document.getElementById("TSData").style.color = '#F60';
				}		
				else {
					//window.document.getElementById("shop").style.display = 'block';
					window.document.getElementById("technicalSupport").style.display = 'block';
				}	
		
		}
		else if (sectionID.search("mapstore/demonstrations.aspx") != -1) {
					window.document.getElementById("navArrowbyProduct").src = '/OA_HTML/images/down_arrow.gif';
					window.document.getElementById("navArrowbyUse").src = '/OA_HTML/images/down_arrow.gif';
					window.document.getElementById("navArrowshopInMaine").src = '/OA_HTML/images/down_arrow.gif';
					window.document.getElementById("shop").style.display = 'block';
					window.document.getElementById("byProduct").style.display = 'block';
					window.document.getElementById("byUse").style.display = 'block';
					window.document.getElementById("shopInMaine").style.display = 'block';
					window.document.getElementById("demos").style.backgroundColor = '#EEE';
					window.document.getElementById("demos").style.color = '#F60';
		} 
		else if (sectionID.search("mapstore/default.aspx") != -1) {
					window.document.getElementById("navArrowbyProduct").src = '/OA_HTML/images/down_arrow.gif';
					window.document.getElementById("navArrowbyUse").src = '/OA_HTML/images/down_arrow.gif';
					window.document.getElementById("navArrowshopInMaine").src = '/OA_HTML/images/down_arrow.gif';
					window.document.getElementById("shop").style.display = 'block';
					window.document.getElementById("byProduct").style.display = 'block';
					window.document.getElementById("byUse").style.display = 'block';
					window.document.getElementById("shopInMaine").style.display = 'block';
					window.document.getElementById("mapstore").style.backgroundColor = '#EEE';
					window.document.getElementById("mapstore").style.color = '#F60';
		}
		else if (sectionID.search("mapstore/directions.aspx") != -1) {
					window.document.getElementById("navArrowbyProduct").src = '/OA_HTML/images/down_arrow.gif';
					window.document.getElementById("navArrowbyUse").src = '/OA_HTML/images/down_arrow.gif';
					window.document.getElementById("navArrowshopInMaine").src = '/OA_HTML/images/down_arrow.gif';
					window.document.getElementById("shop").style.display = 'block';
					window.document.getElementById("byProduct").style.display = 'block';
					window.document.getElementById("byUse").style.display = 'block';
					window.document.getElementById("shopInMaine").style.display = 'block';
					window.document.getElementById("mapstore").style.backgroundColor = '#EEE';
					window.document.getElementById("mapstore").style.color = '#F60';
		}
		
		
		//---------- Shop By Use Pages -------------
	
		else if (sectionID.search("byUse") != -1) {
				if (sectionID.search("familytravel.aspx") != -1) {
					window.document.getElementById("navArrowbyProduct").src = '/OA_HTML/images/down_arrow.gif';
					window.document.getElementById("navArrowbyUse").src = '/OA_HTML/images/down_arrow.gif';
					window.document.getElementById("shop").style.display = 'block';
					window.document.getElementById("byProduct").style.display = 'block';
					window.document.getElementById("byUse").style.display = 'block';
					window.document.getElementById("familyTravel").style.backgroundColor = '#EEE';
					window.document.getElementById("familyTravel").style.color = '#F60';
				}
				else if (sectionID.search("businessnavigation.aspx") != -1) {
					window.document.getElementById("navArrowbyProduct").src = '/OA_HTML/images/down_arrow.gif';
					window.document.getElementById("navArrowbyUse").src = '/OA_HTML/images/down_arrow.gif';
					window.document.getElementById("shop").style.display = 'block';
					window.document.getElementById("byProduct").style.display = 'block';
					window.document.getElementById("byUse").style.display = 'block';
					window.document.getElementById("businessNavigation").style.backgroundColor = '#EEE';
					window.document.getElementById("businessNavigation").style.color = '#F60';
				}
				else if (sectionID.search("energytelecom.aspx") != -1) {
					window.document.getElementById("navArrowbyProduct").src = '/OA_HTML/images/down_arrow.gif';
					window.document.getElementById("navArrowbyUse").src = '/OA_HTML/images/down_arrow.gif';
					window.document.getElementById("shop").style.display = 'block';
					window.document.getElementById("byProduct").style.display = 'block';
					window.document.getElementById("byUse").style.display = 'block';
					window.document.getElementById("energyTelecom").style.backgroundColor = '#EEE';
					window.document.getElementById("energyTelecom").style.color = '#F60';
				}
				else if (sectionID.search("enterprisesolutions.aspx") != -1) {
					window.document.getElementById("navArrowbyProduct").src = '/OA_HTML/images/down_arrow.gif';
					window.document.getElementById("navArrowbyUse").src = '/OA_HTML/images/down_arrow.gif';
					window.document.getElementById("shop").style.display = 'block';
					window.document.getElementById("byProduct").style.display = 'block';
					window.document.getElementById("byUse").style.display = 'block';
					window.document.getElementById("enterpriseSolutions").style.backgroundColor = '#EEE';
					window.document.getElementById("enterpriseSolutions").style.color = '#F60';
				}
				else if (sectionID.search("naturalresources.aspx") != -1) {
					window.document.getElementById("navArrowbyProduct").src = '/OA_HTML/images/down_arrow.gif';
					window.document.getElementById("navArrowbyUse").src = '/OA_HTML/images/down_arrow.gif';
					window.document.getElementById("shop").style.display = 'block';
					window.document.getElementById("byProduct").style.display = 'block';
					window.document.getElementById("byUse").style.display = 'block';
					window.document.getElementById("naturalResources").style.backgroundColor = '#EEE';
					window.document.getElementById("naturalResources").style.color = '#F60';
				}
				else if (sectionID.search("outdoorrecreation.aspx") != -1) {
					window.document.getElementById("navArrowbyProduct").src = '/OA_HTML/images/down_arrow.gif';
					window.document.getElementById("navArrowbyUse").src = '/OA_HTML/images/down_arrow.gif';
					window.document.getElementById("shop").style.display = 'block';
					window.document.getElementById("byProduct").style.display = 'block';
					window.document.getElementById("byUse").style.display = 'block';
					window.document.getElementById("outdoorRecreation").style.backgroundColor = '#EEE';
					window.document.getElementById("outdoorRecreation").style.color = '#F60';
				}
				else if (sectionID.search("publicsafety.aspx") != -1) {
					window.document.getElementById("navArrowbyProduct").src = '/OA_HTML/images/down_arrow.gif';
					window.document.getElementById("navArrowbyUse").src = '/OA_HTML/images/down_arrow.gif';
					window.document.getElementById("shop").style.display = 'block';
					window.document.getElementById("byProduct").style.display = 'block';
					window.document.getElementById("byUse").style.display = 'block';
					window.document.getElementById("publicSafety").style.backgroundColor = '#EEE';
					window.document.getElementById("publicSafety").style.color = '#F60';
				}
				else if (sectionID.search("realestate.aspx") != -1) {
					window.document.getElementById("navArrowbyProduct").src = '/OA_HTML/images/down_arrow.gif';
					window.document.getElementById("navArrowbyUse").src = '/OA_HTML/images/down_arrow.gif';
					window.document.getElementById("shop").style.display = 'block';
					window.document.getElementById("byProduct").style.display = 'block';
					window.document.getElementById("byUse").style.display = 'block';
					window.document.getElementById("realEstate").style.backgroundColor = '#EEE';
					window.document.getElementById("realEstate").style.color = '#F60';
				}
				else if (sectionID.search("educationresearch/default.aspx") != -1) {
					window.document.getElementById("navArrowbyProduct").src = '/OA_HTML/images/down_arrow.gif';
					window.document.getElementById("navArrowbyUse").src = '/OA_HTML/images/down_arrow.gif';
					window.document.getElementById("shop").style.display = 'block';
					window.document.getElementById("byProduct").style.display = 'block';
					window.document.getElementById("byUse").style.display = 'block';
					window.document.getElementById("educationResearch").style.backgroundColor = '#EEE';
					window.document.getElementById("educationResearch").style.color = '#F60';
				}
				else if (sectionID.search("insurance/default.aspx") != -1) {
					window.document.getElementById("navArrowbyProduct").src = '/OA_HTML/images/down_arrow.gif';
					window.document.getElementById("navArrowbyUse").src = '/OA_HTML/images/down_arrow.gif';
					window.document.getElementById("shop").style.display = 'block';
					window.document.getElementById("byProduct").style.display = 'block';
					window.document.getElementById("byUse").style.display = 'block';
					window.document.getElementById("insurance").style.backgroundColor = '#EEE';
					window.document.getElementById("insurance").style.color = '#F60';
				}
				else if (sectionID.search("government/default.aspx") != -1) {
					window.document.getElementById("navArrowbyProduct").src = '/OA_HTML/images/down_arrow.gif';
					window.document.getElementById("navArrowbyUse").src = '/OA_HTML/images/down_arrow.gif';
					window.document.getElementById("shop").style.display = 'block';
					window.document.getElementById("byProduct").style.display = 'block';
					window.document.getElementById("byUse").style.display = 'block';
					window.document.getElementById("government").style.backgroundColor = '#EEE';
					window.document.getElementById("government").style.color = '#F60';
				}
				else if (sectionID.search("gpsmodules/gpsmodules.aspx") != -1) {
					window.document.getElementById("navArrowbyProduct").src = '/OA_HTML/images/down_arrow.gif';
					window.document.getElementById("navArrowbyUse").src = '/OA_HTML/images/down_arrow.gif';
					window.document.getElementById("shop").style.display = 'block';
					window.document.getElementById("byProduct").style.display = 'block';
					window.document.getElementById("byUse").style.display = 'block';
					window.document.getElementById("gpsSolutions").style.backgroundColor = '#EEE';
					window.document.getElementById("gpsSolutions").style.color = '#F60';
				}
		}
		
		//-------------HOME section and other Root Level pages -------------
		
		else if (sectionID.search("preferences.asp") != -1) {
			window.document.getElementById("shop").style.display = 'block';
			window.document.getElementById("customerService").style.display = 'block';
			window.document.getElementById("policies").style.display = 'block';
			window.document.getElementById("privacy").style.backgroundColor = '#EEE';
			window.document.getElementById("privacy").style.borderBottom = '1px solid #CCC';
			window.document.getElementById("privacy").style.borderTop = '1px solid #FFF';
			window.document.getElementById("privacy").style.color = '#F60';
		}			
		else if (sectionID.search("glossary.aspx") != -1) {
			window.document.getElementById("navArrowbyProduct").src = '/OA_HTML/images/down_arrow.gif';
			window.document.getElementById("navArrowbyUse").src = '/OA_HTML/images/down_arrow.gif';
			window.document.getElementById("shop").style.display = 'block';
			window.document.getElementById("byProduct").style.display = 'block';
			window.document.getElementById("byUse").style.display = 'block';
			window.document.getElementById("glossary").style.backgroundColor = '#EEE';
			window.document.getElementById("glossary").style.color = '#F60';
		}
		else if (sectionID.search("shopinmaine.aspx") != -1) {
			window.document.getElementById("navArrowshopInMaine").src = '/OA_HTML/images/down_arrow.gif';
			window.document.getElementById("shop").style.display = 'block';
			window.document.getElementById("byProduct").style.display = 'block';
			window.document.getElementById("byUse").style.display = 'block';
			window.document.getElementById("shopInMaine").style.display = 'block';
			window.document.getElementById("shopInMaineLink").style.color = '#F60';
		}
		else if (sectionID.search("DeLormeWeb.idq") != -1) {
			window.document.getElementById("customerService").style.display = 'block';
			window.document.getElementById("aboutDeLorme").style.display = 'block';
		}	
	//}
	
	
	
	
	
	
	//---------- Shopping Cart Pages -------------
	
	else if (sectionID.search("ibeCScdViewA") != -1) { 
		window.document.getElementById("shop").style.display = 'block';window.document.getElementById("byProduct").style.display = 'block';
		window.document.getElementById("byUse").style.display = 'block';
	}
	else if (sectionID.search("ibeCCtpBuyRoute") != -1) { 
		window.document.getElementById("shop").style.display = 'block';window.document.getElementById("byProduct").style.display = 'block';
		window.document.getElementById("byUse").style.display = 'block';
	}
	else if (sectionID.search("ibeCScpViewA") != -1) { 
		window.document.getElementById("shop").style.display = 'block';window.document.getElementById("byProduct").style.display = 'block';
		window.document.getElementById("byUse").style.display = 'block';
	}
	
	
	//---------  Checkout Pages  ---------
	
	else if (sectionID.search("ibeCCkdHdrShip") != -1) { 
		window.document.getElementById("customerService").style.display = 'none';
		window.document.getElementById("aboutDeLorme").style.display = 'none';
	}
	else if (sectionID.search("ibeCCkpHdrShip") != -1) { 
		window.document.getElementById("customerService").style.display = 'none';
		window.document.getElementById("aboutDeLorme").style.display = 'none';
	}
	else if (sectionID.search("ibeCCkpHdrBillPay") != -1) { 
		window.document.getElementById("customerService").style.display = 'none';
		window.document.getElementById("aboutDeLorme").style.display = 'none';
	}
	else if (sectionID.search("ibeCCkpOrdReview") != -1) { 
		window.document.getElementById("customerService").style.display = 'none';
		window.document.getElementById("aboutDeLorme").style.display = 'none';
	}
	
	
	//---------- Login Page ------------

	else if (sectionID.search("ibeCAcdLogin") != -1) {
		window.document.getElementById("navArrowmyAccount").src = '/OA_HTML/images/down_arrow.gif';
		window.document.getElementById("myAccount").style.display = 'block';
	}
	
	
	//------- Account Pages  ------------
	
	else if (sectionID.search("ibeCAcdPersonalInfo") != -1) {
		window.document.getElementById("navArrowmyAccount").src = '/OA_HTML/images/down_arrow.gif';
		window.document.getElementById("shop").style.display = 'block';
		window.document.getElementById("customerService").style.display = 'block';
		window.document.getElementById("myAccount").style.display = 'block';
		window.document.getElementById("personalInformation").style.backgroundColor = '#EEE';
		window.document.getElementById("personalInformation").style.color = '#F60';
	}
	else if (sectionID.search("ibeCAcdPassword") != -1) {
		window.document.getElementById("navArrowmyAccount").src = '/OA_HTML/images/down_arrow.gif';
		window.document.getElementById("shop").style.display = 'block';
		window.document.getElementById("customerService").style.display = 'block';
		window.document.getElementById("myAccount").style.display = 'block';
		window.document.getElementById("changePassword").style.backgroundColor = '#EEE';
		window.document.getElementById("changePassword").style.color = '#F60';
	}
	else if (sectionID.search("ibeCAddAddrBook") != -1) {
		window.document.getElementById("navArrowmyAccount").src = '/OA_HTML/images/down_arrow.gif';
		window.document.getElementById("shop").style.display = 'block';
		window.document.getElementById("customerService").style.display = 'block';
		window.document.getElementById("myAccount").style.display = 'block';
		window.document.getElementById("addressBook").style.backgroundColor = '#EEE';
		window.document.getElementById("addressBook").style.color = '#F60';
	}
	else if (sectionID.search("AddrEdit") != -1) {
		window.document.getElementById("navArrowmyAccount").src = '/OA_HTML/images/down_arrow.gif';
		window.document.getElementById("shop").style.display = 'block';
		window.document.getElementById("customerService").style.display = 'block';
		window.document.getElementById("myAccount").style.display = 'block';
		window.document.getElementById("addressBook").style.backgroundColor = '#EEE';
		window.document.getElementById("addressBook").style.color = '#F60';
	}
	else if (sectionID.search("ibeCAdpAddrDelete") != -1) {
		window.document.getElementById("navArrowmyAccount").src = '/OA_HTML/images/down_arrow.gif';
		window.document.getElementById("shop").style.display = 'block';
		window.document.getElementById("customerService").style.display = 'block';
		window.document.getElementById("myAccount").style.display = 'block';
		window.document.getElementById("addressBook").style.backgroundColor = '#EEE';
		window.document.getElementById("addressBook").style.color = '#F60';
	}
	else if (sectionID.search("CPmdPmtBook") != -1) {
		window.document.getElementById("navArrowmyAccount").src = '/OA_HTML/images/down_arrow.gif';
		window.document.getElementById("shop").style.display = 'block';
		window.document.getElementById("customerService").style.display = 'block';
		window.document.getElementById("myAccount").style.display = 'block';
		window.document.getElementById("paymentBook").style.backgroundColor = '#EEE';
		window.document.getElementById("paymentBook").style.color = '#F60';
	}
	else if (sectionID.search("CPmpPmtBook") != -1) {
		window.document.getElementById("navArrowmyAccount").src = '/OA_HTML/images/down_arrow.gif';
		window.document.getElementById("shop").style.display = 'block';
		window.document.getElementById("customerService").style.display = 'block';
		window.document.getElementById("myAccount").style.display = 'block';
		window.document.getElementById("paymentBook").style.backgroundColor = '#EEE';
		window.document.getElementById("paymentBook").style.color = '#F60';
	}
	else if (sectionID.search("ibeCAcdPreferences") != -1) {
		window.document.getElementById("navArrowmyAccount").src = '/OA_HTML/images/down_arrow.gif';
		window.document.getElementById("shop").style.display = 'block';
		window.document.getElementById("customerService").style.display = 'block';
		window.document.getElementById("myAccount").style.display = 'block';
		window.document.getElementById("preferences").style.backgroundColor = '#EEE';
		window.document.getElementById("preferences").style.color = '#F60';
	}
	else if (sectionID.search("ibeCOtdOrdSumMain") != -1) {
		window.document.getElementById("navArrowmyAccount").src = '/OA_HTML/images/down_arrow.gif';
		window.document.getElementById("shop").style.display = 'block';
		window.document.getElementById("customerService").style.display = 'block';
		window.document.getElementById("myAccount").style.display = 'block';
		window.document.getElementById("orderHistory").style.backgroundColor = '#EEE';
		window.document.getElementById("orderHistory").style.color = '#F60';
	}
	else if (sectionID.search("ibeCOtdOrdDtlMain") != -1) {
		window.document.getElementById("navArrowmyAccount").src = '/OA_HTML/images/down_arrow.gif';
		window.document.getElementById("shop").style.display = 'block';
		window.document.getElementById("customerService").style.display = 'block';
		window.document.getElementById("myAccount").style.display = 'block';
		window.document.getElementById("orderHistory").style.backgroundColor = '#EEE';
		window.document.getElementById("orderHistory").style.color = '#F60';
	}	
	
	//------ iStore Home --------
	
	else if (sectionID.search("ibeCZzpHome.jsp") != -1) {
			window.document.getElementById("navArrowbyProduct").src = '/OA_HTML/images/down_arrow.gif';
			window.document.getElementById("navArrowbyUse").src = '/OA_HTML/images/down_arrow.gif';
			window.document.getElementById("shop").style.display = 'block';
			window.document.getElementById("byProduct").style.display = 'block';
			window.document.getElementById("byUse").style.display = 'block';
			window.document.getElementById("10048").style.backgroundColor = '#EEE';
			window.document.getElementById("10048").style.borderBottom = '1px solid #CCC';
			window.document.getElementById("10048").style.borderTop = '1px solid #FFF';
			window.document.getElementById("10048").style.color = '#F60';
	}
	else if (sectionID.search("DELProcessFooter") != -1) {
			window.document.getElementById("navArrowbyProduct").src = '/OA_HTML/images/down_arrow.gif';
			window.document.getElementById("navArrowbyUse").src = '/OA_HTML/images/down_arrow.gif';
			window.document.getElementById("shop").style.display = 'block';
			window.document.getElementById("byProduct").style.display = 'block';
			window.document.getElementById("byUse").style.display = 'block';
	}	
	
	
	//--------  Product Pages ----------
	
	else if (sectionID.search("DspRte") != -1) {
		if (sectionID.search("10048") != -1) {
			window.document.getElementById("navArrowbyProduct").src = '/OA_HTML/images/down_arrow.gif';
			window.document.getElementById("navArrowbyUse").src = '/OA_HTML/images/down_arrow.gif';
			window.document.getElementById("shop").style.display = 'block';
			window.document.getElementById("byProduct").style.display = 'block';
			window.document.getElementById("byUse").style.display = 'block';
			window.document.getElementById("10048").style.backgroundColor = '#EEE';
			window.document.getElementById("10048").style.fontWeight = 'bold';
			window.document.getElementById("10048").style.color = '#F60';
		}
		if (sectionID.search("10047") != -1) {
			window.document.getElementById("navArrowbyProduct").src = '/OA_HTML/images/down_arrow.gif';
			window.document.getElementById("navArrowbyUse").src = '/OA_HTML/images/down_arrow.gif';
			window.document.getElementById("shop").style.display = 'block';
			window.document.getElementById("byProduct").style.display = 'block';
			window.document.getElementById("byUse").style.display = 'block';
			window.document.getElementById("10047").style.backgroundColor = '#EEE';
			window.document.getElementById("10047").style.fontWeight = 'bold';
			window.document.getElementById("10047").style.color = '#F60';
		}
		if (sectionID.search("10120") != -1) {
			window.document.getElementById("navArrowbyProduct").src = '/OA_HTML/images/down_arrow.gif';
			window.document.getElementById("navArrowbyUse").src = '/OA_HTML/images/down_arrow.gif';
			window.document.getElementById("shop").style.display = 'block';
			window.document.getElementById("byProduct").style.display = 'block';
			window.document.getElementById("byUse").style.display = 'block';
			window.document.getElementById("10120").style.backgroundColor = '#EEE';
			window.document.getElementById("10120").style.fontWeight = 'bold';	
			window.document.getElementById("10120").style.color = '#F60';
			window.document.getElementById("10120sub").style.display = 'block';
		}
		if (sectionID.search("10045") != -1) {
			window.document.getElementById("navArrowbyProduct").src = '/OA_HTML/images/down_arrow.gif';
			window.document.getElementById("navArrowbyUse").src = '/OA_HTML/images/down_arrow.gif';
			window.document.getElementById("shop").style.display = 'block';
			window.document.getElementById("byProduct").style.display = 'block';
			window.document.getElementById("byUse").style.display = 'block';
			window.document.getElementById("10045").style.backgroundColor = '#EEE';
			window.document.getElementById("10045").style.fontWeight = 'bold';		
			window.document.getElementById("10045").style.color = '#F60';
			window.document.getElementById("10045sub").style.display = 'block';
		}
		if (sectionID.search("10044") != -1) {
			window.document.getElementById("navArrowbyProduct").src = '/OA_HTML/images/down_arrow.gif';
			window.document.getElementById("navArrowbyUse").src = '/OA_HTML/images/down_arrow.gif';
			window.document.getElementById("shop").style.display = 'block';
			window.document.getElementById("byProduct").style.display = 'block';
			window.document.getElementById("byUse").style.display = 'block';		
			window.document.getElementById("10044").style.fontWeight = 'bold';			
			window.document.getElementById("10044").style.backgroundColor = '#EEE';
			window.document.getElementById("10044").style.color = '#F60';
			window.document.getElementById("10044sub").style.display = 'block';
		}
		if (sectionID.search("10043") != -1) {
			window.document.getElementById("navArrowbyProduct").src = '/OA_HTML/images/down_arrow.gif';
			window.document.getElementById("navArrowbyUse").src = '/OA_HTML/images/down_arrow.gif';
			window.document.getElementById("shop").style.display = 'block';
			window.document.getElementById("byProduct").style.display = 'block';
			window.document.getElementById("byUse").style.display = 'block';
			window.document.getElementById("10043").style.backgroundColor = '#EEE';
			window.document.getElementById("10043").style.color = '#F60';
			window.document.getElementById("10043sub").style.display = 'block';
		}
		if (sectionID.search("10042") != -1) {
			window.document.getElementById("navArrowbyProduct").src = '/OA_HTML/images/down_arrow.gif';
			window.document.getElementById("navArrowbyUse").src = '/OA_HTML/images/down_arrow.gif';
			window.document.getElementById("shop").style.display = 'block';
			window.document.getElementById("byProduct").style.display = 'block';
			window.document.getElementById("byUse").style.display = 'block';
			window.document.getElementById("10042").style.backgroundColor = '#EEE';
			window.document.getElementById("10042").style.fontWeight = 'bold';		
			window.document.getElementById("10042").style.color = '#F60';
			window.document.getElementById("10042sub").style.display = 'block';
		}
		if (sectionID.search("10049") != -1) {
			window.document.getElementById("navArrowbyProduct").src = '/OA_HTML/images/down_arrow.gif';
			window.document.getElementById("navArrowbyUse").src = '/OA_HTML/images/down_arrow.gif';
			window.document.getElementById("shop").style.display = 'block';
			window.document.getElementById("byProduct").style.display = 'block';
			window.document.getElementById("byUse").style.display = 'block';
			window.document.getElementById("10049").style.backgroundColor = '#EEE';
			window.document.getElementById("10049").style.fontWeight = 'bold';		
			window.document.getElementById("10049").style.color = '#F60';
			window.document.getElementById("10049sub").style.display = 'block';
		}
		if (sectionID.search("10099") != -1) {
			window.document.getElementById("navArrowbyProduct").src = '/OA_HTML/images/down_arrow.gif';
			window.document.getElementById("navArrowbyUse").src = '/OA_HTML/images/down_arrow.gif';
			window.document.getElementById("shop").style.display = 'block';
			window.document.getElementById("byProduct").style.display = 'block';
			window.document.getElementById("byUse").style.display = 'block';
			window.document.getElementById("10049").style.fontWeight = 'bold';
			window.document.getElementById("10049sub").style.display = 'block';
			window.document.getElementById("10099").style.color = '#F60';
		}
		if (sectionID.search("10100") != -1) {
			window.document.getElementById("navArrowbyProduct").src = '/OA_HTML/images/down_arrow.gif';
			window.document.getElementById("navArrowbyUse").src = '/OA_HTML/images/down_arrow.gif';
			window.document.getElementById("shop").style.display = 'block';
			window.document.getElementById("byProduct").style.display = 'block';
			window.document.getElementById("byUse").style.display = 'block';
			window.document.getElementById("10049").style.fontWeight = 'bold';
			window.document.getElementById("10049sub").style.display = 'block';
			window.document.getElementById("10100").style.color = '#F60';
		}
		if (sectionID.search("10101") != -1) {
			window.document.getElementById("navArrowbyProduct").src = '/OA_HTML/images/down_arrow.gif';
			window.document.getElementById("navArrowbyUse").src = '/OA_HTML/images/down_arrow.gif';
			window.document.getElementById("shop").style.display = 'block';
			window.document.getElementById("byProduct").style.display = 'block';
			window.document.getElementById("byUse").style.display = 'block';
			window.document.getElementById("10049").style.fontWeight = 'bold';
			window.document.getElementById("10049sub").style.display = 'block';
			window.document.getElementById("10101").style.color = '#F60';
		}		
		if (sectionID.search("10091") != -1) {
			window.document.getElementById("navArrowbyProduct").src = '/OA_HTML/images/down_arrow.gif';
			window.document.getElementById("navArrowbyUse").src = '/OA_HTML/images/down_arrow.gif';
			window.document.getElementById("shop").style.display = 'block';
			window.document.getElementById("byProduct").style.display = 'block';
			window.document.getElementById("byUse").style.display = 'block';
			window.document.getElementById("10043sub").style.display = 'block';
			window.document.getElementById("10043").style.backgroundColor = '#EEE';		
			window.document.getElementById("10043").style.fontWeight = 'bold';
			window.document.getElementById("10091").style.color = '#F60';
		}
		if (sectionID.search("10051") != -1) {
			window.document.getElementById("navArrowbyProduct").src = '/OA_HTML/images/down_arrow.gif';
			window.document.getElementById("navArrowbyUse").src = '/OA_HTML/images/down_arrow.gif';
			window.document.getElementById("shop").style.display = 'block';
			window.document.getElementById("byProduct").style.display = 'block';
			window.document.getElementById("byUse").style.display = 'block';
			window.document.getElementById("10045sub").style.display = 'block';
			window.document.getElementById("10045").style.fontWeight = 'bold';
			window.document.getElementById("10051").style.color = '#F60';
		}
		if (sectionID.search("10092") != -1) {
			window.document.getElementById("navArrowbyProduct").src = '/OA_HTML/images/down_arrow.gif';
			window.document.getElementById("navArrowbyUse").src = '/OA_HTML/images/down_arrow.gif';
			window.document.getElementById("shop").style.display = 'block';
			window.document.getElementById("byProduct").style.display = 'block';
			window.document.getElementById("byUse").style.display = 'block';
			window.document.getElementById("10043sub").style.display = 'block';
			window.document.getElementById("10043").style.backgroundColor = '#EEE';		
			window.document.getElementById("10043").style.fontWeight = 'bold';
			window.document.getElementById("10092").style.color = '#F60';
		}
		if (sectionID.search("10093") != -1) {
			window.document.getElementById("navArrowbyProduct").src = '/OA_HTML/images/down_arrow.gif';
			window.document.getElementById("navArrowbyUse").src = '/OA_HTML/images/down_arrow.gif';
			window.document.getElementById("shop").style.display = 'block';
			window.document.getElementById("byProduct").style.display = 'block';
			window.document.getElementById("byUse").style.display = 'block';
			window.document.getElementById("10043sub").style.display = 'block';
			window.document.getElementById("10043").style.backgroundColor = '#EEE';		
			window.document.getElementById("10043").style.fontWeight = 'bold';
			window.document.getElementById("10092sub").style.display = 'block';
			window.document.getElementById("10093").style.color = '#F60';
		}
		if (sectionID.search("10094") != -1) {
			window.document.getElementById("navArrowbyProduct").src = '/OA_HTML/images/down_arrow.gif';
			window.document.getElementById("navArrowbyUse").src = '/OA_HTML/images/down_arrow.gif';
			window.document.getElementById("shop").style.display = 'block';
			window.document.getElementById("byProduct").style.display = 'block';
			window.document.getElementById("byUse").style.display = 'block';
			window.document.getElementById("10043sub").style.display = 'block';
			window.document.getElementById("10043").style.backgroundColor = '#EEE';		
			window.document.getElementById("10043").style.fontWeight = 'bold';
			window.document.getElementById("10092sub").style.display = 'block';
			window.document.getElementById("10094").style.color = '#F60';
		}
		if (sectionID.search("10096") != -1) {
			window.document.getElementById("navArrowbyProduct").src = '/OA_HTML/images/down_arrow.gif';
			window.document.getElementById("navArrowbyUse").src = '/OA_HTML/images/down_arrow.gif';
			window.document.getElementById("shop").style.display = 'block';
			window.document.getElementById("byProduct").style.display = 'block';
			window.document.getElementById("byUse").style.display = 'block';
			window.document.getElementById("10042sub").style.display = 'block';
			window.document.getElementById("10042").style.backgroundColor = '#EEE';
			window.document.getElementById("10042").style.fontWeight = 'bold';
			window.document.getElementById("10096").style.color = '#F60';
		}
		if (sectionID.search("10097") != -1) {
			window.document.getElementById("navArrowbyProduct").src = '/OA_HTML/images/down_arrow.gif';
			window.document.getElementById("navArrowbyUse").src = '/OA_HTML/images/down_arrow.gif';
			window.document.getElementById("shop").style.display = 'block';
			window.document.getElementById("byProduct").style.display = 'block';
			window.document.getElementById("byUse").style.display = 'block';
			window.document.getElementById("10042sub").style.display = 'block';
			window.document.getElementById("10042").style.backgroundColor = '#EEE';		
			window.document.getElementById("10042").style.fontWeight = 'bold';
			window.document.getElementById("10097").style.color = '#F60';
		}
		if (sectionID.search("10098") != -1) {
			window.document.getElementById("navArrowbyProduct").src = '/OA_HTML/images/down_arrow.gif';
			window.document.getElementById("navArrowbyUse").src = '/OA_HTML/images/down_arrow.gif';
			window.document.getElementById("shop").style.display = 'block';
			window.document.getElementById("byProduct").style.display = 'block';
			window.document.getElementById("byUse").style.display = 'block';
			window.document.getElementById("10042sub").style.display = 'block';
			window.document.getElementById("10042").style.backgroundColor = '#EEE';		
			window.document.getElementById("10042").style.fontWeight = 'bold';
			window.document.getElementById("10098").style.color = '#F60';
		}
		
		<!-- 10058 to 10059 -->
		
		if (sectionID.search("10161") != -1) {
			window.document.getElementById("navArrowbyProduct").src = '/OA_HTML/images/down_arrow.gif';
			window.document.getElementById("navArrowbyUse").src = '/OA_HTML/images/down_arrow.gif';
			window.document.getElementById("shop").style.display = 'block';
			window.document.getElementById("byProduct").style.display = 'block';
			window.document.getElementById("byUse").style.display = 'block';
			window.document.getElementById("10044sub").style.display = 'block';		
			window.document.getElementById("10044").style.fontWeight = 'bold';			
			window.document.getElementById("10044").style.backgroundColor = '#EEE';
			window.document.getElementById("10161sub").style.display = 'block';	
			window.document.getElementById("10161").style.color = '#F60';
		}
		if (sectionID.search("10058") != -1) {
			window.document.getElementById("navArrowbyProduct").src = '/OA_HTML/images/down_arrow.gif';
			window.document.getElementById("navArrowbyUse").src = '/OA_HTML/images/down_arrow.gif';
			window.document.getElementById("shop").style.display = 'block';
			window.document.getElementById("byProduct").style.display = 'block';
			window.document.getElementById("byUse").style.display = 'block';
			window.document.getElementById("10044sub").style.display = 'block';		
			window.document.getElementById("10044").style.fontWeight = 'bold';			
			window.document.getElementById("10044").style.backgroundColor = '#EEE';
			window.document.getElementById("10058sub").style.display = 'block';
			window.document.getElementById("10058").style.color = '#F60';
		}
		if (sectionID.search("10059") != -1) {
			window.document.getElementById("navArrowbyProduct").src = '/OA_HTML/images/down_arrow.gif';
			window.document.getElementById("navArrowbyUse").src = '/OA_HTML/images/down_arrow.gif';
			window.document.getElementById("shop").style.display = 'block';
			window.document.getElementById("byProduct").style.display = 'block';
			window.document.getElementById("byUse").style.display = 'block';
			window.document.getElementById("10044sub").style.display = 'block';		
			window.document.getElementById("10044").style.fontWeight = 'bold';			
			window.document.getElementById("10044").style.backgroundColor = '#EEE';
			window.document.getElementById("10059").style.color = '#F60';
		}
		if (sectionID.search("10063") != -1) {
			window.document.getElementById("navArrowbyProduct").src = '/OA_HTML/images/down_arrow.gif';
			window.document.getElementById("navArrowbyUse").src = '/OA_HTML/images/down_arrow.gif';
			window.document.getElementById("shop").style.display = 'block';
			window.document.getElementById("byProduct").style.display = 'block';
			window.document.getElementById("byUse").style.display = 'block';
			window.document.getElementById("10044sub").style.display = 'block';		
			window.document.getElementById("10044").style.fontWeight = 'bold';			
			window.document.getElementById("10044").style.backgroundColor = '#EEE';
			window.document.getElementById("10063").style.color = '#F60';
		}
		if (sectionID.search("10064") != -1) {
			window.document.getElementById("navArrowbyProduct").src = '/OA_HTML/images/down_arrow.gif';
			window.document.getElementById("navArrowbyUse").src = '/OA_HTML/images/down_arrow.gif';
			window.document.getElementById("shop").style.display = 'block';
			window.document.getElementById("byProduct").style.display = 'block';
			window.document.getElementById("byUse").style.display = 'block';
			window.document.getElementById("10044sub").style.display = 'block';		
			window.document.getElementById("10044").style.fontWeight = 'bold';			
			window.document.getElementById("10044").style.backgroundColor = '#EEE';
			window.document.getElementById("10064sub").style.display = 'block';
			window.document.getElementById("10064").style.color = '#F60';
		}
		if (sectionID.search("10065") != -1) {
			window.document.getElementById("navArrowbyProduct").src = '/OA_HTML/images/down_arrow.gif';
			window.document.getElementById("navArrowbyUse").src = '/OA_HTML/images/down_arrow.gif';
			window.document.getElementById("shop").style.display = 'block';
			window.document.getElementById("byProduct").style.display = 'block';
			window.document.getElementById("byUse").style.display = 'block';
			window.document.getElementById("10044sub").style.display = 'block';		
			window.document.getElementById("10044").style.fontWeight = 'bold';			
			window.document.getElementById("10044").style.backgroundColor = '#EEE';
			window.document.getElementById("10064sub").style.display = 'block';
			window.document.getElementById("10065").style.color = '#F60';
		}
		if (sectionID.search("10066") != -1) {
			window.document.getElementById("navArrowbyProduct").src = '/OA_HTML/images/down_arrow.gif';
			window.document.getElementById("navArrowbyUse").src = '/OA_HTML/images/down_arrow.gif';
			window.document.getElementById("shop").style.display = 'block';
			window.document.getElementById("byProduct").style.display = 'block';
			window.document.getElementById("byUse").style.display = 'block';
			window.document.getElementById("10044sub").style.display = 'block';		
			window.document.getElementById("10044").style.fontWeight = 'bold';			
			window.document.getElementById("10044").style.backgroundColor = '#EEE';
			window.document.getElementById("10064sub").style.display = 'block';
			window.document.getElementById("10066").style.color = '#F60';
		}
		if (sectionID.search("10067") != -1) {
			window.document.getElementById("navArrowbyProduct").src = '/OA_HTML/images/down_arrow.gif';
			window.document.getElementById("navArrowbyUse").src = '/OA_HTML/images/down_arrow.gif';
			window.document.getElementById("shop").style.display = 'block';
			window.document.getElementById("byProduct").style.display = 'block';
			window.document.getElementById("byUse").style.display = 'block';
			window.document.getElementById("10044sub").style.display = 'block';		
			window.document.getElementById("10044").style.fontWeight = 'bold';			
			window.document.getElementById("10044").style.backgroundColor = '#EEE';
			window.document.getElementById("10064sub").style.display = 'block';
			window.document.getElementById("10067").style.color = '#F60';
		}
		if (sectionID.search("10068") != -1) {
			window.document.getElementById("navArrowbyProduct").src = '/OA_HTML/images/down_arrow.gif';
			window.document.getElementById("navArrowbyUse").src = '/OA_HTML/images/down_arrow.gif';
			window.document.getElementById("shop").style.display = 'block';
			window.document.getElementById("byProduct").style.display = 'block';
			window.document.getElementById("byUse").style.display = 'block';
			window.document.getElementById("10044sub").style.display = 'block';		
			window.document.getElementById("10044").style.fontWeight = 'bold';			
			window.document.getElementById("10044").style.backgroundColor = '#EEE';
			window.document.getElementById("10064sub").style.display = 'block';
			window.document.getElementById("10068").style.color = '#F60';
		}
		if (sectionID.search("10061") != -1) {
			window.document.getElementById("navArrowbyProduct").src = '/OA_HTML/images/down_arrow.gif';
			window.document.getElementById("navArrowbyUse").src = '/OA_HTML/images/down_arrow.gif';
			window.document.getElementById("shop").style.display = 'block';
			window.document.getElementById("byProduct").style.display = 'block';
			window.document.getElementById("byUse").style.display = 'block';
			window.document.getElementById("10044sub").style.display = 'block';		
			window.document.getElementById("10044").style.fontWeight = 'bold';			
			window.document.getElementById("10044").style.backgroundColor = '#EEE';
			window.document.getElementById("10058sub").style.display = 'block';
			window.document.getElementById("10061sub").style.display = 'block';
			window.document.getElementById("10061").style.color = '#F60';
		}
		if (sectionID.search("10067") != -1) {
			window.document.getElementById("navArrowbyProduct").src = '/OA_HTML/images/down_arrow.gif';
			window.document.getElementById("navArrowbyUse").src = '/OA_HTML/images/down_arrow.gif';
			window.document.getElementById("shop").style.display = 'block';
			window.document.getElementById("byProduct").style.display = 'block';
			window.document.getElementById("byUse").style.display = 'block';
			window.document.getElementById("10044sub").style.display = 'block';		
			window.document.getElementById("10044").style.fontWeight = 'bold';			
			window.document.getElementById("10044").style.backgroundColor = '#EEE';
			window.document.getElementById("10058sub").style.display = 'block';
			window.document.getElementById("10067sub").style.display = 'block';
			window.document.getElementById("10067").style.color = '#F60';
		}
		if (sectionID.search("10071") != -1) {
			window.document.getElementById("navArrowbyProduct").src = '/OA_HTML/images/down_arrow.gif';
			window.document.getElementById("navArrowbyUse").src = '/OA_HTML/images/down_arrow.gif';
			window.document.getElementById("shop").style.display = 'block';
			window.document.getElementById("byProduct").style.display = 'block';
			window.document.getElementById("byUse").style.display = 'block';
			window.document.getElementById("10044sub").style.display = 'block';		
			window.document.getElementById("10044").style.fontWeight = 'bold';			
			window.document.getElementById("10044").style.backgroundColor = '#EEE';
			window.document.getElementById("10058sub").style.display = 'block';
			window.document.getElementById("10071sub").style.display = 'block';
			window.document.getElementById("10071").style.color = '#F60';
		}
		
		<!-- 10072 -->
		
		if (sectionID.search("10073") != -1) {
			window.document.getElementById("navArrowbyProduct").src = '/OA_HTML/images/down_arrow.gif';
			window.document.getElementById("navArrowbyUse").src = '/OA_HTML/images/down_arrow.gif';
			window.document.getElementById("shop").style.display = 'block';
			window.document.getElementById("byProduct").style.display = 'block';
			window.document.getElementById("byUse").style.display = 'block';
			window.document.getElementById("10044sub").style.display = 'block';		
			window.document.getElementById("10044").style.fontWeight = 'bold';			
			window.document.getElementById("10044").style.backgroundColor = '#EEE';
			window.document.getElementById("10058sub").style.display = 'block';
			window.document.getElementById("10071sub").style.display = 'block';
			window.document.getElementById("10073").style.color = '#F60';
		}
		if (sectionID.search("10060") != -1) {
			window.document.getElementById("navArrowbyProduct").src = '/OA_HTML/images/down_arrow.gif';
			window.document.getElementById("navArrowbyUse").src = '/OA_HTML/images/down_arrow.gif';
			window.document.getElementById("shop").style.display = 'block';
			window.document.getElementById("byProduct").style.display = 'block';
			window.document.getElementById("byUse").style.display = 'block';
			window.document.getElementById("10044sub").style.display = 'block';		
			window.document.getElementById("10044").style.fontWeight = 'bold';			
			window.document.getElementById("10044").style.backgroundColor = '#EEE';
			window.document.getElementById("10060").style.color = '#F60';
		}
		if (sectionID.search("10077") != -1) {
			window.document.getElementById("navArrowbyProduct").src = '/OA_HTML/images/down_arrow.gif';
			window.document.getElementById("navArrowbyUse").src = '/OA_HTML/images/down_arrow.gif';
			window.document.getElementById("shop").style.display = 'block';
			window.document.getElementById("byProduct").style.display = 'block';
			window.document.getElementById("byUse").style.display = 'block';
			window.document.getElementById("10044sub").style.display = 'block';		
			window.document.getElementById("10044").style.fontWeight = 'bold';			
			window.document.getElementById("10044").style.backgroundColor = '#EEE';
			window.document.getElementById("10058sub").style.display = 'block';
			window.document.getElementById("10067sub").style.display = 'block';
			window.document.getElementById("10077").style.color = '#F60';
		}
		
		<!-- 10078 -->
		
		if (sectionID.search("10079") != -1) {
			window.document.getElementById("navArrowbyProduct").src = '/OA_HTML/images/down_arrow.gif';
			window.document.getElementById("navArrowbyUse").src = '/OA_HTML/images/down_arrow.gif';
			window.document.getElementById("shop").style.display = 'block';
			window.document.getElementById("byProduct").style.display = 'block';
			window.document.getElementById("byUse").style.display = 'block';
			window.document.getElementById("10044sub").style.display = 'block';		
			window.document.getElementById("10044").style.fontWeight = 'bold';			
			window.document.getElementById("10044").style.backgroundColor = '#EEE';
			window.document.getElementById("10058sub").style.display = 'block';
			window.document.getElementById("10073sub").style.display = 'block';
			window.document.getElementById("10079").style.color = '#F60';
		}
		if (sectionID.search("10080") != -1) {
			window.document.getElementById("navArrowbyProduct").src = '/OA_HTML/images/down_arrow.gif';
			window.document.getElementById("navArrowbyUse").src = '/OA_HTML/images/down_arrow.gif';
			window.document.getElementById("shop").style.display = 'block';
			window.document.getElementById("byProduct").style.display = 'block';
			window.document.getElementById("byUse").style.display = 'block';
			window.document.getElementById("10044sub").style.display = 'block';		
			window.document.getElementById("10044").style.fontWeight = 'bold';			
			window.document.getElementById("10044").style.backgroundColor = '#EEE';
			window.document.getElementById("10058sub").style.display = 'block';
			window.document.getElementById("10073sub").style.display = 'block';
			window.document.getElementById("10080").style.color = '#F60';
		}
		if (sectionID.search("10081") != -1) {
			window.document.getElementById("navArrowbyProduct").src = '/OA_HTML/images/down_arrow.gif';
			window.document.getElementById("navArrowbyUse").src = '/OA_HTML/images/down_arrow.gif';
			window.document.getElementById("shop").style.display = 'block';
			window.document.getElementById("byProduct").style.display = 'block';
			window.document.getElementById("byUse").style.display = 'block';
			window.document.getElementById("10044sub").style.display = 'block';		
			window.document.getElementById("10044").style.fontWeight = 'bold';			
			window.document.getElementById("10044").style.backgroundColor = '#EEE';
			window.document.getElementById("10058sub").style.display = 'block';
			window.document.getElementById("10073sub").style.display = 'block';
			window.document.getElementById("10081").style.color = '#F60';
		}
		if (sectionID.search("10082") != -1) {
			window.document.getElementById("navArrowbyProduct").src = '/OA_HTML/images/down_arrow.gif';
			window.document.getElementById("navArrowbyUse").src = '/OA_HTML/images/down_arrow.gif';
			window.document.getElementById("shop").style.display = 'block';
			window.document.getElementById("byProduct").style.display = 'block';
			window.document.getElementById("byUse").style.display = 'block';
			window.document.getElementById("10044sub").style.display = 'block';		
			window.document.getElementById("10044").style.fontWeight = 'bold';			
			window.document.getElementById("10044").style.backgroundColor = '#EEE';
			window.document.getElementById("10058sub").style.display = 'block';
			window.document.getElementById("10073sub").style.display = 'block';
			window.document.getElementById("10082").style.color = '#F60';
		}
		
		<!-- 10083 to 10099 -->
		
		if (sectionID.search("10064") != -1) {
			window.document.getElementById("navArrowbyProduct").src = '/OA_HTML/images/down_arrow.gif';
			window.document.getElementById("navArrowbyUse").src = '/OA_HTML/images/down_arrow.gif';
			window.document.getElementById("shop").style.display = 'block';
			window.document.getElementById("byProduct").style.display = 'block';
			window.document.getElementById("byUse").style.display = 'block';
			window.document.getElementById("10044sub").style.display = 'block';		
			window.document.getElementById("10044").style.fontWeight = 'bold';			
			window.document.getElementById("10044").style.backgroundColor = '#EEE';
			window.document.getElementById("10058sub").style.display = 'block';
			window.document.getElementById("10061sub").style.display = 'block';
			window.document.getElementById("10064sub").style.display = 'block';
			window.document.getElementById("10064").style.color = '#F60';
		}
		
		<!-- 10101 -->
		
		if (sectionID.search("10102") != -1) {
			window.document.getElementById("navArrowbyProduct").src = '/OA_HTML/images/down_arrow.gif';
			window.document.getElementById("navArrowbyUse").src = '/OA_HTML/images/down_arrow.gif';
			window.document.getElementById("shop").style.display = 'block';
			window.document.getElementById("byProduct").style.display = 'block';
			window.document.getElementById("byUse").style.display = 'block';
			window.document.getElementById("10044sub").style.display = 'block';		
			window.document.getElementById("10044").style.fontWeight = 'bold';			
			window.document.getElementById("10044").style.backgroundColor = '#EEE';
			window.document.getElementById("10058sub").style.display = 'block';
			window.document.getElementById("10061sub").style.display = 'block';
			window.document.getElementById("10102").style.color = '#F60';
		}
		if (sectionID.search("10062") != -1) {
			window.document.getElementById("navArrowbyProduct").src = '/OA_HTML/images/down_arrow.gif';
			window.document.getElementById("navArrowbyUse").src = '/OA_HTML/images/down_arrow.gif';
			window.document.getElementById("shop").style.display = 'block';
			window.document.getElementById("byProduct").style.display = 'block';
			window.document.getElementById("byUse").style.display = 'block';
			window.document.getElementById("10044sub").style.display = 'block';		
			window.document.getElementById("10044").style.fontWeight = 'bold';			
			window.document.getElementById("10044").style.backgroundColor = '#EEE';
			window.document.getElementById("10058sub").style.display = 'block';
			window.document.getElementById("10061sub").style.display = 'block';
			window.document.getElementById("10062").style.color = '#F60';
		}
		if (sectionID.search("10063") != -1) {
			window.document.getElementById("navArrowbyProduct").src = '/OA_HTML/images/down_arrow.gif';
			window.document.getElementById("navArrowbyUse").src = '/OA_HTML/images/down_arrow.gif';
			window.document.getElementById("shop").style.display = 'block';
			window.document.getElementById("byProduct").style.display = 'block';
			window.document.getElementById("byUse").style.display = 'block';
			window.document.getElementById("10044sub").style.display = 'block';		
			window.document.getElementById("10044").style.fontWeight = 'bold';			
			window.document.getElementById("10044").style.backgroundColor = '#EEE';
			window.document.getElementById("10058sub").style.display = 'block';
			window.document.getElementById("10061sub").style.display = 'block';
			window.document.getElementById("10063").style.color = '#F60';
		}
		
		<!-- 10105 to 10106 -->
		
		if (sectionID.search("10065") != -1) {
			window.document.getElementById("navArrowbyProduct").src = '/OA_HTML/images/down_arrow.gif';
			window.document.getElementById("navArrowbyUse").src = '/OA_HTML/images/down_arrow.gif';
			window.document.getElementById("shop").style.display = 'block';
			window.document.getElementById("byProduct").style.display = 'block';
			window.document.getElementById("byUse").style.display = 'block';
			window.document.getElementById("10044sub").style.display = 'block';		
			window.document.getElementById("10044").style.fontWeight = 'bold';			
			window.document.getElementById("10044").style.backgroundColor = '#EEE';
			window.document.getElementById("10058sub").style.display = 'block';
			window.document.getElementById("10061sub").style.display = 'block';
			window.document.getElementById("10064sub").style.display = 'block';
			window.document.getElementById("10065").style.color = '#F60';
		}
		if (sectionID.search("10066") != -1) {
			window.document.getElementById("navArrowbyProduct").src = '/OA_HTML/images/down_arrow.gif';
			window.document.getElementById("navArrowbyUse").src = '/OA_HTML/images/down_arrow.gif';
			window.document.getElementById("shop").style.display = 'block';
			window.document.getElementById("byProduct").style.display = 'block';
			window.document.getElementById("byUse").style.display = 'block';
			window.document.getElementById("10044sub").style.display = 'block';		
			window.document.getElementById("10044").style.fontWeight = 'bold';			
			window.document.getElementById("10044").style.backgroundColor = '#EEE';
			window.document.getElementById("10058sub").style.display = 'block';
			window.document.getElementById("10061sub").style.display = 'block';
			window.document.getElementById("10064sub").style.display = 'block';
			window.document.getElementById("10066").style.color = '#F60';
		}
		
		<!-- 10109 to 10113 -->
		
		if (sectionID.search("10053") != -1) {
			window.document.getElementById("navArrowbyProduct").src = '/OA_HTML/images/down_arrow.gif';
			window.document.getElementById("navArrowbyUse").src = '/OA_HTML/images/down_arrow.gif';
			window.document.getElementById("shop").style.display = 'block';
			window.document.getElementById("byProduct").style.display = 'block';
			window.document.getElementById("byUse").style.display = 'block';
			window.document.getElementById("10045sub").style.display = 'block';
			window.document.getElementById("10045").style.fontWeight = 'bold';
			window.document.getElementById("10052sub").style.display = 'block';
			window.document.getElementById("10052").style.fontWeight = 'bold';
			window.document.getElementById("10053").style.color = '#F60';
		}
		if (sectionID.search("10054") != -1) {
			window.document.getElementById("navArrowbyProduct").src = '/OA_HTML/images/down_arrow.gif';
			window.document.getElementById("navArrowbyUse").src = '/OA_HTML/images/down_arrow.gif';
			window.document.getElementById("shop").style.display = 'block';
			window.document.getElementById("byProduct").style.display = 'block';
			window.document.getElementById("byUse").style.display = 'block';
			window.document.getElementById("10045sub").style.display = 'block';
			window.document.getElementById("10045").style.fontWeight = 'bold';
			window.document.getElementById("10052sub").style.display = 'block';
			window.document.getElementById("10052").style.fontWeight = 'bold';
			window.document.getElementById("10054").style.color = '#F60';
		}
	
		<!-- 10116 to 10132 -->
		
		if (sectionID.search("10133") != -1) {
			window.document.getElementById("navArrowbyProduct").src = '/OA_HTML/images/down_arrow.gif';
			window.document.getElementById("navArrowbyUse").src = '/OA_HTML/images/down_arrow.gif';
			window.document.getElementById("shop").style.display = 'block';
			window.document.getElementById("byProduct").style.display = 'block';
			window.document.getElementById("byUse").style.display = 'block';
			window.document.getElementById("10049sub").style.display = 'block';
			window.document.getElementById("10049").style.fontWeight = 'bold';
			window.document.getElementById("10133").style.color = '#F60';
		}
		
		<!-- 10134 -->
		
		if (sectionID.search("10135") != -1) {
			window.document.getElementById("navArrowbyProduct").src = '/OA_HTML/images/down_arrow.gif';
			window.document.getElementById("navArrowbyUse").src = '/OA_HTML/images/down_arrow.gif';
			window.document.getElementById("shop").style.display = 'block';
			window.document.getElementById("byProduct").style.display = 'block';
			window.document.getElementById("byUse").style.display = 'block';
			window.document.getElementById("10049sub").style.display = 'block';
			window.document.getElementById("10049").style.fontWeight = 'bold';
			window.document.getElementById("10135").style.color = '#F60';
		}
		if (sectionID.search("10136") != -1) {
			window.document.getElementById("navArrowbyProduct").src = '/OA_HTML/images/down_arrow.gif';
			window.document.getElementById("navArrowbyUse").src = '/OA_HTML/images/down_arrow.gif';
			window.document.getElementById("shop").style.display = 'block';
			window.document.getElementById("byProduct").style.display = 'block';
			window.document.getElementById("byUse").style.display = 'block';
			window.document.getElementById("10049sub").style.display = 'block';
			window.document.getElementById("10049").style.fontWeight = 'bold';
			window.document.getElementById("10049").style.fontWeight = 'bold';
			window.document.getElementById("10136").style.color = '#F60';
		}
		
		<!-- 10137 to 10138 -->
		
		if (sectionID.search("10139") != -1) {
			window.document.getElementById("navArrowbyProduct").src = '/OA_HTML/images/down_arrow.gif';
			window.document.getElementById("navArrowbyUse").src = '/OA_HTML/images/down_arrow.gif';
			window.document.getElementById("shop").style.display = 'block';
			window.document.getElementById("byProduct").style.display = 'block';
			window.document.getElementById("byUse").style.display = 'block';
			window.document.getElementById("10049sub").style.display = 'block';
			window.document.getElementById("10049").style.fontWeight = 'bold';
			window.document.getElementById("10139sub").style.display = 'block';
			window.document.getElementById("10139").style.color = '#F60';
		}
		if (sectionID.search("10180") != -1) {
			window.document.getElementById("navArrowbyProduct").src = '/OA_HTML/images/down_arrow.gif';
			window.document.getElementById("navArrowbyUse").src = '/OA_HTML/images/down_arrow.gif';
			window.document.getElementById("shop").style.display = 'block';
			window.document.getElementById("byProduct").style.display = 'block';
			window.document.getElementById("byUse").style.display = 'block';
			window.document.getElementById("10120sub").style.display = 'block';
			window.document.getElementById("10120").style.fontWeight = 'bold';
			window.document.getElementById("10180").style.color = '#F60';
		}
		if (sectionID.search("10146") != -1) {
			window.document.getElementById("navArrowbyProduct").src = '/OA_HTML/images/down_arrow.gif';
			window.document.getElementById("navArrowbyUse").src = '/OA_HTML/images/down_arrow.gif';
			window.document.getElementById("shop").style.display = 'block';
			window.document.getElementById("byProduct").style.display = 'block';
			window.document.getElementById("byUse").style.display = 'block';
			window.document.getElementById("10049sub").style.display = 'block';
			window.document.getElementById("10049").style.fontWeight = 'bold';
			window.document.getElementById("10139sub").style.display = 'block';
			window.document.getElementById("10141sub").style.display = 'block';
			window.document.getElementById("10146").style.backgroundColor = '#FFF';
			window.document.getElementById("10146").style.color = '#F60';
		}
		if (sectionID.search("10147") != -1) {
			window.document.getElementById("navArrowbyProduct").src = '/OA_HTML/images/down_arrow.gif';
			window.document.getElementById("navArrowbyUse").src = '/OA_HTML/images/down_arrow.gif';
			window.document.getElementById("shop").style.display = 'block';
			window.document.getElementById("byProduct").style.display = 'block';
			window.document.getElementById("byUse").style.display = 'block';
			window.document.getElementById("10049sub").style.display = 'block';
			window.document.getElementById("10049").style.fontWeight = 'bold';
			window.document.getElementById("10139sub").style.display = 'block';
			window.document.getElementById("10141sub").style.display = 'block';
			window.document.getElementById("10147").style.color = '#F60';
		}
		if (sectionID.search("10148") != -1) {
			window.document.getElementById("navArrowbyProduct").src = '/OA_HTML/images/down_arrow.gif';
			window.document.getElementById("navArrowbyUse").src = '/OA_HTML/images/down_arrow.gif';
			window.document.getElementById("shop").style.display = 'block';
			window.document.getElementById("byProduct").style.display = 'block';
			window.document.getElementById("byUse").style.display = 'block';
			window.document.getElementById("10049sub").style.display = 'block';
			window.document.getElementById("10049").style.fontWeight = 'bold';
			window.document.getElementById("10139sub").style.display = 'block';
			window.document.getElementById("10143sub").style.display = 'block';
			window.document.getElementById("10148").style.color = '#F60';
		}
		if (sectionID.search("10149") != -1) {
			window.document.getElementById("navArrowbyProduct").src = '/OA_HTML/images/down_arrow.gif';
			window.document.getElementById("navArrowbyUse").src = '/OA_HTML/images/down_arrow.gif';
			window.document.getElementById("shop").style.display = 'block';
			window.document.getElementById("byProduct").style.display = 'block';
			window.document.getElementById("byUse").style.display = 'block';
			window.document.getElementById("10049sub").style.display = 'block';
			window.document.getElementById("10049").style.fontWeight = 'bold';
			window.document.getElementById("10139sub").style.display = 'block';
			window.document.getElementById("10143sub").style.display = 'block';
			window.document.getElementById("10149").style.color = '#F60';
		}
		if (sectionID.search("10150") != -1) {
			window.document.getElementById("navArrowbyProduct").src = '/OA_HTML/images/down_arrow.gif';
			window.document.getElementById("navArrowbyUse").src = '/OA_HTML/images/down_arrow.gif';
			window.document.getElementById("shop").style.display = 'block';
			window.document.getElementById("byProduct").style.display = 'block';
			window.document.getElementById("byUse").style.display = 'block';
			window.document.getElementById("10049sub").style.display = 'block';
			window.document.getElementById("10049").style.fontWeight = 'bold';
			window.document.getElementById("10139sub").style.display = 'block';
			window.document.getElementById("10143sub").style.display = 'block';
			window.document.getElementById("10150").style.color = '#F60';
		}
		if (sectionID.search("10151") != -1) {
			window.document.getElementById("navArrowbyProduct").src = '/OA_HTML/images/down_arrow.gif';
			window.document.getElementById("navArrowbyUse").src = '/OA_HTML/images/down_arrow.gif';
			window.document.getElementById("shop").style.display = 'block';
			window.document.getElementById("byProduct").style.display = 'block';
			window.document.getElementById("byUse").style.display = 'block';
			window.document.getElementById("10049sub").style.display = 'block';
			window.document.getElementById("10049").style.fontWeight = 'bold';
			window.document.getElementById("10139sub").style.display = 'block';
			window.document.getElementById("10143sub").style.display = 'block';
			window.document.getElementById("10151").style.color = '#F60';
		}
		if (sectionID.search("10152") != -1) {
			window.document.getElementById("navArrowbyProduct").src = '/OA_HTML/images/down_arrow.gif';
			window.document.getElementById("navArrowbyUse").src = '/OA_HTML/images/down_arrow.gif';
			window.document.getElementById("shop").style.display = 'block';
			window.document.getElementById("byProduct").style.display = 'block';
			window.document.getElementById("byUse").style.display = 'block';
			window.document.getElementById("10049sub").style.display = 'block';
			window.document.getElementById("10049").style.fontWeight = 'bold';
			window.document.getElementById("10139sub").style.display = 'block';
			window.document.getElementById("10140sub").style.display = 'block';
			window.document.getElementById("10152sub").style.display = 'block';
			window.document.getElementById("10152").style.color = '#F60';
		}
		if (sectionID.search("10153") != -1) {
			window.document.getElementById("navArrowbyProduct").src = '/OA_HTML/images/down_arrow.gif';
			window.document.getElementById("navArrowbyUse").src = '/OA_HTML/images/down_arrow.gif';
			window.document.getElementById("shop").style.display = 'block';
			window.document.getElementById("byProduct").style.display = 'block';
			window.document.getElementById("byUse").style.display = 'block';
			window.document.getElementById("10049sub").style.display = 'block';
			window.document.getElementById("10049").style.fontWeight = 'bold';
			window.document.getElementById("10139sub").style.display = 'block';
			window.document.getElementById("10140sub").style.display = 'block';
			window.document.getElementById("10153").style.color = '#F60';
		}
		if (sectionID.search("10154") != -1) {
			window.document.getElementById("navArrowbyProduct").src = '/OA_HTML/images/down_arrow.gif';
			window.document.getElementById("navArrowbyUse").src = '/OA_HTML/images/down_arrow.gif';
			window.document.getElementById("shop").style.display = 'block';
			window.document.getElementById("byProduct").style.display = 'block';
			window.document.getElementById("byUse").style.display = 'block';
			window.document.getElementById("10049sub").style.display = 'block';
			window.document.getElementById("10049").style.fontWeight = 'bold';
			window.document.getElementById("10139sub").style.display = 'block';
			window.document.getElementById("10140sub").style.display = 'block';
			window.document.getElementById("10154").style.color = '#F60';
		}
		if (sectionID.search("10155") != -1) {
			window.document.getElementById("navArrowbyProduct").src = '/OA_HTML/images/down_arrow.gif';
			window.document.getElementById("navArrowbyUse").src = '/OA_HTML/images/down_arrow.gif';
			window.document.getElementById("shop").style.display = 'block';
			window.document.getElementById("byProduct").style.display = 'block';
			window.document.getElementById("byUse").style.display = 'block';
			window.document.getElementById("10049sub").style.display = 'block';
			window.document.getElementById("10049").style.fontWeight = 'bold';
			window.document.getElementById("10139sub").style.display = 'block';
			window.document.getElementById("10140sub").style.display = 'block';
			window.document.getElementById("10155").style.color = '#F60';
		}
		if (sectionID.search("10156") != -1) {
			window.document.getElementById("navArrowbyProduct").src = '/OA_HTML/images/down_arrow.gif';
			window.document.getElementById("navArrowbyUse").src = '/OA_HTML/images/down_arrow.gif';
			window.document.getElementById("shop").style.display = 'block';
			window.document.getElementById("byProduct").style.display = 'block';
			window.document.getElementById("byUse").style.display = 'block';
			window.document.getElementById("10049sub").style.display = 'block';
			window.document.getElementById("10049").style.fontWeight = 'bold';
			window.document.getElementById("10139sub").style.display = 'block';
			window.document.getElementById("10140sub").style.display = 'block';
			window.document.getElementById("10152sub").style.display = 'block';
			window.document.getElementById("10156").style.color = '#F60';
		}
		if (sectionID.search("10157") != -1) {
			window.document.getElementById("navArrowbyProduct").src = '/OA_HTML/images/down_arrow.gif';
			window.document.getElementById("navArrowbyUse").src = '/OA_HTML/images/down_arrow.gif';
			window.document.getElementById("shop").style.display = 'block';
			window.document.getElementById("byProduct").style.display = 'block';
			window.document.getElementById("byUse").style.display = 'block';
			window.document.getElementById("10049sub").style.display = 'block';
			window.document.getElementById("10049").style.fontWeight = 'bold';
			window.document.getElementById("10139sub").style.display = 'block';
			window.document.getElementById("10140sub").style.display = 'block';
			window.document.getElementById("10152sub").style.display = 'block';
			window.document.getElementById("10157").style.color = '#F60';
		}
		
		<!-- 10158 - 10164 --------->
		
		
		if (sectionID.search("10072") != -1) {
			window.document.getElementById("navArrowbyProduct").src = '/OA_HTML/images/down_arrow.gif';
			window.document.getElementById("navArrowbyUse").src = '/OA_HTML/images/down_arrow.gif';
			window.document.getElementById("shop").style.display = 'block';
			window.document.getElementById("byProduct").style.display = 'block';
			window.document.getElementById("byUse").style.display = 'block';
			window.document.getElementById("10044sub").style.display = 'block';		
			window.document.getElementById("10044").style.fontWeight = 'bold';			
			window.document.getElementById("10044").style.backgroundColor = '#EEE';
			window.document.getElementById("10058sub").style.display = 'block';
			window.document.getElementById("10071sub").style.display = 'block';
			window.document.getElementById("10072").style.color = '#F60';
		}
		if (sectionID.search("10166") != -1) {
			window.document.getElementById("navArrowbyProduct").src = '/OA_HTML/images/down_arrow.gif';
			window.document.getElementById("navArrowbyUse").src = '/OA_HTML/images/down_arrow.gif';
			window.document.getElementById("shop").style.display = 'block';
			window.document.getElementById("byProduct").style.display = 'block';
			window.document.getElementById("byUse").style.display = 'block';
			window.document.getElementById("10044sub").style.display = 'block';		
			window.document.getElementById("10044").style.fontWeight = 'bold';			
			window.document.getElementById("10044").style.backgroundColor = '#EEE';
			window.document.getElementById("10058sub").style.display = 'block';
			window.document.getElementById("10067sub").style.display = 'block';
			window.document.getElementById("10077").style.color = '#F60';
		}
		if (sectionID.search("10073") != -1) {
			window.document.getElementById("navArrowbyProduct").src = '/OA_HTML/images/down_arrow.gif';
			window.document.getElementById("navArrowbyUse").src = '/OA_HTML/images/down_arrow.gif';
			window.document.getElementById("shop").style.display = 'block';
			window.document.getElementById("byProduct").style.display = 'block';
			window.document.getElementById("byUse").style.display = 'block';
			window.document.getElementById("10044sub").style.display = 'block';		
			window.document.getElementById("10044").style.fontWeight = 'bold';			
			window.document.getElementById("10044").style.backgroundColor = '#EEE';
			window.document.getElementById("10058sub").style.display = 'block';
			window.document.getElementById("10071sub").style.display = 'block';
			window.document.getElementById("10073").style.color = '#F60';
		}
		if (sectionID.search("10056") != -1) {
			window.document.getElementById("navArrowbyProduct").src = '/OA_HTML/images/down_arrow.gif';
			window.document.getElementById("navArrowbyUse").src = '/OA_HTML/images/down_arrow.gif';
			window.document.getElementById("shop").style.display = 'block';
			window.document.getElementById("byProduct").style.display = 'block';
			window.document.getElementById("byUse").style.display = 'block';
			window.document.getElementById("10044sub").style.display = 'block';		
			window.document.getElementById("10044").style.fontWeight = 'bold';			
			window.document.getElementById("10044").style.backgroundColor = '#EEE';
			window.document.getElementById("10055sub").style.display = 'block';
			window.document.getElementById("10056").style.color = '#F60';
		}
		if (sectionID.search("10057") != -1) {
			window.document.getElementById("navArrowbyProduct").src = '/OA_HTML/images/down_arrow.gif';
			window.document.getElementById("navArrowbyUse").src = '/OA_HTML/images/down_arrow.gif';
			window.document.getElementById("shop").style.display = 'block';
			window.document.getElementById("byProduct").style.display = 'block';
			window.document.getElementById("byUse").style.display = 'block';
			window.document.getElementById("10044sub").style.display = 'block';		
			window.document.getElementById("10044").style.fontWeight = 'bold';			
			window.document.getElementById("10044").style.backgroundColor = '#EEE';
			window.document.getElementById("10055sub").style.display = 'block';
			window.document.getElementById("10057").style.color = '#F60';
		}
		if (sectionID.search("10095") != -1) {
			window.document.getElementById("navArrowbyProduct").src = '/OA_HTML/images/down_arrow.gif';
			window.document.getElementById("navArrowbyUse").src = '/OA_HTML/images/down_arrow.gif';
			window.document.getElementById("shop").style.display = 'block';
			window.document.getElementById("byProduct").style.display = 'block';
			window.document.getElementById("byUse").style.display = 'block';
			window.document.getElementById("10043sub").style.display = 'block';
			window.document.getElementById("10043").style.backgroundColor = '#EEE';
			window.document.getElementById("10043").style.fontWeight = 'bold';
			window.document.getElementById("10095").style.color = '#F60';
		}
		
		<!-- 10171 - 10173 ------//
		
		
		if (sectionID.search("10050") != -1) {
			window.document.getElementById("navArrowbyProduct").src = '/OA_HTML/images/down_arrow.gif';
			window.document.getElementById("navArrowbyUse").src = '/OA_HTML/images/down_arrow.gif';
			window.document.getElementById("shop").style.display = 'block';
			window.document.getElementById("byProduct").style.display = 'block';
			window.document.getElementById("byUse").style.display = 'block';
			window.document.getElementById("10045sub").style.display = 'block';
			window.document.getElementById("10045").style.backgroundColor = '#EEE';
			window.document.getElementById("10045").style.fontWeight = 'bold';
			window.document.getElementById("10050").style.color = '#F60';
		}
		if (sectionID.search("10051") != -1) {
			window.document.getElementById("navArrowbyProduct").src = '/OA_HTML/images/down_arrow.gif';
			window.document.getElementById("navArrowbyUse").src = '/OA_HTML/images/down_arrow.gif';
			window.document.getElementById("shop").style.display = 'block';
			window.document.getElementById("byProduct").style.display = 'block';
			window.document.getElementById("byUse").style.display = 'block';
			window.document.getElementById("10045sub").style.display = 'block';
			window.document.getElementById("10045").style.backgroundColor = '#EEE';
			window.document.getElementById("10045").style.fontWeight = 'bold';
			window.document.getElementById("10051").style.color = '#F60';
		}
		if (sectionID.search("10052") != -1) {
			window.document.getElementById("navArrowbyProduct").src = '/OA_HTML/images/down_arrow.gif';
			window.document.getElementById("navArrowbyUse").src = '/OA_HTML/images/down_arrow.gif';
			window.document.getElementById("shop").style.display = 'block';
			window.document.getElementById("byProduct").style.display = 'block';
			window.document.getElementById("byUse").style.display = 'block';
			window.document.getElementById("10045sub").style.display = 'block';
			window.document.getElementById("10045").style.backgroundColor = '#EEE';		
			window.document.getElementById("10045").style.fontWeight = 'bold';
			window.document.getElementById("10052sub").style.display = 'block';
			window.document.getElementById("10052").style.color = '#F60';
		}
		if (sectionID.search("10121") != -1) {
			window.document.getElementById("navArrowbyProduct").src = '/OA_HTML/images/down_arrow.gif';
			window.document.getElementById("navArrowbyUse").src = '/OA_HTML/images/down_arrow.gif';
			window.document.getElementById("shop").style.display = 'block';
			window.document.getElementById("byProduct").style.display = 'block';
			window.document.getElementById("byUse").style.display = 'block';
			window.document.getElementById("10120sub").style.display = 'block';
			window.document.getElementById("10120").style.backgroundColor = '#EEE';
			window.document.getElementById("10120").style.fontWeight = 'bold';
			window.document.getElementById("10121").style.color = '#F60';
		}
		if (sectionID.search("10122") != -1) {
			window.document.getElementById("navArrowbyProduct").src = '/OA_HTML/images/down_arrow.gif';
			window.document.getElementById("navArrowbyUse").src = '/OA_HTML/images/down_arrow.gif';
			window.document.getElementById("shop").style.display = 'block';
			window.document.getElementById("byProduct").style.display = 'block';
			window.document.getElementById("byUse").style.display = 'block';
			window.document.getElementById("10120sub").style.display = 'block';
			window.document.getElementById("10120").style.backgroundColor = '#EEE';
			window.document.getElementById("10120").style.fontWeight = 'bold';
			window.document.getElementById("10122").style.color = '#F60';
		}
		if (sectionID.search("10123") != -1) {
			window.document.getElementById("navArrowbyProduct").src = '/OA_HTML/images/down_arrow.gif';
			window.document.getElementById("navArrowbyUse").src = '/OA_HTML/images/down_arrow.gif';
			window.document.getElementById("shop").style.display = 'block';
			window.document.getElementById("byProduct").style.display = 'block';
			window.document.getElementById("byUse").style.display = 'block';
			window.document.getElementById("10120sub").style.display = 'block';
			window.document.getElementById("10120").style.backgroundColor = '#EEE';
			window.document.getElementById("10120").style.fontWeight = 'bold';
			window.document.getElementById("10123").style.color = '#F60';
		}
		if (sectionID.search("10124") != -1) {
			window.document.getElementById("navArrowbyProduct").src = '/OA_HTML/images/down_arrow.gif';
			window.document.getElementById("navArrowbyUse").src = '/OA_HTML/images/down_arrow.gif';
			window.document.getElementById("shop").style.display = 'block';
			window.document.getElementById("byProduct").style.display = 'block';
			window.document.getElementById("byUse").style.display = 'block';
			window.document.getElementById("10120sub").style.display = 'block';
			window.document.getElementById("10120").style.backgroundColor = '#EEE';
			window.document.getElementById("10120").style.fontWeight = 'bold';
			window.document.getElementById("10124").style.color = '#F60';
		}		
		
		<!-- 10177 - 10198 ---------//
		
		
	
		if (sectionID.search("10074") != -1) {
			window.document.getElementById("navArrowbyProduct").src = '/OA_HTML/images/down_arrow.gif';
			window.document.getElementById("navArrowbyUse").src = '/OA_HTML/images/down_arrow.gif';
			window.document.getElementById("shop").style.display = 'block';
			window.document.getElementById("byProduct").style.display = 'block';
			window.document.getElementById("byUse").style.display = 'block';
			window.document.getElementById("10044sub").style.display = 'block';		
			window.document.getElementById("10044").style.fontWeight = 'bold';			
			window.document.getElementById("10044").style.backgroundColor = '#EEE';
			window.document.getElementById("10058sub").style.display = 'block';
			window.document.getElementById("10071sub").style.display = 'block';
			window.document.getElementById("10074").style.color = '#F60';
		}
		if (sectionID.search("10075") != -1) {
			window.document.getElementById("navArrowbyProduct").src = '/OA_HTML/images/down_arrow.gif';
			window.document.getElementById("navArrowbyUse").src = '/OA_HTML/images/down_arrow.gif';
			window.document.getElementById("shop").style.display = 'block';
			window.document.getElementById("byProduct").style.display = 'block';
			window.document.getElementById("byUse").style.display = 'block';
			window.document.getElementById("10044sub").style.display = 'block';		
			window.document.getElementById("10044").style.fontWeight = 'bold';			
			window.document.getElementById("10044").style.backgroundColor = '#EEE';
			window.document.getElementById("10058sub").style.display = 'block';
			window.document.getElementById("10071sub").style.display = 'block';
			window.document.getElementById("10075").style.color = '#F60';
		}
		if (sectionID.search("10068") != -1) {
			window.document.getElementById("navArrowbyProduct").src = '/OA_HTML/images/down_arrow.gif';
			window.document.getElementById("navArrowbyUse").src = '/OA_HTML/images/down_arrow.gif';
			window.document.getElementById("shop").style.display = 'block';
			window.document.getElementById("byProduct").style.display = 'block';
			window.document.getElementById("byUse").style.display = 'block';
			window.document.getElementById("10044sub").style.display = 'block';		
			window.document.getElementById("10044").style.fontWeight = 'bold';			
			window.document.getElementById("10044").style.backgroundColor = '#EEE';
			window.document.getElementById("10058sub").style.display = 'block';
			window.document.getElementById("10067sub").style.display = 'block';
			window.document.getElementById("10068").style.color = '#F60';
		}
		if (sectionID.search("10069") != -1) {
			window.document.getElementById("navArrowbyProduct").src = '/OA_HTML/images/down_arrow.gif';
			window.document.getElementById("navArrowbyUse").src = '/OA_HTML/images/down_arrow.gif';
			window.document.getElementById("shop").style.display = 'block';
			window.document.getElementById("byProduct").style.display = 'block';
			window.document.getElementById("byUse").style.display = 'block';
			window.document.getElementById("10044sub").style.display = 'block';		
			window.document.getElementById("10044").style.fontWeight = 'bold';			
			window.document.getElementById("10044").style.backgroundColor = '#EEE';
			window.document.getElementById("10058sub").style.display = 'block';
			window.document.getElementById("10067sub").style.display = 'block';
			window.document.getElementById("10069").style.color = '#F60';
		}
		if (sectionID.search("10070") != -1) {
			window.document.getElementById("navArrowbyProduct").src = '/OA_HTML/images/down_arrow.gif';
			window.document.getElementById("navArrowbyUse").src = '/OA_HTML/images/down_arrow.gif';
			window.document.getElementById("shop").style.display = 'block';
			window.document.getElementById("byProduct").style.display = 'block';
			window.document.getElementById("byUse").style.display = 'block';
			window.document.getElementById("10044sub").style.display = 'block';		
			window.document.getElementById("10044").style.fontWeight = 'bold';			
			window.document.getElementById("10044").style.backgroundColor = '#EEE';
			window.document.getElementById("10058sub").style.display = 'block';
			window.document.getElementById("10067sub").style.display = 'block';
			window.document.getElementById("10070").style.color = '#F60';
		}
		if (sectionID.search("10076") != -1) {
			window.document.getElementById("navArrowbyProduct").src = '/OA_HTML/images/down_arrow.gif';
			window.document.getElementById("navArrowbyUse").src = '/OA_HTML/images/down_arrow.gif';
			window.document.getElementById("shop").style.display = 'block';
			window.document.getElementById("byProduct").style.display = 'block';
			window.document.getElementById("byUse").style.display = 'block';
			window.document.getElementById("10044sub").style.display = 'block';		
			window.document.getElementById("10044").style.fontWeight = 'bold';			
			window.document.getElementById("10044").style.backgroundColor = '#EEE';
			window.document.getElementById("10058sub").style.display = 'block';
			window.document.getElementById("10071sub").style.display = 'block';
			window.document.getElementById("10076").style.color = '#F60';
		}
		if (sectionID.search("10164") != -1) {
			window.document.getElementById("navArrowbyProduct").src = '/OA_HTML/images/down_arrow.gif';
			window.document.getElementById("navArrowbyUse").src = '/OA_HTML/images/down_arrow.gif';
			window.document.getElementById("shop").style.display = 'block';
			window.document.getElementById("byProduct").style.display = 'block';
			window.document.getElementById("byUse").style.display = 'block';
			window.document.getElementById("10044sub").style.display = 'block';		
			window.document.getElementById("10044").style.fontWeight = 'bold';			
			window.document.getElementById("10044").style.backgroundColor = '#EEE';
			window.document.getElementById("10161sub").style.display = 'block';
			window.document.getElementById("10164").style.color = '#F60';
		}
		if (sectionID.search("10163") != -1) {
			window.document.getElementById("navArrowbyProduct").src = '/OA_HTML/images/down_arrow.gif';
			window.document.getElementById("navArrowbyUse").src = '/OA_HTML/images/down_arrow.gif';
			window.document.getElementById("shop").style.display = 'block';
			window.document.getElementById("byProduct").style.display = 'block';
			window.document.getElementById("byUse").style.display = 'block';
			window.document.getElementById("10044sub").style.display = 'block';		
			window.document.getElementById("10044").style.fontWeight = 'bold';			
			window.document.getElementById("10044").style.backgroundColor = '#EEE';
			window.document.getElementById("10161sub").style.display = 'block';
			window.document.getElementById("10163").style.color = '#F60';
		}
		if (sectionID.search("10162") != -1) {
			window.document.getElementById("navArrowbyProduct").src = '/OA_HTML/images/down_arrow.gif';
			window.document.getElementById("navArrowbyUse").src = '/OA_HTML/images/down_arrow.gif';
			window.document.getElementById("shop").style.display = 'block';
			window.document.getElementById("byProduct").style.display = 'block';
			window.document.getElementById("byUse").style.display = 'block';
			window.document.getElementById("10044sub").style.display = 'block';		
			window.document.getElementById("10044").style.fontWeight = 'bold';			
			window.document.getElementById("10044").style.backgroundColor = '#EEE';
			window.document.getElementById("10161sub").style.display = 'block';
			window.document.getElementById("10162").style.color = '#F60';
		}
		if (sectionID.search("10144") != -1) {
			window.document.getElementById("navArrowbyProduct").src = '/OA_HTML/images/down_arrow.gif';
			window.document.getElementById("navArrowbyUse").src = '/OA_HTML/images/down_arrow.gif';
			window.document.getElementById("shop").style.display = 'block';
			window.document.getElementById("byProduct").style.display = 'block';
			window.document.getElementById("byUse").style.display = 'block';
			window.document.getElementById("10044sub").style.display = 'block';		
			window.document.getElementById("10044").style.fontWeight = 'bold';			
			window.document.getElementById("10044").style.backgroundColor = '#EEE';
			window.document.getElementById("10058sub").style.display = 'block';
			window.document.getElementById("10144").style.color = '#F60';
		}
		if (sectionID.search("10165") != -1) {
			window.document.getElementById("navArrowbyProduct").src = '/OA_HTML/images/down_arrow.gif';
			window.document.getElementById("navArrowbyUse").src = '/OA_HTML/images/down_arrow.gif';
			window.document.getElementById("shop").style.display = 'block';
			window.document.getElementById("byProduct").style.display = 'block';
			window.document.getElementById("byUse").style.display = 'block';
			window.document.getElementById("10044sub").style.display = 'block';		
			window.document.getElementById("10044").style.fontWeight = 'bold';			
			window.document.getElementById("10044").style.backgroundColor = '#EEE';
			window.document.getElementById("10058sub").style.display = 'block';
			window.document.getElementById("10165").style.color = '#F60';
		}		
			// Default to Top Sellers 
		else if (sectionID.search("section") == -1) {
			window.document.getElementById("navArrowbyProduct").src = '/OA_HTML/images/down_arrow.gif';
			window.document.getElementById("navArrowbyUse").src = '/OA_HTML/images/down_arrow.gif';
			window.document.getElementById("shop").style.display = 'block';
			window.document.getElementById("byProduct").style.display = 'block';
			window.document.getElementById("byUse").style.display = 'block';
			window.document.getElementById("10048").style.backgroundColor = '#EEE';
			window.document.getElementById("10048").style.color = '#F60';
		}
	}
			//------------ Homepage -------------------
		else {
			window.document.getElementById("navArrowbyProduct").src = '/OA_HTML/images/down_arrow.gif';
			window.document.getElementById("navArrowbyUse").src = '/OA_HTML/images/down_arrow.gif';
			window.document.getElementById("shop").style.display = 'block';
			window.document.getElementById("byProduct").style.display = 'block';
			window.document.getElementById("byUse").style.display = 'block';
		}
}

function scrollMenu() {
	/*if (document.all) {
		var theJump2 = document.body.scrollTop - 330;
		if (theJump2 >= 50) { 
			document.all["detailsMenu"].style.top = theJump2;
			document.all["detailsMenu"].style.left = 5;
		} else if (theJump2 >= 100) {
			document.all["detailsMenu"].style.top = 100;
		} else {
			document.all["detailsMenu"].style.top = 0;
		}
	 } else {
		var theJump = window.pageYOffset - 300;
		if (theJump >= 50) { 
			document.getElementById("detailsMenu").style.top = theJump;
		} else {
			document.getElementById("detailsMenu").style.top = 0;
		}	
	 }*/
}

