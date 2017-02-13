<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix= "fmt" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<script type="text/javascript" src="resources/js/jquery.js"></script>
<title>Lista de Tarefas</title>
</head>
	<body>
		<c:import url = "cabecalho.jsp"  />
		<script type="text/javascript">
			function finalizaTarefa(id) {
				$.post("finalizaTarefa", {'id' : id}, function(){
					//selecionando o elemento html através da
					// id e alterando o html dele
					$("#tarefa_"+id).html("Finalizado");//o que é o #??
				});
			}
			</script>
	
	
		<a href="novaTarefa">Criar Nova Tarefa</a>
		<br /> <br /> 
		
		<table>
			<tr>
				<th>ID</th>
				<th>Descrição</th>
				<th>Finalizado?</th>
				<th>Data de Finalização</th>
				<th>Remover?</th>
				<th>Alterar?</th>
			</tr>
			<c:forEach items="${tarefas}" var="tarefa">
				<tr>
					<td>${tarefa.id}</td>
					<td>${tarefa.descricao}</td>
						<c:if test="${tarefa.finalizado eq false}">
							<td id="tarefa_${tarefa.id}"> <!-- cria um id para o TD-->
								<a href="#" onclick="finalizaTarefa(${tarefa.id})"> <!-- chama a funcao finalizatarefa com o argumento tarefa.id -->
								Finaliza Agora!!
								</a>
							</td>
						</c:if>				
						<c:if test="${tarefa.finalizado eq true}">
							<td>Finalizado</td>
						</c:if>	
					<td>
						<fmt:formatDate value="${tarefa.dataFinalizacao.time}" pattern="dd/MM/yyyy"/>
					</td>
					<td> 
						<a href="removeTarefa?id=${tarefa.id}" > Remover </a>
					</td>
					<td> 
						<a href="mostraTarefa?id=${tarefa.id}" > Alterar </a>
					</td>
				</tr>						
			</c:forEach>			
		</table>		
	</body>
</html>