<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>login</title>
<meta charset="utf-8" />
<meta name="viewport"
	content="width=device-width, initial-scale=1, user-scalable=no" />
<link rel="stylesheet" href="assets/css/main.css" />
</head>
<body>

	<!-- Header -->
	<header id="header">
	<h1>회원가입</h1>
	<p>양식에 맞게 입력해주세요</p>
	</header>

	<table border="2">
		<thead></thead>
		<tbody>
			<tr>
				<td>형식에 맞게 양식을 작성해주세요</td>
			</tr>
		</tbody>
		<tfoot></tfoot>
	</table>
	<table>
		<thead></thead>
		<tbody>
			<tr>
				<td>ID</td>
				<td><input id="ID" type="text" placeholder="문자 or 숫자" required><br></td>
				<td><input type="button" value="중복체크" onclick="checkID()"
					required></td>
			</tr>
			<tr>
				<td>Password</td>
				<td><input id="Password" type="password"
					placeholder="문자+숫자, 8자리 이상" required><br></td>
			</tr>
			<tr>
				<td>이름</td>
				<td><input id="Name" type="text" placeholder="문자열만 입력 가능"
					required><br></td>
			</tr>
			<tr>
				<td>이메일</td>
				<td><input id="Email" type="email" required><br></td>
			</tr>
		</tbody>
		<tfoot>
			<tr>
				<td></td>
				<td><input type="button" value="제출하기" onclick="checkSubmit()"
					required></td>
				<td><input type="button" value="돌아가기"
					onclick="location.href='http://localhost:8080/TP2_201302476/login.jsp'"
					required></td>
			</tr>
		</tfoot>
	</table>


	<!-- Footer -->
	<footer id="footer">
	<ul class="icons">
		<li><a href="https://twitter.com/?lang=ko" class="icon fa-twitter"><span class="label">Twitter</span></a></li>
		<li><a href="https://www.instagram.com/" class="icon fa-instagram"><span class="label">Instagram</span></a></li>
		<li><a href="https://github.com/JeonSeongBae/" class="icon fa-github"><span class="label">GitHub</span></a></li>
		<li><a href="https://www.naver.com" class="icon fa-envelope-o"><span
				class="label">Email</span></a></li>
	</ul>
	<ul class="copyright">
		<li>School: <a href="http://plus.cnu.ac.kr/html/kr/">충남대학교</a></li>
		<li>&copy; Major: <a href="http://computer.cnu.ac.kr/"></a>Computer	Science Enginnering</li>
	</ul>
	</footer>
</body>

