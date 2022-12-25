<%-- 
    Document   : add
    Created on : 13 dic 2022, 19:22:48
    Author     : Melisa
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Nuevo paciente</title>
        <link rel="icon" href="images\Lilac Cat Pet Shops Logo.png">
        <!-- CSS only -->
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous">
        <link rel="stylesheet" type="text/css" href="css/style.css">
    </head>
    <body>
        <header class="container-fluid header" id="index">
            <div class="row">
                <nav class="navbar navbar-expand-lg p-1">
                    <div class="container-fluid">
                        <a class="navbar-brand mx-3">
                            <img class="img-fluid" src="images\Lilac Cat Pet Shops Logo.png" alt="Logo" width="70px">
                        </a>                        
                    </div>
                </nav>
            </div>    
        </header>
        <main class="container">        
            <div class="row">
                <div class="col-12 g-0">
                    <h3>Agregar nuevo paciente</h3>
                </div>
            </div>
            <form action="Controlador">
                <div class="row">
                    <div class="col-lg-6 col-sm-12">
                        <input type="text" name="txtNom" class="form-control" id="txtNom" placeholder="Nombre">
                    </div>
                    <div class="col-lg-6 col-sm-12">
                        <input type="text" name="txtEsp" class="form-control" id="txtEsp" placeholder="Especie">
                    </div>
                    <div class="col-lg-6 col-sm-12">
                        <input type="text" name="txtEdad" class="form-control" id="txtEdad" placeholder="Edad"> 
                    </div>
                    <div class="col-lg-6 col-sm-12">
                        <input type="text" name="txtSexo" class="form-control" id="txtSexo" placeholder="Género (F / M)">
                    </div>
                    <div class="col-lg-6 col-sm-12">
                        <input type="text" name="txtDue" class="form-control" id="txtDue" placeholder="Dueño">
                    </div>
                    <div class="col-lg-6 col-sm-12">
                        <input type="text" name="txtTel" class="form-control" id="txtTel" placeholder="Teléfono">
                    </div>
                </div>
                <div class="row">      
                    <div class="col-lg-6 col-sm-12 text-lg-end mt-4">
                        <input type="submit" name="accion" value="Agregar" class="btn ok">
                    </div>
                    <div class="col-lg-6 col-sm-12 text-lg-start mt-4 mb-5">
                        <a href="Controlador?accion=listar"><button type="button" class="btn return">Regresar</button></a>
                    </div>
                </div>
            </form>
        </main>
        <!-- JavaScript Bundle with Popper -->
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4" crossorigin="anonymous"></script>
    </body>
</html>
