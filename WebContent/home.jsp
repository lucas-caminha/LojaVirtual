<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="dc" uri="/WEB-INF/tld/desconto.tld" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Loja Virtual - Home</title>
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
			
			<c:forEach items="${ofertas}" var="ofertas">
				<tr> 	
					<form name="form1" action="/CodingDojo/adicionarAoCarrinho" method="post">	 
						<th scope="row"></th>					
						<td><img src="${ofertas.url}" alt="" width="85" height="85"/></td>
						
						<td>
							${ofertas.nome} <br/>
							${ofertas.descricao} <br/>
							Valor: ${ofertas.valor} <br/>
							<b class="text-danger">Desconto: <dc:desconto preco="${ofertas.valor}"></dc:desconto></b>
						</td>
						
						<input type="hidden" class="form-control" name="id" value="${ofertas.id}"/>
						<input type="hidden" class="form-control" name="url" value="${ofertas.url}"/>
						<input type="hidden" class="form-control" name="nome" value="${ofertas.nome}"/>
						<input type="hidden" class="form-control" name="valor" value="${ofertas.valor}"/>
						<input type="hidden" class="form-control" name="descricao" value="${ofertas.descricao}"/>
						
						<td>
							<button type="submit" class="btn btn-success">+</button>
						</td>
					</form>
				</tr>
			</c:forEach>
			
		</table>				
	</body>
</html>