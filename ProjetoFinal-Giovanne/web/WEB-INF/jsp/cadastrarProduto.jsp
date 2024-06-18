<%-- 
    Document   : cadastrarProduto
    Created on : 01/05/2024, 10:49:52
    Author     : Iago
--%>

<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="pt-br">
    <head>
        <meta charset="UTF-8">
        <title>Cadastro de Produto</title>
        <link href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
        <link href="styles/cadastrarproduto.css" rel="stylesheet" type="text/css"/>
    </head>
    <body>
        <div class="container">
            <form action="cadastrarProduto" method="POST" enctype="multipart/form-data">
                <div class="form-group">
                    <label for="nome">Nome:</label>
                    <input type="text" class="form-control" id="nome" name="nome" required>
                </div>
                <div class="form-group">
                    <label for="categoria">Categoria:</label>
                    <select class="form-control" id="categoria" name="categoria">
                        <option value="1">Placas-mãe</option>
                        <option value="2">Processadores</option>
                        <option value="3">Memórias RAM</option>
                        <option value="4">Placas de Vídeo</option>
                        <option value="5">Fontes de Alimentação</option>
                    </select>
                </div>
                <div class="form-group">
                    <label for="valor">Valor:</label>
                    <input type="number" step="0.01" class="form-control" id="valor" name="valor" required>
                </div>
                <div class="form-group">
                    <label for="valor">Quantidade em Estoque:</label>
                    <input type="number" step="0.01" class="form-control" id="quantidade_estoque" name="quantidade_estoque" required>
                </div>
                <div class="form-group">
                    <label for="descricao">Descrição:</label>
                    <textarea class="form-control" id="descricao" name="descricao" rows="3"></textarea>
                </div>
                <div class="form-group">
                    <label for="imagem">Imagem do Produto:</label>
                    <input type="file" class="custom-file-button" id="imagem" name="imagem">
                </div>
                <p align="center"><button type="submit" class="btn btn-primary btn-custom">Cadastrar</button></p>
            </form>
        </div>
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
    </body>
</html>

