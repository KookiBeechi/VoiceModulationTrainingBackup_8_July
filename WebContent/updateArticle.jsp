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
	<meta name="description" content="Update the blogs for Voice modulation trainings">
    <meta name="author" content="Bharat Kumar Thanvi">
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
						<h2 class="page-title">Update Article</h2>
					</div> <!-- /.col-md-6 -->
					<div class="col-md-6 col-sm-6 text-right">
						<span class="page-location">Home / Admin Page / Update Article </span>
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
							<h4>Update Article</h4>
							<div class="form-page">
								  <div class="form">
								    <form id="update-article-form" method="">
								       
								       <button id="getListBtn" onclick="getArticles()">Refresh of all Articles</button> 
								       			
								       <%
								       ArrayList<Blog> blogList = (ArrayList<Blog>)session.getAttribute("blogList");
								       String blogIDSelected = session.getAttribute("blogIDSelected")+"";
								       
								       if (blogList != null ){
								       %>			 
								        <select name="blogList" id= "blogList" style="margin-top:30px; background-color:#ceeaff; ">
								        <option value="">Select from below list</option>
								        <%  for(Blog blog : blogList){%>
										  <option value="<%=blog.getBlogID()%>" style="cursor: pointer;"><%=blog.getTitle()%></option>
										<%} %> 
										</select>
							
                                        <% 
                                        if(blogIDSelected != null){

                                        	for(Blog blog : blogList){
                                        		if(blog.getBlogID().equals(blogIDSelected)){
                                        %>		
                                        				
									<div id= "updateForm" class = "updateForm">
									 <input type="text" placeholder="*Blog ID" title= "Blog ID" name= "blogID2" id ="blogID2" value= "<%=blog.getBlogID()%>" style="display: none"/>
									  <input type="text" placeholder="*Article Title" title= "*Article Title" name= "title2" id ="title2" value= "<%=blog.getTitle()%>"/>
								      <input type="text" placeholder="*Article Author" title= "*Article Author"  name="author2" id ="author2" value = "<%=blog.getAuthor()%>"/>
								      <input type="text" placeholder="*Article Introduction (2-3 lines)" title="*Article Introduction (2-3 lines)" name = "intro2" id ="intro2" value = "<%=blog.getIntro()%>"/>
								      <input type="text" placeholder="*Blog Cover Pic - PictureID from Flickr" title="*Blog Cover Pic - PictureID from Flickr" name="coverPic2" id ="coverPic2" value = "<%=blog.getCoverPic()%>"/>
								      <input type="text" placeholder="Blog Thumb Pic" title="Blog Thumb Pic" name="thumbPic" id="thumbPic2" style="display: none;" value = "<%=blog.getThumbPic()%>"/>
								      <input type="text" placeholder="Tags Associated (separated by comma e.g: Voice, Voice Over, ... )" title="Tags Associated (separated by comma e.g: Voice, Voice Over, ... )" name="tags2" id ="tags2" value = "<%=blog.getTags()%>"/>					
								      <textarea cols="50" placeholder="*Content" title="*Content" name = "content2" id ="content2"><%=blog.getContent()%></textarea>
								      <button id="updateSubmitBtn"> Update Article</button>  
										</div>
										
																		
										<%} //inner if ends
                                        		} // for loop ends
                                        	}// outer if ends
                                        }
                                         %>		
                                         
                                      <div class="spinner" id= "spinner" style="display: none">Fetching Article List <img src="images/giphy.gif" alt="loading..." style="height: 40px;"></div>
                                      <div class="spinner2" id= "spinner2" style="display: none">Updating Article <img src="images/giphy.gif" alt="loading..." style="height: 40px;"></div>
								      <div class="success" id= "success" style="display: none;  color: green;">Article Fetched Successfully<img src="images/tick.png" alt="success" style="height: 40px;"></div>		 
								      <div class="success2" id= "success2" style="display: none;  color: green;">Article Updated Successfully<img src="images/tick.png" alt="success" style="height: 40px;"></div>
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
							<h5><a href="NavAddArticle" style="color: white; cursor: pointer;">Add article</a></h5>
						</div>	
						<div class="admin-Form">
							<h5><a href="NavDeleteArticle" style="color: white; cursor: pointer;">Delete article</a></h5>
						</div>		
					</div> <!-- /.col-md-12 -->
				</div> <!-- /.row -->	</div>
			</div> <!-- /.col-md-8 -->
			</div> 				



	<%@include file="footer.jsp" %>

	<!-- Scripts -->
	<script src="js/min/plugins.min.js"></script>
	<script src="js/min/medigo-custom.min.js"></script>
	<script type="text/javascript">
	var blogIDSelected ="";

	function getArticles(){	
		$(".success").css("display", "none");
		$(".spinner").css("display", "block"); 
				$.ajax({
					type: 'POST',
				    url: 'UpdateArticle',
				    data: { getList:'true'},
				    dataType: 'json',
				    async: "false",
				    success: function (data) { 
				    	$(".spinner").css("display", "none"); 
				    	$(".success").css("display", "block");
				    	setTimeout(function(){
				    		   window.location.reload(1);
				    		}, 5000);
				       }
				     });
		    		  
		    	
	}

	$('#blogList').change(
		    function() {
		        blogIDSelected = $('#blogList option:selected').val();
		        $.ajax({
		    		type: 'POST',
		    	    url: 'UpdateArticle',
		    	    data: { getList:'false',getPopulated : 'true',blogIDSelected:blogIDSelected },
		    	    dataType: 'json',
		    	    success: function (data) { 
		    	    	document.location.reload();
		    	       }
		    	     });  
		    }
		        
	);

	$("#updateSubmitBtn").click(function() {
	    var valid=dovalidateupdate();
	    
	    var coverPic= "";
	    var thumbPic = "";
	    var blogID = document.getElementById("blogID2").value;
		var title = document.getElementById("title2").value;
		var author = document.getElementById("author2").value;
		var intro = document.getElementById("intro2").value;
		var tags = document.getElementById("tags2").value;
		var content = document.getElementById("content2").value;
		
	    if (valid === true){
	    	$(".success").css("display", "none");
	    	$(".spinner").css("display", "none"); 
	    	$(".success2").css("display", "none");
			$(".spinner2").css("display", "block"); 
	    	
	    	var photoId = document.getElementById("coverPic2").value.trim(); /* "39824430634" */

	    	var flickrService = new FlickrService();
	    	
	    	flickrService.getPhotoInfo(photoId, function(photo) {  	
	    		var photoUrl = photo.imageURL;
	    	    var photoThumbUrl = photo.imageThumbURL; 
	    	    coverPic = photoUrl;
	    	    thumbPic =photoThumbUrl;
	    	    $.ajax({
	 	           type: "POST",
	 	           url: "InsertArticle",
	 	           data: { blogID:blogID,
	 	        	       title:title, 
	 	        	       author:author, 
	 	        	       intro:intro, 
	 	        	       coverPic:coverPic,
	 	        	       thumbPic:thumbPic,
	 	        	       tags: tags,
	 	        	       content:content
	 	        	       }, // form's elements.
	 	           success: function(data)
	 	           {
	 	        	$(".success2").css("display", "block");
	 	     		$(".spinner2").css("display", "none");
	 	     		
	 	           }
	 	         });
	    	    
	    	});


	    }
	    return false; // avoid to execute the actual submit of the form.
	});
		

	function dovalidateupdate (){

		if(document.getElementById("title2").value.trim() == "" || 
		   document.getElementById("author2").value.trim() == "" || 
		   document.getElementById("intro2").value.trim() == "" || 
		   document.getElementById("content2").value.trim() == "" || 
		   document.getElementById("coverPic2").value.trim() == ""){
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
	             }
	         };

	         $.ajax(ajaxOptions);
	     }
	 }
	</script>
	</body>
</html>