<!--#include virtual="ssi/headerpricingl.asp" -->
  <link href="css/style1.css" rel="stylesheet" type="text/css">
  <script type="text/javascript" src="js/jquery.min.js"></script>
  <script language="javascript" type="text/javascript" src="js/vpb_script.js"></script>
  <section class="main">
    <div class="shell">
      <!--#include virtual="ssi/sidebarsjl.asp" -->
	  <!--#include file="pop.asp"-->
      <section class="content">
        <div class="banner">
          <div class="overlay">
            <h2>Purchase</h2>
          </div>
          <!-- /.overlay -->
        <img src="css/images/temp/banner.jpg" alt="" />
        <!-- /.banner -->
        <div class="section-reports">
          <div class="btns">
            <div class="cols">
          
              <!-- /.col -->
            </div>
            <!-- /.cols -->
          </div>
          <!-- /.btns -->
          <div class="tabs">
            <div class="tabs-nav"> </div>
            <!-- /.tabs-nav -->
            <div class="tabs-body">
              <div class="tab" id="advanced">
                <h3>Purchase Credits</h3>
 





















	</td>
	<td rowspan="2">



<%name=request.querystring("name")%>

Credits are valid for 12 months. You can purchase these now or at a later date however you must have sufficient credits available before submitted applications can be processed. 
<p style="text-align:left;"> 

<p style="text-align:left;"> 














<%





qt=request.form("qty")
ty=request.form("type")
session("qty")=qt









qt=request.form("qty")
ty=request.form("type")
session("qty")=qt




if qt <5 AND ty="Advanced" then
p=qt*26.95

session("final")=p
end if


if qt >=5 AND qt <=9 AND ty="Advanced" then
p=qt*24.95

session("final")=p
end if


if qt >=10 AND ty="Advanced" then
p=qt*22.50

session("final")=p
end if






if qt <5 AND ty="Comprehensive" then
p=qt*20.50

session("final")=p
end if


if qt >=5 AND qt <=9 AND ty="Comprehensive" then
p=qt*17.95

session("final")=p
end if


if qt >=10 AND ty="Comprehensive" then
p=qt*15.95

session("final")=p
end if





if qt <5 AND ty="Priority" then
p=qt*36.95

session("final")=p
end if


if qt >=5 AND qt <=9 AND ty="Priority" then
p=qt*33.75

session("final")=p
end if


if qt >=10 AND ty="Priority" then
p=qt*29.95

session("final")=p
end if










if ty="Warranty6" then
p=qt*55.00

session("final")=p
end if






if ty="Bank" then
p=qt*25.00

session("final")=p
end if





if ty="Warranty12" then
p=qt*96.00

session("final")=p
end if




if ty="Warranty6b" then
p=qt*93.00

session("final")=p
end if




if ty="Warranty12b" then
p=qt*179.00

session("final")=p
end if















if qt <5 AND ty="Express" then
p=qt*16.95

session("final")=p
end if



if qt <5 AND ty="Premier6" then
p=qt*81.75

session("final")=p
end if


if qt >=5 AND ty="Premier6" then
p=qt*81.75

session("final")=p
end if

if qt <5 AND ty="Premier12" then
p=qt*125.75

session("final")=p
end if


if qt >=5 AND ty="Premier12" then
p=qt*125.75

session("final")=p
end if


if qt >=5 AND qt <=9 AND ty="Express" then
p=qt*14.95

session("final")=p
end if


if qt >=10 AND ty="Express" then
p=qt*12.50

session("final")=p
end if







if qt <5 AND ty="Guarantor" then
p=qt*25.95

session("final")=p
end if


if qt >=5 AND qt <=9 AND ty="Guarantor" then
p=qt*19.95

session("final")=p
end if


if qt >=10 AND ty="Guarantor" then
p=qt*17.95

session("final")=p
end if

























if qt <5 AND ty="LiveCredit" then
p=qt*22.00

session("final")=p
end if


if qt >=5 AND qt <=9 AND ty="LiveCredit" then
p=qt*19.00

session("final")=p
end if


if qt >=10 AND ty="LiveCredit" then
p=qt*17.00

session("final")=p
end if

















if qt <10 AND ty="Commercial" then
p=qt*38.60

session("final")=p
end if





if ty="EU" then
p=qt*32.75


session("final")=p
end if





