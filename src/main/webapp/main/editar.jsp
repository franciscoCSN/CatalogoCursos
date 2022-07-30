<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="en">

<head>
<link rel="stylesheet"
	href="https://use.fontawesome.com/releases/v5.11.2/css/all.css" />
<!-- Google Fonts Roboto -->
<link rel="stylesheet"
	href="https://fonts.googleapis.com/css2?family=Roboto:wght@300;400;500;700&display=swap" />
<!-- MDB -->
<link rel="stylesheet" href="css/mdb.min.css" />
<!-- Custom styles -->
<link rel="stylesheet" href="css/style.css" />
<title>DEV CURSOS ONLINE</title>
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
	content="Dev cursos online, aqui vc encontra os ,melhores Cursos do mercado, que te ensinam o desenvolvimento de soltware e te preparam para omercado de trabalho." />
<meta name="keywords"
	content="software,curso online,java kotlin,flutter,hotmart,desenvolvimento,análise de sistemas" />
<meta name="author" content="fcsn" />
<!-- Favicon icon -->
<link rel="icon"
	href="<%= request.getContextPath()%>/assets/images/favicon.ico"
	type="image/x-icon">
	<!-- Google font-->
<link href="https://fonts.googleapis.com/css?family=Roboto:400,500"
	rel="stylesheet">
	<!-- Required Fremwork -->
<link rel="stylesheet" type="text/css"
	href="<%= request.getContextPath()%>/assets/css/bootstrap/css/bootstrap.min.css">
	<!-- waves.css -->
<link rel="stylesheet"
	href="<%= request.getContextPath()%>/assets/pages/waves/css/waves.min.css"
	type="text/css" media="all">
	<!-- themify-icons line icon -->
<link rel="stylesheet" type="text/css"
	href="<%= request.getContextPath()%>/assets/icon/themify-icons/themify-icons.css">
	<!-- ico font -->
<link rel="stylesheet" type="text/css"
	href="<%= request.getContextPath()%>/assets/icon/icofont/css/icofont.css">
	<!-- Font Awesome -->
<link rel="stylesheet" type="text/css"
	href="<%= request.getContextPath()%>/assets/icon/font-awesome/css/font-awesome.min.css">
	<!-- Style.css -->
<link rel="stylesheet" type="text/css"
	href="<%= request.getContextPath()%>/assets/css/style.css">
<link rel="stylesheet" type="text/css"
	href="<%= request.getContextPath()%>/assets/css/jquery.mCustomScrollbar.css">
</head>

