<%-- 
    Document   : index
    Created on : 13 dic 2022, 19:17:47
    Author     : Melisa
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Huellitas</title>
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
                        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarTogglerDemo01" aria-controls="navbarTogglerDemo01" aria-expanded="false" aria-label="Toggle navigation">
                            <span class="navbar-toggler-icon"></span>
                        </button>
                        <div class="collapse navbar-collapse" id="navbarTogglerDemo01">
                            <ul class="navbar-nav mb-2 mb-lg-0 ms-auto">
                                <li class="nav-item">
                                    <a class="nav-link mx-4" aria-current="page" href="#index">HOME</a>
                                </li>
                                <li class="nav-item">
                                    <a class="nav-link mx-4" aria-current="page" href="Controlador?accion=listar">REGISTRO DE PACIENTES</a>
                                </li>
                            </ul>
                        </div>
                    </div>
                </nav>
            </div>    
        </header>
        <main class="container">        
            <div class="row">
                <div class="col-sm-12 col-lg-5 g-0">
                    <img class="img-fluid" src="images\gatito.png" alt="Gato">
                </div>
                <div class="col-sm-12 col-lg-7">
                    <h1>Huellitas</h1>
                    <h3>Veterinaria</h3>
                    <h2>Gestión administrativa <br> de pacientes</h2>
                    <a href="https://github.com/melirossi" target="_blank"><button type="button" class="btn mt-4  mb-4">Más información</button></a>
                </div>
            </div>
        </main>
        <!-- JavaScript Bundle with Popper -->
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4" crossorigin="anonymous"></script>
    </body>
</html>