if ty="Inter" then
p=qt*42.75


session("final")=p


end if














if qt >=10 AND ty="Commercial" then

p=qt*31.65

session("final")=p

end if%>
















<%if request.form("buy")="y"then
c=request.form("cart2")
Locale = SetLocale(2057)   
p=session("final")
f=session("final")
v=(session("final")/100*20)
fi=FormatCurrency(session("final")+v)
t=request.form("type")
s=session("name")
f2=f+v
%><br><br>
<%randomize
randomno=int(rnd*10000)+1%>
<p style="color: #076BA7; font-size: 14px; margin-left: 20px;">

You wish to purchase <%=request.form("qty")%> &nbsp;<%=request.form("type")%> Report credit(s).<br>
Your Rentchecks.com transaction number is: <%=s%> <%=randomno%>.<br>
<p style="color: black; font-size: 14px; margin-left: 20px;">

You will now be transferred to Nochex our payment processor.<br>
A total of <b>&pound;<%=p%></b> plus <b>&pound;<%=v%></b> VAT is payable via debit/credit card<br>
Please click the 'Purchase' button to proceed.<br>

<br><center>

<%em=session("mail")%>








<form action="https://secure.nochex.com/default.aspx" method=post>
<input type="hidden" name="email" value="office@rentchecks.com">
<input type="hidden" name="amount" value="<%=f2%>">
<input type="hidden" name="description" value="<%=request.form("qty")%><%=" "%> <%=request.form("type")%> Report credit(s)">
<input type="hidden" name="logo" value="https://www.rentchecks.com/images/RC.jpg">
<input type="hidden" name="returnurl" value="https://www.rentchecks.com/rep.asp">
<input type="hidden" name="custom" value="<%=session("name")%>#<%=request.form("qty")%>#<%=request.form("type")%>">
<input type="hidden" name="responderurl" value="https://rentchecks.com/nochex_notify.asp">
<input type="submit"class="btn btn-blue btn-long"value="Purchase with card">

</form>


</center><p>
<center>


<form action="https://www.paypal.com/cgi-bin/webscr" method="post">
<input type="hidden" name="cmd" value="_xclick">
<input type="hidden" name="business" value="office@rentchecks.com">
<input type="hidden" name="item_name" value="<%=request.form("qty")%><%=" "%> <%=request.form("type")%> Report credit(s)">
<input type="hidden" name="currency_code" value="GBP">
<input type="hidden" name="amount" value="<%=f2%>">
<input type="hidden" name="return" value="https://www.rentchecks.com/rep.asp" />
<input type="hidden" name="notify_url" value="https://www.rentchecks.com/notify.asp" />
<input type="hidden" name="custom" value="<%=session("name")%>^<%=request.form("qty")%>^<%=request.form("type")%>" />

<input type="submit"class="btn btn-blue btn-long"value="Purchase with Paypal">

</form>











<%session("credit")="yes"%>
<br><br><br><br>
<br><br><br><br>


<br><br><br><br>


<br><br>

<br><br><br><br>

<script>
function sendIt(){
window. open('','newWin','toolbar=no,location=no,directories=no,status=no,menubar=no,scrollbars=yes,resizable=no,width=634,height=563');
document.purForm.submit();
}
</script>



<script>
function can()

{
window.location='purchasepaypal2.asp';
    }

</script>




<script>

function submit() {
  document.form.submit()
}

</script>








<SCRIPT language="JavaScript">
function submitform()
{
  document.purForm.submit();
}
</SCRIPT> 











<%else%>









<form action="purchasepaypal2.asp"method="post"name="userForm">


<input type="hidden" name="add" value="y">
<input type="hidden" name="name" value="<%=name%>">
<input type="hidden" name="buy" value="y">



Qty:<select name="qty">
<option value=1>1
<option value=2>2
<option value=3>3
<option value=4>4
<option value=5>5
<option value=6>6
<option value=7>7
<option value=8>8
<option value=9>9
<option value=10>10

</select></option>
</select>

&nbsp;&nbsp;
Report type:
<select name="type">
<option value=Advanced>Advanced
<option value=Priority>Priority (Advanced + Same day decision)
<option value=Express>Express Credit
<option value=Premier6>Premier 6m
<option value=Premier12>Premier 12m
<option value=Comprehensive>Comprehensive
<option value=Guarantor>Guarantor
<option value=Commercial>Commercial
<option value=Inter>International Reference Report
</select></option>
</select>