<body>
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
	<div id="pcoded" class="pcoded">
		<div class="pcoded-overlay-box"></div>
		<div class="pcoded-container navbar-wrapper">
			<nav class="navbar header-navbar pcoded-header"
				style="background-color: #2ecc71">
				<div class="navbar-wrapper">
					<div class="navbar-logo">

						<div class="mobile-search waves-effect waves-light">
							<div class="header-search">
								<div class="main-search morphsearch-search">
									<div class="input-group">
										<span class="input-group-addon search-close"><i
											class="ti-close"></i></span> <input type="text" class="form-control"
											placeholder="Enter Keyword"><span
											class="input-group-addon search-btn"><i
											class="ti-search"></i></span>
									</div>
								</div>
							</div>
						</div>
						<a href="index.html"> <img class="img-fluid"
							src="<%= request.getContextPath()%>/assets/images/logo2.png"
							alt="Theme-Logo" />
						</a> <a class="mobile-options waves-effect waves-light"> <i
							class="ti-more"></i>
						</a>
					</div>

					<div class="navbar-container container-fluid">
						<ul class="nav-left">
							<li>
								<div class="sidebar_toggle">
									<a href="javascript:void(0)"><i class="ti-menu"></i></a>
								</div>
							</li>
							<li class="header-search">
								<div class="main-search morphsearch-search">
									<div class="input-group">
										<span class="input-group-addon search-close"><i
											class="ti-close"></i></span> <input type="text" class="form-control"><span
											class="input-group-addon search-btn"><i
											class="ti-search"></i></span>
									</div>
								</div>
							</li>
							<li><a href="#!" onclick="javascript:toggleFullScreen()"
								class="waves-effect waves-light"> <i class="ti-fullscreen"></i>
							</a></li>
						</ul>
						<ul class="nav-right">
							<li class="header-notification">

								<ul class="show-notification">
									<li></li>
									<li class="waves-effect waves-light">
										<div class="media">

											<div class="media-body"></div>
										</div>
									</li>
									<li class="waves-effect waves-light">
										<div class="media">
											<img class="d-flex align-self-center img-radius"
												src="<%= request.getContextPath()%>/assets/images/avatar-4.jpg"
												alt="Generic placeholder image">
											<div class="media-body"></div>
										</div>
									</li>
									<li class="waves-effect waves-light">
										<div class="media">
											<img class="d-flex align-self-center img-radius"
												src="<%= request.getContextPath()%>/assets/images/avatar-3.jpg"
												alt="Generic placeholder image">
											<div class="media-body"></div>
										</div>
									</li>
								</ul>
							</li>
							<li class="user-profile header-notification"><a href="#!"
								class="waves-effect waves-light"> <i class="ti-angle-down"></i>
							</a>
								<ul class="show-notification profile-notification">
									<li class="waves-effect waves-light"><a
										href="<%=request.getContextPath() %>/index.jsp"> <i class="ti-user"></i> Home
									</a></li>
									
									<li class="waves-effect waves-light"><a
										href="<%=request.getContextPath() %>/main/manage.jsp"> <i class="ti-user"></i> Cadastrar Item
									</a></li>
									
								</ul></li>
						</ul>
					</div>
				</div>
			</nav>


			<div class="">
				<!--pcoded-content  -->
				<!-- Page-header start -->
				<div class="page-header">
					<div class="" style="background-color: #00aa00">
						<div class="row align-items-center">
							<div class="col-md-8">
								<div class="page-header-title"></div>
							</div>
							<div class="col-md-4">
								<ul class="breadcrumb-title">
									<li class="breadcrumb-item"><a href="index.html"> <i
											class="fa fa-home"></i>
									</a></li>


								</ul>
							</div>
						</div>
					</div>
				</div>
				<p></p>
				<p></p>
				<br> <!-- Page-header end -->
				<div class="pcoded-inner-content">
					<div class="main-body">
						<div class="page-wrapper">
							<!-- Page-body start -->
							<div class="page-body">
								<div class="row">
									<div class="row" id="pbox">
										<!-- container de items  -->



									</div>
									<!-- end of container de items -->

									<div class="col-sm-12">
									
										<jsp:include page="./footer.jsp"></jsp:include>

									</div>


								</div>

							</div>
						</div>
						<!-- Page-body end -->
					</div>
				</div>
			</div>
		</div>
		<!-- Main-body end -->
		<div id="styleSelector"></div>
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
                    <img src="<%= request.getContextPath()%>/assets/images/browser/chrome.png" alt="Chrome">
                    <div>Chrome</div>
                </a>
            </li>
            <li>
                <a href="https://www.mozilla.org/en-US/firefox/new/">
                    <img src="<%= request.getContextPath()%>/assets/images/browser/firefox.png" alt="Firefox">
                    <div>Firefox</div>
                </a>
            </li>
            <li>
                <a href="http://www.opera.com">
                    <img src="<%= request.getContextPath()%>/assets/images/browser/opera.png" alt="Opera">
                    <div>Opera</div>
                </a>
            </li>
            <li>
                <a href="https://www.apple.com/safari/">
                    <img src="<%= request.getContextPath()%>/assets/images/browser/safari.png" alt="Safari">
                    <div>Safari</div>
                </a>
            </li>
            <li>
                <a href="http://windows.microsoft.com/en-us/internet-explorer/download-ie">
                    <img src="<%= request.getContextPath()%>/assets/images/browser/ie.png" alt="">
                    <div>IE (9 & above)</div>
                </a>
            </li>
        </ul>
    </div>
    <p>Sorry for the inconvenience!</p>
