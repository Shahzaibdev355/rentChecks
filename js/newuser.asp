
<%
ma=request.form("emails")
use=request.form("usernames")
lastip=(Request.ServerVariables("REMOTE_HOST"))

newmess= "<html><body>" &_
			"<img src='http://www.rentchecks.com/logo.gif'border='0'></img>" &_
			"<p><b>Telephone support: 0845 095 0055</b><br>" &_
			"<b>Fax: 0844 412 7753</b><br>" &_
			"<b>E-mail support:<a href='mailto:contact@rentchecks.com'> contact@rentchecks.com</a></b><br>" &_
			"<h3><center>Welcome to Rentchecks.com</center></h3>" &_
			"You are now able to submit applications online or via fax.<br>The progress of these applications can be tracked by logging in to your home page at <a href='http://www.rentchecks.com/login.asp'>www.rentchecks.com </a><br> Please keep this e-mail safe for future reference." &_ 
			"<p>Your username is: <b>" & use & " </b> <br> Your password can be requested if lost from: <b><a href='http://www.rentchecks.com/lost.asp'>www.rentchecks.com/lost.asp</a></b><br>Your IP address has been recorded for security purposes as: <b>" & lastip & "</b>" &_
			"<p><h3><center>Getting started</center></h3>The following guide is intended to help you make the most of our service and prevent errors.<p>" &_
			"1. Blank application forms are available to download/print from the website (follow link below). Applications can also be made using the online forms available from your home page following login (Click 'Apply')" &_ 
			"<br><a href='http://www.rentchecks.com/forms.asp'>Printable application forms</a>" &_ 
			"<p>2. You must obtain authorisation from your prospective tenant before the form is submitted for processing. The disclaimer at the foot of the form must be agreed by the applicant as this ensures that they authorise the processing of their personal data for the purposes of tenant assessment." &_
			"<br>Applications made online are accepted on the understanding that you have obtained the relevant authorisation from the applicant. You are advised to keep a signed paper application for your records." &_ 
			"<p>3. Report delivery schedules are subject to referee availability & participation however we aim to deliver Priority Reports on the same day (Mon-Fri) & Advanced Reports within 48 hours.<br>" &_
			"Reports are more likely to be delivered on the next business day if submitted before 1pm Mon-Fri.<br> International Reports are delivered within 3 working days (subject to refs). <br>Express Reports are delivered within 2 hours of submission (9 am-5pm Mon-Fri)." &_           
			"<h3><center> Quick links</center></h3>" &_
			"<br><a href='http://www.rentchecks.com/faq.asp'>Frequently Asked Questions (FAQ)</a>" &_ 
			"<br><a href='http://www.rentchecks.com/pricing.asp'>Referencing Fees</a>" &_ 
			"<br><a href='http://www.rentchecks.com/contact.asp'>Contact details</a>" &_ 
			"<p><B>Your registration implies that you have agreed to adhere to the laws of The Data Protection Act (1998) when handling personal information.</b>" &_ 
			"<br>Please visit <a href='http://www.informationcommissioner.gov.uk/eventual.aspx?id=34'>The Information Commissioner</a> or contact <href='mailto:dpa@rentchecks.com'>dpa@rentchecks.com</a> for further information." &_
                 	"</body>" &_
			"</html>"







%>




<section class="main">
	<div class="shell">
		<!--#include virtual="ssi/sidebar.shtml" -->

		<section class="content">
			<div class="banner">
				<div class="overlay">
					<h2>Register</h2>
				</div><!-- /.overlay -->

				<img src="css/images/temp/banner.jpg" alt="" />
			</div><!-- /.banner -->

			<div class="section-reports">
				<div class="btns">
					<div class="cols">
						<div class="col">
							<a href="#" class="btn btn-blue btn-full">
								<span>Login</span>
						
								<i class="icon-arrow"></i>
							</a>
						</div><!-- /.col -->
						
						<div class="col">
							<a href="#" class="btn btn-blue btn-full">
								<span>printable application forms</span>
						
								<i class="icon-arrow"></i>
							</a>
						</div><!-- /.col -->
					</div><!-- /.cols -->
				</div><!-- /.btns -->
				
				<div class="tabs">
					<div class="tabs-nav">
						
					</div><!-- /.tabs-nav -->
				
					<div class="tabs-body">
						<div class="tab" id="advanced">
							<h3>Register</h3>




		
						<br>	
							
							
							
							<p>Registration is required to access Rentchecks Reports or services. 
