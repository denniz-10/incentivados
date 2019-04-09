<!DOCTYPE html>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"  %>

<html lang="pt-br">
<head>
	<title>Incentivados - Usuários</title>
	<!-- BOOSTRAP 4.2.1 -->	
	<link rel="stylesheet" type="text/css" href="${path}/node_modules/bootstrap/compiler/bootstrap.css">
	<!-- FONT AWESOME ICONS -->	
	<link rel="stylesheet" type="text/css" href="${path}/node_modules/@fortawesome/fontawesome-free/css/all.css">
	<!-- CUSTOM STYLE -->
	<link rel="stylesheet" type="text/css" href="${path}/custom/css/style.css">
</head>
<body>

	<!-- NAVBAR -->
	<c:import url="/WEB-INF/views/componentes/navbar/navbar-principal.jsp" />

	<div class="container">
		<div class="row pt-5">
			<div class="col-12">
				<h1>Usuários</h1>
				<hr>			
				
				<div class="row justify-content-center">					
					<div class="col-12">												
					
						<!-- BOX DA LISTA -->
						<div class="box-table">

							<!-- MSG DE ERRO -->
							<c:if test = "${empty usuarios}">
								<div class="alert alert-danger" role="alert">
								  <p class="text-bold">Não há registro(s) ou .</p>
								</div>
							</c:if>
							
							<c:if test = "${not empty usuarios}">	

								<nav aria-label="Page navigation example">
								  <ul class="pagination justify-content-end">
								    <li class="page-item disabled">
								      <a class="page-link" href="#" tabindex="-1">Anterior</a>
								    </li>
								    <li class="page-item"><a class="page-link" href="#">1</a></li>
								    <li class="page-item"><a class="page-link" href="#">2</a></li>
								    <li class="page-item"><a class="page-link" href="#">3</a></li>
								    <li class="page-item">
								      <a class="page-link" href="#">Próxima</a>
								    </li>
								  </ul>
								</nav>	
								<table class="table table-bordered table-responsive-md">
								  <thead>
								    <tr>
								      <th scope="col">#</th>
								      <th scope="col">Nome</th>
								      <th scope="col">Sobrenome</th>
								      <th scope="col">E-mail</th>
								      <th scope="col">Telefone</th>
								      <th scope="col">Tipo</th>
								      <th scope="col">Ações</th>
								    </tr>
								  </thead>
								  <tbody>
								    <c:forEach var="usuario" items="${usuarios}">
								        <tr>
									      <th scope="row">${usuario.id}</th>
									      <td>${usuario.nome}</td>
									      <td>${usuario.sobrenome}</td>
									      <td>${usuario.email}</td>
									      <td>${usuario.telefone}</td>
									      <td>${usuario.tipoUsuario.descricao}</td>
									      <td>
									      	<a href="${path}/usuarios/visualizar/${usuario.id}" class="btn btn-primary text-white" title="Visualizar"><i class="far fa-address-card"></i></button>
											<a href="" class="btn btn-danger text-white ml-2" title="Deletar"><i class="fas fa-trash-alt"></i></button>
									      </td>
									    </tr>
								    </c:forEach>
								  </tbody>							  
								</table>

							</c:if>	

							<!-- INPUT DE PESQUISA -->
							<form class="float-right mt-3 mb-3" action="${path}/usuarios/listar">
							  <div class="form-row align-items-center">
							    <div class="col-auto">
							      <input type="text" class="form-control mb-2" name="nome" placeholder="Filtrar por nome ..." value="">
							    </div>
							    <div class="col-auto">
							      <button type="submit" class="btn btn-primary mb-2"><i class="fas fa-search"></i></button>
							      <a href="${path}/usuarios/listar?nome=" class="btn btn-primary mb-2">Listar Todos</a>
							      <a href="${path}/" class="btn btn-danger mb-2">Voltar</a>
							    </div>
							  </div>
							</form>		

						</div>						
					</div>
				</div>

			</div>
		</div>
	</div>
	
</body>	
	<!-- JQUERY 3.3.1 -->
	<script type="text/javascript" src="${path}/node_modules/jquery/dist/jquery.js"></script>
	<!-- POPPER 1.14.7 -->
	<script type="text/javascript" src="${path}/node_modules/popper.js/dist/popper.js"></script>
	<!-- BOOTSTRAP 4.2.1 -->
	<script type="text/javascript" src="${path}/node_modules/bootstrap/dist/js/bootstrap.js"></script>
	<!-- CUSTOM SCRIPT -->
	<script type="text/javascript" src="${path}/custom/js/script.js"></script>	
</html>