/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model.bean;

/**
 *
 * @author Senai
 */
public class Carrinho {
    private int id_carrinho;
    private String nome_carrinho;
    private String imagem_carrinho;
    private Float valor_carrinho;
    private String descricao_carrinho;
    private int quantidade;
    private float valor_total;
    private int idprod;
    private int idusers;

    public Carrinho() {
    }

    public Carrinho(int id_carrinho, String nome_carrinho, String imagem_carrinho, Float valor_carrinho, String descricao_carrinho, int quantidade, float valor_total, int idprod, int idusers) {
        this.id_carrinho = id_carrinho;
        this.nome_carrinho = nome_carrinho;
        this.imagem_carrinho = imagem_carrinho;
        this.valor_carrinho = valor_carrinho;
        this.descricao_carrinho = descricao_carrinho;
        this.quantidade = quantidade;
        this.valor_total = valor_total;
        this.idprod = idprod;
        this.idusers = idusers;
    }

    public int getId_carrinho() {
        return id_carrinho;
    }

    public void setId_carrinho(int id_carrinho) {
        this.id_carrinho = id_carrinho;
    }

    public String getNome_carrinho() {
        return nome_carrinho;
    }

    public void setNome_carrinho(String nome_carrinho) {
        this.nome_carrinho = nome_carrinho;
    }

    public String getImagem_carrinho() {
        return imagem_carrinho;
    }

    public void setImagem_carrinho(String imagem_carrinho) {
        this.imagem_carrinho = imagem_carrinho;
    }

    public Float getValor_carrinho() {
        return valor_carrinho;
    }

    public void setValor_carrinho(Float valor_carrinho) {
        this.valor_carrinho = valor_carrinho;
    }

    public String getDescricao_carrinho() {
        return descricao_carrinho;
    }

    public void setDescricao_carrinho(String descricao_carrinho) {
        this.descricao_carrinho = descricao_carrinho;
    }

    public int getQuantidade() {
        return quantidade;
    }

    public void setQuantidade(int quantidade) {
        this.quantidade = quantidade;
    }

    public float getValor_total() {
        return valor_total;
    }

    public void setValor_total(float valor_total) {
        this.valor_total = valor_total;
    }

    public int getIdprod() {
        return idprod;
    }

    public void setIdprod(int idprod) {
        this.idprod = idprod;
    }

    public int getIdusers() {
        return idusers;
    }

    public void setIdusers(int idusers) {
        this.idusers = idusers;
    }
    
    
}
