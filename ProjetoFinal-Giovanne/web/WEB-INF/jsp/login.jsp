<%-- 
    Document   : login
    Created on : 02/05/2024, 15:01:28
    Author     : aluno
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="pt-br">
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
        <link rel="stylesheet" href="./styles/login.css">
        <title>Login</title>
    </head>
    <body>
        <header>
                <div class="headlog"></div>
        </header>
        
        <div class="log">
        <h1>Login</h1>
        <form action="logar" id="formulario" method="post">
            <div class="mb-3">
                <label for="nome" class="form-label"><img src="assets/Vector.png" alt=""/>  Usuario:</Nome>
              <input type="text" class="form-control" id="usuario" name="usuario" required>
            </div>

            <div class="mb-3">
              <label for="senha" class="form-label"><img src="assets/cadeado.png" alt=""/>  Senha:</label>
              <input type="password" class="form-control" id="senha" name="senha" required>
            </div>
            <button type="submit" class="btn btn-primary btn-custom">Entrar</button>
            <a href="./cadastrar-usuario">Clique Aqui para cadastrar-se</a>
         </form>
        </div>
        <footer>
            <div class="footlog"></div>
        </footer>
    </body>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
    <script src="./js/login.js"></script>
</html>
