<%--
  Created by IntelliJ IDEA.
  User: betja
  Date: 30/07/2022
  Time: 03:44 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<nav class="navbar navbar-expand-lg bg-light">
    <div class="container-fluid">
        <img src="https://assets.stickpng.com/images/585e4beacb11b227491c3399.png" style="width: 50px; height: 50px; margin-right: 10px">
        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <span class="navbar-text">
                <c:out value="${sessionScope.get('name')}"/>
            </span>
        <div class="collapse navbar-collapse" id="navbarSupportedContent">
            <ul class="navbar-nav me-auto mb-2 mb-lg-0">
                <li class="nav-item">
                    <a class="nav-link active" aria-current="page" href="#">Página principal</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="list-persons">Administrar datos</a>
                </li>
            </ul>
            <form action="logout" class="d-flex" role="search">
                <button class="btn btn-outline-danger" type="submit">Salir</button>
            </form>
        </div>
    </div>
</nav>