<?xml version="1.0" encoding="UTF-8" ?>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.11.2/css/all.css" />
    <!-- Google Fonts Roboto -->
    <link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Roboto:wght@300;400;500;700&display=swap" />
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
    <meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=0, minimal-ui">
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="description" content="Dev cursos online, aqui vc encontra os ,melhores Cursos do mercado, que te ensinam o desenvolvimento de soltware e te preparam para omercado de trabalho." />
    <meta name="keywords" content="software,curso online,java kotlin,flutter,hotmart,desenvolvimento,análise de sistemas" />
    <meta name="author" content="fcsn" />
    <!-- Favicon icon -->
    <link rel="icon" href="<%= request.getContextPath()%>/assets/images/favicon.ico" type="image/x-icon">
    <!-- Google font-->     
    <link href="https://fonts.googleapis.com/css?family=Roboto:400,500" rel="stylesheet">
    <!-- Required Fremwork -->
    <link rel="stylesheet" type="text/css" href="<%= request.getContextPath()%>/assets/css/bootstrap/css/bootstrap.min.css">
    <!-- waves.css -->
    <link rel="stylesheet" href="<%= request.getContextPath()%>/assets/pages/waves/css/waves.min.css" type="text/css" media="all">
    <!-- themify-icons line icon -->
    <link rel="stylesheet" type="text/css" href="<%= request.getContextPath()%>/assets/icon/themify-icons/themify-icons.css">
    <!-- ico font -->
    <link rel="stylesheet" type="text/css" href="<%= request.getContextPath()%>/assets/icon/icofont/css/icofont.css">
    <!-- Font Awesome -->
    <link rel="stylesheet" type="text/css" href="<%= request.getContextPath()%>/assets/icon/font-awesome/css/font-awesome.min.css">
    <!-- Style.css -->
    <link rel="stylesheet" type="text/css" href="<%= request.getContextPath()%>/assets/css/style.css">
    <link rel="stylesheet" type="text/css" href="<%= request.getContextPath()%>/assets/css/jquery.mCustomScrollbar.css">

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
        <nav  class="navbar header-navbar pcoded-header"  style="background-color:#2ecc71">
            <div class="navbar-wrapper">
                <div class="navbar-logo">
                    
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
                        <img class="img-fluid" src="<%= request.getContextPath()%>/assets/images/logo2.png" alt="Theme-Logo" />
                    </a>
                    <a class="mobile-options waves-effect waves-light">
                        <i class="ti-more"></i>
                    </a>
                </div>
            
                <div class="navbar-container container-fluid" >
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
                                        <img class="d-flex align-self-center img-radius" src="<%= request.getContextPath()%>/assets/images/avatar-4.jpg" alt="Generic placeholder image">
                                        <div class="media-body">
                                           
                                        </div>
                                    </div>
                                </li>
                                <li class="waves-effect waves-light">
                                    <div class="media">
                                        <img class="d-flex align-self-center img-radius" src="<%= request.getContextPath()%>/assets/images/avatar-3.jpg" alt="Generic placeholder image">
                                        <div class="media-body">
                                            
                                        </div>
                                    </div>
                                </li>
                            </ul>
                        </li>
                        <li class="user-profile header-notification">
                            <a href="#!" class="waves-effect waves-light">
                                <i class="ti-angle-down"></i>
                            </a>
                            <ul class="show-notification profile-notification">
                                <li class="waves-effect waves-light">
                                    <a href="<%=request.getContextPath() %>/login.jsp">
                                        <i class="ti-user"></i> Log in
                                    </a>
                                    
                                </li>
                                
                            </ul>
                        </li>
                    </ul>
                </div>
            </div>
        </nav>

        
                <div class=""> <!--pcoded-content  -->
                    <!-- Page-header start -->
                    <div  class="page-header" >
                        <div class="" style="background-color:#00aa00">
                            <div class="row align-items-center">
                                <div class="col-md-8">
                                    <div class="page-header-title">
                                        
                                    </div>
                                </div>
                                <div class="col-md-4">
                                    <ul class="breadcrumb-title">
                                        <li class="breadcrumb-item">
                                            <a href="index.html"> <i class="fa fa-home"></i> </a>
                                        </li>
                                        
                                        
                                    </ul>
                                </div>
                            </div>
                        </div>
                    </div>
                    <p></p>
                    <p></p>
                    <br>
                    
                    <!-- Page-header end -->
                    <div class="pcoded-inner-content" >
                        <div class="main-body">
                            <div class="page-wrapper">
                                <!-- Page-body start -->
                                <div class="page-body">
                                    <div class="row">
                                        <div class="row" id="pbox"><!-- container de items  -->
                                        
                                        
                                        
                                        </div> <!-- end of container de items -->
                                        
                                        <div class="col-sm-12">

                                          <jsp:include page="./main/footer.jsp"></jsp:include>  
                                            
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
                <div id="styleSelector">
                
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
<!-- Warning Section Ends -->
<!-- Required Jquery -->
<script type="text/javascript" src="<%= request.getContextPath()%>/assets/js/jquery/jquery.min.js"></script>
<script type="text/javascript" src="<%= request.getContextPath()%>/assets/js/jquery-ui/jquery-ui.min.js "></script>
<script type="text/javascript" src="<%= request.getContextPath()%>/assets/js/popper.js/popper.min.js"></script>
<script type="text/javascript" src="<%= request.getContextPath()%>/assets/js/bootstrap/js/bootstrap.min.js "></script>
<script type="text/javascript" src="<%= request.getContextPath()%>/assets/pages/widget/excanvas.js "></script>
<!-- waves js -->
<script src="<%= request.getContextPath()%>/assets/pages/waves/js/waves.min.js"></script>
<!-- jquery slimscroll js -->
<script type="text/javascript" src="<%= request.getContextPath()%>/assets/js/jquery-slimscroll/jquery.slimscroll.js "></script>
<!-- modernizr js -->
    <script type="text/javascript" src="<%= request.getContextPath()%>/assets/js/SmoothScroll.js"></script>
