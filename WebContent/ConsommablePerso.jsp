<%@ page import="web.ConsommableBeans" %>
<%@ page import="java.util.Iterator" %>
<%@ page import="metier.consommable" %>
<%@ page import="metier.Action" %>
<%@ page import="metier.Compte" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

<title> Demande du consommable</title>
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
   width:110px;
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
        <li class="current"> <a href="http://localhost:8888/Gestion_De_Stock/CompteClient.jsp" class="linear">Deconx</a><a href="http://localhost:8888/Gestion_De_Stock/InventairePerso.jsp" class="linear">Inventaire</a> <a class="bbb" href="http://localhost:8888/Gestion_De_Stock/ConsommablePerso.jsp" class="linear" >Consommable</a>  </li>
        </ul>
        </div><!-- /.navbar-collapse -->
      
        
        </div><!-- /.container-fluid -->
    </nav>
	  
	</div>


<br><br><br><br><br>
<h1><center> Consommable Informatique </center></h1>
<br><br>
<br><br>
 <center>
 		<form action="rescons" method="post">
			<input type="hidden" name="action103" value="Chercher" />
			<input type="submit" value=" Chercher"/>
		</form>
</center>
<br><br>
<%
	ConsommableBeans consommables ;
	if (request.getAttribute("model2") != null){
		consommables = (ConsommableBeans) request.getAttribute("model2");
	}else{
		Action O = new Action();
		consommables = new ConsommableBeans();
		consommables.setListe(O.getAll());
	}
	
%>

<center>
<table border="4" width="">
	<tr> 
	
	<th width="14%"><center> Nom     </center> </th>
	<th width="10%"><center>Quantite </center></th>
	<th width="14%"><center> Marque  </center> </th>
	<th width="10%"><center> Modele  </center> </th>
	<th><center> Longueur </center></th>
	<th><center> debit</center> </th>
	<th><center> Capacite</center> </th>
	<th><center>Quantite voulue </center> </th>
	</tr>
<%
    String name = (String) request.getAttribute("essay3");
	String prenom = (String) request.getAttribute("essay4");

	Compte A =new Compte();
	A.setC_nom(name);
	A.setC_prenom(prenom);
    Iterator<consommable > list = consommables.getListe().iterator();
	while (list.hasNext()){
		consommable C = list.next();

	%>
	
	<tr>
	
	<td> <%=C.getS_nom() %> </td>
	<td> <%=C.getS_quantite() %> </td>
	<td> <%=C.getS_marque() %> </td>
	<td> <%=C.getS_modele() %> </td>
	<td> <%=C.getS_longeur() %> </td>
	<td> <%=C.getS_debit() %> </td>
	<td> <%=C.getS_capacite() %> </td>
	<td> 
		<form action="rescons" method="post">
			<input type="hidden" name="Code_onee" value=" <%=C.getCode_onee() %> " />
			<input type="hidden" name="S_quantite" value=" <%=C.getS_quantite() %> " />
		    <input type="text"   name="S_quantitevoulue" >
			<input type="hidden" name="S_nom" value=" <%=C.getS_nom() %> " />
			<input type="hidden" name="P_nom" value=" <%=A.getC_nom() %> " />
			<input type="hidden" name="P_prenom" value=" <%=A.getC_prenom() %> " />
			
			<input type="hidden" name="action55" value="Réserver" />
			<input type="submit" value=" Réserver " class="btn_taille_egale"/>

		</form> 
	</td>
		</tr>
		
	 <% } %>
</table>
<%if (request.getAttribute("test1")!=null ) { %> <h4 style="color: red"> la valeur saisie est supérieur par rapport la quantité disponible  </h4>
<%}%>

</center>
<br><br><br><br><br>
<%@ include file ="/include/Footer.jsp" %>
</body>
<%@ include file ="/include/Js.jsp" %>
</html>