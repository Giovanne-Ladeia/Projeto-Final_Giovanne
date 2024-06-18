<%-- 
    Document   : carrinho
    Created on : 20/05/2024, 16:00:15
    Author     : Senai
--%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="./styles/header.css">
        <link rel="stylesheet" href="./styles/carrinho.css">
        <title>Carrinho</title>
    </head>
    <body>
        <jsp:include page="header.jsp"></jsp:include>
        <main>
            <br>
           <div class="row">
            <c:forEach var="carrinho" items="${carrinhos}">
                <div class="col-md-4 mb-3">
                    <div class="card card-custom">
                        <div class="card-body">
                            <div class="imagemProduto">
                                <img src="${carrinho.imagem_carrinho}" alt="${carrinho.nome_carrinho}">
                            </div>
                            <h5 class="card-title">${carrinho.nome_carrinho}</h5>
                            <p class="card-text">Valor: R$ ${carrinho.valor_carrinho}</p>
                            <p class="card-text">Quantidade: ${carrinho.quantidade}</p>
                            <p class="card-text">Descrição: ${carrinho.descricao_carrinho}</p>
                            
                            
                        </div>
                    </div>
                </div>
            </c:forEach>
           </div>
            <div class="botoes">
            <a  href="./home" style="color: #ffffff"><input style="background-color: #821A9E; border-radius: 15px; color: white; border-color:#821A9E "  id="button-Continuarcomprando" type="submit" value="Continuar comprando"></a>
            <br>
            <a  href="" style="color: #ffffff"><input style="background-color: #821A9E; border-radius: 15px; color: white; border-color:#821A9E "  id="button-finalizarcompra" type="submit" value="finalizar compra"></a>
            <br>
            </div>
        </main>
        <footer>
            <div class="foot"></div>
        </footer>
    </body>
</html>
