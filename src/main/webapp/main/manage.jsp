<%@page import="dao.DaoItemRepository"%>
<%@page import="model.ModelItem"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <title>Cadastrar Items </title>
    <!-- HTML5 Shim and Respond.js IE10 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 10]>
      <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
      <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
      <![endif]-->
      <!-- Meta -->
      <meta charset="utf-8">
      <meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=0, minimal-ui">
      <meta http-equiv="X-UA-Compatible" content="IE=edge" />
      <meta name="description" content="Mega Able Bootstrap admin template made using Bootstrap 4 and it has huge amount of ready made feature, UI components, pages which completely fulfills any dashboard needs." />
      <meta name="keywords" content="bootstrap, bootstrap admin template, admin theme, admin dashboard, dashboard template, admin template, responsive" />
      <meta name="author" content="codedthemes" />
      <!-- Favicon icon -->
      <link rel="icon" href="<%= request.getContextPath() %>/assets/images/favicon.ico" type="image/x-icon">
    <!-- Google font-->
    <link href="https://fonts.googleapis.com/css?family=Roboto:400,500" rel="stylesheet">
    <!-- waves.css -->
    <link rel="stylesheet" href="<%= request.getContextPath() %>/assets/pages/waves/css/waves.min.css" type="text/css" media="all">
      <!-- Required Fremwork -->
      <link rel="stylesheet" type="text/css" href="<%= request.getContextPath() %>/assets/css/bootstrap/css/bootstrap.min.css">
      <!-- waves.css -->
      <link rel="stylesheet" href="<%= request.getContextPath() %>/assets/pages/waves/css/waves.min.css" type="text/css" media="all">
      <!-- themify icon -->
      <link rel="stylesheet" type="text/css" href="<%= request.getContextPath() %>/assets/icon/themify-icons/themify-icons.css">
      <!-- Font Awesome -->
      <link rel="stylesheet" type="text/css" href="<%= request.getContextPath() %>/assets/icon/font-awesome/css/font-awesome.min.css">
      <!-- scrollbar.css -->
      <link rel="stylesheet" type="text/css" href="<%= request.getContextPath() %>/assets/css/jquery.mCustomScrollbar.css">
        <!-- am chart export.css -->
        <link rel="stylesheet" href="https://www.amcharts.com/lib/3/plugins/export/export.css" type="text/css" media="all" />
      <!-- Style.css -->
      <link rel="stylesheet" type="text/css" href="<%= request.getContextPath() %>/assets/css/style.css">
      
      

  </head>

<style>
.scrolling-wrapper {
  overflow-x: scroll;
  overflow-y: hidden;
  white-space: nowrap;

  .card {
    display: inline-block;
  }
}