<script src="<%= request.getContextPath()%>/assets/js/jquery.mCustomScrollbar.concat.min.js "></script>
<script src="<%= request.getContextPath()%>/assets/js/pcoded.min.js"></script>
<script src="<%= request.getContextPath()%>/assets/js/vertical-layout.min.js "></script>
<script src="<%= request.getContextPath()%>/assets/js/jquery.mCustomScrollbar.concat.min.js"></script>

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
<script type="text/javascript" src="<%= request.getContextPath()%>/assets/js/script.js">
<script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
<script type="text/javascript">

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
		 		
		 		$("#pbox").append("<div class=\"col-xl-4\">\n<!-- Tooltip style 1 card start -->\n<div class=\"card o-visible\">\n<div class=\"card-header\">\n<h5>"+json[i].titulo+"</h5>\n</div>\n<div>\n<a class=\"\" href=\""+json[i].hotlik+"\"><img id=\"\" width=\"100%\" alt=\""+json[i].titulo+"\" src=\""+json[i].imagem_base64+"\"></a>\n</div>\n<div class=\"card-block\">\n<p>"+json[i].descricao+"<p>\n<a target=\"_blank\" class=\"btn btn-success\" style=\"width: 100%;\"  onclick=\"incrment("+json[i].id+")\" href=\""+json[i].hotlik+"\">Conhecer o Curso</a>\n</div>\n</div>\n<!-- Tooltip style 1 card end -->\n</div>\n");
		 	}
			
		}
	     
	 }).fail(function(xhr, status, errorThrown){
	    alert('Erro ao buscar usuário por nome: ' + xhr.responseText);
	 });
	  
}

$(document).ready(function(){
    
	getItems();
        
});

function increment(id){
	
}

function callmodal(){
	$("#sobre").modal();
}

</script>
<!-- MDB -->
    <script type="text/javascript" src="js/mdb.min.js"></script>
    <!-- Custom scripts -->
    <script type="text/javascript" src="js/script.js"></script>
    
	<!-- Modal -->
	<div class="modal fade" id="sobre" tabindex="-1" role="dialog"
		aria-labelledby="exampleModalLabel" aria-hidden="true">
		<div class="modal-dialog" role="document">
			<div class="modal-content">
				<div class="modal-header">
					<h5 class="modal-title" id="exampleModalLabel">Sobre</h5>
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
				</div>
				<div class="modal-body">
					<!-- Copyright -->
    <div
         class="text-center p-3"
         style="background-color: rgba(0, 0, 0, 0.2)"
         >
      © 2022 Copyright
      <a class="text-dark" href="segnatec.com.br"
         >  | segnatec.com.br</a
        >
    </div>
				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-secondary"
						data-dismiss="modal">Close</button>
					
				</div>
			</div>
		</div>
	</div>

</body>

</html>