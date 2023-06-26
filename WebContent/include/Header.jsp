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
          <a class="navbar-brand bg-primary" href="#about" color:"#00FFFF"; > Aymen</a>
        </div>
        
        <!-- Collect the nav links, forms, and other content for toggling -->
        <div class="collapse navbar-collapse" id="NavCol">
         <ul class="nav navbar-nav navbar-right">
           
            <li class="current"><a href="#about" class="linear">Home</a></li>
            <li><a href="#aboutMore" class="linear">About</a></li>
            <li><a href="#contact" class="linear">Contact</a></li>
          </ul>
        
         
        </div><!-- /.navbar-collapse -->
        </div><!-- /.container-fluid -->
    </nav>
	  
	</div>
    <!-- Full Page Image Header Area -->
    <div id="about" class="header" style=" background: url(<%= request.getContextPath() %>/template/img/st.jpg) no-repeat center fixed ">

	<div class="maskHeader"></div>
	<div class="main-caption">
		<div class="logo">
			<img src="<%= request.getContextPath() %>/template/img/onee.png" alt="logo" width="180px"/>
		</div>
			<!-- slider -->
	<div id="flex-head" class="flexslider">
		<ul class="slides">
			<li>
				<h1>Office National de l'Electricité et l'Eau Potable </h1>	
				<h2>Branche Eau </h2>
			</li>
			<li>
				<h1>Gestion De Stock </h1>	
				<h2> 2016/2017  </h2>
			</li>
			<li>
				<h1> Aymane Souiat </h1>	
				<h2> 2 éme année Génie Logiciel et Réseau</h2>	
			</li>
		</ul>
	</div> 
    <!-- end slider --> 
		<a href="Login.jsp" class="btn btnAbout btn-clear border-color color-primary btn-lg linear"> Se Connecter </a>
	</div><!--  end main caption -->
			
    </div>