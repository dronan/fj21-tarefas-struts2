<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<h3>Adicionar tarefas</h3>
<s:fielderror fieldName="tarefa.descricao" />
<form action="adicionaTarefa" method="post">
	Descri��o:<br>
	<textarea name="tarefa.descricao" rows="5" cols="100"></textarea><br>
	<input type="submit" value="adicionar"> 
</form>
</body>
</html>