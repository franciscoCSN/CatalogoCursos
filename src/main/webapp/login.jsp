<?xml version="1.0" encoding="UTF-8" ?>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
<title>Log in</title>
<!-- HTML5 Shim and Respond.js IE10 support of HTML5 elements and media queries -->
<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
<!--[if lt IE 10]>
      <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
      <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
      <![endif]-->
<!-- Meta -->
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1.0, user-scalable=0, minimal-ui">
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<meta name="description"
	content="Mega Able Bootstrap admin template made using Bootstrap 4 and it has huge amount of ready made feature, UI components, pages which completely fulfills any dashboard needs." />
<meta name="keywords"
	content="bootstrap, bootstrap admin template, admin theme, admin dashboard, dashboard template, admin template, responsive" />
<meta name="author" content="codedthemes" />
<!-- Favicon icon -->

<link rel="icon" href="<%= request.getContextPath() %>/assets/images/favicon.ico" type="image/x-icon">
<!-- Google font-->
<link href="https://fonts.googleapis.com/css?family=Roboto:400,500"
	rel="stylesheet">
<!-- Required Fremwork -->
<link rel="stylesheet" type="text/css"
	href="<%= request.getContextPath() %>/assets/css/bootstrap/css/bootstrap.min.css">
<!-- waves.css -->
<link rel="stylesheet" href="<%= request.getContextPath() %>/assets/pages/waves/css/waves.min.css"
	type="text/css" media="all">
<!-- themify-icons line icon -->
<link rel="stylesheet" type="text/css"
	href="<%= request.getContextPath() %>/assets/icon/themify-icons/themify-icons.css">
<!-- ico font -->
<link rel="stylesheet" type="text/css"
	href="<%= request.getContextPath() %>/assets/icon/icofont/css/icofont.css">
<!-- Font Awesome -->
<link rel="stylesheet" type="text/css"
	href="<%= request.getContextPath() %>/assets/icon/font-awesome/css/font-awesome.min.css">
<!-- Style.css -->
<link rel="stylesheet" type="text/css" href="<%= request.getContextPath() %>/assets/css/style.css">
</head>


<body themebg-pattern="theme1" style="background-color:#2ecc71">
	<!-- Pre-loader start -->
	<div class="theme-loader">
		<div class="loader-track">
			<div class="preloader-wrapper">
				<div class="spinner-layer spinner-blue">
					<div class="circle-clipper left">
						<div class="circle"></div>
					</div>
					<div class="gap-patch">
						<div class="circle"></div>
					</div>
					<div class="circle-clipper right">
						<div class="circle"></div>
					</div>
				</div>
				<div class="spinner-layer spinner-red">
					<div class="circle-clipper left">
						<div class="circle"></div>
					</div>
					<div class="gap-patch">
						<div class="circle"></div>
					</div>
					<div class="circle-clipper right">
						<div class="circle"></div>
					</div>
				</div>

				<div class="spinner-layer spinner-yellow">
					<div class="circle-clipper left">
						<div class="circle"></div>
					</div>
					<div class="gap-patch">
						<div class="circle"></div>
					</div>
					<div class="circle-clipper right">
						<div class="circle"></div>
					</div>
				</div>

				<div class="spinner-layer spinner-green">
					<div class="circle-clipper left">
						<div class="circle"></div>
					</div>
					<div class="gap-patch">
						<div class="circle"></div>
					</div>
					<div class="circle-clipper right">
						<div class="circle"></div>
					</div>
				</div>
			</div>
		</div>
	</div>

	<!-- Pre-loader end -->
	<section class="login-block">
		<!-- Container-fluid starts -->
		<div class="container-fluid">
			<div class="row">
				<div class="col-sm-12">
					<form id="cadItems" class="md-float-material form-material"
						action="/hotvenda/ServletLogin" method="post">
						<input id="userOfSession" name="userOfSession" type="hidden">
						<div class="text-center">
							
						</div>
						<div class="auth-box card">
							<div class="card-block">
								<div class="row m-b-20">
									<div class="col-md-12">
										<h3 class="text-center txt-primary">Log in</h3>
									</div>
								</div>

								<div class="form-group form-primary">
									<input type="text" id="login"  name="login" class="minput form-control"
										required> <span class="form-bar"></span> <label
										class="float-label">Usuário</label>
								</div>
								
								<div class="row">
									<div class="col-sm-6">
										<div class="form-group form-primary">
											<input type="password" id="password"  name="password"
												class="minput form-control" required> <span
												class="form-bar"></span> <label class="float-label">Senha</label>
										</div>
									</div>
									<SPAN style="color:red">${msg}</SPAN>
								</div>
								<div class="checkbox mb-3">
									<label> <input type="checkbox" value="lembrar de mim">
										Lembrar de mim
									</label><br>
									<a id="nocad" onclick="callwarn()" >Não sou cadastrado.</a>
								</div>

								

								<script type="text/javascript">
								function callwarn(){
									$("#aviso").modal();
								}
								
									var checkboxUm = document
											.querySelector(".cb1");
									var checkboxDois = document
											.querySelector(".cb2");
									
									function logar() {
										var action = "./logar";
										var login = document.getElementById('login').value;
										var password = document.getElementById('password').value;
										
									     
										 
										 
										 $.ajax({
										      
										     url:action,
										     method:"GET",
										     data:
										    	 "login="+login+
										    	 "&password="+password
										     ,
										     success: function (response) {		 
											 alert(response);
										    	if(response){
										    		document.getElementById('userOfSession').value = true;
													$("#cadItems").submit();	  
										    	}else{
										    		$("#msg").html = "usuario ou senha invalido"
										    	}
												  
										     }
										     
										 }).fail(function(xhr, status, errorThrown){
										    alert('Erro ao buscar usu\E1rio por nome: ' + xhr.responseText);
										 });
									}
										 
										 </script>
								<div class="row m-t-30">
									<div class="col-md-12">
										
										<button
											onclick=""
											type="submit" id="mbutton" style="background-color:#2ecc71"
											class="btn btn-primary btn-md btn-block waves-effect text-center m-b-20">Login</button>
											<label id="msg" style="color: red"></label>
									</div>
								</div>
								<hr />
								<div class="row">
									<div class="col-md-10">
										<p class="text-inverse text-left m-b-0">Thank you.</p>
										<p class="text-inverse text-left">
											<a href="ihttps://hotm.art/javaweb-fullstack"><b>Jdev Treinamento.</b></a>
										</p>
									</div>
									<div class="col-md-2">
										<img src="<%= request.getContextPath() %>/assets/images/blog/logo.png"
											alt="logo.png">
									</div>
								</div>
							</div>
						</div>
					</form>
				</div>
				<!-- end of col-sm-12 -->
			</div>
			<!-- end of row -->
		</div>


		<!-- end of container-fluid -->
	</section>
	<!-- Modal -->
	<div class="modal fade" id="aviso" tabindex="-1" role="dialog"
		aria-labelledby="exampleModalLabel" aria-hidden="true">
		<div class="modal-dialog" role="document">
			<div class="modal-content">
				<div class="modal-header">
					<h5 class="modal-title" id="exampleModalLabel">Aviso!</h5>
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
				</div>
				<div class="modal-body">
					 Formulario de registro não implementado.<br>
					 Se precisa de acesso a gerencia do sistema contate o admin. em:<br>
					 dcdsn.francisco@gmail.com
				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-secondary"
						data-dismiss="modal">Close</button>
					
				</div>
			</div>
		</div>
	</div>
	<!-- Warning Section Starts -->
	<!-- Older IE warning message -->
	<!--[if lt IE 10]>
