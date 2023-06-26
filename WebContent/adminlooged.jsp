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
<h1>          Bienvenue       </h1> 
<h3> Voulez vous Consulter :  </h3>
<br>
<a href="InventaireGest.jsp">	<img  src="<%= request.getContextPath() %>/template/img/inventaire.jpg" width="200px" alt="avatar" /> </a>
<a href="HistoriqueConsult.jsp">	<img  src="<%= request.getContextPath() %>/template/img/historique.jpg" width="200px" alt="avatar" /> </a>
<br>
<a href="ChoixCons.jsp">	<img  src="<%= request.getContextPath() %>/template/img/hadai.jpg" width="200px" alt="avatar" /> </a>
<a href="Demande.jsp">	<img  src="<%= request.getContextPath() %>/template/img/Untitled-1.jpg" width="200px" alt="avatar" /> </a>



</center>
</body>
</html>