</style>

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
          <nav class="navbar header-navbar pcoded-header" style="background-color:#2ecc71">
              <div class="navbar-wrapper">
                  <div class="navbar-logo">
                      <a class="mobile-menu waves-effect waves-light" id="mobile-collapse" href="#!">
                          <i class="ti-menu"></i>
                      </a>
                      <div class="mobile-search waves-effect waves-light">
                          <div class="header-search">
                              <div class="main-search morphsearch-search">
                                  <div class="input-group">
                                      <span class="input-group-addon search-close"><i class="ti-close"></i></span>
                                      <input type="text" class="form-control" placeholder="Enter Keyword">
                                      <span class="input-group-addon search-btn"><i class="ti-search"></i></span>
                                  </div>
                              </div>
                          </div>
                      </div>
                      <a href="index.html">
                          <img class="img-fluid" src="<%= request.getContextPath() %>/assets/images/logo2.png" alt="Theme-Logo" />
                      </a>
                      <a class="mobile-options waves-effect waves-light">
                          <i class="ti-more"></i>
                      </a>
                  </div>
                
                  <div class="navbar-container container-fluid">
                      <ul class="nav-left">
                          <li>
                              <div class="sidebar_toggle"><a href="javascript:void(0)"><i class="ti-menu"></i></a></div>
                          </li>
                          <li class="header-search">
                              <div class="main-search morphsearch-search">
                                  <div class="input-group">
                                      <span class="input-group-addon search-close"><i class="ti-close"></i></span>
                                      <input type="text" class="form-control">
                                      <span class="input-group-addon search-btn"><i class="ti-search"></i></span>
                                  </div>
                              </div>
                          </li>
                          <li>
                              <a href="#!" onclick="javascript:toggleFullScreen()" class="waves-effect waves-light">
                                  <i class="ti-fullscreen"></i>
                              </a>
                          </li>
                      </ul>
                      <ul class="nav-right">
                          <li class="header-notification">
                              <a href="#!" class="waves-effect waves-light">
                                  
                                  <span class="badge bg-c-red"></span>
                              </a>
                              <ul class="show-notification">
                                  <li>
                                      
                                  </li>
                                  <li class="waves-effect waves-light">
                                      <div class="media">
                                          
                                          <div class="media-body">
                                              
                                          </div>
                                      </div>
                                  </li>
                                  <li class="waves-effect waves-light">
                                      <div class="media">
                                          <div class="media-body">
                                          </div>
                                      </div>
                                  </li>
                                  <li class="waves-effect waves-light">
                                      <div class="media">
                                          
                                          <div class="media-body">
                                              
                                          </div>
                                      </div>
                                  </li>
                              </ul>
                          </li>
                          <li class="user-profile header-notification">
                              
                              
                          </li>
                      </ul>
                  </div>
              </div>
          </nav>

          <div class="pcoded-main-container">
              <div class="pcoded-wrapper">
              
                  <nav class="pcoded-navbar"  style="background-color:rgba(240,255,240,0.6)">
                      <div class="sidebar_toggle"><a href="#"><i class="icon-close icons"></i></a></div>
                      <div class=""     >
                          <div class="">
                              <div class="main-menu-header">
                                  
                                  <div class="user-details">
                                  
                                  </div>
                              </div>
        
                              <div class="main-menu-content">
                                  <ul>
                                      <li class="more-details">
                                     
                                      </li>
                                  </ul>
                              </div>
                          </div>
                          <div class="p-15 p-b-0">
                              <form class="form-material">
                                  <div class="form-group form-primary">
                                      <input type="text" name="footer-email" class="form-control" required="">
                                      <span class="form-bar"></span>
                                      <label class="float-label">
                                  </div>
                              </form>
                          </div>
                          <div class="pcoded-navigation-label" data-i18n="nav.category.navigation">Gerência</div>
                          <ul class="pcoded-item pcoded-left-item">
                              <li class="active">
                                  <a href="<%= request.getContextPath() %>/main/manage.jsp" class="waves-effect waves-dark">
                                      <span class="pcoded-micon"><i class="ti-home"></i><b>D</b></span>
                                      <span class="pcoded-mtext" data-i18n="nav.dash.main">Cadastrar Items</span>
                                      <span class="pcoded-mcaret"></span>
                                  </a>
                              </li>
                               <li>
                                  <a href="<%= request.getContextPath() %>/main/editar.jsp" class="waves-effect waves-dark">
                                      <span class="pcoded-micon"><i class="ti-layers"></i><b>FC</b></span>
                                      <span class="pcoded-mtext" data-i18n="nav.form-components.main">Editar Items</span>
                                      <span class="pcoded-mcaret"></span>
                                  </a>
                              </li>
                          </ul>
                          
                         </div> 
                          
                  </nav>
                  <div class="pcoded-content">
                      <!-- Page-header start -->
                      <div class="" style="background-color:rgba(240,255,240,0.8); ">
                          <div class="page-block">
                              <div class="row align-items-center" style="padding-left:50px;padding-top:30px;padding-bottom:30px;">
                                  <div class="col-md-8">
                                      <div class="page-header-title" >
                                          <h5 class="m-b-10">Cadastrar Items</h5>
                                          <p class="m-b-0">| - ></p>
                                      </div>
                                  </div>
                                  <div class="col-md-4">
                                      <ul class="breadcrumb-title">
                                          <li class="breadcrumb-item">
                                              <a href="<%=request.getContextPath() %>/index.html"> <i class="fa fa-home"></i> </a>
                                          </li>
                                          <li class="breadcrumb-item"><a href="#!">Home</a>
                                          </li>
                                      </ul>
                                  </div>
                              </div>
                          </div>
                      </div>
                      <!-- Page-header end -->
                        <div class="pcoded-inner-content">
                            <!-- Main-body start -->
                            <div class="main-body">
                                <div class="page-wrapper">
                                    <!-- Page-body start -->
                                    <div class="page-body">
     <div id="pageviews" class="row scrolling-wrapper"><!-- task, page, download counter  start -->
                                            
                                            
                                            
                                            
                                            
    </div><!-- task, page, download counter  end -->
    <div class="row" >
                                           
                                           <!-- Page-header end -->
						<div class="pcoded-inner-content">
							<div class="main-body">
								<div class="page-wrapper">
									<div class="page-body">
										<div class="row">
											<div class="col-sm-12">
												<div class="card">
													<div class="card-header">
														<h5>Formulario de cadastro</h5>
														<span>Item</span>
														<div class="card-header-right">
															<ul class="list-unstyled card-option">
																<li><i class="fa fa-chevron-left"></i></li>
																<li><i class="fa fa-window-maximize full-card"></i></li>
																<li><i class="fa fa-minus minimize-card"></i></li>
																<li><i class="fa fa-refresh reload-card"></i></li>
																<li><i class="fa fa-times close-card"></i></li>
															</ul>
														</div>
													</div>
													
													
													<div class="card-block" >
