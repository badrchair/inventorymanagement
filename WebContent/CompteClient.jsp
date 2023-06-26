<%@ page import="web.CompteBeans" %>
<%@ page import="java.util.Iterator" %>
<%@ page import="metier.Compte" %>
<%@ page import="metier.AjoutCompte" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Login or sign up </title>
<%@ include file ="/include/Css.jsp" %> 
<style type="text/css">
@CHARSET "UTF-8";
.left{
float: left;
margin-top:100px;
margin-left:80px;
}
.right{
float: right;
margin-top:80px;
margin-right: 180px;
}
.bb > li > a {

float: right;
height: inherit;
padding: 3px 15px;
font-size: 18px;
line-height: 48px;
color:#00FFFF;
background:#000000;

}
.bbb > li > a {
padding-top: 16px;
padding-bottom: 13px;
border-bottom:5px solid transparent;
font-size:14px;
text-transform:uppercase;

}
body {
color:black;
background-color:white;
background-image:url(<%= request.getContextPath() %>/template/img/Background.jpg);
}
.btn_taille_egale{
   width:150px;
}
</style>

</head>
<body>
<div id="boxWrapp">
    <div class="main-nav clearfix">
	  <!-- navbar -->
	<nav class="navbar navbar-inverse" role="navigation">
        <div class="container-fluid">
        <!-- Brand and toggle get grouped for better mobile display -->
        <div class="navbar-header">
          <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#NavCol">
            <span class="sr-only">Toole navigation</span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
          </button>
          <a class="navbar-brand bg-primary" href="ChoixCons.jsp" color:"#00FFFF"; > O.N.E.E</a>
        </div>
     
        <!-- Collect the nav links, forms, and other content for toggling -->
        <div class="collapse navbar-collapse" id="NavCol">
  		<ul class=" bb ">
        <li class="current"> <a href="http://localhost:8888/Gestion_De_Stock/Accueil.jsp" class="linear">Acceuil</a><a class="bbb" href="http://localhost:8888/Gestion_De_Stock/admin.jsp" class="linear" >Admin</a> <a href="http://localhost:8888/Gestion_De_Stock/CompteClient.jsp" class="linear">Client</a> </li>
        </ul>
        </div><!-- /.navbar-collapse -->
      
        
        </div><!-- /.container-fluid -->
    </nav>
	  
	</div>





<br><br><br><br>

<center>
<h1> Gestion de Stock </h1>

</center>
<article class="left"> 
<h2> Cr�er un Compte  </h2>
<form action ="Signup" method="post">
<table border="2" width="25%">
	<tr>
		<td><center> Nom </center></td>
		<td> <input type="text" name="C_nom" ></td>
	</tr>
	<tr>
		<td><center> Prenom</center></td>
		<td> <input type="text" name="C_prenom" ></td>
	</tr>
	<tr>
		<td><center> Login</center></td>
		<td> <input type="text" name="login" ></td>
	</tr>
	<tr>
		<td><center> Password</center></td>
		<td> <input type="password" name="mdp" > </td>
	</tr>
		<tr> <td> <center><input type="submit" name="action10" value=" Sign up " ></center><td></tr>
</table>
<% if (request.getAttribute("test")!=null ) { %> <h4 style="color: red">il existe d�j� un compte avec le login que vous avez entrer  !</h4> <%} %></p>
</form>
</article>
</br> 
<article class="right">
<h2> Se connecter   </h2>
<form method="post" action="Lgin">
<table border="2" width="25%">
    <tr>
      <td><center>Login:</center></td>
      <td><input type="text" name="login"  placeholder="name@example.com"></td>
    </tr>

    <tr>
      <td><center>Password:</center></td>
      <td><input type="password" name="mdp"  placeholder="*********"></td>
    </tr>


    <tr>
      <td><input type="submit" name="action11" value="Login" class="btn_taille_egale"> </td>
    </tr>
    
 
</table>
<% if (request.getAttribute("test1")!=null ) { %> <h4 style="color: red">Login ou Mot de passe incorrecte ,R�ssayez !</h4> <%} %></p>
    <p><a href="Accueil.jsp">Forgot your password?</a></p>
    <br><br><br><br><br>
  </form>
</article>

<%@ include file ="/include/Footer.jsp" %>
</body>
<%@ include file ="/include/Js.jsp" %>
</html>