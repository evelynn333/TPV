<%-- 
    Document   : listar.jsp
    Created on : 15-nov-2021, 17:36:24
    Author     : DAW-A
--%>

<%@page import="java.util.List"%>
<%@page import="modelo.Productos"%>
<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
    </head>
    <body>
        <div class="container">
        <h1>Listado de productos por nombre</h1>
         <% 
            List<Productos> listaProductos = (List<Productos> ) request.getAttribute("listado");  
            String mensaje = (String) request.getAttribute("mensaje");
         %>
         <h2><%=mensaje%></h2>
            <table  class="table table-hover">
           <% for ( Productos p: listaProductos) { %>
           <tr>
               <td>
                  <%=p.getId()  %>
               </td>
               <td>
                  <%=p.getNombre()  %>
               </td>
                <td>
                  <%=p.getCategoria()  %>
               </td>
               <td>
                  <%=p.getPrecio()  %>
               </td>
              <td>
                  <a href="Servlet?op=borrar&id=<%=p.getId()%>">Borrar</a>
               </td>
           </tr>          
            <% } %>
             </table>
             </div>
    </body>
</html>