<!-- ***********************************************************************************************************-->
														
													<form   id="formItem" name="formItem" enctype="multipart/form-data"	action="<%= request.getContextPath() %>/ServletItem" method="post">	
													<div class="form-row" >
														<div class="col" >

															<input id="id" name="id" placeholder="ID" type="number" style="margin-top: 3px; margin-left: 0px;"
															class="form-control" value="${modelitem.id}">

															<input	id="title" name="title" type="text" class="form-control" style="margin-top: 3px; margin-left: 0px;"
															placeholder="Titulo" value="${modelitem.titulo}">
															<input id="hotlink" name="hotlink" style="margin-top: 3px; margin-left: 0px;" value="${modelitem.hotlik}"
															type="text" class="form-control" placeholder="Hot Link">
															
															<div class="form-group">
																<label for="description">Descrição</label>
												<textarea class="form-control" id="description" name="description" rows="3">${modelitem.descricao}</textarea>
															 <input type="file" id="base64_image" name="base64_image" accept="image/*" 
															 onchange="viewimg('tagimg_file','base64_image')" class="form-control-file btn btn-success" 
															 style="width:100%;margin-top: 3px; margin-left: 0px;padding:12px;" >
															 
															 <button   type="submit" 
															 class="form-control-file btn btn-success" style="padding:12px; margin-top: 3px; margin-left: 0px;">Cadastrar</button>
															 <button   type="button" onclick="limpaform()"
															 class="form-control-file btn btn-primary" style="padding:12px; margin-top: 3px; margin-left: 0px;">Novo Item</button>
															 </div>
															
															<div>
															 
															</div>	
														</div>
														<div class="col">
														<div>
																<c:if test="${modelitem.imagem_base64 == '' || modelitem.imagem_base64 == null }">
																<img width="100%" id="tagimg_file"	name="tagimg_file"
																src="https://mdbootstrap.com/img/Photos/Others/placeholder-avatar.jpg"
																class=""
																alt="">
																</c:if>
																<c:if test="${modelitem.imagem_base64 != '' && modelitem.imagem_base64 != null }">
																<img width="100%" id="tagimg_file"	name="tagimg_file"
																src="${modelitem.imagem_base64}"
																class=""
																alt="">
																</c:if>
																<p>
																<span id="img_msg" ></span>
															
															<!--  <img alt="Imagem User" id="fotoembase64" name="fotoembase64" src=".<%= request.getContextPath() %>/assets/images/user.png" width="250px"> -->
															
														</div>
														
														</div>
													</div>	
													
													
													
														
														
													</form>
