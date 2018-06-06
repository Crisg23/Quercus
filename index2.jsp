<%-- 
    Document   : login
    Created on : May 29, 2018, 7:00:45 AM
    Author     : juan.rios27
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Login</title>
    </head>
    <body>
        

        <h1>Información del cliente</h1>
        <form action="./ClienteServlet" method="POST">
            <table>
                <tr>
                    <th> Identificación</th>
                    <th><input type="text" name="id_Cliente" value="${id_Cliente}" /> </th>
                </tr>
               
                    <th> contraseña</th>
                    <th><input type="password" name="contrasena" value="${contrasena}"/> </th>
                </tr>
                
                <tr>
                   
                    <td colspan="2">
                        <input type="submit" name="action" value="Search" />


                    </td>
                    
                </tr>

            </table>

    </body>
</html>

