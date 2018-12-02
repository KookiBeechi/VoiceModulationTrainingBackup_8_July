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
<title>Blogs - Voice Modulation Training</title>

    <meta name="keywords" content="voicemodulationtraining ,Voice Blogs , voice , voice artist, mimcry, dubbing , voice modulation training , voice modulation workshop , bharatkumar Thanvi , voice coaching , voice artist, voice artiste, Voice coaching in Mumbai , voice training in India ">
	<meta name="description" content="Create blogs for Voice modulation trainings">
    <meta name="author" content="Bharat Kumar Thanvi">
    

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
						<h2 class="page-title">Add Article</h2>
					</div> <!-- /.col-md-6 -->
					<div class="col-md-6 col-sm-6 text-right">
						<span class="page-location">Home / Admin Page / Add Article </span>
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
							<h4>Add Article</h4>
							<div class="form-page">
								  <div class="form">
								    <form id="add-article-form" action="AddArticle" method="Post">
								      <input type="text" placeholder="*Article Title" name= "title" id ="title"/>
								      <input type="text" placeholder="*Article Author" name="author" id ="author"/>
								      <input type="text" placeholder="*Article Introduction (2-3 lines)" name = "intro" id ="intro"/>
								      <input type="text" placeholder="*Blog Cover Pic - PictureID from Flickr" name="coverPic" id ="coverPic" /> 
								      <input type="text" placeholder="Blog Thumb Pic" name="thumbPic" id="thumbPic" style="display: none;"/>
								      <input type="text" placeholder="Tags Associated (separated by comma e.g: Voice, Voice Over, ... )" name="tags" id ="tags"/>						
								      <textarea cols="50" placeholder="*Content" name = "content" id ="content"></textarea>								  
								      <button id="submitBtn"> create</button>  
								      <div class="spinner" id= "spinner" style="display: none">Creating Article <img src="images/giphy.gif" alt="loading..." style="height: 40px;"></div>
								      <div class="success" id= "success" style="display: none;  color: green;">Article Created Successfully<img src="images/tick.png" alt="success" style="height: 40px;"></div>
								    </form>
								  </div>
								</div>
							</div>
						</div> <!-- /.admin-Form -->	
					</div> <!-- /.col-md-12 -->
				</div> <!-- /.row -->		
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
							<h5><a href="NavUpdateArticle" style="color: white; cursor: pointer;">Update article</a></h5>
						</div> 
						<div class="admin-Form">
							<h5><a href="NavDeleteArticle" style="color: white; cursor: pointer;">Delete article</a></h5>
						</div>		
					</div> <!-- /.col-md-12 -->
				</div> <!-- /.row -->	
			</div>
	
					
	  </div> <!-- /.row -->
	</div> <!-- /.container -->	


	<%@include file="footer.jsp" %>

		<!-- Scripts -->
	<script src="js/min/plugins.min.js"></script>
	<script src="js/min/medigo-custom.min.js"></script>
	<script src="https://code.jquery.com/jquery-1.12.4.min.js"></script>
    <script src="accordion/ziehharmonika.js"></script>
     <script type="text/javascript">
     


 	$("#submitBtn").click(function() {	
 		
 		$(".success").css("display", "none"); 
 	    var valid=dovalidate();
 	    var coverPic= "";
 	    var thumbPic = "";
     	var title = document.getElementById("title").value;
     	var author = document.getElementById("author").value;
     	var intro = document.getElementById("intro").value;
     	var tags = document.getElementById("tags").value;
     	var content = document.getElementById("content").value;

 	    if (valid === true){
 	    	
 	    	$(".spinner").css("display", "block"); 	
 	    	$("#submitBtn").css("disabled", true);
 	    	
 	    	var photoId = document.getElementById("coverPic").value.trim(); /* "39824430634" */

 	    	var flickrService = new FlickrService();
 	    	
 	    	flickrService.getPhotoInfo(photoId, function(photo) {  	
 	    		var photoUrl = photo.imageURL;
 	    	    var photoThumbUrl = photo.imageThumbURL; 
 	    	    coverPic = photoUrl;
 	    	    thumbPic =photoThumbUrl;
 	    	    $.ajax({
 	 	           type: "POST",
 	 	           url: "AddArticle",
 	 	           data: { title:title, 
 	 	        	       author:author, 
 	 	        	       intro:intro, 
 	 	        	       coverPic:coverPic,
 	 	        	       thumbPic:thumbPic,
 	 	        	       tags: tags,
 	 	        	       content:content
 	 	        	       }, // form's elements.
 	 	           success: function(data)
 	 	           {
 	 	        	 
 	 	        	 $(".spinner").css("display", "none"); 	
 	 	 	 		 $("#submitBtn").css("disabled", false); 
 	 	 	 		 $(".success").css("display", "block"); 
 	 	 	 		document.getElementById('add-article-form').reset();
 	 	           }
 	 	         });
 	    	    
 	    	});
 	

 	    }
 	    return false; // avoid to execute the actual submit of the form.
 	});
 		
 	
 	function dovalidate (){
 		if(document.getElementById("title").value.trim() == "" || 
 		   document.getElementById("author").value.trim() == "" || 
 		   document.getElementById("intro").value.trim() == "" || 
 		   document.getElementById("content").value.trim() == "" || 
 		   document.getElementById("coverPic").value.trim() == ""){
 			alert ('Please provide all the mandatory details on Add Article form');
 			return false;
 		}
 		else {
 			return true;
 		}
 	}
 	

 function FlickrPhoto(title, owner, flickrURL, imageURL , imageThumbURL) {
     this.title = title;
     this.owner = owner;
     this.flickrURL = flickrURL;
     this.imageURL = imageURL;
     this.imageThumbURL = imageThumbURL;
 }

 function FlickrService() {
     this.flickrApiKey = "55e8ca95d12929bfc5352157e551f3ec";
     this.flickrGetInfoURL = "https://api.flickr.com/services/rest/?method=flickr.photos.getInfo&nojsoncallback=1&format=json";

     this.getPhotoInfo = function(photoId, callback) {
     	
         var ajaxOptions = {
             type: 'GET',
             url: this.flickrGetInfoURL,
             data: { api_key: this.flickrApiKey, photo_id: photoId },
             dataType: 'json',
             success: function (data) { 
                 if (data.stat == "ok") {
                     var photo = data.photo;
                     var photoTitle = photo.title._content;
                     var photoOwner = photo.owner.realname;
                     var photoWebURL = photo.urls.url[0]._content;
                     var photoStaticURL = "https://farm" + photo.farm + ".staticflickr.com/" +  photo.server + "/" + photo.id + "_" + photo.secret + "_z.jpg";
                     var photoThumbStaticURL = "https://farm" + photo.farm + ".staticflickr.com/" +  photo.server + "/" + photo.id + "_" + photo.secret + "_s.jpg";

                     var flickrPhoto = new FlickrPhoto(photoTitle, photoOwner, photoWebURL, photoStaticURL,photoThumbStaticURL);
                     callback(flickrPhoto);
                 }
             },
             error: function () {
            	 alert('error');
             }
         };

         $.ajax(ajaxOptions);
     }
 }

 $( "#add-article-form input" ).click(function() {
	 $(".success").css("display", "none"); 
	});
     </script>

	</body>
</html>