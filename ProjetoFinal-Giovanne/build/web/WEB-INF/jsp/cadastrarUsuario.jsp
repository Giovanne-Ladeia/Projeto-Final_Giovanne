<%-- 
    Document   : cadastrarUsuario
    Created on : 02/05/2024, 13:58:28
    Author     : aluno
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="pt-br">
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
        <link rel="stylesheet" href="./styles/cadastrarUsuario.css">
        <title>Cadastrar Usuario</title>
    </head>
    <body>
        <div class="container-cadastro">
            <form action="cadastro-usuario" method="post">
                <div class="mb-3">
                    <label for="nome" class="form-label"> <img src="assets/Vector.png" alt=""/>Insira seu nome completo:</label>
                    <input type="text" name="nome" class="form-control" id="nome">                
                </div>
                <div class="mb-3">
                    <label for="senha" class="form-label"><img src="assets/cadeado.png" alt=""/> Senha:</label>
                    <input type="password" name="senha" class="form-control" id="senha" required>
                </div>
                <div class="mb-3">
                    <label for="usuario" class="form-label"><img src="assets/Vector.png" alt=""/>Insira seu username:</label>
                    <input type="text" name="usuario" class="form-control" id="usuario" required>                
                </div>
                <div class="mb-3">
                    <label for="telefone" class="form-label"><img src="assets/telefone.png" alt=""/>Insira seu telefone:</label>
                    <input type="tel" name="telefone" class="form-control" id="telefone">                
                </div>
                <div class="mb-3" >
                    <table border="1" width="100%">
                        <tr>
                            <td width="40%"><label for="data-nascimento" class="form-label" style="display: inline"><img src="assets/calendario.png" alt=""/>Insira seu data de nascimento:</label></td>
                            <td width="60%"> <label for="cpf" class="form-label"><img src="assets/CPF.png" alt=""/>Insira seu cpf:</label></td>
                        </tr>
                        <tr>
                            <td width="70%"><input type="date" name="data-nascimento" class="form-control" id="data-nascimento" style="display: inline"> </td>
                            <td width="60%"><input type="text" name="cpf" class="form-control" id="cpf"> </td>
                        </tr>
                    </table>
                </div>
        </div>
        <p align="center"><button type="submit" class="btn btn-primary btn-custom">Cadastrar</button>
            <br>
            <button type="submit" class="btn btn-secudary"><a href="./login">Caso já possua cadastro.Clique Aqui para retornar a tela do login</a></button>
        </form>
</body>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
</html>
