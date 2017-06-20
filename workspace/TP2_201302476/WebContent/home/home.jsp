<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>Main Home</title>
<meta charset="utf-8" />
<meta name="viewport" content="width=device-width, initial-scale=1" />
<link rel="stylesheet" href="assets/css/main.css" />
<link rel="stylesheet" href="assets/css/submain.css" />
</head>
<body>
	<!-- Header -->
	<header id="header">
	<h1>SeongBaeJeon</h1>
	<nav>
	<ul>
		<li><a href="#intro">Intro</a></li>
		<li><a href="#one">one</a></li>
		<li><a href="#two">two</a></li>
		<li><a href="#three">three</a></li>
		<li><a href="#work">work</a></li>
		<li><a href="#contact">Contact</a></li>
	</ul>
	</nav> </header>

	<!-- Intro -->
	<section id="intro" class="main style1 dark fullscreen">
	<div class="content">
		<header>
		<h2>HearthStone</h2>
		</header>
		<p>
			빠른 속도로 펼쳐지는, 모두를 위한 전략 카드 게임<br>
		<h4>
			<strong>놀랄 만큼 쉽고<br>믿기힘들 만큼 재미있습니다.
			</strong>
		</h4>
		<br> <input type="button" value="게임 플레이"><br> PC, Mac, iPad 및 Android 태블릿, 스마트폰에서 이용 가능
		</p>
		<footer> <a href="#one" class="button style2 down">More</a> </footer>
	</div>
	</section>

	<!-- one -->
	<section id="one" class="main style2 right dark fullscreen">
	<div class="content box style2">
		<img id="hero1" class="hero" alt="" src="./img/hero1.jpg"
			onclick="location.href='http://localhost:8080/TP2_201302476/herolens/hero1.jsp'" />
	</div>
	<div class="content box style2">
		<img id="hero2" class="hero" alt="" src="./img/hero2.jpg"
			onclick="location.href='http://localhost:8080/TP2_201302476/herolens/hero2.jsp'" />
	</div>
	<div class="content box style2">
		<img id="hero3" class="hero" alt="" src="./img/hero3.jpg"
			onclick="location.href='http://localhost:8080/TP2_201302476/herolens/hero3.jsp'" />
	</div>
	</section>

	<!-- two -->
	<section id="two" class="main style2 left dark fullscreen">
	<div class="content box style2">
		<img id="hero4" class="hero" alt="" src="./img/hero4.jpg"
			onclick="location.href='http://localhost:8080/TP2_201302476/herolens/hero4.jsp'" />
	</div>
	<div class="content box style2">
		<img id="hero5" class="hero" alt="" src="./img/hero5.jpg"
			onclick="location.href='http://localhost:8080/TP2_201302476/herolens/hero5.jsp'" />
	</div>
	<div class="content box style2">
		<img id="hero6" class="hero" alt="" src="./img/hero6.jpg"
			onclick="location.href='http://localhost:8080/TP2_201302476/herolens/hero6.jsp'" />
	</div>
	</section>

	<!-- three -->
	<section id="three" class="main style2 right dark fullscreen">
	<div class="content box style2">
		<img id="hero7" class="hero" alt="" src="./img/hero7.jpg"
			onclick="location.href='http://localhost:8080/TP2_201302476/herolens/hero7.jsp'" />
	</div>
	<div class="content box style2">
		<img id="hero8" class="hero" alt="" src="./img/hero8.jpg"
			onclick="location.href='http://localhost:8080/TP2_201302476/herolens/hero8.jsp'" />
	</div>
	<div class="content box style2">
		<img id="hero9" class="hero" alt="" src="./img/hero9.jpg"
			onclick="location.href='http://localhost:8080/TP2_201302476/herolens/hero9.jsp'" />
	</div>
	</section>

	<!-- Work -->
	<section id="work" class="main style3 primary">
	<div class="content">
		<header>
		<h2>My Work</h2>
		<p>Lorem ipsum dolor sit amet et sapien sed elementum egestas
			dolore condimentum. Fusce blandit ultrices sapien, in accumsan orci
			rhoncus eu. Sed sodales venenatis arcu, id varius justo euismod in.
			Curabitur egestas consectetur magna vitae.</p>
		</header>

		<!-- Gallery  -->
		<div class="gallery">
			<article class="from-left"> <a href="images/fulls/01.jpg"
				class="image fit"><img src="images/thumbs/01.jpg"
				title="The Anonymous Red" alt="" /></a> </article>
			<article class="from-right"> <a href="images/fulls/02.jpg"
				class="image fit"><img src="images/thumbs/02.jpg"
				title="Airchitecture II" alt="" /></a> </article>
			<article class="from-left"> <a href="images/fulls/03.jpg"
				class="image fit"><img src="images/thumbs/03.jpg"
				title="Air Lounge" alt="" /></a> </article>
			<article class="from-right"> <a href="images/fulls/04.jpg"
				class="image fit"><img src="images/thumbs/04.jpg"
				title="Carry on" alt="" /></a> </article>
			<article class="from-left"> <a href="images/fulls/05.jpg"
				class="image fit"><img src="images/thumbs/05.jpg"
				title="The sparkling shell" alt="" /></a> </article>
			<article class="from-right"> <a href="images/fulls/06.jpg"
				class="image fit"><img src="images/thumbs/06.jpg"
				title="Bent IX" alt="" /></a> </article>
		</div>

	</div>
	</section>
	<!-- Contact -->
	<section id="contact" class="main style3 secondary">
	<div class="content">
		<header>
		<h2>Say Hello.</h2>
		<p>Lorem ipsum dolor sit amet et sapien sed elementum egestas
			dolore condimentum.</p>
		</header>
		<div class="box">
		
			<form method="post" action="#">
				<div class="field half first">
					<input type="text" name="name" placeholder="Name" />
				</div>
				<div class="field half">
					<input type="email" name="email" placeholder="Email" />
				</div>
				
				<table>
					<tr>
						<td><img id="contact1" class="contacthero" alt="" src="./img/hero1.jpg" onclick="" /></td>
						<td><img id="contact2" class="contacthero" alt="" src="./img/hero2.jpg" onclick="" /></td>
						<td><img id="contact3" class="contacthero" alt="" src="./img/hero3.jpg" onclick="" /></td>
						<td><img id="contact4" class="contacthero" alt="" src="./img/hero4.jpg" onclick="" /></td>
						<td><img id="contact5" class="contacthero" alt="" src="./img/hero5.jpg" onclick="" /></td>
						<td><img id="contact6" class="contacthero" alt="" src="./img/hero6.jpg" onclick="" /></td>
						<td><img id="contact7" class="contacthero" alt="" src="./img/hero7.jpg" onclick="" /></td>
						<td><img id="contact8" class="contacthero" alt="" src="./img/hero8.jpg" onclick="" /></td>
						<td><img id="contact9" class="contacthero" alt="" src="./img/hero9.jpg" onclick="" /></td>
					</tr>		
				</table>
				
				<div class="field">
					<textarea name="message" placeholder="Message" rows="6"></textarea>
				</div>
				<ul class="actions">
					<li><input type="submit" value="Send Message" /></li>
				</ul>
			</form>
		
		</div>
	</div>
	</section>
	<!-- Footer -->
	<footer id="footer"> <!-- Icons -->
	<ul class="actions">
			<li><a href="https://twitter.com/?lang=ko" class="icon fa-twitter"><span class="label">Twitter</span></a></li>
		<li><a href="https://www.instagram.com/" class="icon fa-instagram"><span class="label">Instagram</span></a></li>
		<li><a href="https://github.com/JeonSeongBae/" class="icon fa-github"><span class="label">GitHub</span></a></li>
		<li><a href="https://www.naver.com" class="icon fa-envelope-o"><span
				class="label">Email</span></a></li>
		<li><a href="https://www.facebook.com/" class="icon fa-facebook"><span class="label">Facebook</span></a></li>
		<li><a href="#" class="icon fa-linkedin"><span class="label">LinkedIn</span></a></li>
		<li><a href="#" class="icon fa-dribbble"><span class="label">Dribbble</span></a></li>
		<li><a href="#" class="icon fa-pinterest"><span class="label">Pinterest</span></a></li>
	</ul>

	<!-- Menu -->
	<ul class="menu">
		<li>&copy; Untitled</li>
		<li>Design: <a href="https://html5up.net">HTML5 UP</a></li>
	</ul>

	</footer>
</body>
<!-- Scripts -->
			<script src="assets/js/jquery.min.js"></script>
			<script src="assets/js/jquery.poptrox.min.js"></script>
			<script src="assets/js/jquery.scrolly.min.js"></script>
			<script src="assets/js/jquery.scrollex.min.js"></script>
			<script src="assets/js/skel.min.js"></script>
			<script src="assets/js/util.js"></script>
			<script src="assets/js/main.js"></script>

</html>