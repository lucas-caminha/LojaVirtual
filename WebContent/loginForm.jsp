<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Loja Virtual - Login</title>
		<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-eOJMYsd53ii+scO/bJGFsiCZc+5NDVN2yr8+0RDqr0Ql0h+rP48ckxlpbzKgwra6" crossorigin="anonymous">
		<style>
			.login-form {
			    width: 340px;
			    margin: 50px auto;
			  	font-size: 15px;
			}
			.login-form form {
			    margin-bottom: 15px;
			    background: #f7f7f7;
			    box-shadow: 0px 2px 2px rgba(0, 0, 0, 0.3);
			    padding: 30px;
			}
			.login-form h2 {
			    margin: 0 0 15px;
			}
			.form-control, .btn {
			    min-height: 38px;
			    border-radius: 2px;
			}
			.btn {        
			    font-size: 15px;
			    font-weight: bold;
			}
		</style>
	</head>
	<body>	
		<div class="login-form">
		    <form action="/CodingDojo/login" method="get">
		        <h2 class="text-center">Login</h2>       
		        <div class="form-group">
		            <input type="text" class="form-control" placeholder="Usuario" required="required" name="usuario">
		        </div>
		        <div class="form-group">
		            <input type="password" class="form-control" placeholder="Senha" required="required" name="senha">
		        </div>
		        <br/>
		        <div class="form-group">
		            <button type="submit" class="form-control btn btn-primary btn-block alignCenter">Entrar</button>
		        </div>   
		    </form>
		</div>
	</body>
</html>