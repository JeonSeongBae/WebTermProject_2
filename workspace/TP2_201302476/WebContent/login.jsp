<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
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
	<h1>로그인</h1>
	<p>아이디와 비밀번호를 입력해주세요</p>
	</header>

	<!-- Signup Form -->
	<table>
		<thead>
		</thead>
		<tbody>
			<!-- ID, Password 입력칸 -->
			<tr>
				<td>ID</td>
				<td><input id="ID" type="text"><br></td>
			</tr>
			<tr>
				<td>Password</td>
				<td><input id="Password" type="password"><br></td>
			</tr>
		</tbody>
		<tfoot>
			<!-- 버튼목록 -->
			<tr>
				<td></td>
				<td><input type="button" value="로그인하기" onclick="login()"></td>
				<td><input type="button" value="회원가입"
					onclick="location.href='http://localhost:8080/TP2_201302476/registration.jsp'"></td>
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
		<li>&copy; Major: <a href="http://computer.cnu.ac.kr/"></a>Computer	Science Enginnering	</li>
	</ul>
	</footer>
</body>
<script src="//code.jquery.com/jquery-1.11.3.min.js"></script>
<script src="//code.jquery.com/jquery-migrate-1.2.1.min.js"></script>
<script type="text/javascript">
	function login() {
		$.ajax({
			type : 'post',
			url : 'http://localhost:8080/TP2_201302476/checkLogin.jsp',
			data : {
				ID : document.getElementById("ID").value,
				Password : document.getElementById("Password").value
			},
			success : function(response) {
				if (response == "MATCH") {
					enterPage();
				} else if (response == "NOMATCH") {
					alert("비밀번호가 일치하지 않습니다.");
				} else if (response == "NOTEXIST") {
					alert("아이디가 존재하지 않습니다.");
				}
			}
		})
	}
	function enterPage() {
		location.href = "http://localhost:8080/TP2_201302476/home/home.jsp?ID="+document.getElementById("ID").value;
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