<script src="//code.jquery.com/jquery-1.11.3.min.js"></script>
<script src="//code.jquery.com/jquery-migrate-1.2.1.min.js"></script>
<script type="text/javascript">
	var dupli = false;
	function checkID() { // 중복체크
		$.ajax({
			type : 'post',
			url : 'http://localhost:8080/TP2_201302476/checkID.jsp',
			data : {
				ID : document.getElementById("ID").value
			},
			success : function(response) {
				if (response == "POSSIBLE") {
					alert("사용 가능한 ID입니다.");
					dupli = true;
					document.getElementById("Password").focus();
				} else if (response == "DUPLICATION") {
					alert("이미 존재하는 ID입니다. 다른 ID를 입력해주세요.");
				} else {
					alert("형식에 맞지않는 ID입니다. 형식에 맞는 ID를 입력해주세요.");
				}
			}
		})
	}
	$('#Name').blur(function() {
		var checkName = /^[a-z가-힣]+$/;
		if (!(checkName.test($('#Name').val()))&&(document.getElementById("Name").value!="")) { // 이름 확인
			alert("이름은 문자열만 입력 가능합니다.");
			document.getElementById("Name").value = null;
		}
	});
	$('#Email').blur(function() {
		var checkName = /^[a-z가-힣0-9]+@+[a-z가-힣0-9]+.+[a-z가-힣0-9]+$/;
		if (!(checkName.test($('#Email').val()))&&(document.getElementById("Email").value!="")) { // 이메일 확인
			alert("이메일 형식을 지켜주세요.");
			document.getElementById("Email").value = null;
		}
	});
	function checkSubmit() { // 제출하기
		$.ajax({
			type : 'post',
			url : 'http://localhost:8080/TP2_201302476/checkSubmit.jsp',
			data : {
				ID : document.getElementById("ID").value,
				Password : document.getElementById("Password").value,
				Name : document.getElementById("Name").value,
				Email : document.getElementById("Email").value
			},
			success : function(response) {
			 if (response == "checkPassword") {
					alert("패스워드 형식을 지켜주세요.");
			
				} else if (response == "checkID") {
					alert("아이디 형식을 지켜주세요.");
				} else if (response == "blankEmail") {
					alert("Email값이 없습니다.");
				} else if (response == "blankName") {
					alert("이름값이 없습니다.");
				} else if (response == "blankPassword") {
					alert("비밀번호값이 없습니다.");
				} else if (response == "blankID") {
					alert("ID값이 없습니다.");
				} else if (dupli != true) {
					alert("중복체크를 해주세요.");
				} else {
					createMember();
				}
			}
		})
	}
	function createMember() { // 계정생성
		$.ajax({
			type : 'post',
			url : 'http://localhost:8080/TP2_201302476/createMember.jsp',
			data : {
				ID : document.getElementById("ID").value,
				Password : document.getElementById("Password").value,
				Name : document.getElementById("Name").value,
				Email : document.getElementById("Email").value
			},
			success : function(response) {
				if (response == "SUCESS") {
					alert("계정을 생성하였습니다. 이메일 인증을 받으세요.");
					send_email();
				} else
					alert("계정생성에 실패하였습니다.");
			}
		})
	}
	function send_email() {
		$.ajax({
			type : 'post',
			url : 'http://localhost:8080/TP2_201302476/email.jsp',
			data : {
				ID : document.getElementById("ID").value,
				Email : document.getElementById("Email").value
			},
			success : function(response) {
				location.href = 'http://localhost:8080/TP2_201302476/login.jsp';
				}
		})

	}


		(function() {

			"use strict";

			// Methods/polyfills.

				// classList | (c) @remy | github.com/remy/polyfills | rem.mit-license.org
					!function(){function t(t){this.el=t;for(var n=t.className.replace(/^\s+|\s+$/g,"").split(/\s+/),i=0;i<n.length;i++)e.call(this,n[i])}function n(t,n,i){Object.defineProperty?Object.defineProperty(t,n,{get:i}):t.__defineGetter__(n,i)}if(!("undefined"==typeof window.Element||"classList"in document.documentElement)){var i=Array.prototype,e=i.push,s=i.splice,o=i.join;t.prototype={add:function(t){this.contains(t)||(e.call(this,t),this.el.className=this.toString())},contains:function(t){return-1!=this.el.className.indexOf(t)},item:function(t){return this[t]||null},remove:function(t){if(this.contains(t)){for(var n=0;n<this.length&&this[n]!=t;n++);s.call(this,n,1),this.el.className=this.toString()}},toString:function(){return o.call(this," ")},toggle:function(t){return this.contains(t)?this.remove(t):this.add(t),this.contains(t)}},window.DOMTokenList=t,n(Element.prototype,"classList",function(){return new t(this)})}}();

				// canUse
					window.canUse=function(p){if(!window._canUse)window._canUse=document.createElement("div");var e=window._canUse.style,up=p.charAt(0).toUpperCase()+p.slice(1);return p in e||"Moz"+up in e||"Webkit"+up in e||"O"+up in e||"ms"+up in e};

				// window.addEventListener
					(function(){if("addEventListener"in window)return;window.addEventListener=function(type,f){window.attachEvent("on"+type,f)}})();

			// Vars.
				var	$body = document.querySelector('body');

			// Disable animations/transitions until everything's loaded.
				$body.classList.add('is-loading');

				window.addEventListener('load', function() {
					window.setTimeout(function() {
						$body.classList.remove('is-loading');
					}, 100);
				});

			// Slideshow Background.
				(function() {

					// Settings.
						var settings = {

							// Images (in the format of 'url': 'alignment').
								images: {
									'images/bg01.jpg': 'center',
									'images/bg02.jpg': 'center',
									'images/bg03.jpg': 'center'
								},

							// Delay.
								delay: 6000

						};

					// Vars.
						var	pos = 0, lastPos = 0,
							$wrapper, $bgs = [], $bg,
							k, v;

					// Create BG wrapper, BGs.
						$wrapper = document.createElement('div');
							$wrapper.id = 'bg';
							$body.appendChild($wrapper);

						for (k in settings.images) {

							// Create BG.
								$bg = document.createElement('div');
									$bg.style.backgroundImage = 'url("' + k + '")';
									$bg.style.backgroundPosition = settings.images[k];
									$wrapper.appendChild($bg);

							// Add it to array.
								$bgs.push($bg);

						}

					// Main loop.
						$bgs[pos].classList.add('visible');
						$bgs[pos].classList.add('top');

						// Bail if we only have a single BG or the client doesn't support transitions.
							if ($bgs.length == 1
							||	!canUse('transition'))
								return;

						window.setInterval(function() {

							lastPos = pos;
							pos++;

							// Wrap to beginning if necessary.
								if (pos >= $bgs.length)
									pos = 0;

							// Swap top images.
								$bgs[lastPos].classList.remove('top');
								$bgs[pos].classList.add('visible');
								$bgs[pos].classList.add('top');

							// Hide last image after a short delay.
								window.setTimeout(function() {
									$bgs[lastPos].classList.remove('visible');
								}, settings.delay / 2);

						}, settings.delay);

				})();

		})();
</script>
</html>