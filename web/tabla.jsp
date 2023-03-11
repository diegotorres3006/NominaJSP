<%-- 
    Document   : tabla.jsp
    Created on : 15/11/2021, 07:33:47 PM
    Author     : diant
--%>

<%@page import="java.util.ArrayList"%>
<%@page import="modelo.Nomina"%>
<%@page import="modelo.Nomina"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
        <title>Nomina</title>  
    </head>
    <body>
        <h1 align="center">Lista de Empleados en Nomina</h1>
        <p style="text-align:center"><img src="Imagenes/agregar-usuario.png" width="90" height="90"></p>
     
        <table class="table table-hover" BORDER>
            <tr>
                <ol>
                <td style="text-align: center; vertical-align: middle;">Nombre</td>
                <td style="text-align: center; vertical-align: middle;">Identificacion</td>
                <td style="text-align: center; vertical-align: middle;">Salario Base</td>
                <td style="text-align: center; vertical-align: middle;">+ Aux transporte</td>
                <td style="text-align: center; vertical-align: middle;">- Salud</td>
                <td style="text-align: center; vertical-align: middle;">- Pension</td>
                <td style="text-align: center; vertical-align: middle;">Neto a Pagar</td>
                </ol>
            </tr>




            <%
                ArrayList<Nomina> nominas
                        = (ArrayList<Nomina>) request.getSession().getAttribute("nominas");

                for (int i = 0; i < nominas.size(); i++) {
                    out.println("<tr>");
                    out.println("<td>" + nominas.get(i).getNombre() + "</td>");
                    out.println("<td>" + nominas.get(i).getDni() + "</td>");
                    out.println("<td>" + nominas.get(i).getSalario() + "</td>");
                    out.println("<td>" + nominas.get(i).getAux() + "</td>");
                    out.println("<td>" + nominas.get(i).getSalud() + "</td>");
                    out.println("<td>" + nominas.get(i).getPension() + "</td>");
                    out.println("<td>" + nominas.get(i).neto() + "</td>");

                    out.println("</tr>");
                }
            %>    
        </table>
    <center><a href="index.jsp" value="Calcular" class="btn btn-success"> Inicio</a></center><br><br>
    <center> <input type="button" onclick="history.back()" name="Modificar Dato" value="Modifica"></center><br><br>

    </body>
</html>
