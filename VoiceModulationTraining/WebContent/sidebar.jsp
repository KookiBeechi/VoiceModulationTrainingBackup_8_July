<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@ page import="java.io.File" %>
 <%@ page import="java.text.SimpleDateFormat" %>
 <%@ page import="java.util.Date" %>
 <%@ page import="java.util.Arrays" %>
 <%@ page import="org.apache.commons.io.comparator.LastModifiedFileComparator" %>
 
 <%@ page import="java.sql.Connection" %>
 <%@ page import="java.sql.DriverManager" %>
 <%@ page import="java.sql.ResultSet" %>
 <%@ page import="java.sql.SQLException" %>
 <%@ page import="java.sql.Statement" %>
 <%@ page import="controller.DbConnection" %>
 
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Voice Modulation Training</title>
</head>
<body>
<div class="col-md-4">
		<div class="sidebar">
		
					<div class="sidebar-widget">
						<h5 class="widget-title">More Posts</h5>
						
						<% 
						Connection con_sidebar = DbConnection.getConnection();
						Statement stmt_sidebar = con_sidebar.createStatement();
						stmt_sidebar = con_sidebar.createStatement();
						ResultSet result_sidebar = stmt_sidebar.executeQuery("SELECT * FROM Blogs ORDER BY BLOG_ID ASC LIMIT 4");
						
						while (result_sidebar.next()){
							
							String blogID = result_sidebar.getString("Blog_ID");
							String title = result_sidebar.getString("Title");
					        String author = result_sidebar.getString("Author");
					        String views = result_sidebar.getString("Views");						        
					        String tags = result_sidebar.getString("Tags");
					        String intro = result_sidebar.getString("Introduction");
					        String content = result_sidebar.getString("Content");
					        String coverPic = result_sidebar.getString("Cover_Pic");
					        String thumbPic = result_sidebar.getString("Thumbnail_Pic");
					        String publishedOn = result_sidebar.getString("Date_Published");
					        String lastUpdated = result_sidebar.getString("Last_Updated"); 						    
						    %>
						
						<div class="last-post clearfix">
							<div class="thumb pull-left">
								<a style="cursor: pointer;" onclick="readArticle_func2( '<%=blogID%>')"><img src="<%=thumbPic%>" alt="blog thumb"/></a>
							</div>
							<div class="content">
								<span style="font-size: 14px;"><%=publishedOn%></span><br>
								<h4><a style="cursor: pointer;" onclick="readArticle_func2( '<%=blogID%>')"><%=title%></a></h4>
								<span style="font-size: 14px;">views : <%=views%></span><br>
							</div>
						</div> <!-- /.last-post -->
					 <%} con_sidebar.close();%>	
					</div> <!-- /.sidebar-widget -->
					
					
					
				<!-- 	<div class="sidebar-widget">
						<h5 class="widget-title">Categories</h5>
						<div class="row categories">
							<div class="col-md-6">
								<ul>
									<li><a href="#">Standard</a></li>
									<li><a href="#">Audio</a></li>
									<li><a href="#">Video</a></li>
									<li><a href="#">Branding</a></li>
								</ul>
							</div>
							<div class="col-md-6">
								<ul>
									<li><a href="#">iOS Design</a></li>
									<li><a href="#">Business</a></li>
								</ul>
							</div>
						</div> /.row
					</div> /.sidebar-widget -->
					
					<!-- <div class="sidebar-widget">
						<h5 class="widget-title">Flickr Feed</h5>
						<ul id="flickr-feed" class="thumbs"></ul>
					</div> /.sidebar-widget -->
					<div class="sidebar-widget courses">
						<h5 class="widget-title">Courses We Offer</h5>
						<a href="ContactUs"><p style="text-align: justify;">Voice Modulation Workshop <br></p></a>
						<a href="ContactUs"><p style="text-align: justify;">Professional Program in Voice Overs / Dubbing<br></p></a>
						<a href="ContactUs"><p style="text-align: justify;">Professional Program in Radio Jockey <br></p></a>
						<a href="ContactUs"><p style="text-align: justify;">Professional Program in Acting<br></p></a>
						<a href="ContactUs"><p style="text-align: justify;">Professional Program in Anchoring<br></p></a>
						<a href="ContactUs"><p style="text-align: justify;">Professional Program in Singing<br></p></a>
						<a href="ContactUs"><p style="text-align: justify;">Professional Program in Public Speaking</p></a>
						
						<div style="text-align: justify; font-size: 14px;"> We have different batch timings and days available like weekends batch, weekdays batch, Sunday's batch, flexible timing batches, Personalised Training Program, Online Training on Skype.
						Totally Practical Training from Industry Experts and 100% placement assistance.</div>
						
					</div> <!-- /.sidebar-widget -->
				</div> <!-- /.sidebar -->
</div> <!-- /.col-md-4 -->

   <form action="Article" method="post" id="articleForm_2" style="visibility: hidden;">
   <input type="text" value= "" name = "fullArticleName" id = "fullArticleName2">    
   </form>
   
	<script type="text/javascript">
	function readArticle_func2(ArticleName){
	//alert (ArticleName);
	$("#fullArticleName2").val(ArticleName);
	$("form#articleForm_2").submit();
}
</script>
	

</body>
</html>