<%-- 
    Document   : index
    Created on : 15/11/2021, 04:20:38 PM
    Author     : diant
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
        <title>Ingresar Empleado</title>
    </head>

    <body>
        <div class="card-body">
            <center><form  action="proceso.do" method="POST" >
                    <p style="text-align:center"><img src="Imagenes/nomina.png" width="350" height="200"></p>
                     <fieldset>
                    <legend>Nomina de Empleados</legend>
                    <div style="width: 20%">
                        <input style="text-align:center" type="text" placeholder="Ingrese Nombre de Empleado" required="required" class="form-control" name="txtNom"><br><br>
                    </div>
                    <div style="width: 20%">
                        <input style="text-align:center" type="text" placeholder="Ingrese Identificacion" required="required" class="form-control" name="txtDni"><br><br>
                    </div>
                    <div style="width: 20%">
                        <input style="text-align:center" type="number" placeholder="   Ingrese Salario de Empleado" required="required" class="form-control" name="txtSal"><br><br>
                    </div>
                    <div style="width: 20%">
                        <input style="text-align:center" type="number" placeholder="    Ingrese dias Laborados" required="required" class="form-control" name="txtDia"><br><br>
                    </div>
                     </fieldset>

                    <input type="submit" value="Calcular" class="btn btn-success" />

                </form></center>   
        </div>
    </body>
</html>
