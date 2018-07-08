<%@page import="model.Blog"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ page import="java.io.File" %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
<title>Voice Modulation Training</title>

    <meta name="keywords" content="voicemodulationtraining , voice , voice artist, mimcry, dubbing , voice modulation training , voice modulation workshop , bharatkumar Thanvi , voice coaching , voice artist, voice artiste, Voice coaching in Mumbai , voice training in India ">
	<meta name="description" content="Delete blogs for Voice modulation training">
    <meta name="author" content="BharatKumar Thanvi">
    <!-- 
	Medigo Template
	http://www.templatemo.com/preview/templatemo_460_medigo
    -->

	<!-- Google Fonts -->
	<link href="http://fonts.googleapis.com/css?family=PT+Serif:400,700,400italic,700itali" rel="stylesheet">
	<link href="http://fonts.googleapis.com/css?family=Raleway:400,900,800,700,500,200,100,600" rel="stylesheet">

	<!-- Stylesheets -->
	<link rel="stylesheet" href="bootstrap/bootstrap.css">
	<link rel="stylesheet" href="css/misc.css">
	<link rel="stylesheet" href="css/scheme.css">
	<link rel="stylesheet" href="css/formStyle.css">
	<link rel="stylesheet" href="accordion/ziehharmonika.css" type="text/css">
<!-- 	<link rel="stylesheet" href="css/buttonstyle.css" type="text/css"> -->
	
	
	
	<!-- JavaScripts -->
	<script src="js/jquery-1.10.2.min.js"></script>
	<script src="js/jquery-migrate-1.2.1.min.js"></script>

	<link rel="shortcut icon" href="images/LOGO.png" type="image/x-icon" />
	<script async src="https://www.googletagmanager.com/gtag/js?id=UA-114401074-1"></script>
		<script>
		  window.dataLayer = window.dataLayer || [];
		  function gtag(){dataLayer.push(arguments);}
		  gtag('js', new Date());
		
		  gtag('config', 'UA-114401074-1');
		</script>
		

</head>
<body>


	<%@include file="header.jsp" %>

	<div class="first-widget parallax" id="blog">
		<div class="parallax-overlay">
			<div class="container pageTitle">
				<div class="row">
					<div class="col-md-6 col-sm-6">
						<h2 class="page-title">Delete Article</h2>
					</div> <!-- /.col-md-6 -->
					<div class="col-md-6 col-sm-6 text-right">
						<span class="page-location">Home / Admin Page / Delete Article </span>
					</div> <!-- /.col-md-6 -->
				</div> <!-- /.row -->
			</div> <!-- /.container -->
		</div> <!-- /.parallax-overlay -->
	</div> <!-- /.pageTitle -->
	
<div class="container">	
		<div class="row">

				<div class="col-md-6 blog-posts" style="background: #85d8d2;">
				<div class="row">
					<div class="col-md-12">
						<div class="admin-Form">
							<h4>Delete Article</h4>
							<div class="form-page">
								  <div class="form">
								    <form id="delete-article-form" method="post" action="">
								       <button id="getListToDeleteBtn" onclick="getArticlesToDelete()">Refresh list of all Articles</button> 
								       
								        <%
								       ArrayList<Blog> blogListToDelete = (ArrayList<Blog>)session.getAttribute("blogListToDelete");
								     
								       
								       if (blogListToDelete != null ){
								       %>			 
								        <select name="blogListToDelete" id= "blogListToDelete" style="margin-top:30px; background-color:#FFF8DC; ">
								        <option value="">Select from below list</option>
								        <%  for(Blog blog : blogListToDelete){%>
										  <option value="<%=blog.getBlogID()%>" style="cursor: pointer;"><%=blog.getTitle()%></option>
										<%} %> 
										</select>
							          <%}%>
								       	<button id="deleteBtn"  style="display: none;">Delete Article</button>
								          <div class="spinner" id= "spinner" style="display: none">Fetching Article List <img src="images/giphy.gif" alt="loading..." style="height: 40px;"></div>
	                                      <div class="spinner2" id= "spinner2" style="display: none">Deleting Article <img src="images/giphy.gif" alt="loading..." style="height: 40px;"></div>
									      <div class="success" id= "success" style="display: none;  color: green;">Article Fetched Successfully<img src="images/tick.png" alt="success" style="height: 40px;"></div>		 
									      <div class="success2" id= "success2" style="display: none;  color: green;">Article Deleted Successfully<img src="images/tick.png" alt="success" style="height: 40px;"></div>
								     
								    </form>
								   </div>
								</div>
							</div>
						</div> <!-- /.admin-Form -->	
					</div> <!-- /.col-md-12 -->
				</div> 
						<div class="col-md-6 blog-posts" style="background: #efb1a5;">
				<div class="row">
					<div class="col-md-12">
						<div class="admin-Form">
							<h4>Navigate To </h4>
						</div> 	
						<div class="admin-Form" >
							<h5><a href="Admin" style="color: white; cursor: pointer;">Admin dashboard</a></h5>
						</div> 	
						<div class="admin-Form">
							<h5><a href="NavAddArticle" style="color: white; cursor: pointer;">Add article</a></h5>
						</div>		
						<div class="admin-Form">
							<h5><a href="NavUpdateArticle" style="color: white; cursor: pointer;">Update article</a></h5>
						</div> 
					</div> <!-- /.col-md-12 -->
				</div> <!-- /.row -->	</div>
		
	  </div> <!-- /.row -->
	</div> <!-- /.container -->	


	<%@include file="footer.jsp" %>

	<!-- Scripts -->
	<script src="js/min/plugins.min.js"></script>
	<script src="js/min/medigo-custom.min.js"></script>
	<script type="text/javascript">
	
	function getArticlesToDelete(){	
		$(".success").css("display", "none");
		$(".spinner").css("display", "block"); 
		$(".spinner2").css("display", "none");
  		$(".success2").css("display", "none");
		$.ajax({
			type: 'POST',
		    url: 'DeleteArticle',
		    data: { getList:'true'},
		    dataType: 'json',
		    async: "true",
		    success: function (data) { 	
		    	document.location.reload();
		       }
		     });
			  
		return false;
	}

	$('#blogListToDelete').change(
		    function() {
		       var blogIDToDeleteSelected = $('#blogListToDelete option:selected').val();
		    
		       //alert(blogIDToDeleteSelected);
		        
		        $.ajax({
		    		type: 'POST',
		    	    url: 'DeleteArticle',
		    	    data: { getList:'false',getPopulated : 'true',blogIDSelected:blogIDToDeleteSelected },
		    	    dataType: 'json',
		    	    success: function (data) { 
		    	    	   $("#deleteBtn").css("display", "block"); 
		    	       }
		    	     });  
		    }
		        
	);
	 
	$("#deleteBtn").click(function() {	
		var blogIDToDeleteSelected = 'true';
		$.ajax({
			type: 'POST',
		    url: 'DeleteArticle',
		    data: {  getList:'false',getPopulated : 'false',blogIDToDeleteSelected:blogIDToDeleteSelected},
		    dataType: 'json',
		    async: "true",
		    success: function (data) { 
 	     		$(".spinner2").css("display", "none");
 	     		$(".success2").css("display", "block");
		       }
		     });
		return false;
		
	}); 

	</script>
	</body>
</html>