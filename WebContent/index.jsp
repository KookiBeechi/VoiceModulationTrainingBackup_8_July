<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
	
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
<meta name="viewport"
	content="width=device-width, initial-scale=1, maximum-scale=1">
<title>Voice Modulation Training | Voice Modulation Training with BharatKumar Thanvi</title>

<meta name="keywords" content="voicemodulationtraining , voice , voice artist, mimcry, dubbing , voice modulation training , voice modulation workshop , bharatkumar Thanvi , voice coaching , voice artist, voice artiste, Voice coaching in Mumbai , voice training in India ">
<meta name="description" content="Voice Modulation Training Institute aims to 'Enhance Your Voice!' and gives you that perfect training that helps you to - 'Engage Your Audience!' and win their Hearts! through your Voice by using all the variables in your Voice at optimum level like your Voice Pitch, Tone, Voice Range, Voice Projection, Diction, Pronunciation, Speech Clarity, Intonation, Breathing Techniques etc. with our Voice Modulation Expert and a Multifaceted Personality Mr.Bharatkumar Thanvi, a Voice Over Artist, Dubbing Artist, Actor, Mimicry Artist, Anchor/Emcee and Trainer, who has successfully trained thousands of people which includes Bollywood Stars, Radio Jockeys, Anchors, Dubbing Artists, Voice Professionals, Singers, Politicians, Lawyers, Corporates, Sales and Marketing Professionals, Doctors, Professors etc. through our various professional training programs for Voice Modulation, Voice Culture, Voice Overs, Dubbing, Radio Jockey, Public Speaking, Acting, Singing, Confidence Building, Anchoring, Emcee, Mimicry, Stand up Comedy etc. with 100% placement assistance in cities like Mumbai, Pune, Bangalore, Delhi, Kolkata, Ahmadabad, Hyderabad, Chennai, Jaipur, Indore, Nashik, Chandigarh etc. So if you want to stand out and achieve your dreams! Then feel free to contact us!">
<meta name="author" content="BharatKumar Thanvi">

<!-- Google Fonts -->
<link	href="http://fonts.googleapis.com/css?family=PT+Serif:400,700,400italic,700itali"	rel="stylesheet">
<link	href="http://fonts.googleapis.com/css?family=Raleway:400,900,800,700,500,200,100,600"	rel="stylesheet">

<!-- Stylesheets -->
<link rel="stylesheet" href="bootstrap/bootstrap.css">
<link rel="stylesheet" href="css/misc.css">
<link rel="stylesheet" href="css/scheme.css">
<link rel="stylesheet" href="img/slider/imgs/style.css" />

<!-- JavaScripts -->
<script src="js/jquery-1.10.2.min.js"></script>
<script src="js/jquery-migrate-1.2.1.min.js"></script>

<link rel="shortcut icon" href="images/LOGO.png" type="image/x-icon" />

<!-- Global site tag (gtag.js) - Google Analytics -->
<script async
	src="https://www.googletagmanager.com/gtag/js?id=UA-114401074-1"></script>
<script>
	window.dataLayer = window.dataLayer || [];
	function gtag() {
		dataLayer.push(arguments);
	}
	gtag('js', new Date());

	gtag('config', 'UA-114401074-1');
</script>


