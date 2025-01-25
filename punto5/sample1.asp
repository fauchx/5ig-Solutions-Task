<% Session.Abandon
  Session("STRID")      = ""
  Session("SP_TR_CD")   = ""
  Session("CAPABILITY") = ""
  Session("LASTLOGIN")  = ""
  Session("bValidUser") = ""
  servername =  request.servervariables ("SERVER_NAME")

%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "https://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="https://www.w3.org/1999/xhtml" xmlns:v="urn:schemas-microsoft-com:vml" xmlns:o="urn:schemas-microsoft-com:office:office">

<head>
<meta https-equiv="Content-Language" content="en-us" />
<meta https-equiv="Content-Type" content="text/html; charset=windows-1252" />
<title>CapeLogic Inc.</title>
<script type="text/javascript" language="javascript">
function validate() {
if (document.contactForm.cName.value.length < 1) {
alert("Please enter your name.");
return false;
}
if (document.contactForm.cEmail.value.length < 1) {
alert("Please enter your Email Address.");
return false;
}
if (document.contactForm.cMsg.value.length < 1) {
alert("Please enter your message...");
return false;
}

return true;
}
</script>

<link rel="stylesheet" type="text/css" href="/includes/style.css" />

<style type="text/css">
.style18 {
	text-align: center;
}
.style19 {
	border-style: solid;
	border-width: 1px;
}
.style26 {
	border: 1px solid black;
	background-image: url('design-images/bg-contact3.jpg');
}
.style27 {
	font-size: xx-small;
}
.style28 {
	text-align: left;
}
</style>

</head>

<!-- <body style="margin: 0; background-image: url('/includes/design-images/bg.gif'); background-attachment: fixed" onload="document.contactForm.cName.focus();"> -->
<body style="margin: 0; background-image: url('/includes/design-images/bg.gif'); background-attachment: fixed;" >


<table style="width: 1060px" id="table1" cellspacing="0" cellpadding="0" align="center">
  <tr>
		<td style="width: 25px" class="leftFade">
		&nbsp;</td>
		<td class="style1">
		<table style="width: 100%" id="table2" cellspacing="0" cellpadding="10">
			<tr>
				<td>
		<table style="width: 100%" id="table5" cellspacing="0" cellpadding="0">
			<tr>
				<td>
				<table style="width: 100%" id="table6">
					<tr>
						<td>
						&nbsp;&nbsp;&nbsp;&nbsp;
            <a href="https://<%=servername%>"><img border="0" src="/includes/design-images/CL-logo-header.jpg" width="519" height="80" class="style10" /></td>
						<td class="style4" style="height: 70px" valign="top">
            <a href="https://<%=servername%>">
            <img src="/includes/design-images/btn-home.jpg" width="81" height="47" class="style10" /></a><a href="https://<%=servername%>/asp/login.asp"><img src="/includes/design-images/btn-login.jpg" width="81" height="47" class="style12" /></a>&nbsp;</td>
					</tr>
				</table>
				</td>
			</tr>
			<tr>
				<td style="height: 30px" class="bg">
				<table style="width: 100%" id="table7">
					<tr>
						<td id="awmAnchor-menu" valign="bottom">&nbsp;</td>
					</tr>
				</table>
				</td>
			</tr>
			<tr>
				<td>
				<table style="width: 100%" id="table8" cellspacing="0" cellpadding="0">
					<tr>
						<td style="width: 736px" valign="top" class="bgMain">
						<table style="width: 134%" id="table11" cellpadding="20">
							<tr>
								<td>
								<div style="width:940px">
								<table style="width: 100%" id="table14" cellspacing="0" cellpadding="0">
									<tr>
										<td valign="top" style="width: 111px">
                    <img src="/includes/design-images/LOGIN.png" width="111" height="231" /></td>
										<td valign="top" class="style18">

<!-- ////////////////////////////////////////////////////////////////////////// -->

<form name="contactForm" id="contactForm" method="post" action="https://<%=servername%>/asp/checklogin.asp" onsubmit="return validate();">

<table style="width: 100%" id="table17" class="style19">
	<tr>
		<td class="style26">	<div align="center"><p>&nbsp;&nbsp;</p>

										<p>&nbsp;</p>
                <form id="form1" name="form1" method="post" action="https://<%=servername%>/asp/checklogin.asp">
								<table id="table12" cellSpacing="0" cellPadding="4" align="center">
									<tr>
										<td vAlign="top" class="style4"><b>
										Login ID:&nbsp;&nbsp; </b></td>
										<td class="style28">
										<span style="FONT-FAMILY: verdana, arial, helvetica, sans-serif">
										<input style="WIDTH: 153px" size="25" name="ID" /></span></td>
									</tr>
									<tr>
										<td valign="top" class="style4"><b>Password:&nbsp;&nbsp; </b></td>
										<td valign="top" class="style28">
										<span style="FONT-FAMILY: verdana, arial, helvetica, sans-serif">
                    <input style="WIDTH: 154px" size="25" name="password" type="password"/></span>
										</td>
									</tr>
									<tr>
										<td valign="top">&nbsp;</td>
										<td valign="top" class="style28">
										<form method="post">
                      <input name="Submit" type="submit" value="Submit" /><input type="reset" name="Submit2" value="Reset"></form></td>
									</tr>
								</table>
								</form>

								<p class="text1">
								&nbsp;</p>
								<p class="style27">
								WARNING: Unauthorized access or misuse of data
								may result in adverse action and/or criminal
								prosecution. All activity is subject to
								monitoring. </p>		</div></td>
	</tr>
</table>


</form>

<!-- ////////////////////////////////////////////////////////////////////////// -->

										</td>
									</tr>
								</table>
								</div>
								</td>
							</tr>
						</table>
						</td>
					</tr>
				</table>
				</td>
			</tr>
			<tr>
				<td>
        <img src="/includes/design-images/footer-line.gif" width="990" height="2" /></td>
			</tr>
			<tr>
				<td style="height: 30px">
        <p class="footer"><a href="https://<%=servername%>">Home</a>&nbsp;&nbsp;&nbsp;|&nbsp;&nbsp;
        <a href="https://<%=servername%>/asp/login.asp">Login</a> &nbsp;&nbsp;
				</td>
			</tr>
			<tr>
				<td>
        <img src="/includes/design-images/footer-line.gif" width="990" height="2" /></td>
			</tr>
			<tr>
				<td style="height: 23px" valign="bottom">
				<p class="footer">&copy; <script language="JavaScript">
<!--
var now = new Date();
year = (now.getYear());
function fourdigits(number) {
return (number < 1000) ? number + 1900 : number;}
YYYY = (fourdigits(now.getYear()));
document.write(YYYY);
//-->

</script> CapeLogic Incorporated&nbsp;&nbsp;&nbsp;&nbsp;
				New Jersey,&nbsp; USA&nbsp;&nbsp;&nbsp;&nbsp; All Rights
				Reserved</p>
				</td>
			</tr>
			</table>
				</td>
			</tr>
		</table>
		</td>
		<td style="width: 25px" class="rightFade">
		&nbsp;</td>
	</tr>
	<tr>
		<td colspan="3">
    <img src="/includes/design-images/bottom3.gif" width="1055" height="25" /></td>
	</tr>
</table>

</body>

</html>