</div>
<![endif]-->









	<!-- Modal -->
	<div class="modal fade bd-example-modal-lg" id="editmodal" tabindex="-1" role="dialog" aria-labelledby="myLargeModalLabel" aria-hidden="true">
  <div class="modal-dialog modal-lg">
    <div class="modal-content">
				<div class="modal-header">
					<h5 class="modal-title" id="exampleModalLabel">Editar Item</h5>
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
				</div>
				<div class="modal-body">


					<div class="card-block">
						<!-- ***********************************************************************************************************-->

						<form id="formItem2" name="formItem2" enctype="multipart/form-data"
							action="<%= request.getContextPath() %>/ServletEditItem" method="post">
							<div class="form-row">
								<div class="col">

									<input id="m-id" name="m-id" placeholder="ID" type="number"
										style="margin-top: 3px; margin-left: 0px;"
										class="form-control" value="${modelitem.id}"><input
										id="m-title" name="m-title" type="text" class="form-control"
										style="margin-top: 3px; margin-left: 0px;"
										placeholder="Titulo" value="${modelitem.titulo}"><input
										id="m-hotlink" name="m-hotlink"
										style="margin-top: 3px; margin-left: 0px;"
										value="${modelitem.hotlik}" type="text" class="form-control"
										placeholder="Hot Link">
									<div class="form-group">
										<label for="description">Descrição</label>
										<textarea class="form-control" id="m-description"
											name="m-description" rows="3">${modelitem.descricao}</textarea>
										<input type="file" id="base64_image" name="base64_image"
											accept="image/*"
											onchange="viewimg('m-tagimg_file','base64_image')"
											class="form-control-file btn btn-success"
											style="width: 100%; margin-top: 3px; margin-left: 0px; padding: 12px;">
										<button type="submit"
											class="form-control-file btn btn-success" 
											style="padding: 12px; margin-top: 3px;  margin-left: 0px;">Atualizar</button>
										
									</div>

									<div></div>
								</div>
								<div class="col">
									<div>

										<img width="100%" id="m-tagimg_file" name="m-tagimg_file"
											  alt="img">
										<p>
											<span id="img_msg"></span>
									</div>

								</div>
							</div>

						</form>
						<!-- ***********************************************************************************************************-->
					</div>


				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-secondary"
						data-dismiss="modal">Close</button>

				</div>
			</div>
		</div>
	</div>

	<!-- Warning Section Ends -->
	<!-- Required Jquery -->
	<script type="text/javascript"
		src="<%= request.getContextPath()%>/assets/js/jquery/jquery.min.js"></script>
	<script type="text/javascript"
		src="<%= request.getContextPath()%>/assets/js/jquery-ui/jquery-ui.min.js "></script>
	<script type="text/javascript"
		src="<%= request.getContextPath()%>/assets/js/popper.js/popper.min.js"></script>
	<script type="text/javascript"
		src="<%= request.getContextPath()%>/assets/js/bootstrap/js/bootstrap.min.js "></script>
	<script type="text/javascript"
		src="<%= request.getContextPath()%>/assets/pages/widget/excanvas.js "></script>
	<!-- waves js -->
	<script
		src="<%= request.getContextPath()%>/assets/pages/waves/js/waves.min.js"></script>
	<!-- jquery slimscroll js -->
	<script type="text/javascript"
		src="<%= request.getContextPath()%>/assets/js/jquery-slimscroll/jquery.slimscroll.js "></script>
	<!-- modernizr js -->
	<script type="text/javascript"
		src="<%= request.getContextPath()%>/assets/js/SmoothScroll.js"></script>
	<script
		src="<%= request.getContextPath()%>/assets/js/jquery.mCustomScrollbar.concat.min.js "></script>
	<script src="<%= request.getContextPath()%>/assets/js/pcoded.min.js"></script>
	<script
		src="<%= request.getContextPath()%>/assets/js/vertical-layout.min.js "></script>
	<script
		src="<%= request.getContextPath()%>/assets/js/jquery.mCustomScrollbar.concat.min.js"></script>

	<script>
    $(document).ready(function() {
        $('[data-toggle="tooltip"]').tooltip();
    });
    
    $(document).ready(function() {
        $('[data-toggle="popover"]').popover({
            html: true,
            content: function() {
                return $('#primary-popover-content').html();
            }
        });
    });

</script>
	<!-- Custom js -->
	<script type="text/javascript"
		src="<%= request.getContextPath()%>/assets/js/script.js">
<script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
	<script type="text/javascript">

