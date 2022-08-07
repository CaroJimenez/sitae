<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="Mark Otto, Jacob Thornton, and Bootstrap contributors">
    <meta name="generator" content="Hugo 0.101.0">
    <title>Inicio de sesión SITAE</title>

    <link rel="canonical" href="https://getbootstrap.com/docs/5.2/examples/sign-in/">





    <link href="https://getbootstrap.com/docs/5.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-gH2yIJqKdNHPEq0n4Mqa/HGKIhSkIHeL5AyhkYV8i59U5AR6csBvApHHNl/vI1Bx" crossorigin="anonymous">

    <!-- Favicons -->
    <link rel="apple-touch-icon" href="/docs/5.2/assets/img/favicons/apple-touch-icon.png" sizes="180x180">
    <link rel="icon" href="/docs/5.2/assets/img/favicons/favicon-32x32.png" sizes="32x32" type="image/png">
    <link rel="icon" href="/docs/5.2/assets/img/favicons/favicon-16x16.png" sizes="16x16" type="image/png">
    <link rel="manifest" href="/docs/5.2/assets/img/favicons/manifest.json">
    <link rel="mask-icon" href="/docs/5.2/assets/img/favicons/safari-pinned-tab.svg" color="#712cf9">
    <link rel="icon" href="/docs/5.2/assets/img/favicons/favicon.ico">
    <meta name="theme-color" content="#712cf9">


    <style>
        @import url('https://fonts.googleapis.com/css2?family=Montserrat:wght@600&family=Rubik&display=swap');
        *{

        }

        input::placeholder{
            color: black;
            opacity: 0.70 ;
        }
        #tittle{
            color: rgb(28, 28, 28);
            font-size: 85px;
            margin-bottom: 60px;
            letter-spacing: 2px;
            margin-top: -20px;
            text-align: center;
        }

        body{
            margin: 0;
            padding: 0;
            box-sizing: border-box;
            font-family: 'Montserrat', sans-serif;

            display: flex;
            flex-direction: column;
            align-items: center;
            justify-content: center;
            height: 100vh;
            background: linear-gradient(60deg , #012d5f 50%, #029475 50%);
        }

        form{
            display: flex;
            flex-direction: column;
            background-color: #d9d9d9;
            text-align: center;
            padding: 30px 15px;
            -webkit-box-shadow: 7px -6px 0px 7px #A6A6A6;
            box-shadow: 7px -6px 0px 7px #A6A6A6;
            border-radius: 19px;
        }

        .logo-utez{
            width: 40%;
            left: calc(50% - 50%);
            display: block;
            margin: auto;
            margin-bottom: -10px;
            margin-top: 25px;
        }

        h1{
            margin: 20px;
            color: #545454;
            margin-top: -20px;
            margin-bottom: 30px;

        }


        form input{
            border: none;
            background-color: #a6a6a6;

        }

        i{
            font-size: 30px;
            color: #012d5f;
        }

        button{
            color: #fff;
            border: none;
            background-color: #012d5f;
            padding: 10px 15px;
            cursor: pointer;
            font-size: 15px;
            border-radius: 10px;
        }


    </style>


    <!-- Custom styles for this template -->
    <link href="https://getbootstrap.com/docs/5.2/examples/sign-in/signin.css" rel="stylesheet">
</head>
<body class="text-center">

<main class="form-signin w-100 m-auto">
    <h1 id="tittle">SITAE</h1>
    <form method="post" action="login">

        <h1 class="h3 mb-3 fw-normal">Inicio de Sesión</h1>
        <c:if test="${param['message']=='error'}">
            <div class="alert alert-warning">
                Usuario y/o contraseña incorrecta
            </div>
            
        </c:if>


        <div class="form-floating">
            <input type="email" name="nickname" required class="form-control" id="floatingInput" placeholder="name@example.com">
            <label for="floatingInput">Usuario</label>
        </div>
        <div class="form-floating">
            <input type="password" name="password" required class="form-control" id="floatingPassword" placeholder="Password">
            <label for="floatingPassword">Contraseña</label>
        </div>

        <button type="submit">Iniciar sesión</button>
        <img class="logo-utez" src="https://upload.wikimedia.org/wikipedia/commons/thumb/5/54/Logo-utez.png/300px-Logo-utez.png" alt="Logo de UTEZ">
    </form>
</main>



</body>
</html>
