/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package modelDAO;

import conexao.Conexao;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import model.bean.Carrinho;

/**
 *
 * @author Senai
 */
public class CarrinhoDAO {
    public List<Carrinho> leia() {
        List<Carrinho> carrinho = new ArrayList<>();
        try {
            Connection conexao = Conexao.conectar();
            PreparedStatement stmt = null;
            ResultSet rs = null;

            stmt = conexao.prepareCall("SELECT * FROM carrinho");
            rs = stmt.executeQuery();
            while (rs.next()) {
                Carrinho cro = new Carrinho();
                cro.setId_carrinho(rs.getInt("id_carrinho"));
                cro.setNome_carrinho(rs.getString("nome_carrinho"));
                cro.setImagem_carrinho(rs.getString("imagem_carrinho"));
                cro.setValor_carrinho(rs.getFloat("valor_carrinho"));
                cro.setDescricao_carrinho(rs.getString("descricao_carrinho"));
                cro.setQuantidade(rs.getInt("quantidade"));
                cro.setIdprod(rs.getInt("idprod"));
                cro.setIdusers(rs.getInt("idusers"));
                carrinho.add(cro);
            }

            rs.close();
            stmt.close();
            conexao.close();

        } catch (SQLException e) {
            e.printStackTrace();
        }
        return carrinho;
    }

    public void create(Carrinho carrinho) {
        try {
            Connection conexao = Conexao.conectar();
            PreparedStatement stmt = null;

            stmt = conexao.prepareStatement("INSERT INTO carrinho(nome_carrinho, imagem_carrinho, descricao_carrinho, valor_carrinho, quantidade, idprod)VALUES(?,?,?,?,?,?)");
            stmt.setString(1, carrinho.getNome_carrinho());
            stmt.setString(2, carrinho.getImagem_carrinho());
            stmt.setString(3, carrinho.getDescricao_carrinho());
            stmt.setFloat(4, carrinho.getValor_carrinho());
            stmt.setInt(5, carrinho.getQuantidade());
            stmt.setInt(6, carrinho.getIdprod());
            
            stmt.executeUpdate();

            stmt.close();
            conexao.close();

        } catch (SQLException e) {
            e.printStackTrace();
        }
    }
    
    public void del(Carrinho carrinho){
        try{
        Connection conexao = Conexao.conectar();
        PreparedStatement stmt = null;
        
        stmt = conexao.prepareStatement("DELETE FROM carrinho WHERE id_carrinho = ?");
        stmt.setInt(1, carrinho.getId_carrinho());
        
        stmt.executeUpdate();
        
        
        stmt.close();
        conexao.close();
        } catch (SQLException e){
            e.printStackTrace();
        }
    }
    
    public List<Carrinho> leiaTotal() {
        List<Carrinho> Carrinho = new ArrayList<>();
     try{
         Connection conexao = Conexao.conectar();
         PreparedStatement stmt = null;
         ResultSet rs = null;
         
         stmt = conexao.prepareStatement("SELECT SUM(c.valor_carrinho * c.quantidade) AS valor_total FROM produtos p INNER JOIN carrinho c ON p.id_produto = c.idprod");
         rs = stmt.executeQuery();
         if(rs.next()){
             Carrinho objCarrinho = new Carrinho();
             objCarrinho.setValor_total(rs.getFloat("valor_total"));
             Carrinho.add(objCarrinho);
         }
     }catch(SQLException e){
         e.printStackTrace();
     }  
        return Carrinho;
    }

}