<div class="ie-warning">
    <h1>Warning!!</h1>
    <p>You are using an outdated version of Internet Explorer, please upgrade <br/>to any of the following web browsers to access this website.</p>
    <div class="iew-container">
        <ul class="iew-download">
            <li>
                <a href="http://www.google.com/chrome/">
                    <img src="<%= request.getContextPath() %>/assets/images/browser/chrome.png" alt="Chrome">
                    <div>Chrome</div>
                </a>
            </li>
            <li>
                <a href="https://www.mozilla.org/en-US/firefox/new/">
                    <img src="<%= request.getContextPath() %>/assets/images/browser/firefox.png" alt="Firefox">
                    <div>Firefox</div>
                </a>
            </li>
            <li>
                <a href="http://www.opera.com">
                    <img src="<%= request.getContextPath() %>/assets/images/browser/opera.png" alt="Opera">
                    <div>Opera</div>
                </a>
            </li>
            <li>
                <a href="https://www.apple.com/safari/">
                    <img src="<%= request.getContextPath() %>/assets/images/browser/safari.png" alt="Safari">
                    <div>Safari</div>
                </a>
            </li>
            <li>
                <a href="http://windows.microsoft.com/en-us/internet-explorer/download-ie">
                    <img src="<%= request.getContextPath() %>/assets/images/browser/ie.png" alt="">
                    <div>IE (9 & above)</div>
                </a>
            </li>
        </ul>
    </div>
    <p>Sorry for the inconvenience!</p>
</div>
<![endif]-->
	<!-- Warning Section Ends -->
	<!-- Required Jquery -->
	<script type="text/javascript" src="<%= request.getContextPath() %>/assets/js/jquery/jquery.min.js"></script>
	<script type="text/javascript"
		src="<%= request.getContextPath() %>/assets/js/jquery-ui/jquery-ui.min.js "></script>
	<script type="text/javascript"
		src="<%= request.getContextPath() %>/assets/js/popper.js/popper.min.js"></script>
	<script type="text/javascript"
		src="<%= request.getContextPath() %>/assets/js/bootstrap/js/bootstrap.min.js "></script>
	<!-- waves js -->
	<script src="<%= request.getContextPath() %>/assets/pages/waves/js/waves.min.js"></script>
	<!-- jquery slimscroll js -->
	<script type="text/javascript"
		src="<%= request.getContextPath() %>/assets/js/jquery-slimscroll/jquery.slimscroll.js "></script>
	<!-- modernizr js -->
	<script type="text/javascript" src="<%= request.getContextPath() %>/assets/js/SmoothScroll.js"></script>
	<script src="<%= request.getContextPath() %>/assets/js/jquery.mCustomScrollbar.concat.min.js "></script>
	<!-- i18next.min.js -->
	<script type="text/javascript"
		src="bower_components/i18next/js/i18next.min.js"></script>
	<script type="text/javascript"
		src="bower_components/i18next-xhr-backend/js/i18nextXHRBackend.min.js"></script>
	<script type="text/javascript"
		src="bower_components/i18next-browser-languagedetector/js/i18nextBrowserLanguageDetector.min.js"></script>
	<script type="text/javascript"
		src="bower_components/jquery-i18next/js/jquery-i18next.min.js"></script>
	<script type="text/javascript" src="<%= request.getContextPath() %>/assets/js/common-pages.js"></script>
</body>

</html>