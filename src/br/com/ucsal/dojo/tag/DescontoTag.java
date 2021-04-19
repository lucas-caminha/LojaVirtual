package br.com.ucsal.dojo.tag;

import java.io.IOException;
import java.text.DecimalFormat;

import javax.servlet.jsp.JspException;
import javax.servlet.jsp.JspWriter;
import javax.servlet.jsp.tagext.TagSupport;

public class DescontoTag extends TagSupport {

	/**
	 * 
	 */
	private String preco;
	
	private static final long serialVersionUID = 1L;
	
	@Override
	public int doStartTag() throws JspException {
		
		double precoParam = Double.parseDouble(preco);	
		double desconto = precoParam - (precoParam * 0.35);	
		
		DecimalFormat format = new DecimalFormat("#.##");
			
		try {
			JspWriter write = this.pageContext.getOut();
			write.print(String.valueOf(format.format(desconto)));
		} catch (IOException e) {
			e.printStackTrace();
		}
		
		return super.doStartTag();
	}

	public String getPreco() {
		return preco;
	}

	public void setPreco(String preco) {
		this.preco = preco;
	}

	
	
}
