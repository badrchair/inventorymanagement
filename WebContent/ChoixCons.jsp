<%@ page import="web.ConsommableBeans" %>
<%@ page import="java.util.Iterator" %>
<%@ page import="metier.consommable" %>
<%@ page import="metier.Action" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Gestion de consommable</title>
<%@ include file ="/include/Css.jsp" %> 
<style>
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
width:424px;
height:400px; 
padding:10px; 
background-image:url(<%= request.getContextPath() %>/template/img/toner.png);
} 
#content-2-1 { 
float:left; 
width:424px; 
height:400px; 
margin-left:10px;
padding:10px; 
background-image:url(<%= request.getContextPath() %>/template/img/cbl.png); 
background-repeat:no-repeat;
background-position:1px 15px;
} 
#content-2-2 { 
float:right; 
width:424px; 
height:400px; 

padding:10px; 
background-image:url(<%= request.getContextPath() %>/template/img/photocd.png); 

} 
#content-3-1 { 
float:left;
margin-left:30px; 

padding:70px; 
 
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
        <li class="current"><a href="http://localhost:8888/Gestion_De_Stock/admin.jsp" class="linear">Deconx</a><a class="bbb" href="http://localhost:8888/Gestion_De_Stock/InventaireGest.jsp" class="linear" >Inventaire</a> <a href="http://localhost:8888/Gestion_De_Stock/Demande.jsp" class="linear">Demande</a>  <a href="http://localhost:8888/Gestion_De_Stock/HistoriqueConsult.jsp" class="linear">Historique</a><a href="http://localhost:8888/Gestion_De_Stock/ChoixCons.jsp" class="linear">Consommable</a> </li>
        </ul>
        </div><!-- /.navbar-collapse -->
      
        
        </div><!-- /.container-fluid -->
    </nav>
	  
	</div>


<%
	ConsommableBeans consommables ;
	if (request.getAttribute("model5") != null){
		consommables = (ConsommableBeans) request.getAttribute("model5");
	}else{
		Action O = new Action();
		consommables = new ConsommableBeans();
		consommables.setListe(O.getAll());
	}
	
%>
<br><br><br><br>
<center><h1 style="color:#000000;"> Gestion des Consommables </h1></center>

<br>
<div id="main"> 
<div id="content-1">
<center>
<form action="tonech" method="post" >
		<tr> 
		  <td><input type="submit" value=" Ajouter Tonner " name="action11" ></td></tr>
</form>
	<% 
			String attribut = (String) request.getAttribute("testo");
			if(attribut=="v"){ 
			%>

<h2> Insertion de Tonner </h2>
<form action ="toner" method="post">
<table border="3" width="20%">
	<tr>
		<td><center> Nom</center> </td>
		<td> <input type="text" name="S_nom" ></td>
	</tr>
	<tr>
		<td><center> Quantite</center></td>
		<td> <input type="text" name="S_quantite" ></td>
	</tr>

	<tr>
		<td><center> Marque</center></td>
		<td> <input type="text" name="S_marque" > </td>
	</tr>
	<tr>
		<td><center> Modele</center></td>
		<td> <input type="text" name="S_modele" ></td>
	</tr>

		<tr> <td> <center><input type="submit" value=" Ajouter " name="action44"></center></td></tr>		
		
</table>
</form>
			<%} %>
</center>
</div>
<div id="content-2"> 
<div id="content-2-1">
<center>
<form action="tonech" method="post" >
		<tr> 
		  <td><input type="submit" value=" Ajouter Cable " name="action12" ></td></tr>
