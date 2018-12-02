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
<title> Admin page - Voice Modulation Training</title>

    <meta name="keywords" content="">
	<meta name="description" content="">
    <meta name="author" content="templatemo">
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
						<h2 class="page-title">Admin Page</h2>
					</div> <!-- /.col-md-6 -->
					<div class="col-md-6 col-sm-6 text-right">
						<span class="page-location">Home / Gallery / Admin Page</span>
					</div> <!-- /.col-md-6 -->
				</div> <!-- /.row -->
			</div> <!-- /.container -->
		</div> <!-- /.parallax-overlay -->
	</div> <!-- /.pageTitle -->
	

<div class="container">
<h3>Admin Dashboard</h3>
		<div class="ziehharmonika">
			<h3>Articles</h3>
			<div class = "internalDiv">
			<h4>Article Operations</h4>
				<a href="NavAddArticle"><p>Add Article</p></a>
				<a href="NavUpdateArticle"><p>Update Article</p></a>
				<a href="NavDeleteArticle"><p>Delete Article</p></a>
			</div>
			<h3>Image gallery</h3>
			<div class = "internalDiv">
			<h4>Add Or Delete Images from Image gallery</h4>
				<p>STEP 1 : Go to following link <a href="https://www.flickr.com">https://www.flickr.com</a> </p>
				<p>STEP 2 : Login with credentials</p>
				<p>Username : mesaurabhsharma91@gmail.com</p>
				<p>Password : voice2018!</p>
				<p>STEP 3 : Click on "You" tab next to Flickr logo</p>
				<p>STEP 4 : Upload photos and move them to Album "TrainingPhotoGallery"</p>
				<p>STEP 5 : Uploaded photos will start reflecting on website gallery in about 15 mins</p>
			</div>
			<h3>Audio Samples</h3>
			<div class = "internalDiv">
			<h4>Add or delete Audio Samples from Audio Gallery</h4>
				<p>STEP 1 : Go to following link <a href="https://soundcloud.com/">https://soundcloud.com/</a> </p>
				<p>STEP 2 : Login with credentials</p>
				<p>Username : voicemodulationtraining@gmail.com</p>
				<p>Password : di*******ai</p>
				<p>STEP 3 : Upload the track!</p>
			</div>
		</div>
</div>

	
	<%@include file="footer.jsp" %>

	<!-- Scripts -->
	<script src="js/min/plugins.min.js"></script>
	<script src="js/min/medigo-custom.min.js"></script>
	<script src="https://code.jquery.com/jquery-1.12.4.min.js"></script>
    <script src="accordion/ziehharmonika.js"></script>
    <script type="text/javascript">

    $(document).ready(function() {
    		$('.ziehharmonika').ziehharmonika({
    			collapsible: true,
    			prefix: ''
    		});
    	});
    </script>

</body>
</html>