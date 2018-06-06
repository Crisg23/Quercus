<%-- 
    Document   : concesionarios
    Created on : 21/05/2018, 02:44:05 PM
    Author     : EDISON
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

    <head>

        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->

        <title>Concesionarios</title>

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

        <!--Estilo del mapa-->
        <style>
            #map {
                height: 400px;
                width: 100%;
            }
        </style>
        

    </head>

    <body>
       <!-- /HEADER -->
    <header>
        <form action="./ClienteServlet" method="POST"></form>
        <div id="header">
            <div class="container">
                <div class="pull-left">
                    <!-- Logo -->
                    <div class="header-logo">
                        <a class="logo" href="principal.jsp">
                            <img src="./img/logo.png" alt="">
                        </a>
                    </div>
                    <!-- /Logo -->
                </div>
            </div>
        </div>
    </header>
    <!-- /HEADER -->

    <!-- NAVIGATION -->
    <div id="navigation">
        <!-- container -->
        <div class="container">
            <div id="responsive-nav">
                <!-- menu nav -->
                <div class="menu-nav">
                    <span class="menu-header">Menu <i class="fa fa-bars"></i></span>
                    <ul class="menu-list">
                        <li><a href="principal.jsp">Inicio</a></li>
                        <li class="dropdown mega-dropdown"><a class="dropdown-toggle" data-toggle="dropdown" aria-expanded="true">Vehiculos <i class="fa fa-caret-down"></i></a>
                            <div class="custom-menu">
                                <div class="row">
                                    <div class="col-md-6">
                                        <ul class="list-links">
                                            <li>
                                                <h3 class="list-links-title">2x4</h3></li>
                                            <li><a href="product-page-Chevrolet-Camaro.jsp">Chevrolet Camaro</a></li>
                                            <li><a href="product-page-Chevrolet-Cruze.jsp">Chevrolet Cruze</a></li>
                                            <li><a href="product-page-Chevrolet-Onix.jsp">Chevrolet Onix</a></li>
                                            <li><a href="product-page-Ford-Fiesta.jsp">Ford Fiesta</a></li>
                                            <li><a href="product-page-Ford-Fusion.jsp">Ford Fusion</a></li>
                                            <li><a href="product-page-Ford-Mustang.jsp">Ford Mustang</a></li>
                                        </ul>
                                        <hr class="hidden-md hidden-lg">
                                    </div>
                                    <div class="col-md-6">
                                        <ul class="list-links">
                                            <li>
                                                <h3 class="list-links-title">4x4</h3></li>
                                            <li><a href="product-page-Chevrolet-Equinox.jsp">Chevrolet Equinox</a></li>
                                            <li><a href="product-page-Chevrolet-Tahoe.jsp">Chevrolet Tahoe</a></li>
                                            <li><a href="product-page-Chevrolet-Trailblazer.jsp">Chevrolet Trailblazer</a></li>
                                            <li><a href="product-page-Ford-Edge.jsp">Ford Edge</a></li>
                                            <li><a href="product-page-Ford-Escape.jsp">Ford Escape</a></li>
                                            <li><a href="product-page-Ford-Explorer.jsp">Ford Explorer</a></li>
                                        </ul>
                                        <hr class="hidden-md hidden-lg">
                                    </div>

                                </div>
                                <div class="row hidden-sm hidden-xs">
                                    <div class="col-md-12">
                                        <hr>
                                        <a class="banner banner-1" href="vehiculos.jsp">
                                            <img src="./img/banner05.jpg"  height="200" alt="">
                                            <div class="banner-caption text-center">
                                                <h2 class="white-color">TODOS LOS VEHÍCULOS</h2>
                                            </div>
                                        </a>
                                    </div>
                                </div>
                            </div>
                        </li>
                        <li class="dropdown mega-dropdown "><a class="dropdown-toggle" data-toggle="dropdown" aria-expanded="true">Piezas y Motores <i class="fa fa-caret-down"></i></a>
                            <div class="custom-menu">
                                <div class="row">
                                    <div class="col-md-6">
                                        <div class="hidden-sm hidden-xs">
                                            <a class="banner banner-1" href="partes.jsp">
                                                <img src="./img/banner06.jpg" alt="">
                                                <div class="banner-caption text-center">
                                                    <h3 class="white-color text-uppercase">Piezas</h3>
                                                </div>
                                            </a>
                                            <hr>
                                        </div>
                                        <ul class="list-links">
                                            <li>

                                            <li><a href="product-page-sensorDeFlujo.jsp">Sensor flujo de aire</a></li>
                                            <li><a href="product-page-inyectorTech.jsp">Inyector Tech</a></li>
                                            <li><a href="product-page-radiadorDeAluminio.jsp">Radiador de aluminio</a></li>
                                            <li><a href="product-page-tapaDeValvula.jsp">Tapa de válvula</a></li>
                                            <li><a href="product-page-tapasDelanteraDeCeramica.jsp">Tapas delantera de cerámica</a></li>
                                            <li><a href="product-page-ejeDeLevas.jsp">Eje de levas</a></li>
                                        </ul>
                                    </div>

                                    <div class="col-md-6">
                                        <div class="hidden-sm hidden-xs">
                                            <a class="banner banner-1" href="motores.jsp">
                                                <img src="./img/banner09.jpg" alt="">
                                                <div class="banner-caption text-center">
                                                    <h3 class="white-color text-uppercase">Motores</h3>
                                                </div>
                                            </a>
                                        </div>
                                        <hr>
                                        <ul class="list-links">
                                            <li>

                                            <li><a href="product-page-Motor-800cc.jsp">Motor 800cc Cerebro Electrónico</a></li>
                                            <li><a href="product-page-Motor-Chrysler-Dodge.jsp">Motor Chrysler Dodge Ram 318</a></li>
                                            <li><a href="product-page-Motor-Chrysler.jsp">Motor Chrysler</a></li>
                                            <li><a href="product-page-Motor-Cummins.jsp">Motor Diesel Cummins 6ct</a></li>

                                        </ul>
                                    </div>
                                </div>
                            </div>
                        </li>
                        <li><a href="concesionarios.jsp">Concesionarios</a></li>
                        <li> 
                            <form  action="./ClienteServlet" method="POST">
                            <input style="color:white" class="btn-link" type="submit" name="action" value="CLIENTES"/>
                            </form>
                        </li>
                        <li>
                            <form name="reporte" action="/Quercus_Tienda/rptQuercus" target="_blank">
                            <input style="color:white" class="btn-link" type="submit" name="botonVer" value="GENERAR REPORTE"/>
                            </form>
                        </li>  
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
                    <li><a href="#">Inico</a></li>
                    <li class="active">Concesionarios</li>
                </ul>
            </div>
        </div>
        <!-- /BREADCRUMB -->

        <!-- section -->
        <div class="section">
            <!-- container -->
            <div class="container">
                <!-- row -->
                <div class="row">
                    <form id="checkout-form" class="clearfix">
                        <div class="col-md-6">
                            <div class="billing-details">
                                <div class="section-title">
                                    <h3 class="title">Mapa de concesionarios</h3>
                                </div>
                                <div id="map"></div>
                                <script>
                                    function initMap() {
                                        var centroDeMapa = {lat: 5.068853, lng: -75.513983};
                                        var medallo1 = {lat: 6.232508, lng: -75.569829};
                                        var bogota1 = {lat: 4.710285, lng: -74.075514};
                                        var bogota2 = {lat: 4.689365, lng: -74.059132};
                                        var cali = {lat: 3.473726, lng: -76.519747};
                                        var map = new google.maps.Map(document.getElementById('map'), {
                                            zoom: 7,
                                            center: centroDeMapa
                                        });
                                        var markerM1 = new google.maps.Marker({
                                            position: medallo1,
                                            map: map
                                        });
                                        var markerB1 = new google.maps.Marker({
                                            position: bogota1,
                                            map: map
                                        });
                                        var markerB2 = new google.maps.Marker({
                                            position: bogota2,
                                            map: map
                                        });
                                        var markerC = new google.maps.Marker({
                                            position: cali,
                                            map: map
                                        });

                                    }
                                </script>
                                <script async defer
                                        src="https://maps.googleapis.com/maps/api/js?key=AIzaSyCcdTFSlZAtKvUH2rPWt9nim1TEY0QhBKo&callback=initMap">
                                </script>
                            </div>
                        </div>

                        <div class="col-md-6">
                            <div class="shiping-methods">
                                <div class="section-title">
                                    <h4 class="title">Direcciones</h4>
                                </div>

                                <label>Bogotá</label>
                                <div class="caption">
                                    <p>NIZA - Calle 127 # 71-103.</p>
                                    <p>PASADENA - Calle 102a # 47-56.</p>
                                </div>

                                <label>Medellín</label>
                                <div class="caption">
                                    <p>SAN DIEGO - Carrera 43a # 33-78.</p>
                                </div>

                                <label>Cali</label>
                                <div class="caption">
                                    <p>PRADOS DEL NORTE - Avenida 3 Norte # 37-43.</p>
                                </div>

                            </div>
                        </div>
                    </form>
                </div>
                <!-- /row -->
            </div>
            <!-- /container -->
        </div>
        <!-- /section -->

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
							<a class="logo" href="principal.jsp">
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
                                <div>
                                <form action="./ClienteServlet" method="POST"> 
                                    <ol class="footer dropdown default-dropdown">
							<div class="dropdown-toggle" role="button" data-toggle="dropdown" aria-expanded="true">
                                                            <i class="fa fa-user-o"></i>
								<strong class="text-uppercase">Mi Cuenta:  ${cliente}<i class="fa fa-caret-down"></i></strong>
							</div>
							<a href="index.jsp" class="text-uppercase">Login</a> / <a href="crear-cuenta.jsp" class="text-uppercase">Join</a>
							<ul class="custom-menu">
								<li><a href="comprar.jsp"><i class="fa fa-money"></i> Pagar</a></li>
								<li><a href="index.jsp"><i class="fa fa-close"></i> Cerrar Sesión</a></li>
							</ul>
                                    </ol>
                                </form>
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

