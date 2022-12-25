<%-- 
    Document   : listar
    Created on : 13 dic 2022, 19:23:19
    Author     : Melisa
--%>

<%@page import="java.util.Iterator"%>
<%@page import="java.util.List"%>
<%@page import="modelo.Mascota"%>
<%@page import="modeloDAO.MascotaDAO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Pacientes</title>
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
                                    <a class="nav-link mx-4" aria-current="page" href="Controlador?accion=index">HOME</a>
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
        <main class="container mb-4">        
            <div class="row">
                <div class="col-12 g-0">
                    <h1>Pacientes</h1>
                </div>
                <div class="col-12 mt-4 mb-4">
                    <a href="Controlador?accion=add"><button type="button" class="btn">Agregar nuevo paciente</button></a>
                </div>
            </div>
            <div class="table-responsive">
            <table class="table table-hover">
                <thead class="table-secondary">
                    <tr>
                        <th>ID</th>
                        <th>Nombre</th>
                        <th>Especie</th>
                        <th>Edad</th>
                        <th>Género</th>
                        <th>Dueño</th>
                        <th>Telefono</th>
                        <th>Acciones</th>
                    </tr>
                </thead>
                <%
                    MascotaDAO dao = new MascotaDAO();
                    List<Mascota>list = dao.listar();
                    Iterator<Mascota> iter = list.iterator();
                    Mascota mas = null;

                    while (iter.hasNext()){
                        mas = iter.next();                
                %>
                <tbody>
                    <tr>
                        <th scope="row"><%= mas.getId()%></th>
                        <td><%= mas.getNom()%></td>
                        <td><%= mas.getEsp()%></td>
                        <td><%= mas.getEdad()%></td> 
                        <td><%= mas.getSex()%></td>
                        <td><%= mas.getDue()%></td>
                        <td><%= mas.getTel()%></td>
                        <td>
                            <a href="Controlador?accion=editar&Id=<%=mas.getId()%>">Editar - </a>
                            <a href="Controlador?accion=eliminar&Id=<%=mas.getId()%>">Eliminar</a>
                        </td>
                    </tr>
                <%
                    }
                %>    
                </tbody>           
            </table>
            </div>
        </main>        
        <!-- JavaScript Bundle with Popper -->
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4" crossorigin="anonymous"></script>
    </body>
</html>
