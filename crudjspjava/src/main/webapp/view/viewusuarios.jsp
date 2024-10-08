<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Visualização de Usuários</title>
		<link rel="stylesheet" type="text/css" href="./css/style.css"></style>
    	<link href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet"><!-- Bootstrap CSS -->
	</head>
	<body class="container mt-5">
	
		<%@ page import="com.crudjspjava.dao.UsuarioDao, com.crudjspjava.model.Usuario, java.util.*"%>
		<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
					
		<nav class="informacao_pagina">
					
			<h6 class="titulo_pagina">Painel de administração</h6>
			
		</nav>
		
		
		
		<%
			List<Usuario> list = UsuarioDao.getAllUsuarios();
			request.setAttribute("lis", list);			
		%>
	
		<table class="table table-sm table-bordered table-striped">
			<tr>
				<th>AÇÃO</th>
				<th>ID</th>
				<th>NOME</th>
				<th>PASSWORD</th>
				<th>E-MAIL</th>
				<th>SEXO</th>
				<th>PAÍS</th>
			</tr>
			
			<tr>
				<td>
					<button type="button" class="btn btn-success btn_acao">Novo</button>
					<button type="button" class="btn btn-warning btn_acao">Editar</button>
					<button type="button" class="btn btn-danger btn_acao">Excluir</button>
				</td>
				<td>ID</td>
				<td>NOME</td>
				<td>PASSWORD</td>
				<td>E-MAIL</td>
				<td>SEXO</td>
				<td>PAÍS</td>
			</tr>
			
		</table>
	
	</body>
</html>