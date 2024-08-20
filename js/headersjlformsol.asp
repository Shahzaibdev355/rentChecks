<!doctype html>
<html lang="en">
<head>
    <meta charset="UTF-8" />
    <title>Rentchecks</title>
    <link rel="shortcut icon" type="image/x-icon" href="css/images/favicon.ico" />
    <link rel="stylesheet" href="css/fonts.css" type="text/css" media="all" />
    <link rel="stylesheet" href="css/style.css" type="text/css" media="all" />
    <link rel="stylesheet" href="css/jquery.idealforms.css" type="text/css" media="all"/>
    <link rel="stylesheet" href="css/form-styles.css" type="text/css" media="all"/>

    <script type="text/javascript" src="js/modernizr.custom.82305.js."></script>
    <script type="text/javascript" src="js/jquery-1.10.2.min.js"></script>
    <!-- script required for advance form -->
    <script src="//ajax.googleapis.com/ajax/libs/jqueryui/1.10.3/jquery-ui.min.js"></script>      
    <script src="js/jquery.idealforms.min"></script>  
    
    <script type="text/javascript" src="js/jquery.carouFredSel-6.2.1-packed.js"></script>
    <script type="text/javascript" src="js/jquery.icheck.min.js"></script>
    <script type="text/javascript" src="js/main.js"></script>
  
</head>
<body>
<div class="container">
    <header class="header">
        <div class="shell">
            <a href="index.asp" class="logo">rentchecks.com</a>

            <div class="header-right">
                <div class="nav-user">
                    <ul>
                        <li><a href="login.asp" class="btn-login">login</a></li>
                        <li><a href="#">sign up</a></li>
                    </ul>
                    
                    <div class="form-login">
                        <form action="validuser.asp" onSubmit="return empty();"  method="post" name="userForm">
                            <div class="form-body">
                                <div class="form-row">
                                    <label for="username" class="form-label">User Name</label>
                                
                                    <div class="form-controls">
                                        <input type="text" name="username" id="username" class="field" />
                                    </div><!-- /.form-controls -->
                                </div><!-- /.form-row -->
                
                                <div class="form-row">
                                    <label for="password" class="form-label">Password</label>
                                
                                    <div class="form-controls">
                                        <input type="password" name="password" id="password" class="field" />
                                    </div><!-- /.form-controls -->
                                </div><!-- /.form-row -->
                            </div><!-- /.form-body -->
                
                            <div class="form-foot">
                                <input type="submit" value="log in" class="btn btn-orange" />
                
                                <ul>
                                    <li><a href="forgot.asp">Forgot your password?</a></li>
                                    <li><a href="forgot.asp">Forgot your username?</a></li>
                                </ul>
                
                                <p><a href="register.asp">create an account</a></p>
                            </div><!-- /.form-foot -->
                        </form>
                    </div><!-- /.form-login -->
                </div><!-- /.nav-user -->
                
                <div class="socials">
                    <a href="twitter.com/rentchecks" class="icon-twitter">twitter</a>
                    <a href="googleplus.com/rentchecks" class="icon-google">google</a>
                </div><!-- /.socials -->
            </div><!-- /.header-right -->
            
            <p class="contacts"><em>Call</em> for support 0845 095 0055</p>
        </div><!-- /.shell -->
    </header>
<%name=session("name")%>
    <nav class="nav">
        <div class="shell">
            <ul>
                
                <li><a href="loggedsjl.asp?reg=<%=name%>">dashboard</a></li>
                         <li class="current"> <a href="#">forms</a></li>
                <li><a href="sjlpricingl.asp?reg=<%=name%>">pricing</a></li>
               
            </ul>
        </div><!-- /.shell -->
    </nav><!-- /.nav -->
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	

<script language="javascript">
function empty() {


var valuep=userForm.password.value

var valuename=userForm.username.value







if (valuep=="")    {
alert("You must enter a password");
return false;
}



if (valuename=="")    {
alert("You must enter a username");
return false;
}


}



</script>