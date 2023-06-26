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
<title> Modifier Inventaire </title>
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
        <li class="current"><a href="http://localhost:8888/Gestion_De_Stock/admin.jsp" class="linear">Deconx</a><a href="http://localhost:8888/Gestion_De_Stock/Demande.jsp" class="linear">Demande</a> <a href="http://localhost:8888/Gestion_De_Stock/ChoixCons.jsp" class="linear">Consommable</a> <a href="http://localhost:8888/Gestion_De_Stock/HistoriqueConsult.jsp" class="linear">Historique</a> <a class="bbb" href="http://localhost:8888/Gestion_De_Stock/InventaireGest.jsp" class="linear" >Inventaire</a> </li>
        </ul>
        </div><!-- /.navbar-collapse -->
      
        
        </div><!-- /.container-fluid -->
    </nav>
	  
	</div>
<br><br><br><br>
<%
	InventaireBeans inventaires ;
	if (request.getAttribute("model") != null){
		inventaires = (InventaireBeans) request.getAttribute("model");
	}else{
		Operation O = new Operation();
		inventaires = new InventaireBeans();
		inventaires.setListe(O.getAll());
	}
	
%>
<center>
 <h1> Modifier l'Inventaire  </h1> 
 <br>  <br>
<form action ="invserv" method="post">
<table border="3" width="20%">

	<tr>
		<td><center> Nom</center> </td>
		<td> <input type="text" name="I_nom" ></td>
	</tr>
		<tr>
		<td><center> Prenom </center> </td>
		<td> <input type="text" name="I_prenom" ></td>
	</tr>
	<tr>
		<td><center> Type</center> </td>
		<td> <input type="text" name="I_type" ></td>
	</tr>
	<tr>
		<td><center> Entité</center> </td>
		<td> <input type="text" name="entite" ></td>
	</tr>
	<tr>
		<td><center> Marque</center> </td>
		<td> <input type="text" name="marque" > </td>
	</tr>
	<tr>
		<td> <center>Matricule </center> </td>
		<td> <input type="text" name="matricule" ></td>
	</tr>
	<tr>
		<td> <center>Service </center> </td>
		<td> <input type="text" name="service" ></td>
	</tr>

	<tr> <td> <input type="submit" name="action4" value=" modifier "class="btn_taille_egale" ><td></tr>
</table>
</form>
</center>
<br><br><br><br><br><br><br>


	<%@ include file ="/include/Footer.jsp" %>
</body>
	<%@ include file ="/include/Js.jsp" %>
</html>