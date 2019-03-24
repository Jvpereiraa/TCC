<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>    
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="s"%>
<!DOCTYPE html>
<html lang="en">
<head>
	<title>KodeWeave Cadastro Usuário</title>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
<!--===============================================================================================-->
	<link rel="icon" type="image/png" href="resources/favicon.ico"/>
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="resources/cadastroUsuario/vendor/bootstrap/css/bootstrap.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="resources/cadastroUsuario/fonts/font-awesome-4.7.0/css/font-awesome.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="resources/cadastroUsuario/vendor/animate/animate.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="resources/cadastroUsuario/vendor/css-hamburgers/hamburgers.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="resources/cadastroUsuario/vendor/animsition/css/animsition.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="resources/cadastroUsuario/vendor/select2/select2.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="resources/cadastroUsuario/vendor/daterangepicker/daterangepicker.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="resources/cadastroUsuario/css/util.css">
	<link rel="stylesheet" type="text/css" href="resources/cadastroUsuario/css/main.css">
<!--===============================================================================================-->
</head>
<body>


	<div class="container-contact100">
		<div class="wrap-contact100">
			<form:form class="contact100-form validate-form" action="/kodeWeave1_1/cadastroUsuario" method="POST" modelAttribute="usuario"
		enctype="multipart/form-data"> 
				<span class="contact100-form-title">
					Cadastro Usuário
				</span>
				 <div class="alert-aux alert alert-danger">${usuarioExistente}</div>

				<div class="wrap-input100 validate-input" data-validate="Name is required">
					<div class="alert alert-warning" role="alert"><form:errors path="login"/></div>
					<span class="label-input100">CPF</span>
					<form:input path="login" class="input100" type="text" placeholder="Preenche com seu nome"/>
					<span class="focus-input100"></span>
				</div>
				
				<div class="wrap-input100 validate-input" data-validate="Senha is required">
					<div class="alert alert-warning" role="alert"><form:errors path="senha"/></div>
					<span class="label-input100">Senha</span>
					<form:input path="senha" class="input100 preenche-senha" type="password" placeholder="Preencha com sua senha"/>
					<form:input path="confirmaSenha" class="input100" type="password" placeholder="Confirme Senha"/>
					<span class="focus-input100"></span>
				</div>
				

				<div class="wrap-input100 validate-input" data-validate = "Valid email is required: ex@abc.xyz">
					<div class="alert alert-warning" role="alert"><form:errors path="email"/></div>
					<span class="label-input100">Email</span>
					<form:input path="email"  class="input100" type="text" placeholder="Preencha com o seu email"/>
					<span class="focus-input100"></span>
				</div>

				<div class="wrap-input100 input100-select">
					<span class="label-input100">Formação</span>					
					<div>
						<form:select path="formacao" class="selection-2" name="service">
							<form:option value="Ensino medio Completo">Ensino médio Completo</form:option>
							<form:option value="Cursando Ensino Superior">Cursando Ensino Superior</form:option>
							<form:option value="Ensino Superior Completo">Ensino Superior Completo</form:option>
							<form:option value="Outros">Outros</form:option>
						</form:select>
					</div>
					<span class="focus-input100"></span>
				</div>
				
				<div class="wrap-input100 validate-input" data-validate = "Valid email is required: ex@abc.xyz">
					<span class="label-input100">Foto</span>
					<input class="input100" name="foto" type="file" />
					<span class="focus-input100"></span>
				</div>
				<!-- 
				<div class="wrap-input100 validate-input" data-validate = "Message is required">
					<span class="label-input100">Message</span>
					<textarea class="input100" name="message" placeholder="Your message here..."></textarea>
					<span class="focus-input100"></span>
				</div>
				 -->
				<div class="container-contact100-form-btn">
					<div class="wrap-contact100-form-btn">
						<div class="contact100-form-bgbtn">a</div>
						<button class="contact100-form-btn">
							
							<span>
								Submit
								<i class="fa fa-long-arrow-right m-l-7" aria-hidden="true"></i>
							</span>
						</button>
					</div>
				</div>
			</form:form>
		</div>
	</div>



	<div id="dropDownSelect1"></div>

<!--===============================================================================================-->
	<script src="resources/cadastroUsuario/vendor/jquery/jquery-3.2.1.min.js"></script>
<!--===============================================================================================-->
	<script src="resources/cadastroUsuario/vendor/animsition/js/animsition.min.js"></script>
<!--===============================================================================================-->
	<script src="resources/cadastroUsuario/vendor/bootstrap/js/popper.js"></script>
	<script src="resources/cadastroUsuario/vendor/bootstrap/js/bootstrap.min.js"></script>
<!--===============================================================================================-->
	<script src="resources/cadastroUsuario/vendor/select2/select2.min.js"></script>
	<script>
		$(".selection-2").select2({
			minimumResultsForSearch: 20,
			dropdownParent: $('#dropDownSelect1')
		});
	</script>
<!--===============================================================================================-->
	<script src="resources/cadastroUsuario/vendor/daterangepicker/moment.min.js"></script>
	<script src="resources/cadastroUsuario/vendor/daterangepicker/daterangepicker.js"></script>
<!--===============================================================================================-->
	<script src="resources/cadastroUsuario/vendor/countdowntime/countdowntime.js"></script>
<!--===============================================================================================-->
	<script src="resources/cadastroUsuario/js/main.js"></script>

	<!-- Global site tag (gtag.js) - Google Analytics -->
<script async src="https://www.googletagmanager.com/gtag/js?id=UA-23581568-13"></script>
<script>
  window.dataLayer = window.dataLayer || [];
  function gtag(){dataLayer.push(arguments);}
  gtag('js', new Date());

  gtag('config', 'UA-23581568-13');
</script>

</body>
</html>
