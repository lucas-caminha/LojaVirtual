package br.com.ucsal.dojo.model;

import java.util.Random;

/**
 * @author lucas.caminha
 *
 */
public class Produto {
	
	private Integer id;
	private String nome;
	private double valor;
	private String descricao;
	private String url;
		
	public Produto(String nome, double valor, String descricao, String url) {
		this.id = new Random().nextInt(10000);
		this.nome = nome;
		this.valor = valor;
		this.descricao = descricao;
		this.url = url;
	}	
	
	public Produto(Integer id, String nome, double valor, String descricao, String url) {
		super();
		this.id = id;
		this.nome = nome;
		this.valor = valor;
		this.descricao = descricao;
		this.url = url;
	}
	
	public Integer getId() {
		return id;
	}
	public String getNome() {
		return nome;
	}
	public void setNome(String nome) {
		this.nome = nome;
	}
	public double getValor() {
		return valor;
	}
	public void setValor(double valor) {
		this.valor = valor;
	}
	public String getDescricao() {
		return descricao;
	}
	public void setDescricao(String descricao) {
		this.descricao = descricao;
	}
	public String getUrl() {
		return url;
	}
	public void setUrl(String url) {
		this.url = url;
	}
	@Override
	public String toString() {
		return "Produto [id=" + id + ", nome=" + nome + ", valor=" + valor + ", descricao=" + descricao + ", url="
				+ url + "]";
	}
	
	
	
}
