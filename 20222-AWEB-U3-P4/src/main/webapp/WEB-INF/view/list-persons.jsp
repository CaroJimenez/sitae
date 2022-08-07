<%--
  Created by IntelliJ IDEA.
  User: CA2-PC-
  Date: 28/06/2022
  Time: 12:43 p. m.
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!doctype html>
<html lang="en">
<head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">

<style>
    @import url('https://fonts.googleapis.com/css2?family=Montserrat:wght@600&family=Rubik&display=swap');



    body{
        background: linear-gradient(60deg , #012d5f 50%, #029475 50%);
        font-family: 'Montserrat', sans-serif;
    }
    #upload-files{
        margin-top: 20px;
        margin-left: 55px;
        background: #d0d0d0;
        border-radius: 10px;
        text-align: center;
        border-color: white;
        -webkit-box-shadow: 7px -6px 0px 7px #A6A6A6;
        box-shadow: 7px -6px 0px 7px #A6A6A6;
    }
    #upload-files h4{
        color: rgba(0, 0, 0, 0.45);
    }
    div {
        border-radius: 10px;
    }
    .btn-editar{
        color: #fff;
        border-radius: 10px;
        background-color: #012d5f;
        padding: 5px 10px;
        cursor: pointer;
        width: 100px;
        font-size: 15px;
        width: 250px;
        margin-left: 60px;
    }
.btn-eliminar{
    color: #fff;
    border-radius: 10px;
    background-color: #9b0202;
    padding: 5px 10px;
    cursor: pointer;
    width: 100px;
    font-size: 15px;

}

</style>
</head>
<body>
<jsp:include page="../templates/menu.jsp"/>

<div class="container" id="upload-files">
    <h4 style="margin-top: 30px">Subir datos de instructores</h4>
    <input type="file" style="margin-bottom: 20px">

    <h4 style="margin-top: 30px">Subir datos de talleres</h4>
    <input type="file" style="margin-bottom: 20px">
</div>



<div class="container mt-3" style="background: #d0d0d0">


    <h1 class="text-center">Lista de instructores</h1>

    <div class="row justify-content-center mb-2">
        <div class="col-10">
            <div class="row justify-content-end">
                <div class="col-10">

                    <c:if test="${param['result-save']}">

                        <c:if test="${param['result-save']=='ok'}">
                        Persona bien
                </div>
                        </c:if>
                        <c:if test="${param['result-save']=='error'}">
                  mal
            </div>
                        </c:if>
                    </c:if>
                </div>
                <div class="col-2 text-end">
                    <a href="create-person" class="btn btn-primary" >Registrar manualmente</a>
                </div>
            </div>
        </div>


    <div class="row justify-content-center">
        <div class="col-10">
            <table class="table table-hover table-bordered table-striped" style="background: rgba(255,255,255,0.92);">
                <thead>
                <tr>
                    <th>#</th>
                    <th>Nombre</th>
                    <!--<th>Edad</th>-->
                    <th>Correo</th>
                    <th>Contraseña</th>
                    <th>Acciones</th>
                </tr>
                </thead>
                <tbody>
                <c:forEach items="${list}" var="person">
                    <tr>
                        <td><c:out value="${person.id}"/></td>
                        <td><c:out value="${person.name}"/></td>
                        <td><c:out value="${person.email}"/> </td>
                        <td><c:out value="${person.password}"/> </td>
                        <td>

                            <div class="row justify-content-center">
                                <div class="col-6">
                                    <a href="get-person?id=${person.id}"  class="btn-editar">
                                        <i class="fa-solid fa-magnifying-glass"></i> Editar
                                    </a>
                                </div>

                                <div class="col-6">
                                    <form action="delete-person" method="post" class="d-inline">

                                        <input type="hidden" name="id" value="${person.id}">

                                        <button type="submit" class="btn btn-danger">
                                            <i class="fa-solid fa-trash"></i> Eliminar
                                        </button>
                                    </form>
                                </div>

                            </div>



                        </td>
                    </tr>
                </c:forEach>
                </tbody>
            </table>
        </div>
    </div>




<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
<script src="https://kit.fontawesome.com/d35d510498.js" crossorigin="anonymous"></script>

</body>
</html>
