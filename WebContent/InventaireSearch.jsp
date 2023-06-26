<%@ page import="web.InventaireBeans" %>
<%@ page import="java.util.Iterator" %>
<%@ page import="metier.Inventaire" %>
<%@ page import="metier.Operation" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title> Chercher un inventaire </title>
<%@ include file ="/include/Css.jsp" %> 
<style type="text/css">
@CHARSET "UTF-8";
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
        <li class="current"><a href="http://localhost:8888/Gestion_De_Stock/admin.jsp" class="linear">Deconx</a><a href="http://localhost:8888/Gestion_De_Stock/Demande.jsp" class="linear">Demande</a> <a href="http://localhost:8888/Gestion_De_Stock/ChoixCons.jsp" class="linear">Consommable</a> <a href="http://localhost:8888/Gestion_De_Stock/HistoriqueConsult.jsp" class="linear">Historique</a> <a class="bbb" href="http://localhost:8888/Gestion_De_Stock/InventaireGest.jsp" class="linear" >Inventaire</a> </li>
        </ul>
        </div><!-- /.navbar-collapse -->
      
        
        </div><!-- /.container-fluid -->
    </nav>
	  
	</div>
	<br><br><br><br>
<h1> <center>   Chercher un inventaire      </center> </h1>
<%
	InventaireBeans inventaires ;
	if (request.getAttribute("model4") != null){
		inventaires = (InventaireBeans) request.getAttribute("model4");
	}else{
		Operation O = new Operation();
		inventaires = new InventaireBeans();
		inventaires.setListe(O.getAll());
	}
%>
<br><br><br><br>
<center>
<form action="findinv" method="post">
<table width="" border="2" cellspacing="3" cellpadding="3">

	<tr>
		<td> Nom </td>
		<td> <input type="text" name="I_nom" ></td>
	</tr>
	<tr> 
		<td> 		
			  <input type="submit" name="action6" value=" Chercher"/>
		</td>
	</tr>
</table>
</form>
</center>
</br> </br>
<center>
<table border="4" width="80%">
	<tr> 
	<th> Code_ONEP </th>
	<th> Nom </th>
	<th> Prenom </th>
	<th> Type </th>
	<th> Entité </th>
	<th> Marque </th>
	<th> Matricule </th>
	<th> Service </th>
	</tr>
<%
    Iterator<Inventaire > list = inventaires.getListe().iterator();
	while (list.hasNext()){
		Inventaire I = list.next();
	%>
	<tr>
	<td> <%=I.getCode_onep() %> </td>
	<td> <%=I.getI_nom() %> </td>
	<td> <%=I.getI_prenom() %> </td>
	<td> <%=I.getI_type() %> </td>
	<td> <%=I.getEntite() %> </td>
	<td> <%=I.getMarque() %> </td>
	<td> <%=I.getMatricule() %> </td>
	<td> <%=I.getService() %> </td>
	</tr>
		<%}%>
</table> 
</center>
<br><br><br><br><br><br><br>
<%@ include file ="/include/Footer.jsp" %>
</body>
<%@ include file ="/include/Js.jsp" %>
</html>