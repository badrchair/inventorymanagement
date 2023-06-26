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
<title> Gestion D'Inventaire </title>
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
#content-1 { 
float:left; 
width:524px;
height:300px; 
padding:50px; 
} 
#content-3-1 { 
float:left;
margin-left:20px; 

padding:0px; 
 
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
<br><br><br>
<center> <h1> Gestion D'Inventaire  </h1> </center>
<div id="content-1">
<form action ="modifi" method="post">
<table border="3" width="18%">
	<tr>
		<td> Nom </td>
		<td> <input type="text" name="I_nom" ></td>
	</tr>
	<tr>
		<td> Prenom </td>
		<td> <input type="text" name="I_prenom" ></td>
	</tr>
	<tr>
		<td> Inventaire</td>
		<td> <input type="text" name="I_type" ></td>
	</tr>
	<tr>
		<td> Entité</td>
		<td> <input type="text" name="entite" ></td>
	</tr>
	<tr>
		<td> Marque</td>
		<td> <input type="text" name="marque" > </td>
	</tr>
	<tr>
		<td> Matricule</td>
		<td> <input type="text" name="matricule" ></td>
	</tr>
	<tr>
		<td>Service</td>
		<td> <input type="text" name="service" ></td>
	</tr>
	
	<tr><td><input type="submit" value=" Ajouter " > </td> </tr>
	
</table>
</form>
</div>
<div id="content-3-1">

<center>
 		<form action="invserv" method="post">
			<input type="hidden" name="action1" value="Chercher" />
			<input type="submit" value=" Chercher"/>
		</form>
</center>
<br>
<center>
<table border="5" width="" >
	<tr> 
	<th width="12%"><center>  Nom         </center> </th>
	<th width="12%"><center>  Prenom 	  </center> </th>
	<th width="15%"><center>  Inventaire  </center> </th>
	<th width="12%"><center>  Entité	  </center> </th>
	<th width="12%"><center>  Marque 	  </center> </th>
	<th width="12%"><center>  Matricule   </center> </th>
	<th width="20%"><center>  Service 	  </center> </th>
	</tr>
<%
    Iterator<Inventaire > list = inventaires.getListe().iterator();
	while (list.hasNext()){
		Inventaire I = list.next();
	%>
	<tr>
	<td> <%=I.getI_nom() %> </td>
	<td> <%=I.getI_prenom() %> </td>
	<td> <%=I.getI_type() %> </td>
	<td> <%=I.getEntite() %> </td>
	<td> <%=I.getMarque() %> </td>
	<td> <%=I.getMatricule() %> </td>
	<td> <%=I.getService() %> </td>
	<td>
	 <center>
		<form action="modifi" method="post">
			<input type="hidden" name="code_onep" value=" <%=I.getCode_onep() %> " />
			<input type="hidden" name="action" value="Supprimer" />
			<input type="submit" value=" Supprimer"/>
		</form>
	 </center>
	</td>
	<td>
   	 <center>
		<form action ="invserv" method="post">
			<input type="hidden" name="code_onep" value=" <%=I.getCode_onep() %> " />
			<input type="hidden" name="action8" value="Modifier" />
			<input type="submit" value=" Modifier"/>
		</form>
	 </center>
	</td>
	</tr>
		<%}%>
</table> 
</center>
<br>
</div>

<%@ include file ="/include/Footer.jsp" %>
</body>
<%@ include file ="/include/Js.jsp" %>
</html>