<%-- 
   JSP that generates a Login/Register web page
--%>

<%@page contentType="text/html"%>
<%@page pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
"http://www.w3.org/TR/html4/loose.dtd">

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Clocking Manager</title>

<style  type="text/css">

#content { position: relative;}

#login {
	position: relative;
	top: 80px;
}

.align-right {
	text-align: right;
}

table {
	border: 3px solid black;
	padding: 25px;
	background-color: #CCCCFF;
}

.login-error {
	font-size: 16px;
	font-weight: bold;
	font-color: red;
}

.registration-error {
	font-size: 16px;
	font-weight: bold;
	font-color: red;
}

.login {
	float:left;
	width:45%;
	border-right: 5px solid #000
}

.register {
	float:right;
	width:45%;
}

.mainheading {
	width:100%;
	text-align:center;
}

.subheading {
	width:100%;
	text-align:center;
}



</style>

</head>
<body>

<div class="mainheading">
<h1>Clocking Manager</h1>
</div>


<div class="subheading">
<h3>Login / Register</h3>
</div>

<div class="wrap">
<div class="login">

<h3>Login for existing users</h3>

<form method="post" action="<%= response.encodeUrl(request.getContextPath() + "/LoginHandler?action=dologin") %>">

<input type="hidden" name="action" value="dologin" />

<table>

<tr><td class="align-right">Username: </td><td><input type="text" name="username"/></td></tr>
<tr><td class="align-right">Password: </td><td><input type="password" name="password"/></td></tr>
<tr><td class="align-right" colspan="2"><input type="submit" value="Login"/></td></tr>

</table>

<p class="login-error"><%= request.getAttribute("loginmessage") %></p>

</form>

</div>

<br/>

<div class="register">
<h3>New User</h3>

<form method="post" action="<%= response.encodeUrl(request.getContextPath() + "/LoginHandler?action=doregister") %>">

<input type="hidden" name="action" value="doregister" />

<table>

<tr><td class="align-right">Username: </td><td><input type="text" name="username"/></td></tr>
<tr><td class="align-right">Password: </td><td><input type="password" name="password"/></td></tr>
<tr><td class="align-right">Confirm Password: </td><td><input type="password" name="passwordconfirmation"/></td></tr>
<tr><td class="align-right" colspan="2"><input type="submit" value="Register"/></td></tr>

</table>

<p class="registration-error"><%= request.getAttribute("registermessage") %></p>

</form>
</div>
</div>

</body>
</html>