<!-- ***********************************************************************************************************-->														
													</div>
												</div>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
                                           
    
                                           
                                        </div>
                                    </div>
                                    <!-- Page-body end -->
                                </div>
                                <div id="styleSelector"> </div>
                            </div>
                        </div>
                    </div>
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
    <script type="text/javascript" src="<%= request.getContextPath() %>/assets/js/jquery-ui/jquery-ui.min.js "></script>
    <script type="text/javascript" src="<%= request.getContextPath() %>/assets/js/popper.js/popper.min.js"></script>
    <script type="text/javascript" src="<%= request.getContextPath() %>/assets/js/bootstrap/js/bootstrap.min.js "></script>
    <script type="text/javascript" src="<%= request.getContextPath() %>/assets/pages/widget/excanvas.js "></script>
    <!-- waves js -->
    <script src="<%= request.getContextPath() %>/assets/pages/waves/js/waves.min.js"></script>
    <!-- jquery slimscroll js -->
    <script type="text/javascript" src="<%= request.getContextPath() %>/assets/js/jquery-slimscroll/jquery.slimscroll.js "></script>
    <!-- modernizr js -->
    <script type="text/javascript" src="<%= request.getContextPath() %>/assets/js/modernizr/modernizr.js "></script>
    <!-- slimscroll js -->
    <script type="text/javascript" src="<%= request.getContextPath() %>/assets/js/SmoothScroll.js"></script>
    <script src="<%= request.getContextPath() %>/assets/js/jquery.mCustomScrollbar.concat.min.js "></script>
    <!-- Chart js -->
    <script type="text/javascript" src="<%= request.getContextPath() %>/assets/js/chart.js/Chart.js"></script>
    <!-- amchart js -->
    <script src="https://www.amcharts.com/lib/3/amcharts.js"></script>
    <script src="<%= request.getContextPath() %>/assets/pages/widget/amchart/gauge.js"></script>
    <script src="<%= request.getContextPath() %>/assets/pages/widget/amchart/serial.js"></script>
    <script src="<%= request.getContextPath() %>/assets/pages/widget/amchart/light.js"></script>
    <script src="<%= request.getContextPath() %>/assets/pages/widget/amchart/pie.min.js"></script>
    <script src="https://www.amcharts.com/lib/3/plugins/export/export.min.js"></script>
    <!-- menu js -->
    <script src="<%= request.getContextPath() %>/assets/js/pcoded.min.js"></script>
    <script src="<%= request.getContextPath() %>/assets/js/vertical-layout.min.js "></script>
    <!-- custom js -->
    <script type="text/javascript" src="<%= request.getContextPath() %>/assets/pages/dashboard/custom-dashboard.js"></script>
    <script type="text/javascript" src="<%= request.getContextPath() %>/assets/js/script.js "></script>
    <script type="text/javascript"
		src="<%= request.getContextPath() %>/assets/js/script.js "></script>
	<script type="text/javascript"> 