This information is not divulged to third parties.
Please ensure that your contact details are accurate to ensure the delivery of future correspondence and Reports.</p>

<%

Set oRS=Server.CreateObject("ADODB.Recordset")


uname = Replace(Request.Form("usernames"), "'", "")

oSQL="SELECT * FROM Adminuser WHERE username='" & uname &  "'"
oRS.CursorType=2
oRS.LockType=3
oRS.Open oSQL,oConn %>






<%If NOT oRS.EOF Then%>




<form action="newuser.asp" onSubmit="return empty();"  method="post" name="userForm">


<input type="hidden" value="<%=Replace(request.form("passs"), "'", "")%>"name="passs">
<input type="hidden" value="<%=request.form("emails")%>"name="emails">

<input type="hidden" value="<%=request.form("fullnames")%>"name="fullnames">




<input type="hidden" value="<%=request.form("tel")%>"name="tel">
<input type="hidden" value="<%=request.form("status")%>"name="status">
<input type="hidden" value="<%=request.form("coname")%>"name="coname">

<input type="hidden" value="<%=request.form("agentid")%>"name="agentid">
<input type="hidden" value="<%=request.form("agent")%>"name="agent">

<p style="color: #076BA7; font-size: 18px; margin-left: 20px;">Select username</p>
<p>
Username '<%=uname%>' already exists, please choose an alternative username</center></strong><p>
<p>
Login username:<br><input type="text" size="20" maxlength="20" name="usernames"><br>

<p>
<input type="submit"value="Complete registration"name="sub">
</form>

<%else

%>
<!--#include file="conn.asp"-->

<%

Set oRS=Server.CreateObject("ADODB.Recordset")

uname = Replace(Request.Form("usernames"), "'", "")
agentid=Request.Form("agentid")


oSQL="SELECT * FROM Adminuser"
oRS.CursorType=2
oRS.LockType=3
oRS.Open oSQL,oConn

oRS.AddNew

oRS.Fields("username")=uname
oRS.Fields("password")=Request.Form("passs")
oRS.Fields("company")=Request.Form("coname")
oRS.Fields("email")=Request.Form("emails")
oRS.Fields("credits")=0
oRS.Fields("name")=Request.form("fullnames")
oRS.Fields("tel")=Request.Form("tel")
oRS.Fields("agent")="sjl"
oRS.Fields("datejoined")=Day(Now()) & "/" & Month(Now()) & "/" & Year(Now())
oRS.Fields ("source")=Request.Form("agentid")

oRS.Update

ma=request.form("emails")





set objMessage = createobject("cdo.message")
set objConfig = createobject("cdo.configuration")

' Setting the SMTP Server
Set Flds = objConfig.Fields
Flds.Item("http://schemas.microsoft.com/cdo/configuration/sendusing") = 2
Flds.Item("http://schemas.microsoft.com/cdo/configuration/smtpserver") = "localhost"
Flds.update


Set objMessage.Configuration = objConfig
objMessage.To = ma
objMessage.From = "contact@rentchecks.com"
objMessage.Subject = "Welcome to Rentchecks.com"
objMessage.HTMLBody = newmess
objMessage.fields.update
'objMessage.Send



set objMessage = nothing
set objConfig = nothing

session("name")=uname


if agentid="sjl"then
response.redirect"loggedsjl.asp?reg=" & uname

else
response.redirect"logged.asp?reg=" & uname
end if
end if%>

</div><!-- /.tab -->
					</div><!-- /.tabs-body -->
					
					<div class="btns">
						<a href="#" class="btn btn-blue btn-long">submit online application</a>
					</div><!-- /.btns -->
				</div><!-- /.tabs -->
			</div><!-- /.section-reports -->
		</section><!-- /.content -->
	</div><!-- /.shell -->
</section><!-- /.main -->
<script language="JavaScript">

messageNum = 0;

setTimeout("messageChanger();", 3000);


function messageChanger() {
if (messageNum ==0) {
defaultStatus = "Reduce risk with Rentchecks.com tenant referencing";
messageNum = 1;
} else {
defaultStatus = "Referencing solutions for agents & landlords";
messageNum = 0;
}


setTimeout("messageChanger();", 6000);
}
</script>


<!--#include virtual="ssi/footer.shtml" -->




