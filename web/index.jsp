<%-- 
    Document   : login
    Created on : 21/05/2018, 02:46:01 PM
    Author     : EDISON
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">

<head>
   
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
        
        
	<title>Iniciar Sesión</title>

	<!-- Google font -->
	<link href="https://fonts.googleapis.com/css?family=Hind:400,700" rel="stylesheet">

	<!-- Bootstrap -->
	<link type="text/css" rel="stylesheet" href="css/bootstrap.min.css" />

	<!-- Slick -->
	<link type="text/css" rel="stylesheet" href="css/slick.css" />
	<link type="text/css" rel="stylesheet" href="css/slick-theme.css" />

	<!-- nouislider -->
	<link type="text/css" rel="stylesheet" href="css/nouislider.min.css" />

	<!-- Font Awesome Icon -->
	<link rel="stylesheet" href="css/font-awesome.min.css">

	<!-- Custom stlylesheet -->
	<link type="text/css" rel="stylesheet" href="css/style.css" />
        
        <link rel="shortcut icon" href="favicon.ico" />


</head>

<body>
    
    <!-- header -->
    <header>
        <div id="header">
            <div class="container">
                <div class="pull-left">
                    <!-- Logo -->
                    <div class="header-logo">
                        <a class="logo">
                            <img src="./img/logo.png" alt="">
                        </a>
                    </div>
                    <!-- /Logo -->
                </div>
            </div>
        </div>
    </header>
    <!-- header -->
    
	<!-- NAVIGATION -->
	<div id="navigation">
		<!-- container -->
		<div class="container">
			<div id="responsive-nav">
				<!-- menu nav -->
				<div class="menu-nav">
					<span class="menu-header">Menu <i class="fa fa-bars"></i></span>
					<ul class="menu-list">
						<li><a></a></li>
                                        </ul>
				</div>
				<!-- menu nav -->
			</div>
		</div>
		<!-- /container -->
	</div>
	<!-- /NAVIGATION -->

	<!-- BREADCRUMB -->
	<div id="breadcrumb">
		<div class="container">
			<ul class="breadcrumb">
				
				<li class="active">Iniciar sesión</li>
			</ul>
		</div>
	</div>
	<!-- /BREADCRUMB -->

	<!-- SECTION -->
        <div class="section">
		<!-- container -->
		<div class="container">
			<!-- row -->
			<div class="row">
                            <h3 class="title">INFORMACIÓN DEL CLIENTE</h3>
                                <div class="section-title"></div>
         
                                    <form action="./ClienteServlet" method="POST">
                                        <table class="table-responsive">
                                            <tr> 
                                            <th> ID </th>
                                            <th><input type="text" name="id_Cliente" value="${id_Cliente}" required/> </th>
                                            </tr>
                                            <tr> 
                                                <th> <p>  </p> </th>
                                            </tr>     
                                            <tr>
                                                <th> CONTRASEÑA</th>
                                                <th><input type="password" name="contrasena" value="${contrasena}" required/> </th>
                                            </tr>
                                            <tr> </tr>
                                            <tr>
                                                <tr> 
                                                <th> <p>  </p> </th>
                                            </tr> 
                                            <tr>
                                                <td colspan="2">
                                                    <input class="primary-btn" type="submit" name="action" value="borrar" />
                                                    <button class="primary-btn"  ><a href="crear-cuenta.jsp" style="color:white">Crear cuenta</a></button>
                                                    <input class="primary-btn" type="submit" name="action" value="Search" />
                                                </td>

                                            </tr>

                                        </table>

                                    </form>
       	
			<!-- /row--> 
		</div>
		<!-- /container-->
	</div>
	<!-- /section -->
                    </div>

       
	<!-- FOOTER -->
	<footer id="footer" class="section section-grey">
		<!-- container -->
		<div class="container">
			<!-- row -->
			<div class="row">
				<!-- footer widget -->
				<div class="col-md-2 col-sm-4 col-xs-6">
					<div class="footer">
						<!-- footer logo -->
						<div class="footer-logo">
							<a class="logo">
                                                            <img src="./img/logo.png" alt="">
                                                        </a>
						</div>
						<!-- /footer logo -->

						<p>Empresa fundada con el especifico proposito de sacar un 5.0</p>

						<!-- footer social -->
						<ul class="footer-social">
							<li><a href="https://www.facebook.com/"><i class="fa fa-facebook"></i></a></li>
							<li><a href="https://twitter.com/?lang=es"><i class="fa fa-twitter"></i></a></li>
							<li><a href="https://www.instagram.com/?hl=es-la"><i class="fa fa-instagram"></i></a></li>
							<li><a href="https://plus.google.com/?hl=es"><i class="fa fa-google-plus"></i></a></li>
							<li><a href="https://co.pinterest.com/"><i class="fa fa-pinterest"></i></a></li>
						</ul>
						<!-- /footer social -->
					</div>                                       
                                </div> 
                        </div>
                 </div>
			<!-- /row -->
			
			<!-- row -->
			<div class="row">
				<div class="col-md-8 col-md-offset-2 text-center">
					<!-- footer copyright -->
					<div class="footer-copyright">
						<!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
						Copyright &copy;<script>document.write(new Date().getFullYear());</script> Todos los derechos reservados
						<!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
					</div>
					<!-- /footer copyright -->
				</div>
			</div>
			<!-- /row -->
                       
		</div>
		<!-- /container -->
	</footer>
	<!-- /FOOTER -->

	<!-- jQuery Plugins -->
	<script src="js/jquery.min.js"></script>
	<script src="js/bootstrap.min.js"></script>
	<script src="js/slick.min.js"></script>
	<script src="js/nouislider.min.js"></script>
	<script src="js/jquery.zoom.min.js"></script>
	<script src="js/main.js"></script>

</body>

</html>

