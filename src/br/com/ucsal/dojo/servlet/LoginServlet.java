package br.com.ucsal.dojo.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import br.com.ucsal.dojo.model.Carrinho;
import br.com.ucsal.dojo.model.Oferta;

public class LoginServlet extends HttpServlet {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		String usuario = req.getParameter("usuario");
		String senha = req.getParameter("senha");
		
		HttpSession session = req.getSession();
		session.setAttribute("usuario", usuario);
		session.setAttribute("senha", senha);
		session.setAttribute("ofertas", Oferta.getOfertas().values());
		session.setAttribute("qtdProdutos", Carrinho.getProdutosNoCarrinho().size());
		
		String contexto = req.getContextPath();
		
		resp.sendRedirect(contexto + "/home.jsp");
	}
	
	

	
	
}
