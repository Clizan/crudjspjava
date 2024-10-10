<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Visualização de Usuários</title>
		<link rel="stylesheet" type="text/css" href="./css/style.css"></style>
    	<link href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet"><!-- Bootstrap CSS -->
    	<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
    	<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.2/dist/js/bootstrap.bundle.min.js"></script>
    	
    </head>
	<body class="container mt-5">
	
		<%@ page import="com.crudjspjava.dao.UsuarioDao, com.crudjspjava.model.Usuario, java.util.*"%>
		<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
					
		<nav class="informacao_pagina">
					
			<h6 class="titulo_pagina">Painel de administração</h6>
			
		</nav>
		
		<button type="button" class="btn btn_add"><a href="#"><img src="./img/mais.png" id="icones"> ADICIONAR NOVO ITEM </a></button>
		
		<%
			List<Usuario> list = UsuarioDao.getAllUsuarios();
			request.setAttribute("lis", list);			
		%>
	
		<table class="table table-sm table-striped">
			<thead class="thead-dark thead_usuarios">
				<tr>
					<th>AÇÃO</th>
					<th>ID</th>
					<th>NOME</th>
					<th>PASSWORD</th>
					<th>E-MAIL</th>
					<th>SEXO</th>
					<th>PAÍS</th>
				</tr>
			</thead>
			
			<tbody>
			
				<tr>
					<td>	
						<button type="button" class="btn btn_view" data-toggle="tooltip" data-placement="top" title="Ver Detalhes"><a href="vieweditform.jsp?id=${usuario.getId()}"><img src="./img/olho.png" id="icones_acao"></a></button>				
						<button type="button" class="btn btn_edit" data-toggle="tooltip" data-placement="top" title="Editar"><a href="vieweditform.jsp?id=${usuario.getId()}"><img src="./img/editar.png" id="icones_acao"></a></button>
						<button type="button" class="btn btn_delete" data-toggle="tooltip" data-placement="top" title="Remover"><a href="#"><img src="./img/excluir.png" id="icones_acao"></a></button>
					</td>
					<td>1</td>
					<td>NOME</td>
					<td>PASSWORD</td>
					<td>E-MAIL</td>
					<td>SEXO</td>
					<td>PAÍS</td>
				</tr>
				
			</tbody>
			
		</table>
	
	
	<script>
	 /*Iniciando o tooltip*/
	  $(function () {
	    $('[data-toggle="tooltip"]').tooltip()
	  })
	</script>
	
	
	</body>
</html>