<Input type="hidden"name="reg"value=<%=name%>>



<br><p style="text-align:left;"> <br><br>





<%
a=request.form("qty")
b=request.form("type")
response.write(a)%>



&nbsp;<input type="hidden"size="6"onfocus="this.blur()"disabled maxlength="7"name="cart"value="0">

<input type="image"src="images/b_more3.gif">
<input type="hidden"name="cart2"value="0">
<br><br>

<%response.write(q)%>

<br>

<p><B>CARD PURCHASES MAY BE MADE ONLINE (ABOVE) OR VIA THE TELEPHONE (0845 095 0055)</B></P><p>
Should you experience difficulties making an online payment, please retry using our <a href="purchaseworld.asp?reg=<%=name%>">alternative processor</a>

</p>



















<p>
<table cellspacing="5"cellpadding="5"border="2"bordercolor="orange"width="85%" >
<b><th>Solution</th>
<th>Fee (less than 5 Reports)</th>
<th>Fee (5-9 Reports)</th>
<th>Fee (10 or more Reports)</th></b>


<tr><td align="center"><p>Advanced Report</td>
<td align="center"><p>£26.95</td>

<td align="center"><p>£24.95</td>
<td align="center"><p>£22.50</td>



<tr><td align="center"><p>Priority Advanced Report<br> (Same day decision)</td>
<td align="center"><p>£36.95</td>

<td align="center"><p>£33.75</td>
<td align="center"><p>£29.95</td>







<tr><td align="center"><p>Express Report<br>(Credit check only)</td>
<td align="center"><p>£16.95</td>

<td align="center"><p>£14.95</td>

<td align="center"><p>£12.50</td>





<tr><td align="center"><p>Comprehensive Report<br></td>
<td align="center"><p>£20.50</td>

<td align="center"><p>£17.95</td>

<td align="center"><p>£15.95</td>



<tr><td align="center"><p>Guarantor Report</td>
<td align="center"><p>£19.95</td>

<td align="center"><p>£17.95</td>
<td align="center"><p>£14.95</td>


<tr><td align="center"><p>Commercial Report</td>
<td align="center"><p>£38.60</td>

<td align="center"><p>£31.65</td>
<td align="center"><p>£31.65</td>









<tr><td align="center"><p>International Reference Report</td>
<td align="center"><p>£42.75</td>
<td align="center"><p>£42.75</td>
<td align="center"><p>£42.75</td>




<tr><td align="center"><p>Premier 6m</td>
<td align="center"><p>£81.75</td>
<td align="center"><p>£81.75</td>
<td align="center"><p>£81.75</td>

<tr><td align="center"><p>Premier 12m</td>
<td align="center"><p>£125.75</td>
<td align="center"><p>£125.75<</td>
<td align="center"><p>£125.75<</td>
</b>


</tr></b></td></tr></p></th>
</td>

</table>

<br>
All fees listed are exclusive of VAT @ 20%






































</form>


<%end if%>






























<SCRIPT LANGUAGE="VBScript"> 
<!--
Sub car_OnClick
  Dim TheForm
  Set TheForm = Document.userForm



q=TheForm.qty.Value


End Sub
-->
</SCRIPT>




</p>












</p>
</center><p>
<b>Credits:</b> One credit is required for each Report/service requested. Credits are non-transferable. Eg. If 1 International Report and 1 Advanced Report are required, 1 Comprehensive & 1 Advanced credit respectively must be purchased.
Credits are valid for 2 months from the date of purchase.<br>
<b>Refund policy:</b> Rentchecks.com will provide a full refund for unused credits if it is requested via e-mail within 7 days of purchase. Should you require more information, 
please contact <a href="mailto:apply@rentchecks.com">apply@rentchecks.com</a><br>

<b>Currency:</b> All transactions are conducted using GBP Sterling. All fees are exclusive of VAT @ 20%.<br>
<b>Data:</b> Rentchecks.com is an Authorised Data Controller under The Data Protection Act 1998.<br>
 Registration No. ZA042323<br>
<b>Company contact:</b>
Rentchecks.com<br>
Application Office: Bridge Street Chambers, Bridge Street, Manchester M3 2RH<br>













<center>





















	</td>
</tr>
































<tr valign="bottom" bgcolor="#D0E0ED">
	
