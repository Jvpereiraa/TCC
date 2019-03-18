<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <title>Tarefa - ${tarefa.id}</title>
     
    </head>
    <body>
	<table>
        <tr>
        	<td>Projeto</td>
            <td>Descricao</td>
            <td>Status</td>
            <td>Usuário Responsável</td>
            <td>Usuário Criador</td>
            <td>Data Inicio</td>            
            <td>Data Entrega</td>
            <td>Sumário Path</td>
        </tr>
       
        <tr>
        	<td>${tarefa.projeto}</td>
            <td>${tarefa.descricao}</td>
            <td>${tarefa.status}</td>
            <td>${tarefa.usuarioResponsavel}</td>
            <td>${tarefa.usuarioResponsavel}</td>
            <td>${tarefa.dataCriacao}</td>
            <td>${tarefa.dataEntrega}</td>
            <td>${tarefa.sumarioPath}</td>
        </tr>


    </table>
    </body>
</html>