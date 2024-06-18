<%-- 
    Document   : produtos
    Created on : 04/05/2024, 10:24:15
    Author     : Senai
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="pt-br">
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Produtos</title>
    </head>
    <body>
        <jsp:include page="header.jsp"></jsp:include>
        <main>
            <br>
            <c:forEach items="${produtos}" var="produto">
                <div class="card" style="width: 18rem;">
                    <img src="${produto.imagem}" class="card-img-top" alt="${produto.imagem}">
                    <div class="card-body">
                      <h5 class="card-title">${produto.nome}</h5>
                      <p class="card-text">${produto.descricao}</p>
                      <p class="card-text">${produto.valor}</p>
                      <a style="background-color: blue!important" href="./Produto?id=${produto.idProduto}" class="btn btn-primary btn-comprar">Comprar</a>
                    </div>
                  </div>
            </c:forEach>

        </main>
        
        <footer>
        <div class="footlog"></div>
    </footer>
    </body>
</html>
