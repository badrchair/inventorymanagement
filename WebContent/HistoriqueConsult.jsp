<%@page import="web.HistoriqueBeans"%>
<%@page import="metier.HisOperation"%>
<%@page import="metier.Historique"  %>
<%@ page import="java.util.Iterator" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title> Historique </title>
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
        <li class="current"><a href="http://localhost:8888/Gestion_De_Stock/admin.jsp" class="linear">Deconx</a><a href="http://localhost:8888/Gestion_De_Stock/Demande.jsp" class="linear">Demande</a> <a class="bbb" href="http://localhost:8888/Gestion_De_Stock/InventaireGest.jsp" class="linear" >Inventaire</a> <a href="http://localhost:8888/Gestion_De_Stock/ChoixCons.jsp" class="linear">Consommable</a> <a href="http://localhost:8888/Gestion_De_Stock/HistoriqueConsult.jsp" class="linear">Historique</a> </li>
        </ul>
        </div><!-- /.navbar-collapse -->
      
        
        </div><!-- /.container-fluid -->
    </nav>
	  
	</div>
<br><br><br>
<h2><center> Historique  </center></h2>
<%
	HistoriqueBeans historiques ;
	if (request.getAttribute("model70") != null){
		historiques = (HistoriqueBeans) request.getAttribute("model70");
	}else{
		HisOperation O = new HisOperation();
		historiques = new HistoriqueBeans();
		historiques.setListe(O.getAll());
	}
	
%>
<center>
<form action="findhis" method="post">
<table width="" border="2" cellspacing="3" cellpadding="3">

	<tr>
		<td> Nom du consommable</td>
		<td> <input type="text" name="S_nom" ></td>
	</tr>
	<tr> 
		<td> 		
			  <input type="submit" name="action5" value=" Chercher" class="btn_taille_egale"/>
		</td>
	</tr>
</table>
</form>
</center>
<br> <br>
<center>
<table border="3" width="60%">
	<tr> 
	
	<th><center>  Nom du consommable </center> </th>
	<th><center>  Quantité Voulue </center> </th>
	<th width="15%"><center>  Nom Client </center> </th>
	<th><center>  Prenom Client </center> </th>
	<th><center>  code_onee </center> </th>
	<th><center>  Etat </center> </th>

	
	</tr>
<%
    Iterator<Historique > list = historiques.getListe().iterator();	
 	while (list.hasNext()){
 		Historique I = list.next();
	

	%>
	<tr>
	<td> <%=I.getS_nom() %> </td>
	<td> <%=I.getS_quantitevoulue() %> </td>
	<td> <%=I.getP_nom() %> </td>
	<td> <%=I.getP_prenom() %> </td>
	<td> <%=I.getCode_onee() %> </td>
	<td> <%=I.getEtat() %> </td>


	</tr>
	
		<%}%>

</table>
<br><br><br><br><br><br><br><br><br>
</center> 
<%@ include file ="/include/Footer.jsp" %>
</body>
	<%@ include file ="/include/Js.jsp" %>
</html>