<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="dc" uri="/WEB-INF/tld/desconto.tld" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Loja Virtual - Meu Carrinho</title>
		<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-eOJMYsd53ii+scO/bJGFsiCZc+5NDVN2yr8+0RDqr0Ql0h+rP48ckxlpbzKgwra6" crossorigin="anonymous">
	</head>
	<body>	
		<nav class="navbar navbar-expand-md navbar-dark bg-dark">
			  <div class="navbar-collapse collapse w-100 order-1 order-md-0 dual-collapse2">
		        <ul class="navbar-nav mr-auto">
		        	<li>
		        		<a href="/CodingDojo/home.jsp">
		        			<img alt="" src="https://img.icons8.com/nolan/2x/online-shop.png" width="60" height="60">
		        		</a>		        	
		        	</li>
		            <li class="nav-item active">
	
		            </li>
		        </ul>
		      </div>
			  <div class="container">
				   <form action="/CodingDojo/meuCarrinho" method="get">
					    <a class="navbar-brand text-light" href="#">
					      <button type="submit">
					   	   <img src="https://img.icons8.com/plasticine/2x/favorite-cart.png" alt="" width="45" height="45">
					      </button>
					      	<% 
								Object quantidade = session.getAttribute("qtdProdutos");
								out.println(quantidade.toString());
							%>   
					    </a>
				   </form>
				    <a class="nav-link text-light" href="#">
			           <% 
							Object usuario = session.getAttribute("usuario");
							out.println("Usuario: " + usuario.toString());
						%>            
			        </a>
			  </div>
		</nav>
						
		<table class="table table-striped">
		
		    <tr>
		   	  <th scope="col"></th>
		   	  <th scope="col"></th>
		   	  <th scope="col"></th>
		   	  <th scope="col"></th>
		    </tr>
		    
		    
			<c:forEach items="${carrinho}" var="carrinho">
				<tr> 	
					<form name="form1" action="/CodingDojo/remover" method="post">	 
						<th scope="row"></th>					
						<td><img src="${carrinho.url}" alt="" width="85" height="85"/></td>
						
						<td>
							${carrinho.nome} <br/>
							${carrinho.descricao} <br/>
							Valor: ${carrinho.valor} <br/>
							<b class="text-danger">Desconto: <dc:desconto preco="${carrinho.valor}"></dc:desconto></b>
						</td>
						
						<input type="hidden" class="form-control" name="id" value="${carrinho.id}"/>
						<input type="hidden" class="form-control" name="url" value="${carrinho.url}"/>
						<input type="hidden" class="form-control" name="nome" value="${carrinho.nome}"/>
						<input type="hidden" class="form-control" name="valor" value="${carrinho.valor}"/>
						<input type="hidden" class="form-control" name="descricao" value="${carrinho.descricao}"/>
						
						<td>
							<button type="submit" class="btn btn-warning">-</button>
						</td>
					</form>
				</tr>
			</c:forEach>
			
		</table>				
	</body>
</html>