</head>
<body>
	<%@include file="header.jsp"%>
	<div class="container" style="padding: 0px; !Important; margin-left: 0px; margin-right: 0px; width: 100%">
	<div class="row">
	<div class="g_slide" id="slides1">
		<div class="switch_main">
			<a class="item switch_item" href="#">
			<img data-src="images/includes/banner1.jpg"	alt="Voice Modulation training with Bharat Kumar thanvi" /></a> 
			<a class="item switch_item" href="#">
			<img data-src="images/includes/banner2.jpg" alt="Voice Modulation training with Bharat Kumar thanvi" /></a>
		</div>
	</div>
	</div>
	</div>



	<section class="cta clearfix">
	<div class="container">
		<div class="row">
			<div class="col-md-12">
				<h4 class="cta-title">
					<strong>Want to join Voice Modulation Training?</strong> Please
					reach out to us at: <span style="font-weight: 700; color: #D46A6A">+91
						7769858111 </span> | <span style="font-weight: 700; color: #D46A6A">voicemodulationtraining@gmail.com</span>
				</h4>
				<a href="ContactUs" class="main-button accent-color">Contact Us<i
					class="icon-button fa fa-arrow-right"></i></a>
			</div>
			<!-- /.col-md-12 -->
		</div>
		<!-- /.row -->
	</div>
	<!-- /.container --> </section>
	<!-- /.cta -->

    
	<div class="container">
	<div class="aboutVmt">
		<div class="about_vmt">
			<h2>About Voice Modulation Training</h2>

			<span>Voice Modulation Training Institute aims to 'Enhance
				Your Voice!' and gives you that perfect training that helps you to -
				'Engage Your Audience!' and win their Hearts! through your Voice by
				using all the variables in your Voice at optimum level like your
				Voice Pitch, Tone, Voice Range, Voice Projection, Diction,
				Pronunciation, Speech Clarity, Intonation, Breathing Techniques etc.
				with our Voice Modulation Expert and a Multifaceted Personality
				Mr.Bharatkumar Thanvi, a Voice Over Artist, Dubbing Artist, Actor,
				Mimicry Artist, Anchor/Emcee and Trainer, who has successfully
				trained thousands of people which includes Bollywood Stars, Radio
				Jockeys, Anchors, Dubbing Artists, Voice Professionals, Singers,
				Politicians, Lawyers, Corporates, Sales and Marketing Professionals,
				Doctors, Professors etc. through our various professional training
				programs for Voice Modulation, Voice Culture, Voice Overs, Dubbing,
				Radio Jockey, Public Speaking, Acting, Singing, Confidence Building,
				Anchoring, Emcee, Mimicry, Stand up Comedy etc. with 100% placement
				assistance in cities like Mumbai, Pune, Bangalore, Delhi, Kolkata,
				Ahmadabad, Hyderabad, Chennai, Jaipur, Indore, Nashik, Chandigarh
				etc. So if you want to stand out and achieve your dreams! Then feel
				free to <a href="ContactUs">contact us! </a>
				</span>
				
				
		<!-- about_vmt -->
		<div class="row">
				<div class="col-md-4 col-sm-4">
				<h3>Course we offer</h3>
				<span>
				<p>We have different courses available in Dubbing, Voice-Overs, Radio Jockey (R.J.), Voice Modulation, Public Speaking, Confidence Building, Acting, Anchoring, Mimicry, Singing, Comedy etc. like weekend batches, weekday batches, Sundays batch, Personalised one-to-one training, Online Courses, 2 Days workshops, 2 / 3 months Diploma courses, Certificate courses, Corporate workshops, School / College workshops. We have Successfully Trained 800+ participants with Great Results! Feel free to call us for free counselling, call 7769858111 !</p>
				</span>
				</div>
				<div class="col-md-4 col-sm-4">
				<h3>In Mumbai / Thane Training Centers</h3>
				<span>
				<p>In Mumbai we have 10 centers for conducting our courses - Andheri, Borivali, Dahisar, Jogeshwari, Goregaon, Mira Road, Mumbai Central, Virar, Thane and Mulund. The courses are completely practical, in-depth training, only experienced faculties providing training and we also provide placement opportunities during and after the course in Voice-Overs, Dubbing, Radio Jockey, Anchoring, Acting, Mimicry, Voice Modulation etc. Feel free to call us for free counselling, call 7769858111.</p>
				</span>
				</div>
				<div class="col-md-4 col-sm-4">
				<h3>All India Training Centers</h3>
				<span>
				<p>We conduct 2 days workshops all over India in different cities like Pune, Bengaluru, Chennai, Ahmadabad, Jaipur, Delhi, Kolkata, Nashik, Indore, Surat, Vadodara (Baroda), Bhopal, Hyderabad etc.  The courses are completely practical, in-depth training, only experienced faculties providing training and we also provide placement opportunities during and after the course in Voice-Overs, Dubbing, Radio Jockey (R.J.), Anchoring, Acting, Mimicry, Voice Modulation etc. Feel free to call us for free counselling, call 7769858111.</p>
				</span>
				</div>
				</div>
				<div class="row">
				<div class="col-md-4 col-sm-4">
				<h3>Online Training Courses</h3>
				<span>
				<p>Online courses in also available at discounted fees, you can attend courses at your convenience!  The courses are completely practical, in-depth training, only experienced faculties provide training and we also provide placement opportunities during and after the course in Voice-Overs, Dubbing, Radio Jockey (R.J.), Anchoring, Acting, Mimicry, Voice Modulation etc. Feel free to call us for free counselling, call 7769858111.</p>
				</span>
				</div>
				</div>
			
			</div>
		
    </div>
	</div>
	<!-- container -->



	<div class="team-members coursesweoffer" >
		<div class="container">
		<h2 style="text-align: center; padding-top: 15px; padding-bottom: 15px;">Contact us to book your seat for workshop on -</h2>
			<div class="row">

				<div class="col-md-4 col-sm-4">
					<div class="team-member">
						<div class="thumb-post">
							<img src="images/includes/courses/VoiceModulationWorkshop.jpg" alt="voice modulation workshop"> <span
								class="member-role" style="color: yellow; background: transparent;" >Voice Modulation Workshop</span>
						</div>
						<div class="member-content">
							<h1 class="member-name" style="font-size: 18px;">Voice Modulation Workshop</h1>
							</p>
						</div>
					</div>
					<!-- /.team-member -->
				</div>
				<!-- /.col-md-4 -->
					<div class="col-md-4 col-sm-4">
					<div class="team-member">
						<div class="thumb-post">
							<img src="images/includes/courses/VoiceOver.jpg" alt="Voice Overs / Dubbing"> <span
								class="member-role" style="color: yellow; background: transparent;" >Voice Overs / Dubbing</span>
						</div>
						<div class="member-content">
							<h1 class="member-name" style="font-size: 18px;">Professional Program in Voice Overs / Dubbing</h1>
							</p>
						</div>
					</div>
					<!-- /.team-member -->
				</div>
				<!-- /.col-md-4 -->
					<div class="col-md-4 col-sm-4">
					<div class="team-member">
						<div class="thumb-post">
							<img src="images/includes/courses/RadioJockey.jpg" alt="Radio Jockey"> <span
								class="member-role" style="color: yellow; background: transparent;" >Radio Jockey</span>
						</div>
						<div class="member-content">
							<h1 class="member-name" style="font-size: 18px;">Professional Program in Radio Jockey</h1>
							</p>
						</div>
					</div>
					<!-- /.team-member -->
				</div>
				
			</div>
			<div class="row">	
				<!-- /.col-md-4 -->
					<div class="col-md-4 col-sm-4">
					<div class="team-member">
						<div class="thumb-post">
							<img src="images/includes/courses/Anchor.jpg" alt="Anchoring"> <span
								class="member-role" style="color: yellow; background: transparent;" >Anchoring</span>
						</div>
						<div class="member-content">
							<h1 class="member-name" style="font-size: 18px;">Professional Program in Anchoring</h1>
							</p>
						</div>
					</div>
					<!-- /.team-member -->
				</div>
				<!-- /.col-md-4 -->
					<div class="col-md-4 col-sm-4">
					<div class="team-member">
						<div class="thumb-post">
							<img src="images/includes/courses/Singing.jpg" alt="Singing"> <span
								class="member-role" style="color: yellow; background: transparent;" >Singing</span>
						</div>
						<div class="member-content">
							<h1 class="member-name" style="font-size: 18px;">Professional Program in Singing</h1>
							</p>
						</div>
					</div>
					<!-- /.team-member -->
				</div>
				<!-- /.col-md-4 -->
					<div class="col-md-4 col-sm-4">
					<div class="team-member">
						<div class="thumb-post">
							<img src="images/includes/courses/Acting.jpg" alt="Acting"> <span
								class="member-role" style="color: yellow; background: transparent;" >Acting</span>
						</div>
						<div class="member-content">
							<h1 class="member-name" style="font-size: 18px;"> Professional Program in Acting</h1>
							</p>
						</div>
					</div>
					<!-- /.team-member -->
				</div>
			</div>
			<div class="row">	
				<!-- /.col-md-4 -->
				<center>
					<div class="col-md-4 col-sm-4">
					<div class="team-member">
						<div class="thumb-post">
							<img src="images/includes/courses/PublicSpeaking.jpg" alt="Public Speaking"> <span
								class="member-role" style="color: yellow; background: transparent;" >Public Speaking</span>
						</div>
						<div class="member-content">
							<h1 class="member-name" style="font-size: 18px;">Professional Program in Public Speaking</h1>
							</p>
						</div>
					</div>
					<!-- /.team-member -->
				</div>
				<!-- /.col-md-4 -->
				</center>

				

			</div>
			<!-- /.row -->
		</div>
		<!-- /.container -->
	</div>
	<!-- /.team-members --> </section>
	<!-- /.our-team -->
	<section class="dark-content portfolio">
	<div class="container">

		<div class="col-md-12">
			<div class="section-header">
				<h2 class="section-title">Some of our happy clients</h2>
				<p class="section-desc" style="color: yellow;">Some of the vendors and assignments we
					have been associated with.</p>
			</div>
			<!-- /.section-header -->
		</div>
		<!-- /.col-md-12 -->

	</div>
	<!-- /.container -->

	<div id="portfolio-carousel"
		class="portfolio-carousel portfolio-holder">
		<div class="item">
			<div class="clientlogo thumb-post">
				<img src="images/includes/clients/tatasky_fitness.png"
					alt="Tata Sky Active Fitness">
			</div>
		</div>
					<div class="item">
			<div class="clientlogo thumb-post">
				<img src="images/includes/clients/mafatlal.jpg" alt="mafatlal">
			</div>
		</div>
		<div class="item">
			<div class="clientlogo thumb-post">
				<img src="images/includes/clients/sunking-logo.png" alt="sunking-logo">
			</div>
		</div>
		<!-- /.item -->
		<div class="item">
			<div class="clientlogo thumb-post">
				<img src="images/includes/clients/skoda.jpg" alt="skoda">
			</div>
		</div>
			<div class="item">
			<div class="clientlogo thumb-post">
				<img src="images/includes/clients/ghantaa.jpg" alt="ghantaa movie">
			</div>
		</div>
		<div class="item">
			<div class="clientlogo thumb-post">
				<img src="images/includes/clients/friends.jpg" alt="friends">
			</div>
		</div>
		<div class="item">
			<div class="clientlogo thumb-post">
				<img src="images/includes/clients/supersingh.jpg" alt="supersingh">
			</div>
		</div>
		<div class="item">
			<div class="clientlogo thumb-post">
				<img src="images/includes/clients/dilJunglee.jpg" alt="dilJunglee">
			</div>
		</div>
		<div class="item">
			<div class="clientlogo thumb-post">
				<img src="images/includes/clients/polycab.png" alt="polycab">
			</div>
		</div>
		<!-- /.item -->
		<div class="item">
			<div class="clientlogo thumb-post">
				<img src="images/includes/clients/Zydus.jpg" alt="Zydus">
			</div>
		</div>
		<div class="item">
			<div class="clientlogo thumb-post">
				<img src="images/includes/clients/Medwiz.jpg" alt="Medwiz">
			</div>
		</div>
		<div class="item">
			<div class="clientlogo thumb-post">
				<img src="images/includes/clients/TATA_Motors.jpg" alt="TATA Motors">
			</div>
		</div>
		<div class="item">
			<div class="clientlogo thumb-post">
				<img src="images/includes/clients/Endemol_Productions.png"
					alt="Endemol sProductions">
			</div>
		</div>
		<!-- /.item -->
	</div>
	<!-- /#owl-demo --> </section>
	<!-- /.portfolio-holder -->

	<section class="testimonials-widget" style="border-bottom :1px solid lighgrey">
	<div class="container">
		<div class="row" >
			<div class="col-md-12">
				<div class="bxslider">
					<div class="testimonial">
						<div class="testimonial-content">
							<span class="testimonial-author">Mark Valley</span>
							<p class="testimonial-description">One of the things that I'm realizing is that in voice-over work, you have to actually do more work with your facial muscles and your mouth. You have to kind of exaggerate your pronunciation a little bit more, whereas with live action, you can get away with mumbling sometimes.</p>
						</div>
					</div>
					<div class="testimonial">
						<div class="testimonial-content">
							<span class="testimonial-author">Steve Jobs</span>
							<p class="testimonial-description">Your time is limited, so don't waste it living someone else's life. Don't be trapped by dogma - which is living with the results of other people's thinking. Don't let the noise of others' opinions drown out your own inner voice. And most important, have the courage to follow your heart and intuition.</p>
						</div>
					</div>
					<div class="testimonial">
						<div class="testimonial-content">
							<span class="testimonial-author">Tara Strong</span>
							<p class="testimonial-description">Many people think voice over artists just read, there's much more to it. Without acting beats, scene study and improving skills, you won't make it.</p>
						</div>
					</div>
				</div>
				<!-- /.bxslider -->
			</div>
			<!-- /.col-md-12 -->
		</div>
		<!-- /.row -->
	</div>
	<!-- /.container --> </section>
	<!-- /.testimonials-widget -->

	<section class="light-content our-team">
	<div class="container">
		<div class="row">
			<div class="col-md-12">
				<div class="section-header">
					<h2 class="section-title">Testimonials</h2>
					<p class="section-desc">Feedbacks from our workshop students</p>
				</div>
				<!-- /.section-header -->
			</div>
			<!-- /.col-md-12 -->
		</div>
		<!-- /.row -->
	</div>
	<!-- /.container -->
	<div class="team-members">
		<div class="container">
			<div class="row">

				<div class="col-md-4 col-sm-4">
					<div class="team-member" >
						<div class="thumb-post" style="max-height: 350px; overflow: hidden;">
							<img src="images/includes/Testimonial/test1.jpg" alt=""> <span
								class="member-role">Radio Jockey - Fever 104, Radio Mirchi <br> Anchor, VoiceOver and Dubbing Artiste</span>
						</div>
						<div class="member-content">
							<h4 class="member-name">Hardik Mehta</h4>
							<p style="text-align: justify; color: #ff7458 ">
  "The training has helped me a lot in understanding the different Voice variables in depth with all the techniques and exercises which has helped me a lot me to enhance my performance"
							</p>
						</div>
					</div>
					<!-- /.team-member -->
				</div>
				<!-- /.col-md-4 -->

				<div class="col-md-4 col-sm-4">
					<div class="team-member">
						<div class="thumb-post" style="max-height: 350px; overflow: hidden;">
							<img src="images/includes/Testimonial/test2.jpg" alt=""> <span
								class="member-role">VoiceOver Artiste, Dubbing Artiste, Anchor</span>
						</div>
						<div class="member-content">
							<h4 class="member-name">Soniya Mali</h4>
						
							<p style="text-align: justify; color: #ff7458 ">"I really thank God that I joined this course and my dream of becoming a VoiceOver Artiste has come true and changed my career from Corporate to Voice Professional. The training was so rich, fun with complete practicals. Also got wonderful opportunities from the institute to work professionally."
							</p>
						</div>
					</div>
					<!-- /.team-member -->
				</div>
				<!-- /.col-md-4 -->

				<div class="col-md-4 col-sm-4">
					<div class="team-member">
						<div class="thumb-post" style="max-height: 350px; overflow: hidden;">
							<img src="images/includes/Testimonial/test3.jpg" alt=""> 
							<span class="member-role">Sr. HR Director, Capgemini Technology Services Ltd</span>
						</div>
						<div class="member-content">
							<h4 class="member-name">Ravikiran Saurkar</h4>
							<p style="text-align: justify; color: #ff7458 ">"Excellent! Learnt so many things which will help me in my corporate presentations, meetings and this will also help me in my passion for Singing!. Very well conducted, topics were covered in detail and fun-loving environment to improve our Voice performance!"
							</p>
						</div>
					</div>
					<!-- /.team-member -->
				</div>
				<!-- /.col-md-4 -->

			</div>
			<!-- /.row -->
		</div>
		<!-- /.container -->
	</div>
	<!-- /.team-members --> </section>
	<!-- /.our-team -->

	<section id="blogPosts" class="parallax">
	<div class="parallax-overlay">
		<div class="container">
			<div class="row">
				<div class="col-md-12">
					<div class="section-header">
						<h2 class="section-title">Recent from our blogs</h2>
						<p class="section-desc" style="color: yellow;">Some insight on fiew critical aspect of Voice Modulation from our trainer Bharat Kumar thanvi.</p>
					</div>
					<!-- /.section-header -->
				</div>
				<!-- /.col-md-12 -->
			</div>
			<!-- /.row -->
			
			

			
			<div class="row latest-posts">
			<% 
							
							Connection con = DbConnection.getConnection();
							
							Statement stmt = con.createStatement();
							stmt = con.createStatement();
							ResultSet result = stmt.executeQuery("SELECT * FROM Blogs ORDER BY Blog_ID DESC LIMIT 3");
							System.out.println("Query Executed");
							
							while (result.next()){
							
							String blogID = result.getString("Blog_ID");
							String title = result.getString("Title");
					        String author = result.getString("Author");
					        String views = result.getString("Views");						        
					        String tags = result.getString("Tags");
					        String intro = result.getString("Introduction");
					        String content = result.getString("Content");
					        String coverPic = result.getString("Cover_Pic");
					        String thumbPic = result.getString("Thumbnail_Pic");
					        String publishedOn = result.getString("Date_Published");
					        String lastUpdated = result.getString("Last_Updated");
					        
					        System.out.println("data recieved : " + blogID );
						 %>
			
			
				<div class="col-md-4 col-md-3">
					<div class="blog-post clearfix">
						<div class="thumb-post">
							<a style="cursor: pointer;" onclick="readArticle( '<%=blogID%>')"><img
								src="<%=thumbPic%>" alt="Voice Modulation Training | Blogs" class="img-circle"></a>
						</div>
						<div class="blog-post-content">
							<h4 class="post-title">
								<a style="cursor: pointer;" onclick="readArticle( '<%=blogID%>')"><%=title%></h4>
							<span class="meta-post-date" style="color: white;">Published On :<%=publishedOn%></span>
							 <span class="meta-post-date" style="color: white;">views : <%=views%></span>
						</div>
					</div>
					<!-- /.blog-post -->
				</div>
				<%} con.close();%>
			</div>
			<!-- /.row -->
		</div>
		<!-- /.container -->
	</div>
	<!-- /.parallax-overlay --> </section>
	<!-- /#blogPosts -->
 <form action="Article" method="post" id="articleForm" style="display: none">
   <input type="text" value= "" name = "fullArticleName" id = "fullArticleName">    
   </form>
	

	<%@include file="footer.jsp"%>
	<!-- Scripts -->
	<script src="js/min/plugins.min.js"></script>
	<script src="js/min/medigo-custom.min.js"></script>

	<script src="http://code.jquery.com/jquery-1.11.3.min.js"></script>
	<script src="js/switchable.js"></script>
	<script>
		$(function() {
			/* switchable({
				$element: $('#slides')
				,interval: 3000
				,animateSpeed: 200
				
			}); */
			switchable({
				$element : $('#slides1'),
				interval : 3000,
				effect : 'fade',
				animateSpeed : 50
			});
			switchable({
				$element : $('#scroll_wrap'),
				interval : 2000,
				showNav : true
				//,effect: 'fade'
				,
				type : 'imgScroll',
				imgScroll : {
					num : 2
				}
			});
		});

		$(document).ready(function() {
			$.ajax({
				url : "DbConnection",
				success : function(result) {
					// do nothing
				}
			});
		});
	</script>
	<script type="text/javascript">
function readArticle(ArticleName){
	//alert (ArticleName);
	$("#fullArticleName").val(ArticleName);
	$("form#articleForm").submit();		
}
</script>
</body>
</html>