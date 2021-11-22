<%-- 
    Document   : actualizar.jsp
    Created on : 22-nov-2021, 17:42:58
    Author     : DAW-A
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Producto</h1>
        <%
         String mensaje = (String) request.getAttribute("mensaje");
         if(mensaje!=null)out.println(mensaje);
                
        %>
        <form action="Servlet">
            <input type="text" value="actualizardatos" name="op">
            <p>Id:<input class="form-control" type="text" value="${producto.id}" name="id" readonly ></p>
            <p>Nombre:<input class="form-control" type="text" value="${producto.nombre}" name="nombre"></p>
            <p>Categoria:<input class="form-control" type="text" value="${producto.categoria}" name="categoria"></p>
            <p>Precio:<input class="form-control" type="text" value="${producto.precio}" name="precio"></p>
            <p>Imagen:<input class="form-control" type="text" value="${producto.imagen}" name="imagen"></p>

            <input type="submit" value="Actualizar Producto">
        </form>
    </body>
</html>
