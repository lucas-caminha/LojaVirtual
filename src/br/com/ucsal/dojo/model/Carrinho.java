package br.com.ucsal.dojo.model;

import java.util.HashMap;

public class Carrinho {
	
	private static HashMap<Integer,Produto> produtosNoCarrinho = new HashMap<Integer,Produto>();

	public static void adicionaProduto(Produto produto) {
		produtosNoCarrinho.put(produto.getId(), produto);
	}

	public static HashMap<Integer,Produto> getProdutosNoCarrinho() {
		return produtosNoCarrinho;
	}

	public static void removeDoCarrinho(Produto produto) {
		produtosNoCarrinho.remove(produto.getId());
	}
	
}