function getItems() {
    
	var action = "getitems";
	var urlAction = "<%= request.getContextPath()%>/ServletItem";
	
	$.ajax({
	      
	     url:urlAction,
	     method:"get",
	     data:"action="+ action,
	     success: function (response) {
	    	 
		 	var json = JSON.parse(response);
		 	
		 	//json[0].descricao
		 	$("#pbox > div ").remove();
		 	var i;
	    	for( i = 0; i < json.length; i++){
	    		
		 		$("#pbox").append("<div class=\"col-xl-4\">\n<!-- Tooltip style 1 card start -->\n<div class=\"card o-visible\">\n<div class=\"card-header\">\n<h5>"+json[i].titulo+"</h5>\n</div>\n<div>\n<a class=\"\" href=\""+json[i].hotlik+"\"><img id=\"\" width=\"100%\" alt=\""+json[i].titulo+"\" src=\""+json[i].imagem_base64+"\"></a>\n</div>\n<div class=\"card-block\">\n<p>"+json[i].descricao+"<p>\n<a onclick=\"editmodal('"+json[i].id+"')\"  class=\"btn btn-success\" style=\"width: 100%;\" >Editar</a><p>\n<a onclick=\"excluir('"+json[i].id+"')\"  class=\"btn btn-info\" style=\"width: 100%;\" >Excluir</a>\n</div>\n</div>\n<!-- Tooltip style 1 card end -->\n</div>\n");
		 	}
			
		}
	     
	 }).fail(function(xhr, status, errorThrown){
	    alert('Erro ao buscar usuário por nome: ' + xhr.responseText);
	 });
	  
}

$(document).ready(function(){
    
	getItems();
        
});


function editmodal(id){
	getitembyid(id);
	//$("#editmodal").modal();
	
	
}
/*
function getitembyid3(id){
	var action = "getitembyid";
	var urlAction = "<%= request.getContextPath()%>/ServletItem";
	
	$.ajax({
		 url:urlAction,
	     method:"get",
	     data:"action="+action+ 
	    	 '&id='+id,
	     success:function(response){
	    	 var json = response;//JSON.parse(response);
	    	 alert(response);
				document.getElementById('id').value = json.id;
				document.getElementById('title').value = json.title;
				document.getElementById('hotlink').value = json.hotlink;
				document.getElementById('description').value = json.description;
				document.getElementById('tagimg_file').src = json.base64_image;
				 alert(); 
	     }
	     
	 }).fail(function(xhr, status, errorThrown){
	    alert('Erro ao buscar usuário por nome: ' + xhr.responseText);
	 });
}
*/
function excluir(id){
	
	
		var action = "deleteitembyid";
		var urlAction = "<%= request.getContextPath()%>/ServletEditItem";
		
		$.ajax({
			 url:urlAction,
		     method:"GET",
		     data:"action="+action+ 
		    	 "&id="+id,
		     success: function (response) {
		    	 
			 	alert(response);
			 	getItems();
			}
		     
		 }).fail(function(xhr, status, errorThrown){
		    alert('Erro ao buscar usuário por nome: ' + xhr.responseText);
		 });
		  
		
}


function getitembyid(id){
	var action = "getitembyid";
	var urlAction = "<%= request.getContextPath()%>/ServletEditItem";
	
	$.ajax({
		 url:urlAction,
	     method:"GET",
	     data:"action="+action+ 
	    	 "&id="+id,
	     success: function (response) {
	    	 
		 	var json = JSON.parse(response);
		 	$("#editmodal").modal();//aciona modal  
		 	//alert(json[0].id);
		 	$("#m-id").val(json[0].id);
			$("#m-title").val(json[0].titulo);
			$("#m-hotlink").val(json[0].hotlik);
			$("#m-description").val(json[0].descricao);
			$("#m-tagimg_file").attr('src', json[0].imagem_base64);//.src(json[0].imagem_base64);
		 	
			
			
			
		}
	     
	 }).fail(function(xhr, status, errorThrown){
	    alert('Erro ao buscar usuário por nome: ' + xhr.responseText);
	 });
	  
}
  

function viewimg(tagimg_file, base64_image) {
    
    var preview = document.getElementById(tagimg_file); // campo IMG html
    var fileUser = document.getElementById(base64_image).files[0];//input file
    var reader = new FileReader();
    
    reader.onloadend = function (){
	    preview.src = reader.result; /*Carrega a foto na tela*/
    };
    
    if (fileUser) {
	  reader.readAsDataURL(fileUser); /*Preview da imagem*/
    }else {
	 preview.src=  '';
    }
}


</script>
	<!-- MDB -->
	<script type="text/javascript" src="js/mdb.min.js"></script>
	<!-- Custom scripts -->
	<script type="text/javascript" src="js/script.js"></script>


</body>

</html>