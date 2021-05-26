<%-- 
    Document   : index.jsp
    Created on : 26-may-2021, 16:38:37
    Author     : DAW-A
--%>

<%@page import="modelo.Prestamo"%>
<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Banco Bosco</h1>
        <h2>Solicitud de préstamos</h2>
         <% 
            ArrayList<String> listaMeses = ( ArrayList<String> ) request.getAttribute("listaMeses");
             //ArrayList<ValorPorMes> listaValoraciones = ( ArrayList<ValorPorAnio> ) request.getAttribute("listaValoraciones");
           String nombre=( String ) request.getAttribute("nombre");
           if (nombre==null) {
               nombre="";
           }
           Prestamo miPrestamo = ( Prestamo ) request.getAttribute("miPrestamo");
            double cantidad=0;
            double interes=0;
            int tiempo=0;
            
            
            
        %>
        <form action="servletPrestamo">
        Nombre:<input type="text" name="nombre"><br>
        Capital:<input type="text"name="capital"><br>
        Interes:<input type="text" name="interes"><br>
        Tiempo(en meses):<select name="tiempo">
             <%

                        for ( String a: listaMeses ){
                          String cadenaSelected="";
                          if ( Integer.parseInt(a)==tiempo){
                              cadenaSelected = " selected ";
                          }
                          out.println("<option value=" + a + cadenaSelected+ ">" + a + "</option>" );
                      }
                       %>
        </select>
    <p><input type="submit"></p>
    <h1>Valor Actual <%=miPrestamo %></h1>
        </form>
        
    </body>
</html>
