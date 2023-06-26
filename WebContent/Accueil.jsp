<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title> Gestion de Stock </title>
<%@ include file ="/include/Css.jsp" %>
<style>
body {
color:black;
background-color:white;
background-image:url(<%= request.getContextPath() %>/template/img/St.jpg);
background-repeat:no-repeat;
background-position:10% 10%;
}
</style>
</head>
<body>
	  <div id="boxWrapp">
	<%@ include file ="/include/Header.jsp" %>
	
	
	 <div id="aboutMore" class="page">
      <div class="container">
		<div class="row">
          <div class="col-md-10  col-md-offset-1">
		    <div class="build title-page">
				<h2 class="text-center">O.N.E.E</h2>	
				<div class="line-title bg-primary"></div>
			</div>
		   </div><!-- end col -->
		</div><!-- end row -->
		
        <div class="row">
           <div class="col-md-6">
			   <div class="build main-about">
				   <div class="row">
				       <div class="col-md-3">
				            <div class="main-avatar text-center">
				                <div class="avatar img-thumbnail img-circle">
				                <img src="<%= request.getContextPath() %>/template/img/onee.jpg" alt="avatar" />
				                </div>
				            </div>
				            
				       </div>
				       <div class="col-md-9">
				            <div class="about-content">
						<p> Office National de l'Electricité et de l'Eau Potable est un établissement public marocain, à caractère industriel et commercial doté de la personnalité civile et de l'autonomie financière. Créé en 1972, l'ONEE Branche Eau est un acteur principal dans le secteur de l'eau potable et de l'assainissement au Maroc, il assure la planification, la production et la distribution des ressources hydriques du pays.</p>
						<a href="CompteClient.jsp" class="btn btnAbout btn-clear border-color color-primary btn-lg linear">Créer votre Compte</a>
					</div>
				       </div>
				   </div>
				  
					
				</div>
            </div><!-- end col -->
		  
        <div class="col-md-6">
                <div class="build progressbar-a">
                    <div class="wrapp-progress">
                        <p class="pull-left">Taux de Desserte</p> 
                        <div class="progress">
                          
                          <div class="progress-bar  clearfix" role="progressbar" aria-valuenow="94.5" aria-valuemin="0" aria-valuemax="100" style="width: 0%">
                            <span class="precent-value"></span>
							<i class="fa fa-caret-down"></i>
                          </div>
                        </div>
                    </div>
                    <div class="wrapp-progress">
                        <p class="pull-left">Rendement production</p> 
                        <div class="progress">
                          
                          <div class="progress-bar  clearfix" role="progressbar" aria-valuenow="95.1" aria-valuemin="0" aria-valuemax="100" style="width: 0%">
                            <span class="precent-value"></span>
							<i class="fa fa-caret-down"></i>
                          </div>
                        </div>
                    </div>
                    <div class="wrapp-progress">
                        <p class="pull-left">Taux de dépollution</p> 
                        <div class="progress">
                          
                          <div class="progress-bar  clearfix" role="progressbar" aria-valuenow="60.5" aria-valuemin="0" aria-valuemax="100" style="width: 0%">
                           <span class="precent-value"></span>
						   <i class="fa fa-caret-down"></i>
                          </div>
                        </div>
                    </div>
                    <div class="wrapp-progress">
                        <p class="pull-left">Rendement distribution</p> 
                        <div class="progress">
                          
                          <div class="progress-bar  clearfix" role="progressbar" aria-valuenow="73.9" aria-valuemin="0" aria-valuemax="100" style="width: 0%">
                           <span class="precent-value"></span>
						   <i class="fa fa-caret-down"></i>
                          </div>
                        </div>
                    </div>
                </div>
            </div>
        </div><!-- end row -->
      </div>
      </div>
    
    <!-- /Intro -->   

   
    
    <!--contact-->
    <div id="contact" class="page page-bgcolor">
		<div class="container">
		<div class="row">
          <div class="col-md-10  col-md-offset-1">
		    <div class="build title-page">
				<h2 class="text-center">Contactez nous</h2>	
				<div class="line-title bg-primary"></div>
			</div>
		   </div><!-- end col -->
		</div><!-- end row -->
	  	<div class="row">
			<div class="col-md-4 ">
				<div class="build contact clearfix text-center">
					<span class="fa fa-map-marker"></span>
						<p>BP 716 quartier administratif<br /> avenue mohaammad 6 <p>
				</div>			
			</div><!-- end col -->
			<div class="col-md-4 ">
				<div class="build contact clearfix text-center">
					<span class="fa fa-phone"></span>
					<p>Tel.<a href="tel:+0626943314">+0626943314</a></p>
					<p>Fax.<a href="tel:+0566144810">+0566144810</a></p>
					
				</div>
			</div>
			<div class="col-md-4 ">
				<div class="build contact clearfix text-center">
					<span class="fa fa-envelope"></span>
					<p>aymenst01@gmail.com</p>
				</div>
			</div>
		</div><!-- end row -->
	
	  </div><!-- end container -->
	</div>
    <!--contact-->
    
	<%@ include file ="/include/Footer.jsp" %>
	 </div>
</body>
	<%@ include file ="/include/Js.jsp" %>
</html> 