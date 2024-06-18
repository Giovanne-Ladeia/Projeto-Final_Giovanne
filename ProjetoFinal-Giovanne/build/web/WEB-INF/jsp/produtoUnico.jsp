<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%-- 
    Document   : produtoUnico
    Created on : 20/05/2024, 17:22:11
    Author     : Senai
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="styles/produtoUnico.css" rel="stylesheet" type="text/css"/>
        <link rel="stylesheet" href="./styles/header.css">
        <title>Produto Unico</title>
    </head>
    <body>
        <jsp:include page="header.jsp"></jsp:include>
        <main>
            <div class="row">
            <c:forEach var="produto" items="${produtos}">
                <div id="produtos${produto.idProduto}"class="produto">
                <div class="col-md-4 mb-3">
                    <div class="card card-custom">
                        <div class="card-body">
                            <div class="imagemProduto">
                                
                                <img src="${produto.imagem}" alt="${produto.nome}">
                            </div>
                            <h5 class="card-title">${produto.nome}</h5>
                            <p class="card-text categoria-text">Categoria: ${produto.categoria}</p>
                            <p class="card-text">Valor: R$ ${produto.valor}</p>
                            <p class="card-text">Estoque: ${produto.quantidade_estoque}</p>
                            <p class="card-text">Descrição: ${produto.descricao}</p>
                            <input type="number" min="1" max="20" name="quantidade" id="quantidade">
                            
                        <button type="submit" class="btn btn-comprar"  idProduto="${produto.idProduto}" imagem="${produto.imagem}" nome="${produto.nome}" categoria="${produto.categoria}" descricao="${produto.descricao}"  valor="${produto.valor}" 
                            quantidade=1 id="comprar">
                        <i class="fa-solid fa-basket-shopping"></i> Comprar
                    </button>
                        </div>
                    </div>
                </div>
                </div>
            </c:forEach>
            </div>
                    
         <form id="form-comprar" action="enviarItemCarrinho" method="post" enctype="multipart/form-data" style="display: none;">
            <input type="hidden" name="idProduto" id="idProduto">
            <input type="hidden" name="descricao" id="descricao">
            <input type="hidden" name="nome" id="nome">
            <input type="hidden" name="valor" id="valor">
            <input type="hidden" name="imagem" id="imagem">
            <input type="hidden" name="quantidade" id="quantidade">
           
            
        </form>
        </main>
        <footer>
            <div class="foot"></div>
        </footer>
        <script src="./js/carrinho.js" type="text/javascript"></script>
    </body>
</html>
