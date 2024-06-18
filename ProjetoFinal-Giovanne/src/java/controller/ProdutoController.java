/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.PrintWriter;
import java.util.List;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;
import model.bean.Carrinho;
import model.bean.Produtos;
import modelDAO.CarrinhoDAO;
import modelDAO.ProdutosDAO;

/**
 *
 * @author Senai
 */
@WebServlet(urlPatterns = "/enviarItemCarrinho")
@MultipartConfig
 public class ProdutoController extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    Carrinho objProduto = new Carrinho();
    CarrinhoDAO objProdutoDao = new CarrinhoDAO();
    Produtos prod = new Produtos();
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        ProdutosDAO produto = new ProdutosDAO();
        int id = Integer.parseInt(request.getParameter("id"));
        System.out.println(id);
        List<Produtos> produtos = produto.produtoUnico(id);
        request.setAttribute("produtos", produtos);
        String url = "/WEB-INF/jsp/produtoUnico.jsp";
        RequestDispatcher dispatcher = getServletContext().getRequestDispatcher(url);
        dispatcher.forward(request, response);
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String action = request.getServletPath();
        if (action.equals("/enviarItemCarrinho")) {
            System.out.println("aquiii  ");
            produto(request, response);
        } else {
            processRequest(request, response);
        }
    }
    protected void produto(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        PrintWriter out = response.getWriter();
            Carrinho objProduto = new Carrinho();

        objProduto.setNome_carrinho(request.getParameter("nome_carrinho"));
        objProduto.setValor_carrinho(Float.parseFloat(request.getParameter("valor_carrinho")));
        objProduto.setQuantidade(Integer.parseInt(request.getParameter("quantidade")));
        objProduto.setDescricao_carrinho(request.getParameter("descricao_carrinho"));
        objProduto.setImagem_carrinho(request.getParameter("imagem_carrinho"));
        objProduto.setIdprod(Integer.parseInt(request.getParameter("idprod")));
        objProdutoDao.create(objProduto);
        out.println("<script type=\"text/javascript\">");
        out.println("alert('Compra feita com sucesso.');");
        out.println("window.location.href = 'WEB-INF/jsp/produtoUnico.jsp';");
        out.println("</script>");
        response.sendRedirect("./home");

    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
