<%-- 
    Document   : prueba
    Created on : 26-may-2018, 9:57:37
    Author     : Vanessa
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="shortcut icon" href="favicon.ico" />
        <title>Registro</title>
        
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
                        </div>
                </div>
        </div>
    <!-- NAVIGATION -->
    
    <!-- BREADCRUMB -->
	<div id="breadcrumb">
		<div class="container">
			<ul class="breadcrumb">
				<li class="active">Crear Cuenta</li>
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
                            <h3 class="title">REGISTRO  CLIENTE</h3>
                                <div class="section-title"></div>
   
        <form action="./ClienteServlet" method="POST">
            <table class="table-responsive">
                <tr>
                    <th> Identificación <i class="fa fa-address-card-o"</th>
                    <th><input type="text" name="id_Cliente" value="${id_Cliente}" onkeypress="return solonumero(event)" required /> </th>
                </tr>
                
                 <tr> 
                    <th> <p>  </p> </th>
                </tr>  

                <tr>
                    <th> Nombres <i class="fa fa-address-book-o"></i></th>
                    <th><input type="text" name="nombres" value="${nombres}" onkeypress="return soloLetras(event)" required/> </th>
                </tr>
                
                 <tr> 
                    <th> <p>  </p> </th>
                </tr>  

                <tr>
                    <th> Apellidos <i class="fa fa-address-book-o"></i></th>
                    <th><input type="text" name="apellidos" value="${apellidos}" onkeypress="return soloLetras(event)" required/> </th>
                </tr>
                
                 <tr> 
                    <th> <p>  </p> </th>
                </tr>  

                <tr>
                    <th> E_mail <i class="fa fa-at"></i></th>
                    <th><input type="text" name="e_mail" value="${e_mail}" /> </th>
                </tr>
                
                 <tr> 
                    <th> <p>  </p> </th>
                </tr>  

                <tr>
                    <th> Telefono <i class="fa fa-phone"></i></th>
                    <th><input type="text" name="telefono" value="${telefono}" onkeypress="return solonumero(event)" /> </th>
                </tr>
                
                 <tr> 
                    <th> <p>  </p> </th>
                </tr>  

                <tr>
                    <th> Ciudad <i class="fa fa-building-o"></i> </th>
                    <th><input type="text" name="ciudad" value="${ciudad}" onkeypress="return soloLetras(event)" /> </th>
                </tr>
                
                 <tr> 
                    <th> <p>  </p> </th>
                </tr>  

                <tr>
                <th>  Contraseña <i class="fa fa-key"></i> </th>
                    <th><input type="password" name="contrasena" value="${contrasena}" required/> </th>
                </tr>
                
                <tr> 
                    <th> <p>  </p> </th>
                </tr>  
                <script>
                    function solonumero(e) {
                        key = e.keyCode || e.which;
                        teclado = String.fromCharCode(key);
                        numeros = "0123456789";
                        especiales = "8-37-38-46";//array
                        teclado_especial = false;

                        for (var i in especiales) {
                            if (key == especiales[i]) {
                                teclado_especial = true;
                            }
                        }
                        if (numeros.indexOf(teclado) == -1 && !teclado_especial) {
                            return false;
                        }
                    }
                </script>
                <script>
                    function soloLetras(e) {
                        key = e.keyCode || e.which;
                        tecla = String.fromCharCode(key).toLowerCase();
                        letras = " áéíóúabcdefghijklmnñopqrstuvwxyz";
                        especiales = "8-37-39-46";

                        tecla_especial = false
                        for (var i in especiales) {
                            if (key == especiales[i]) {
                                tecla_especial = true;
                                break;
                            }
                        }

                        if (letras.indexOf(tecla) == -1 && !tecla_especial) {
                            return false;
                        }
                    }
                </script>
                <tr>
                    <td colspan="2">
                        <input class="primary-btn " type="submit" name="action" value="Add" /> 
                    </td>
                <p> ¿Ya tienes cuenta? <a href="index.jsp">Inicia Sesión</a></p>
                <p></p>
                </tr>

            </table>
        </form>
                        </div>
                </div>
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

    </body>
</html>