</tr>
</table>











<table border="0" cellpadding="0" cellspacing="0" width="780" height="64" background="images/fon_bot.gif">
<tr valign="top">
	<td>
<table border="0" cellpadding="0" cellspacing="0" width="780" background="">
<tr>
	<td width="300"><p class="menu02">Copyright &copy;2015 Rentchecks.com</p></td>
	<td>
<p class="menu02">
<%name=request.querystring("reg")%>
<a href="logged.asp?reg=<%=name%>">Home</a>&nbsp;&nbsp;&nbsp;|&nbsp;&nbsp;&nbsp;
<a href="mailto:apply@rentchecks.com"title="E-mail for technical support">Support</a>&nbsp;&nbsp;&nbsp;|&nbsp;&nbsp;&nbsp;
<a href="solutions.asp?reg=<%=name%>">Services</a>&nbsp;&nbsp;&nbsp;|&nbsp;&nbsp;&nbsp;
<a href="contact.asp?reg=<%=name%>">Contact</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</a>





</p>
	</td>
</tr>
</table>
	</td>
</tr>
</table>
	</td>
	<td valign="bottom" background="images/bg_right.gif"><img src="images/bg_right.gif" alt="" width="17" height="16" border="0"></td>
	<td width="50%" background="images/bg.gif"><img src="images/px1.gif" width="1" height="1" alt="" border="0"></td>
</tr>
</table>





























<%'*****************************************CALC FUNCTION***************************

'This function calculates total cost 
'of credits from purchase form%>

<script type="text/javascript">
function calc() {

var qty=userForm.qty.value;
var type=userForm.type.value;




var total;





if (qty==""){
window.alert("Quantity must be entered");
return false;
}





if (type=="Comprehensive" & qty<5){
var comp=16.95;

total=parseInt(qty);
total=Math.round(qty*comp*100)/100,2;

var tot=userForm.tot.value=total.toFixed(2);

return total;}








if (type=="Express"& qty<5){
var ex=14.95;
total=parseInt(qty);
total=Math.round(qty*ex*100)/100,2;

var tot=userForm.tot.value=total.toFixed(2);

return total;}

if (type=="Express"& qty>=5){
var ex=12.95;
total=parseInt(qty);
total=Math.round(qty*ex*100)/100,2;

var tot=userForm.tot.value=total.toFixed(2);
return total;}




if (type=="Guarantor"& qty<5){
var ex=17.95;
total=parseInt(qty);
total=Math.round(qty*ex*100)/100,2;

var tot=userForm.tot.value=total.toFixed(2);

return total;}

if (type=="Guarantor"& qty>=5){
var ex=14.95;
total=parseInt(qty);
total=Math.round(qty*ex*100)/100,2;

var tot=userForm.tot.value=total.toFixed(2);
return total;}




if (type=="Inter"){
var eu=42.75;

total=qty*Inter;


total=parseInt(qty);
total=Math.round(qty*eu*100)/100;

var tot=userForm.tot.value=total.toFixed(2);

return total;}




if (type=="Inter"){
var Inter=42.75;

total=qty*Inter;


total=parseInt(qty);
total=Math.round(qty*Inter*100)/100;

var tot=userForm.tot.value=total.toFixed(2);

return total;}




if (type=="Commercial"& qty<5){
var corp=38.60;
total=qty*corp;
var tot=userForm.tot.value=total.toFixed(2);

return total;}









if (type=="Advanced"& qty<5){
var adv=22.50;
total=qty*adv;
var tot=userForm.tot.value=total.toFixed(2);
return total;}

if (type=="Comprehensive"& qty>=5){
var comp=14.95;

total=qty*comp*100;
total=parseInt(total)/100;

var tot=userForm.tot.value=total.toFixed(2);
return total;}


if (type=="Commercial"& qty>=5){
var corp=31.65;
total=qty*corp;
var tot=userForm.tot.value=total.toFixed(2);
return total;}

if (type=="Advanced"& qty>=5){
var adv=19.95;
total=qty*adv;
var tot=userForm.tot.value=total.toFixed(2);
return total;}

}


if (type=="AdvancedRef"& qty<5){
var advref=34.95;
total=qty*advref;
var tot=userForm.tot.value=total.toFixed(2);
return total;}


