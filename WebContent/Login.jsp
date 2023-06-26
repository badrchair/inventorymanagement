<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title> ONEE- Gestion de Stock</title>
<style type="text/css">
body {

color:black;
background-
background-color:white;
background-image:url(<%= request.getContextPath() %>/template/img/Background.jpg);
background-position:50% 50%;

}
</style>
</head>
<body>
<center>
<br> <br>
<h1>          Bienvenue      </h1> 
<h3> Voulez vous se connecter tant que :  </h3>
<br><br>
<a href="admin.jsp">	<img  src="<%= request.getContextPath() %>/template/img/admin.jpg" width="300px" alt="avatar" /> </a>
<a href="CompteClient.jsp">	<img  src="<%= request.getContextPath() %>/template/img/client.jpg" width="300px" alt="avatar" /> </a>
</center>
</body>
</html>