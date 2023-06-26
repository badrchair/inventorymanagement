<%@ page import="web.DemandeBeans" %>
<%@ page import="java.util.Iterator" %>
<%@ page import="metier.Reserver" %>
<%@ page import="metier.Demande" %>
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
   width:100px;
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
        <li class="current"> <a href="http://localhost:8888/Gestion_De_Stock/admin.jsp" class="linear">Deconx</a><a class="bbb" href="http://localhost:8888/Gestion_De_Stock/InventaireGest.jsp" class="linear" >Inventaire</a> <a href="http://localhost:8888/Gestion_De_Stock/ChoixCons.jsp" class="linear">Consommable</a> <a href="http://localhost:8888/Gestion_De_Stock/HistoriqueConsult.jsp" class="linear">Historique</a><a href="http://localhost:8888/Gestion_De_Stock/Demande.jsp" class="linear">Demande</a> </li>
        </ul>
        </div><!-- /.navbar-collapse -->
      
        
        </div><!-- /.container-fluid -->
    </nav>
	  
	</div>





<br><br><br><br><br>

<center> <h1>  Demande du consommable </h1> </center> 
<center>
<br><br><br>
<%
	DemandeBeans dem ;
	if (request.getAttribute("model") != null){
		dem = (DemandeBeans) request.getAttribute("model");
	}else{
		Reserver O = new Reserver();
		dem = new DemandeBeans();
		dem.setListe(O.getAll());
	}
	
%>
<table border="3" width="">
	<tr> 
	<th width="20%"><center> Nom du consommable </center> </th>
	<th width="20%"><center> Quantite Voulue </center></th>
	<th width="20%"><center>  Nom du Client</center> </th>
	<th width="20%"><center>  Prenom du  Client</center> </th>	
	</tr>
	<%
    Iterator<Demande > list = dem.getListe().iterator();
 	while (list.hasNext()){
		Demande D = list.next();

	%>
	<tr>
	

	<td> <%=D.getS_nom() %> </td>
	<td> <%=D.getS_quantitevoulue() %> </td>
	<td> <%=D.getP_nom() %> </td>
	<td> <%=D.getP_prenom() %> </td>
	<td> 
		<form action="ger" method="post">
			<input type="hidden" name="Num_dem" value=" <%=D.getNum_dem() %> " />
			<input type="hidden" name="Code_onee" value=" <%=D.getCode_onee() %> " />
			<input type="hidden" name="S_quantitevoulue" value=" <%=D.getS_quantitevoulue() %> " />
			<input type="hidden" name="P_nom" value=" <%=D.getP_nom() %> " />
			<input type="hidden" name="P_prenom" value=" <%=D.getP_prenom() %> " />
			<input type="hidden" name="S_nom" value=" <%=D.getS_nom() %> " />
			
			<input type="hidden" name="action20" value="Accepter" />
			<input type="submit" value=" Accepter" class="btn_taille_egale"/>

		</form>
	</td>
	<td>
		<form action="gero" method="post">
			<input type="hidden" name="Num_dem1" value=" <%=D.getNum_dem() %> " />
			<input type="hidden" name="Code_onee1" value=" <%=D.getCode_onee() %> " />
			<input type="hidden" name="S_quantitevoulue1" value=" <%=D.getS_quantitevoulue() %> " />
			<input type="hidden" name="P_nom1" value=" <%=D.getP_nom() %> " />
			<input type="hidden" name="P_prenom1" value=" <%=D.getP_prenom() %> " />
			<input type="hidden" name="S_nom1" value=" <%=D.getS_nom() %> " />
		
			<input type="hidden" name="action30" value="Refuser" />
			<input type="submit" width="10%" value="Refuser" class="btn_taille_egale"/>
		</form>
	</td>
	
		<%}%>
	</tr>
	</table>
	<%if (request.getAttribute("test1")!=null ) { %> <h4 style="color: red"> la quantite voulu est supérieur par rapport la quantité disponible  </h4>
<%}%>
</center>
<br><br><br><br><br><br><br><br><br><br><br>
<%@ include file ="/include/Footer.jsp" %>

</body>
	<%@ include file ="/include/Js.jsp" %>
</html>