if (type=="AdvancedRef"& qty>=5){
var advref=30.95;
total=qty*advref;
var tot=userForm.tot.value=total.toFixed(2);
return total;}

</script>






























<%'*****************************************CALC2 FUNCTION***************************

'This function calculates total cost 
'of credits from purchase form%>

<script type="text/javascript">
function calc2() {

var qty=userForm.qty.value;
var type=userForm.type.value;
var cart=parseFloat(document.userForm.cart.value);
var total=parseFloat(document.userForm.tot.value);
var cart2=parseFloat(document.userForm.cart2.value);




if (qty==""){
window.alert("Quantity must be entered");
return false;
}






t=cart += total;

cart2=userForm.cart2.value=t;

return t;}




</script>




























<%'****************************FUNCTION EMPTY**********************
'This function returns an error if the search is empty and produces an error if certain 
'required field are empty%>

<script language="javascript">
function empty() {

var qty=userForm.qty.value;
var tot=userForm.tot.value;
var cart=userForm.cart.value;




for (var i=0; i<qty.length;i++)
{
var ch=qty.substring(i, i+1)
if(ch<"0" || ch>"9")
{
window.alert("Quantity must be numeric");
return false;
}}


if (qty==""){
window.alert("Quantity must be entered");
return false;
}





if (tot==""){
window.alert("Click 'Calculate' button before proceeding");
return false;
}


var illegal= /[\(\)\<\>\,\;\:\\\/\" "\[\]]/
if (qty.match(illegal)){
alert("Quantity must be numeric");
return false;
}




}





</script>























<script language="javascript">
function empty1() {

var qty=userForm.qty.value;






if (qty==""){
window.alert("Quantity must be entered");
return false;
}




}
</script>











<%'*****************************************CONFIRM FUNCTION***************************
'This function is called whenever an insert/update/delete is made to the db%>

<script language="javascript">
function conFirm() {

if(confirm('Proceed?'))return true;

else return false;
}
</script>


















<script language="javascript">

function move1()
{
document.location.href="purchasepaypal2.asp?name=<%=name%>";}

</script> 









<noscript>
<p><input type="reset" value="Clear"></p>
</noscript>

<script type="text/javascript">

function res(){

document.userForm.reset();return false;
}
</script>





<script language=JavaScript>
<!--

//Disable right click script III- By Renigade (renigade@mediaone.net)
//For full source code, visit http://www.dynamicdrive.com

var message="";
///////////////////////////////////
function clickIE() {if (document.all) {(message);return false;}}
function clickNS(e) {if 
(document.layers||(document.getElementById&&!document.all)) {
if (e.which==2||e.which==3) {(message);return false;}}}
if (document.layers) 
{document.captureEvents(Event.MOUSEDOWN);document.onmousedown=clickNS;}
else{document.onmouseup=clickNS;document.oncontextmenu=clickIE;}

document.oncontextmenu=new Function("return false")
// --> 
</script>






<%sub credits()

session("qty")=request.form("qty")
session("type")=request.form("type")







end sub
%>





<%if request.querystring("stat")="cancel" then%>
<!--#include file="conn.asp"--><%
Set oRS=Server.CreateObject("ADODB.Recordset")

name=session("name")

strSQL="SELECT username,credits FROM Adminuser WHERE username='" & name & "'"
oRS.CursorType=2
oRS.LockType=3
oRS.Open strSQL, oConn

c=oRS("credits")
q=session("qty")



oRS.Fields("credits")=c-q


oRS.Update



oRS.Close
Set oRS=Nothing
Set oConn=Nothing

end if%>




<!-- Google Code for Register Conversion Page -->
<script type="text/javascript">
/* <![CDATA[ */
var google_conversion_id = 1071124294;
var google_conversion_language = "en";
var google_conversion_format = "2";
var google_conversion_color = "ffffff";
var google_conversion_label = "5jTECO635gQQxp7g_gM";
var google_conversion_value = 0;
/* ]]> */
</script>
<script type="text/javascript" src="//www.googleadservices.com/pagead/conversion.js">
</script>
<noscript>
<div style="display:inline;">
<img height="1" width="1" style="border-style:none;" alt="" src="//www.googleadservices.com/pagead/conversion/1071124294/?value=0&amp;label=5jTECO635gQQxp7g_gM&amp;guid=ON&amp;script=0"/>
</div>
</noscript>



</body>






</html>