<%-- 
    Document   : register
    Created on : 30 Apr, 2018, 12:40:52 PM
    Author     : Ish
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"><html dir="ltr"><head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
<meta http-equiv="Content-Style-Type" content="text/css">
<!-- no cache headers -->
<meta http-equiv="Pragma" content="no-cache">
<meta http-equiv="no-cache">
<meta http-equiv="Expires" content="-1">
<meta http-equiv="Cache-Control" content="no-cache">
<!-- end no cache headers -->
<title>Register - powered by EDMS</title>

<style type="text/css">

/* General page style. The scroll bar colours only visible in IE5.5+ */
body {
	background-color: #e5e5e5;
	scrollbar-face-color: #E8ECF4;
	scrollbar-highlight-color: #ffffff;
	scrollbar-shadow-color: #E8ECF4;
	scrollbar-3dlight-color: #E0E7F1;
	scrollbar-arrow-color:  #587EA5;
	scrollbar-track-color: #EFF2F8;
	scrollbar-darkshadow-color: #015E8C;
}

/* General font families for common tags */
font,th,td,p { font-family: Verdana, Arial, Helvetica, sans-serif }
a:link,a:active,a:visited { color : ##006699; }
a:hover		{ text-decoration: underline; color : #587EA5; }
hr	{ height: 0px; border: solid #E0E7F1 0px; border-top-width: 1px;}

/* This is the border line & background colour round the entire page */
.bodyline	{ background-color: #ffffff; border: 1px #015E8C solid; }

/* This is the outline round the main forum tables */
.forumline	{ background-color: "#CAD7E3"; border: 2px #7BA5BD solid; }


/* Main table cell colours and backgrounds */
td.row1	{ background-color: #EFF2F8; }
td.row2	{ background-color: #E8ECF4; }
td.row3	{ background-color: #E0E7F1; }

/*
  This is for the table cell above the Topics, Post & Last posts on the index.php page
  By default this is the fading out gradiated silver background.
  However, you could replace this with a bitmap specific for each forum
*/
td.rowpic {
		background-color: #ffffff;
		background-image:  url(/cellpic2.gif);
		background-repeat: repeat-y;
}

/* Header cells - the blue and silver gradient backgrounds */
th	{
	color: #FFFFFF; font-size: 11px; font-weight : bold;
	background-color: #587EA5; height: 25px;
	background-image:  url(/cellpic3.gif);
}

td.cat,td.catHead,td.catSides,td.catLeft,td.catRight,td.catBottom {
			background-image:  url(/cellpic1.gif);
			background-color:#E0E7F1; border: #ffffff; border-style: solid; height: 28px;
}

/*
  Setting additional nice inner borders for the main table cells.
  The names indicate which sides the border will be on.
  Don't worry if you don't understand this, just ignore it :-)
*/
td.cat,td.catHead,td.catBottom {
	height: 29px;
	border-width: 0px 0px 0px 0px;
}
th.thHead,th.thSides,th.thTop,th.thLeft,th.thRight,th.thBottom,th.thCornerL,th.thCornerR {
	font-weight: bold; border: #ffffff; border-style: solid; height: 28px;
}
td.row3Right,td.spaceRow {
	background-color: #E0E7F1; border: #ffffff; border-style: solid;
}

th.thHead,td.catHead { font-size: 11px; border-width: 1px 1px 0px 1px; }
th.thSides,td.catSides,td.spaceRow	 { border-width: 0px 1px 0px 1px; }
th.thRight,td.catRight,td.row3Right	 { border-width: 0px 1px 0px 0px; }
th.thLeft,td.catLeft	  { border-width: 0px 0px 0px 1px; }
th.thBottom,td.catBottom  { border-width: 0px 1px 1px 1px; }
th.thTop	 { border-width: 1px 0px 0px 0px; }
th.thCornerL { border-width: 1px 0px 0px 1px; }
th.thCornerR { border-width: 1px 1px 0px 0px; }

/* The largest text used in the index page title and toptic title etc. */
.maintitle	{
	font-weight: bold; font-size: 22px; font-family: "Trebuchet MS",Verdana, Arial, Helvetica, sans-serif;
	text-decoration: none; line-height : 120%; color : #000000;
}

/* General text */
.gen { font-size : 11px; }
.genmed { font-size : 11px; }
.gensmall { font-size : 10px; }
.gen,.genmed,.gensmall { color : #000000; }
a.gen,a.genmed,a.gensmall { color: #587EA5; text-decoration: none; }
a.gen:hover,a.genmed:hover,a.gensmall:hover	{ color: #587EA5; text-decoration: underline; }

/* The register, login, search etc links at the top of the page */
.mainmenu		{ font-size : 11px; color : #000000 }
a.mainmenu		{ text-decoration: none; color : #587EA5;  }
a.mainmenu:hover{ text-decoration: underline; color : #587EA5; }

/* Forum category titles */
.cattitle		{ font-weight: bold; font-size: 13px ; letter-spacing: 1px; color : #587EA5}
a.cattitle		{ text-decoration: none; color : #587EA5; }
a.cattitle:hover{ text-decoration: underline; }

/* Forum title: Text and link to the forums used in: index.php */
.forumlink		{ font-weight: bold; font-size: 11px; color : #587EA5; }
a.forumlink 	{ text-decoration: none; color : #587EA5; }
a.forumlink:hover{ text-decoration: underline; color : #587EA5; }

/* Used for the navigation text, (Page 1,2,3 etc) and the navigation bar when in a forum */
.nav			{ font-weight: bold; font-size: 11px; color : #000000;}
a.nav			{ text-decoration: none; color : #587EA5; }
a.nav:hover		{ text-decoration: underline; }

/* titles for the topics: could specify viewed link colour too */
.topictitle,h1,h2	{ font-weight: bold; font-size: 11px; color : #000000; }
a.topictitle:link   { text-decoration: none; color : #587EA5; }
a.topictitle:visited { text-decoration: none; color : #587EA5; }
a.topictitle:hover	{ text-decoration: underline; color : #587EA5; }

/* Name of poster in viewmsg.php and viewtopic.php and other places */
.name			{ font-size : 11px; color : #000000;}

/* Location, number of posts, post date etc */
.postdetails		{ font-size : 10px; color : #000000; }

/* The content of the posts (body of text) */
.postbody { font-size : 11px; line-height: 18px}
a.postlink:link	{ text-decoration: none; color : #587EA5 }
a.postlink:visited { text-decoration: none; color : #587EA5; }
a.postlink:hover { text-decoration: underline; color : #587EA5}

/* Quote & Code blocks */
.code {
	font-family: Courier, Courier New, MS sans serif; font-size: 11px; color: #006600;
	background-color: #FAFAFA; border: #E0E7F1; border-style: solid;
	border-left-width: 1px; border-top-width: 1px; border-right-width: 1px; border-bottom-width: 1px
}

.quote {
	font-family: Verdana, Arial, Helvetica, sans-serif; font-size: 11px; color: #444444; line-height: 125%;
	background-color: #FAFAFA; border: #E0E7F1; border-style: solid;
	border-left-width: 1px; border-top-width: 1px; border-right-width: 1px; border-bottom-width: 1px
}

/* Copyright and bottom info */
.copyright		{ font-size: 10px; font-family: Verdana, Arial, Helvetica, sans-serif; color: #444444; letter-spacing: -1px;}
a.copyright		{ color: #444444; text-decoration: none;}
a.copyright:hover { color: #000000; text-decoration: underline;}

/* Form elements */
input,textarea, select {
	color : #000000;
	font: normal 11px Verdana, Arial, Helvetica, sans-serif;
	border-color : #000000;
}

/* The text input fields background colour */
input.post, textarea.post, select {
	background-color : #ffffff;
}

input { text-indent : 1px; }

/* The buttons used for bbCode styling in message post */
input.button {
	background-color : #EFF2F8;
	color : #000000;
	font-size: 11px; font-family: Verdana, Arial, Helvetica, sans-serif;
}

/* The main submit button option */
input.mainoption {
	background-color : #FAFAFA;
	font-weight : bold;
}



/* This is the line in the posting page which shows the rollover
  help line. This is actually a text box, but if set to be the same
  colour as the background no one will know ;)
*/
.helpline { background-color: #E8ECF4; border-style: none; }

INPUT {
	BORDER-TOP-WIDTH: 1px; BORDER-LEFT-WIDTH: 1px; BORDER-BOTTOM-WIDTH: 1px; BORDER-RIGHT-WIDTH: 1px
}
TEXTAREA {
	BORDER-TOP-WIDTH: 1px; BORDER-LEFT-WIDTH: 1px; BORDER-BOTTOM-WIDTH: 1px; BORDER-RIGHT-WIDTH: 1px
}
SELECT {
	BORDER-TOP-WIDTH: 1px; BORDER-LEFT-WIDTH: 1px; BORDER-BOTTOM-WIDTH: 1px; BORDER-RIGHT-WIDTH: 1px
}
INPUT {
	TEXT-INDENT: 2px
}
INPUT.button {
	BORDER-TOP-WIDTH: 1px; BORDER-LEFT-WIDTH: 1px; BORDER-BOTTOM-WIDTH: 1px; BORDER-RIGHT-WIDTH: 1px
}
.postbody {
	LINE-HEIGHT: 18px
}

</style>

<script language="JavaScript"><!--
function input(ok)
{
   	var M1=ok.frmUserID.value;
   	if (M1=="")	{
		alert("User ID is empty!");   
		return false;
	}
   	M1=ok.frmUserPass.value;
   	if (M1.length<6)	{
		alert("Password must have at least 6 characters!");   
		return false;
	}
   	if (ok.frmUserPass.value!=ok.frmUserPass2.value)	{
		alert("The two passwords that you typed do not match!");   
		return false;
	}
   	if (ok.Email.value=="")	{
		alert("Email is empty!");   
		return false;
	}
        isEmail1=/^\w+([\.\-]\w+)*\@\w+([\.\-]\w+)*\.\w+$/; 
        isEmail2=/^.*@[^_]*$/; 
        if(isEmail1.test(ok.Email.value)&&isEmail2.test(ok.Email.value)) {
        }
        else
        {
            alert("Email is Invalid!");
            return false;
        }
   	return true;
}
function onpreview()
{
   window.open("/previewavatars.ghp");
}
// --></script>

</head>

<body bgcolor="#e5e5e5" text="#000000" link="#587ea5" vlink="#587ea5">
<a name="top"></a> <br>
<br>
<br>
<form action="UserRegistration"  method="get">
  <input type="hidden" name="frmLogin" value="true">
	<TABLE cellSpacing=2 cellPadding=2 width="569" align=center border=0>
    <TBODY>
      <TR> 
        <TD align=left>&nbsp;</TD>
      </TR>
    </TBODY>
  </TABLE>
  <TABLE width="500" 
        border=0 align="center" cellPadding=3 cellSpacing=1 class=forumline>
    <TBODY>
      <TR> 
        <TH class=thHead Align=center colSpan=2 height=25>Registration Information</TH>
      </TR>
      <TR> 
        <TD class=row2 colSpan=2><SPAN class=gensmall>Items marked with a * are 
          required </SPAN></TD>
      </TR>
      <TR> 
        <TD width="38%" class=row1><SPAN class=gen>Username: *</SPAN></TD>
        <TD class=row2><INPUT name="frmUserID" class="post" id="frmUserID" style="WIDTH: 200px" 
            size=25 maxLength=40></TD>
      </TR>
      <TR> 
        <TD  class=row1><SPAN class=gen>Password: *</SPAN></TD>
        <TD class=row2><INPUT name="frmUserPass" type="password" class="post" id="frmUserPass" style="WIDTH: 200px" size=25 
            maxLength=100></TD>
      </TR>
      <TR> 
        <TD  class=row1><SPAN class=gen>Confirm password: *</SPAN></TD>
        <TD class=row2><INPUT name="frmUserPass2" type="password" class="post" id="frmUserPass2" style="WIDTH: 200px" size=25 
            maxLength=100></TD>
      </TR>
      <TR> 
        <TD  class=row1><SPAN class=gen>Email address: *</SPAN></TD>
        <TD class=row2><INPUT name="email" type="text" class="post" id="Email" style="WIDTH: 200px" 
            size=25 maxLength=255></TD>
      </TR>
      <TR> 
        <TD  class=row1><SPAN class=gen>Select Avatar from gallery: </SPAN></TD>
        <TD class=row2><select name="Avatar" style="WIDTH: 100px">               
          </select>
          <input name="Preview" type="button" id="Preview" value="Preview" style="WIDTH: 95px" onclick="onpreview();"></TD>
      </TR>
      <TR> 
        <TD  class=row1><SPAN class=gen>Link to off-site Avatar:<br>
          Enter the URL of the location containing the Avatar image you wish to 
          link to.</SPAN></TD>
        <TD class=row2><INPUT name=avatarURL type="text" class=post id="avatarURL" style="WIDTH: 200px" 
            size=25 maxLength=255></TD>
      </TR>
      <TR> 
        <TD class=catBottom colSpan=2 height=28> <INPUT name=register type=submit class=mainoption id="register" value=Register!> 
          &nbsp;&nbsp; <INPUT class=liteoption type=reset value=Reset name=reset></TD>
      </TR>
    </TBODY>
  </TABLE>
</FORM>
<div align="center"><span class="copyright">Powered by <a href="http://www.sharing-file.com/" class="copyright"><font color="#006699">Easy 
  File Sharing Web Server</font></a><br>
  Copyright &copy; 2004 EFS Software Inc.</span> </div>
</body></html>