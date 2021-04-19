package br.com.ucsal.dojo.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import br.com.ucsal.dojo.model.Carrinho;
import br.com.ucsal.dojo.model.Oferta;
import br.com.ucsal.dojo.model.Produto;

public class HomeServlet extends HttpServlet {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		String id = req.getParameter("id");
		String nome = req.getParameter("nome");
		String valor = req.getParameter("valor");
		String descricao = req.getParameter("descricao");
		String url = req.getParameter("url");
				
		Produto produto = new Produto(Integer.parseInt(id), nome, Double.parseDouble(valor), descricao, url);
		
		Carrinho.adicionaProduto(produto);
		Oferta.removeOferta(produto);
		
		HttpSession session = req.getSession();
		session.setAttribute("qtdProdutos", Carrinho.getProdutosNoCarrinho().size());

		String contexto = req.getContextPath();
		resp.sendRedirect(contexto + "/home.jsp");
	}
}
