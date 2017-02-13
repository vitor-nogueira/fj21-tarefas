<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>


<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

	<link href="resources/css/jquery.css" rel="stylesheet"> 
	<script src="resources/js/jquery.js"></script> 
	<script src="resources/js/jquery-ui.js"></script>
	
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Altera Tarefa</title>
</head>
	<body>
		<c:import url = "cabecalho.jsp"  />
		<h3>Alterar Tarefa - ${tarefa.id}</h3>
		<form action ="alteraTarefa" method="get">
			<input type="hidden" name="id" value="${tarefa.id}"/>
			Descrição: <br/>
			<textarea name="descricao" cols="100" rows="5">${tarefa.descricao}</textarea>
			<br/>
			
			Finalizado? <input type="checkbox" name="finalizado" 
				value="true" ${tarefa.finalizado? 'checked' : '' } /> <br/><br/>
				
			Data de Finalização: <br/>
			
			<input type="text" name="dataFinalizacao" id="id"
				value="<fmt:formatDate value="${tarefa.dataFinalizacao.time}" pattern="dd/MM/yyyy" />" />
				<script>
				$("#id").datepicker({dateFormat:"dd/mm/yy"}); //chamando o calendario do CSS
				</script>
			
				
			
			<br/>
			<br/>
			

			<input type="submit" value="Alterar">
	</form>	
</body>
</html>