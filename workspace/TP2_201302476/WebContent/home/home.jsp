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
	<%
		String ID = request.getParameter("ID");	
	%>
	<!-- Header -->
	<header id="header">
	<h1>SeongBaeJeon</h1>
	<nav>
	<ul>
		<li><a href="#intro">Intro</a></li>
		<li><a href="#one">hero_1</a></li>
		<li><a href="#two">hero_2</a></li>
		<li><a href="#three">hero_3</a></li>
		<li><a href="#contact">deputy</a></li>
	</ul>
	</nav> </header>

	<!-- Intro -->
	<section id="intro" class="main style1 dark fullscreen">
		<div class="content">
			<header>
			<h2>HearthStone</h2>
			</header>
			<p>빠른 속도로 펼쳐지는, 모두를 위한 전략 카드 게임<br>
				<h4>놀랄 만큼 쉽고<br>믿기힘들 만큼 재미있습니다.</h4><br>
				<input type="button" value="게임 플레이" onclick="location.href='http://localhost:8080/TP2_201302476/home/tutorial.jsp'" ><br><br>
				PC, Mac, iPad 및 Android 태블릿, 스마트폰에서 이용 가능<br></p>
			<footer><a href="#one" class="button style2 down">More</a> </footer>
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
		<a href="#two" class="button style2 down anchored">Next</a>
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
		<a href="#three" class="button style2 down anchored">Next</a>
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
		<a href="#work" class="button style2 down anchored">Next</a>
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
		
			<div>
			<table>
				<tr>
					<td><input id="id" type="text" value="<%=ID %>" disabled/></td>
					<td><input id="nickname" type="text" placeholder="NickName" /></td>
					<td><input id="battletag" type="text" placeholder="BattleTag" /></td>
				</tr>
				<tr>
					<td><input id="battlenetemailid" type="email" value="" placeholder="EmailID" /></td>
					<td><input id="battlenetemail" type="text" value="@gmail.com" placeholder="---직접입력---" /></td>
					<td><select id="select">
						<option class="option" value="">---직접입력---</option>
						<option class="option" value="@gmail.com">@gmail.com</option>
						<option class="option" value="@naver.com">@naver.com</option>
						<option class="option" value="@daum.net">@daum.net</option>
					</select></td>
				</tr>
			</table>
			<table>
					<tr>
						<td><img id="contact1" class="contacthero" alt="" src="./img/hero1.jpg" onclick="clickradio(this)" />
						<input id="racontact1" class="radiobtn" type="radio" name="selecthero"></td>
						
						<td><img id="contact2" class="contacthero" alt="" src="./img/hero2.jpg" onclick="clickradio(this)" />
						<input id="racontact2" class="radiobtn" type="radio" name="selecthero"></td>
						
						<td><img id="contact3" class="contacthero" alt="" src="./img/hero3.jpg" onclick="clickradio(this)" />
						<input id="racontact3" class="radiobtn" type="radio" name="selecthero"></td>
						
						<td><img id="contact4" class="contacthero" alt="" src="./img/hero4.jpg" onclick="clickradio(this)" />
						<input id="racontact4" class="radiobtn" type="radio" name="selecthero"></td>
						
						<td><img id="contact5" class="contacthero" alt="" src="./img/hero5.jpg" onclick="clickradio(this)" />
						<input id="racontact5" class="radiobtn" type="radio" name="selecthero"></td>
						
						<td><img id="contact6" class="contacthero" alt="" src="./img/hero6.jpg" onclick="clickradio(this)" />
						<input id="racontact6" class="radiobtn" type="radio" name="selecthero"></td>
						
						<td><img id="contact7" class="contacthero" alt="" src="./img/hero7.jpg" onclick="clickradio(this)" />
						<input id="racontact7" class="radiobtn" type="radio" name="selecthero"></td>
						
						<td><img id="contact8" class="contacthero" alt="" src="./img/hero8.jpg" onclick="clickradio(this)" />
						<input id="racontact8" class="radiobtn" type="radio" name="selecthero"></td>
						
						<td><img id="contact9" class="contacthero" alt="" src="./img/hero9.jpg" onclick="clickradio(this)" />
						<input id="racontact9" class="radiobtn" type="radio" name="selecthero"></td>
					</tr>		
				</table>
				<div class="field">
					<textarea id="Msg" name="message" placeholder="Message" rows="6"></textarea>
				</div>
				<ul class="actions">
					<li><input type="button" value="Send Message" onclick="send_email()"/></li>
				</ul>
			</div>
		</div>
	</div>
	</section>
	<!-- Footer -->
	<footer id="footer"> <!-- Icons -->
	<ul class="actions">
			<li><a href="https://twitter.com/?lang=ko" class="icon fa-twitter"><span class="label">Twitter</span></a></li>
		<li><a href="https://www.instagram.com/" class="icon fa-instagram"><span class="label">Instagram</span></a></li>
		<li><a href="https://github.com/JeonSeongBae/" class="icon fa-github"><span class="label">GitHub</span></a></li>
		<li><a href="https://www.gmail.com" class="icon fa-envelope-o"><span class="label">Email</span></a></li>
		<li><a href="https://www.facebook.com/" class="icon fa-facebook"><span class="label">Facebook</span></a></li>
		<li><a href="#" class="icon fa-linkedin"><span class="label">LinkedIn</span></a></li>
		<li><a href="#" class="icon fa-dribbble"><span class="label">Dribbble</span></a></li>
		<li><a href="#" class="icon fa-pinterest"><span class="label">Pinterest</span></a></li>
	</ul>

	<!-- Menu -->
	<ul class="menu">
		<li>School: <a href="http://plus.cnu.ac.kr/html/kr/">충남대학교</a></li>
		<li>&copy; Major: <a href="http://computer.cnu.ac.kr/">Computer	Science Enginnering</a></li>
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
			<script type="text/javascript">
			
				$('#select').blur(function() {
					document.getElementById("battlenetemail").value = document.getElementById("select").value;
					if (document.getElementById("select").value == ""){
						document.getElementById("battlenetemail").disabled = false;
					}else{
						document.getElementById("battlenetemail").disabled = true;
					}
				});
				
				function clickradio(id){
					document.getElementById("ra"+id.id).checked = true;
				}
				
				function send_email() {
				    var radio = document.getElementsByClassName("radiobtn");
				    var radioindex;
				    for (radioindex = 0; radioindex < radio.length; radioindex++) {
				      if (radio[radioindex].checked == true) {
				        break;
				      }
				    }
				    var password = prompt("이메일 패스워드를 입력해주세요.");
					var checkemail = document.getElementById("battlenetemailid").value;
					checkemail += document.getElementById("battlenetemail").value;
					$.ajax({
						type : 'post',
						url : 'http://localhost:8080/TP2_201302476/home/email.jsp',
						data : {
							Nickname : document.getElementById("nickname").value,
							Battletag : document.getElementById("battletag").value,
							Email : checkemail,
							Msg : document.getElementById("Msg").value,
							Id : document.getElementById("id").value,
							Hero : radioindex,
							Password : password
						},
						success : function(response) {
							alert("메일을 성공적으로 보냈습니다. 답장을 기다려주세요.");
						}
					})
				}
			</script>
</html>