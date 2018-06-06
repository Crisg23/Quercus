<%-- 
    Document   : motores
    Created on : 21/05/2018, 02:47:00 PM
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

	<title>Quercus-Ford Fiesta</title>

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

	<!-- Icono de Ventana -->
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
                        <a class="logo" href="principal.jsp">
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
				<li><a href="principal.jsp">Inicio</a></li>
				<li>Vehiculos</li>
				<li class="active">Ford Fiesta</li>
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
				<!--  Product Details -->
				<div class="product product-details clearfix">
					<div class="col-md-9">
						<div id="product-main-view">
							<div class="product-view">
								<img src="./img/Ford-Fiesta.jpg" alt="">
							</div>
                                                    
							<div class="product-view">
								<img src="./img/Ford-Fiesta1.jpg" alt="">
							</div>
							<div class="product-view">
								<img src="./img/Ford-Fiesta2.jpg" alt="">
							</div>
							<div class="product-view">
								<img src="./img/Ford-Fiesta3.jpg" alt="">
							</div>
                                                        <div class="product-view">
								<img src="./img/Ford-Fiesta4.jpg" alt="">
							</div>
                                                        <div class="product-view">
								<img src="./img/Ford-Fiesta5.jpg" alt="">
							</div>
                                                    
						</div>
						<div id="product-view">
                                                    <div class="product-view">
								<img src="./img/Ford-Fiesta.jpg" alt="">
							</div>
							<div class="product-view">
								<img src="./img/Ford-Fiesta1.jpg" alt="">
							</div>
							<div class="product-view">
								<img src="./img/Ford-Fiesta2.jpg" alt="">
							</div>
							<div class="product-view">
								<img src="./img/Ford-Fiesta3.jpg" alt="">
							</div>
                                                        <div class="product-view">
								<img src="./img/Ford-Fiesta4.jpg" alt="">
							</div>
                                                        <div class="product-view">
								<img src="./img/Ford-Fiesta5.jpg" alt="">
							</div>
						</div>
					</div>
					<div class="col-md-3">
						<div class="product-body">
							<div class="product-label">
								<span>New</span>
								<span class="sale">-22%</span>
							</div>
							<h2 class="product-name">Ford Fiesta</h2>
							<h3 class="product-price">$35638200
                                                        <del class="product-old-price">$45'690.000</del></h3>

							<p><strong>Serial: </strong> 7183</p>
                                                        <p><strong>Garantía:</strong>  3 años o 100.00 Kilómetros</p>
							<div class="product-btns">
							<button class="primary-btn add-to-cart"><i class="fa fa-drivers-license" ></i><a href="cotizar.jsp"> Cotizar</a></button>
							</div>
						</div>
					</div>
					<div class="col-md-12">
						<div class="product-tab">
							<ul class="tab-nav">
								<li class="active"><a data-toggle="tab" href="#tab">Description</a></li>
								<li><a data-toggle="tab" href="#tab1">Details</a></li>
							</ul>
							<div class="tab-content">
								<div id="tab" class="tab-pane fade in active">
                                                                    <p>
                                                                        Con una pantalla táctil de 6.5” y el poder de tu voz a plenitud, 
                                                                        el sistema SYNC®3 te vinculará de una forma más inteligente y segura con las
                                                                        tecnologías disponibles del vehículo y sus dispositivos digitales. Usando sencillos comandos de voz, 
                                                                        controlas el teléfono y el entretenimiento.</p>

                                                                    <p> Una forma más inteligente y segura de usar tu celular mientras conduces. 
                                                                        Las cosas que quieres hacer con tu celular aparecen directamente en la pantalla de 6.5” del Fiesta, 
                                                                        gracias a CarPlay y Android Auto. Desde obtener direcciones y enviar mensajes, hasta llamar por teléfono
                                                                        y escuchar la música almacenada en tu dispositivo, todo sin apartar los ojos del camino.
                                                                        Solo debes conectar tu celular al puerto USB y ya cuentas con el mejor copiloto.</p>

                                                                    <p> Permite controlar la calefacción y refrigeración indicando las temperaturas, la velocidad del ventilador y 
                                                                        las salidas de aire deseadas. </p>

                                                                    <p> El sistema de acceso sin llave detecta la presencia del control remoto cuando está cerca del Fiesta,
                                                                        permitiéndote ingresar al vehículo o abrir el baúl sin necesidad de sacarlo del bolsillo.
                                                                        Una vez que el control remoto se encuentra dentro del vehículo, podrás encender el motor pulsando un botón.</p>

                                                                    <p> Las luces altas del tráfico que te iluminen desde atrás dejarán de ser una molestia por cuenta de su espejo 
                                                                        interior electrocrómico que se oscurece de forma automática cuando el nivel de luz que refleja es muy elevado.</p>

                                                                    <p> El Ford Fiesta cuenta con sensores de reversa de fábrica, los cuales te brindarán una ayuda extra al 
                                                                        momento de estacionar el vehículo.</p>

                                                                    <p> Ubicando el interruptor de los faros en la posición ‘Auto’, estos se activarán por sí solos cuando un
                                                                        foto-sensor detecte condiciones de baja luminosidad en el exterior.</p>

                                                                    
                                                                    
								</div>
                                                                <div id="tab1" class="tab-pane fade in active">
                                                                        <p> <strong>Color:</strong>  Azul </p>
                                                                        <p> <strong>Tipo:</strong> 4x2 </p>
                                                                        <p> <strong>Motor:</strong> 1.6 litros</p>
                                                                        <p> <strong>Potencia:</strong> 120 caballos de fuerza</p>
                                                                        <p><strong>Pasajeros:</strong>  5</p>    
								</div>
							</div>
						</div>
					</div>

				</div>
				<!-- /Product Details -->
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