</form>


	<% 
			String attribut1 = (String) request.getAttribute("testo1");
			if(attribut1=="v"){ 
			%>

<h2> Insertion des Cables </h2>
<form action ="cable" method="post">
<table border="3" width="20%">
	<tr>
		<td> <center>Nom</center> </td>
		<td> <input type="text" name="S_nom" ></td>
	</tr>
	<tr>
		<td> <center>Quantite</center></td>
		<td> <input type="text" name="S_quantite" ></td>
	</tr>

	<tr>
		<td><center> Marque </center></td>
		<td> <input type="text" name="S_marque" > </td>
	</tr>
	<tr>
		<td><center> Modele</center></td>
		<td> <input type="text" name="S_modele" ></td>
	</tr>
	
	<tr>
		<td><center> Longeur</center></td>
		<td> <input type="text" name="S_longeur" > </td>
	</tr>
	<tr>
		<td> <center>Débit</center></td>
		<td> <input type="text" name="S_debit" ></td>
	</tr>

		<tr> <td> <center><input type="submit" value=" Ajouter " ></center></td></tr>
</table>
</form>
	<%} %>
    </center>
</div>
<div id="content-2-2">
<center>
<form action="tonech" method="post" >
		<tr> 
		  <td><input type="submit" value=" Ajouter Cd " name="action13" ></td></tr>
</form>

	<% 
			String attribut2 = (String) request.getAttribute("testo2");
			if(attribut2=="v"){ 
			%>
<h2> Insertion des CDs </h2>
<form action ="cd" method="post" >
<table border="3" width="20%" >
	<tr>
		<td><center> Nom </center></td>
		<td> <input type="text" name="S_nom" ></td>
	</tr>
	<tr>
		<td><center> Quantite</center></td>
		<td> <input type="text" name="S_quantite" ></td>
	</tr>

	<tr>
		<td><center> Marque</center></td>
		<td> <input type="text" name="S_marque" > </td>
	</tr>
	<tr>
		<td><center> Modele</center></td>
		<td> <input type="text" name="S_modele" ></td>
	</tr>
		<tr>
		<td><center> Capacité</center></td>
		<td> <input type="text" name="S_capacite" ></td>
	</tr>
	

		<tr> <td> <center><input type="submit" value=" Ajouter " ></center></td></tr>
</table>
</form>
	<%} %>
    </center>
</div>
<div id="content-3-1">
<br> <br>
<center>
<article class="down"> 
		<form action="tonech" method="post">
			<input type="hidden" name="action103" value="Chercher" />
			<input type="submit" value=" Chercher"/>
		</form>
</article>
<br> <br>
<table border="5" width="" >
	<tr> 
	<th width="12%"> <center> Code_Onee       </center></th>
	<th width="15%"> <center> Consommable </center></th>
	<th width="15%"> <center> Type        </center></th>
	<th width="10%"> <center> Quantite    </center></th>
	<th width="15%"> <center> Marque      </center></th>
	<th width="12%"> <center> Modele      </center></th>
	<th width="12%"> <center> Longeur     </center></th>
	<th width="12%"> <center> debit       </center></th>
	<th width="15%"> <center> Capacite    </center></th>
	</tr>
<%
    Iterator<consommable > list = consommables.getListe().iterator();
	while (list.hasNext()){
		consommable C = list.next();
	%>
	<tr>
	<td> <%=C.getCode_onee() %> </td>
	<td> <%=C.getS_nom() %> </td>
	<td> <%=C.getS_type() %> </td>
	<td> <%=C.getS_quantite() %> </td>
	<td> <%=C.getS_marque() %> </td>
	<td> <%=C.getS_modele() %> </td>
	<td> <%=C.getS_longeur() %> </td>
	<td> <%=C.getS_debit() %> </td>
	<td> <%=C.getS_capacite() %> </td>
	<td width="20%"> 
		<form action="cable" method="post">
			<input type="hidden" name="code_onee" value=" <%=C.getCode_onee() %> " />
			<input type="hidden" name="action2" value="Supprimer" />
			<input type="submit" value=" Supprimer"/>
		</form>
	</td>
	<td width="20%">
			<form action="modse" method="post">
			<input type="hidden" name="code_onee" value=" <%=C.getCode_onee() %> " />
			<input type="hidden" name="S_type" value=" <%=C.getS_type() %> " />
			<input type="hidden" name="action3" value=" Modifier " />
			<input type="submit" value=" Modifier "/>
		</form>
	</td>

	</tr>

	<%}%>
</table> 
</center>
</div>
	<%@ include file ="/include/Footer.jsp" %>

</body>
	<%@ include file ="/include/Js.jsp" %>

</html>