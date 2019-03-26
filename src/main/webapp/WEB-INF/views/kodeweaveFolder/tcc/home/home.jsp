
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="s"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>    
<!DOCTYPE html>
<html>
<head>
  <title>KodeWeave Home</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link href="resources/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
  <script src="resources/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  <link rel="stylesheet" href="resources/bootstrap.bundle.min.js">
  <link rel="icon" href="resources/favicon.ico">
  <script src="resources/home/userSetti.js"></script> 
  <link rel="stylesheet" href="resources/home/userSetti.css">
</head>

<body>
     <nav class="navbar-modificado navbar navbar-expand-sm bg-color-nav navbar-dark">
	  <!-- Brand -->
	  <img class="navbar-brand img-responsive icon-logo" src="resources/favicon.ico">
	
	  <!-- Links -->
	  <ul class="navbar-nav">
	    <li class="nav-item">
	      <a class="nav-link-white" href="${s:mvcUrl('TC#listar').build()}">Tarefa</a>
	    </li>
	    <li class="nav-item">
	      <a class="nav-link-white" href="#">Link 2</a>
	    </li>
	
	    <!-- Dropdown -->
	     <li class="nav-item dropdown">
	        <a class="nav-link-white dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
	          Dropdown
	        </a>
	        <div class="dropdown-menu" aria-labelledby="navbarDropdown">
	          <a class="dropdown-item" href="#">Action</a>
	          <a class="dropdown-item" href="#">Another action</a>
	          <div class="dropdown-divider"></div>
	          <a class="dropdown-item" href="#">Something else here</a>
	        </div>
	      </li>
	  </ul>
	</nav> 

</body>
</html>