/* 	var files = document.getElementById('filePoster');
	var submit = document.getElementById('submitFiles');
	//var warning = document.getElementById('warning');
	files.addEventListener("change", function () {
	  if (files.files.length > 10) {
	    submit.disabled = true;
	    warning.classList += "warn"
	    return;
	  }
	  warning.classList -= "warn";
	  submit.disabled = false;
	});
	 */
	
 	function visualizarImg(fotoembase64, filefoto) {
	    
	    
	    var preview = document.getElementById(fotoembase64); // campo IMG html
	    var fileUser = document.getElementById(filefoto).files[0];
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
	 
	function viewimg2(myavatar,filename){
		var preview = document.getElementById(myavatar);
		var _filename = document.getElementById(filename).files[0];
		var imgbase64 = document.getElementById('imgbase64field');
		var reader = new FileReader();
		
		reader.onloadend = function(){
			preview.src = reader.result;
			imgbase64.value = preview.src;
		};
		
		if(_filename){
			reader.readAsDataURL(_filename);
		}else{
			preview.src = '';
		}
		
	} 
	
	function limpaform(){
		    
		    var elementos = document.getElementById("formItem").elements; /*Retorna os elementos html dentro do form*/
		    
		    for (p = 0; p < elementos.length; p ++){
			    elementos[p].value = '';
		    }
		
	}
</script>


	<!-- Modal -->
	<div class="modal fade" id="sobre" tabindex="-1" role="dialog"
		aria-labelledby="exampleModalLabel" aria-hidden="true">
		<div class="modal-dialog" role="document">
			<div class="modal-content">
				<div class="modal-header">
					<h5 class="modal-title" id="exampleModalLabel">Modal title</h5>
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
				</div>
				<div class="modal-body">
					<img id="test" src="">
				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-secondary"
						data-dismiss="modal">Close</button>
					<button type="button" class="btn btn-primary">Save changes</button>
				</div>
			</div>
		</div>
	</div>
    
          <script type="text/javascript">
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
												

													/* function saveItemData() {
														var id = document.getElementById('id').value;
														var title = document.getElementById('title').value;
														var hotlink = document.getElementById('hotlink').value;
														var description = document.getElementById('description').value;
														var base64_image = document.getElementById('base64_image').value;
														
														 $.ajax({
														      
														    url:"./ServletItem",
														    type : "POST",
														    processData: true,
														    beforeSend: function (xhr) {
														    xhr.setRequestHeader ("X-Atlassian-Token", "no-check");
														    xhr.setRequestHeader("Content-Type", "multipart/form-data");
														    xhr.setRequestHeader("charset", "UTF-8");
														    },
														    data:{"id":id,
														    	 "title":title,
														    	 "hotlink":hotlink,
														    	 "description":description,
														    	 "base64_image":base64_image
														     },
														     success: function (response) {		 
															 //alert(response);
														    	var json = JSON.parse(response);
																document.getElementById('id').value = json.id;
																document.getElementById('title').value = json.title;
																document.getElementById('hotlink').value = json.hotlink;
																document.getElementById('description').value = json.description;
																document.getElementById('tagimg_file').src = json.base64_image;
																  
														     }
														     
														 }).fail(function(xhr, status, errorThrown){
														    alert('Erro ao buscar usuário por nome: ' + xhr.responseText);
														 });
														
													}
													  */  
													 

													
													function getItems() {
													    
														var action = "getitems";
														$.ajax({
														      
														     url:"./ServletItem",
														     method:"get",
														     data:"action="+ action,
														     success: function (response) {
														    	 
															 	var json = JSON.parse(response);
															 	
															 	//json[0].descricao
															 	
															 	var i;
														    	for( i = 0; i < json.length; i++){
															 		
															 		$("#pageviews").append("<div class=\"col-xl-3 col-md-6\"><div class=\"card\"><div class=\"card-block\"><div class=\"row align-items-center\"><div class=\"col-8\"><h4 class=\"text-c-green\">"+json[i].contador_visita+"</h4><h6 class=\"text-muted m-b-0\">Visitas</h6></div><div class=\"col-4 text-right\"><i class=\"fa fa-file-text-o f-28\"></i></div></div></div><div class=\"card-footer bg-c-green\"><div class=\"row align-items-center\"><div class=\"col-9\"><p class=\"text-white m-b-0\">"+json[i].titulo+"</p></div><div class=\"col-3 text-right\"><i class=\"fa fa-line-chart text-white f-16\"></i></div></div></div></div></div>");
															 	}
																
															}
														     
														 }).fail(function(xhr, status, errorThrown){
														    alert('Erro ao buscar usuário por nome: ' + xhr.responseText);
														 });
														  
													}
													  

													  function callmodal(){
														  $("#sobre").modal();
													  }
													  
													  
													$(document).ready(function(){
													  //alert("done");  
														//getItems();
													       
													});
 
													</script>
    
</body>

</html>
