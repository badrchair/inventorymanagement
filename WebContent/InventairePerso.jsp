<%@ page import="web.InventaireBeans" %>
<%@ page import="java.util.Iterator" %>
<%@ page import="metier.Inventaire" %>
<%@ page import="metier.Operation" %>
<%@ page import="metier.Compte" %>
<%@ page import="web.CompteServlet" %>
<%@ page import="web.CompteBeans" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Inventaire du Personnel</title>
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
        <li class="current"> <a href="http://localhost:8888/Gestion_De_Stock/CompteClient.jsp" class="linear">Deconx</a><a class="bbb" href="http://localhost:8888/Gestion_De_Stock/ConsommablePerso.jsp" class="linear" >Consommable</a> <a href="http://localhost:8888/Gestion_De_Stock/InventairePerso.jsp" class="linear">Inventaire</a>  </li>
        </ul>
        </div><!-- /.navbar-collapse -->
      
        
        </div><!-- /.container-fluid -->
    </nav>
	  
	</div>





<br><br><br><br><br>
<h2><center> Votre Inventaire  </center></h2>
<br><br>
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
<table border="3" width="80%">
	<tr> 
	<th><center> Code_ONEP </center> </th>
	<th><center> Nom </center></th>
	<th><center> Prenom </center></th>
	<th><center> Inventaire </center></th>
	<th><center> Entité </center></th>
	<th><center> Marque </center></th>
	<th><center> Matricule </center></th>
	<th><center> Service </center></th>
	
	</tr>
<%
    Iterator<Inventaire > list = inventaires.getListe().iterator();
	Compte b = new Compte();
	
	String name = (String) request.getAttribute("essay1");
	String prenom = (String) request.getAttribute("essay2");
	Compte A =new Compte();
	A.setC_nom(name);
	A.setC_prenom(prenom);
 	while (list.hasNext()){
		Inventaire I = list.next();
		if(I.getI_nom().equals(name)&& I.getI_prenom().equals(prenom) ){

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
	
		<%}}%>

</table>
<br><br>
			
			<form action="aad" method="post">
	        <input type="hidden" name="C_nom" value=" <%=A.getC_nom() %> " />     
			<input type="hidden" name="C_prenom" value=" <%=A.getC_prenom() %> " />
			<input type="hidden" name="action66" value="Consulter le Consommable" />
			<input type="submit" value=" Consulter le Consommable "/>
			</form> 
	
<br><br>

</center> 
<br><br><br><br><br><br><br><br><br>
<%@ include file ="/include/Footer.jsp" %>
</body>
<%@ include file ="/include/Js.jsp" %>

</html>