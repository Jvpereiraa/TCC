<!-- This snippet uses Font Awesome 5 Free as a dependency. You can download it at fontawesome.io! -->
<head>
		<title>Kodeweave - Login</title>
		
		<!-- 
		
		<meta charset="utf-8">
		<spring:url value="favicon.ico"></spring:url>
		<spring:url value="bootstrap.min.css" var="bootstrapTheme"></spring:url>
		<spring:url value="jquery.min.js" var="jqueryTheme"></spring:url>
		<spring:url value="app.css" var="cssLogin"></spring:url>
		<spring:url value="bootstrap.bundle.min.js" var="bootstrapJs"></spring:url>
		<spring:url value="all.css" var="allCss"></spring:url>
		 -->
		
		<link rel="icon" href="src/main/webapp/WEB-INF/views/kodeweaveFolder/tcc/favicon.ico">
		<link rel="stylesheet" href="kodeweaveFolder/tcc/bootstrap.min.css">
		<link rel="stylesheet" href="src/main/webapp/WEB-INF/views/kodeweaveFolder/tcc/jquery.min.js">
		<link rel="stylesheet" href="src/main/webapp/WEB-INF/views/kodeweaveFolder/tcc/app.css">
   		 <link rel="stylesheet" href="src/main/webapp/WEB-INF/views/kodeweaveFolder/tcc/bootstrap.bundle.min.js">
		<link rel="stylesheet" href="src/main/webapp/WEB-INF/views/kodeweaveFolder/tcc/all.css">
		
		 
</head>
<body>
  <div class="container">
    <div class="row">
      <div class="col-sm-9 col-md-7 col-lg-5 mx-auto">
        <div class="card card-signin my-5">
          <div class="card-body">    
            <img src="src/main/webapp/WEB-INF/views/kodeweaveFolder/tcc/kodeweave.png" alt="Logo kodeweave" class="logo-kodeweave">
            <h5 class="card-title text-center">Sign In</h5>
            <form class="form-signin" action="efetuaLogin" method="POST">
              <div class="form-label-group">
                <input type="cpf" id="login" class="form-control" placeholder="CPF" name=login required autofocus>
                <label for="login">CPF</label>
              </div>
            
              <div class="form-label-group">
                <input type="password" id="senha" class="form-control" placeholder="Password" name=senha required>
                <label for="senha">Password</label>
              </div>

              <div class="custom-control custom-checkbox mb-3">
                <input type="checkbox" class="custom-control-input" id="customCheck1">
                <label class="custom-control-label" for="customCheck1">Remember password</label>
              </div>
              <button class="btn btn-lg btn-primary btn-block text-uppercase" type="submit">Sign in</button>
              <hr class="my-4">
            </form>
          </div>
        </div>
      </div>
    </div>
  </div>
</body>
