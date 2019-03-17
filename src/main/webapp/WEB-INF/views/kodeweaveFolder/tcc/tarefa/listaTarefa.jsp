<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <title>Lista Tarefa</title>
     
    </head>
    <body>
    <h1>Lista Tarefa</h1>
    <div>${sucesso}</div>
	<table>
        <tr>
            <td>Descricao</td>
            <td>Status</td>
            <td>Usuário Responsável</td>
            <td>Data Inicio</td>            
            <td>Data Entrega</td>
        </tr>
        
        <c:forEach items="${tarefas}" var="tarefa">
	        <tr>
	            <td>${tarefa.descricao}</td>
	            <td>${tarefa.status}</td>
	            <td>${tarefa.usuarioResponsavel}</td>
	            <td>${tarefa.dataCriacao}</td>
	            <td>${tarefa.dataEntrega}</td>
	        </tr>
	    </c:forEach>
    </table>
    </body>
</html>