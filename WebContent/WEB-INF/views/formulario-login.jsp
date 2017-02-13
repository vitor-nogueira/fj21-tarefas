<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Tarefas Login</title>
</head>
<body>
	<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
	<c:import url = "cabecalho.jsp"  />
	
	
	<h2>Página de Login das Tarefas</h2>
	<form action="efetuaLogin" method="post">
		Login: <input type="text" name="login" /> <br/><br/>
		Senha: <input type="password" name="senha" /> <br/><br/>
		<input type="submit" value="Entrar nas Tarefas" /> <br/><br/>	
	</form>
	<c:import url="rodape.jsp" />
</body>
</html>