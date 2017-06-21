<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" type="text/css" href="./tutorialcss.css">
<title>T U T O R I A L</title>
</head>
<body onload="startgame()">
	<main>
		<h1 align="center">T U T O R I A L</h1>
		<!-- 		1P에 들어와있는 카드 -->
		<table class="Hand" id="yourHand">
			<tr>
				<td class="newyour" ondrop="drop(event)" ondragover="allowDrop(event)">
					<div class="yourcard1">
						<img class="yourplayCard" id="yourcard1" src="./img/cardlist/card1.JPG" draggable="true" ondragstart="drag(event)">
						<div>1</div><div>3</div><div>X</div>
					</div>
				</td>
				<td class="newyour" ondrop="drop(event)" ondragover="allowDrop(event)">
					<div class="yourcard2">
						<img class="yourplayCard" id="yourcard2" src="./img/cardlist/card2.JPG" draggable="true" ondragstart="drag(event)">
						<div>6</div><div>7</div><div>X</div>
					</div>
				</td>
				<td>
					<div class="yourhero">
						<img class="playCard" id="yourhero" src="./img/hero5.jpg" ondrop="yourdrop(event)" ondragover="allowDrop(event)">
						<div>0</div><div>10</div>
					</div>
				</td>
				<td class="newyour" ondrop="drop(event)" ondragover="allowDrop(event)">
					<div class="yourcard3">
						<img class="yourplayCard" id="yourcard3" src="./img/cardlist/card3.JPG" draggable="true" ondragstart="drag(event)">
						<div>2</div><div>3</div><div>X</div>
					</div>
				</td>
				<td class="newyour" ondrop="drop(event)" ondragover="allowDrop(event)">
					<div class="yourcard4">
						<img class="yourplayCard" id="yourcard4" src="./img/cardlist/card4.JPG" draggable="true" ondragstart="drag(event)">
						<div>3</div><div>2</div><div>X</div>
					</div>
				</td>
			</tr>
		</table>
		<!-- 		1P가 낸카드 -->
		<table class="Field" id="yourField">
			<tr>
				<td ondrop="yourdrop(event)" ondragover="allowDrop(event)"></td>
				<td ondrop="yourdrop(event)" ondragover="allowDrop(event)"></td>
				<td ondrop="yourdrop(event)" ondragover="allowDrop(event)"></td>
				<td ondrop="yourdrop(event)" ondragover="allowDrop(event)"></td>
				<td ondrop="yourdrop(event)" ondragover="allowDrop(event)"></td>
			</tr>
		</table>
			<!-- 		턴 넘기는 버튼 -->
			<img id="terminateTurn" src="./img/turn.png" onclick="next()">
			<!-- 		2P가 낸카드 -->
			<table class="Field" id="myField">
				<tr>
					<td ondrop="mydrop(event)" ondragover="allowDrop(event)"></td>
					<td ondrop="mydrop(event)" ondragover="allowDrop(event)"></td>
					<td ondrop="mydrop(event)" ondragover="allowDrop(event)"></td>
					<td ondrop="mydrop(event)" ondragover="allowDrop(event)"></td>
					<td ondrop="mydrop(event)" ondragover="allowDrop(event)"></td>
				</tr>
			</table>
			<!-- 		2P 손에있는 카드 -->
			<table class="Hand" id="myHand">
				<tr>
					<td class="newmy" ondrop="drop(event)" ondragover="allowDrop(event)">
						<div class="mycard1">
							<img class="myplayCard" id="mycard1" src="./img/cardlist/card5.JPG" draggable="true" ondragstart="drag(event)">
							<div>4</div><div>5</div><div>O</div>
						</div>
					</td>
					<td class="newmy" ondrop="drop(event)" ondragover="allowDrop(event)">
						<div class="mycard2">
							<img class="myplayCard" id="mycard2" src="./img/cardlist/card6.JPG" draggable="true" ondragstart="drag(event)">
							<div>2</div><div>7</div><div>O</div>
						</div>
					</td>
					<td>
						<div class="myhero">
							<img class="playCard" id="myhero" src="./img/hero1.jpg" ondrop="mydrop(event)" ondragover="allowDrop(event)">
							<div>0</div><div>10</div>
						</div>
					</td>
					<td class="newmy" ondrop="drop(event)" ondragover="allowDrop(event)">
						<div class="mycard3">
							<img class="myplayCard" id="mycard3" src="./img/cardlist/card7.JPG" draggable="true" ondragstart="drag(event)">
							<div>5</div><div>1</div><div>O</div>
						</div>
					</td>
					<td class="newmy" ondrop="drop(event)" ondragover="allowDrop(event)">
						<div class="mycard4">
							<img class="myplayCard" id="mycard4" src="./img/cardlist/card8.JPG" draggable="true" ondragstart="drag(event)">
							<div>2</div><div>1</div><div>O</div>
						</div>
					</td>
				</tr>
			</table>
	</main>
</body>
<script type="text/javascript">
	var turn = 1;
	var yourcnt = 5;
	var mycnt = 5;
	
	function startgame(){
		var myturn = document.getElementsByClassName("myplayCard");
		var yourturn = document.getElementsByClassName("yourplayCard");
		for (var i = 0; i < myturn.length; i++) {
			myturn[i].nextElementSibling.innerHTML = Math.floor((Math.random() * 10) + 1);
			myturn[i].nextElementSibling.nextElementSibling.innerHTML = Math.floor((Math.random() * 10) + 1);
			myturn[i].nextElementSibling.nextElementSibling.nextElementSibling.innerHTML = "O";
		}
		for (var i = 0; i < yourturn.length; i++) {
			yourturn[i].nextElementSibling.innerHTML = Math.floor((Math.random() * 10) + 1);
			yourturn[i].nextElementSibling.nextElementSibling.innerHTML = Math.floor((Math.random() * 10) + 1);
			yourturn[i].nextElementSibling.nextElementSibling.nextElementSibling.innerHTML = "X";
		}
	}
	// 다음 턴으로 넘기기
	function next(){
		if (turn == 0){
			myturn();
			turn = 1;
		}else{
			yourturn();
			turn = 0;
		}
	}
	// 나의 턴 시작
	function myturn(){
		var myturn = document.getElementsByClassName("myplayCard");
		var yourturn = document.getElementsByClassName("yourplayCard");
		for (var i = 0; i < myturn.length; i++) {
			myturn[i].nextElementSibling.nextElementSibling.nextElementSibling.innerHTML = "O";
		}
		for (var i = 0; i < yourturn.length; i++) {
			yourturn[i].nextElementSibling.nextElementSibling.nextElementSibling.innerHTML = "X";
		}
	}
	// 상대 턴 시작
	function yourturn(){
		var myturn = document.getElementsByClassName("myplayCard");
		var yourturn = document.getElementsByClassName("yourplayCard");
		for (var i = 0; i < myturn.length; i++) {
			myturn[i].nextElementSibling.nextElementSibling.nextElementSibling.innerHTML = "X";
		}
		for (var i = 0; i < yourturn.length; i++) {
			yourturn[i].nextElementSibling.nextElementSibling.nextElementSibling.innerHTML = "O";
		}
	}
	// 나의 턴 종료
	function myturnend(){
		var myturn = document.getElementsByClassName("myplayCard");
		for (var i = 0; i < myturn.length; i++) {
			myturn[i].nextElementSibling.nextElementSibling.nextElementSibling.innerHTML = "X";
		}
	}
	// 상대 턴 종료
	function yourturnend(){
		var yourturn = document.getElementsByClassName("yourplayCard");
		for (var i = 0; i < yourturn.length; i++) {
			yourturn[i].nextElementSibling.nextElementSibling.nextElementSibling.innerHTML = "X";
		}
	}
	function newyour(){
		var newyour = document.getElementsByClassName("newyour");
				
		var APdiv = document.createElement("div");
		APdiv.innerHTML = Math.floor((Math.random() * 10) + 1);
		
		var HPdiv = document.createElement("div");
		HPdiv.innerHTML = Math.floor((Math.random() * 10) + 1);
		
		var turndiv = document.createElement("div");
		turndiv.innerHTML = "X";
		
		var image = document.createElement("img");
		image.src = "./img/cardlist/card1.JPG";
		image.className = "yourplayCard";
		image.id = "yourcard" + yourcnt;
		
		var maindiv = document.createElement("div");
		maindiv.className = "yourcard" + yourcnt++;
		maindiv.appendChild(image);
		maindiv.appendChild(APdiv);
		maindiv.appendChild(HPdiv);
		maindiv.appendChild(turndiv);
		
		for (var i = 0; i < newyour.length; i++) {
			if(newyour[i].firstElementChild == null){
				newyour[i].appendChild(maindiv);
				break;
			}
		}
	}
	function newmy(){
		var newmy = document.getElementsByClassName("newmy");
		
		var APdiv = document.createElement("div");
		APdiv.innerHTML = Math.floor((Math.random() * 10) + 1);
		
		var HPdiv = document.createElement("div");
		HPdiv.innerHTML = Math.floor((Math.random() * 10) + 1);
		
		var turndiv = document.createElement("div");
		turndiv.innerHTML = "X";
		
		var image = document.createElement("img");
		image.src = "./img/cardlist/card1.JPG";
		image.className = "myplayCard";
		image.id = "mycard" + mycnt;
		image.draggable = "true";
		image.ondragstart="drag(event)";
		
		var maindiv = document.createElement("div");
		maindiv.className = "mycard" + mycnt++;
		maindiv.appendChild(image);
		maindiv.appendChild(APdiv);
		maindiv.appendChild(HPdiv);
		maindiv.appendChild(turndiv);
		
		for (var i = 0; i < newmy.length; i++) {
			if(newmy[i].firstElementChild == null){
				newmy[i].appendChild(maindiv);
				break;
			}
		}
	}
	function newyour(){
		var newyour = document.getElementsByClassName("newyour");
				
		var APdiv = document.createElement("div");
		APdiv.innerHTML = Math.floor((Math.random() * 10) + 1);
		
		var HPdiv = document.createElement("div");
		HPdiv.innerHTML = Math.floor((Math.random() * 10) + 1);
		
		var turndiv = document.createElement("div");
		turndiv.innerHTML = "X";
		
		var image = document.createElement("img");
		image.src = "./img/cardlist/card1.JPG";
		image.className = "yourplayCard";
		image.id = "yourcard" + yourcnt;
		
		var maindiv = document.createElement("div");
		maindiv.className = "yourcard" + yourcnt++;
		maindiv.appendChild(image);
		maindiv.appendChild(APdiv);
		maindiv.appendChild(HPdiv);
		maindiv.appendChild(turndiv);
		
		for (var i = 0; i < newyour.length; i++) {
			if(newyour[i].firstElementChild == null){
				newyour[i].appendChild(maindiv);
				break;
			}
		}
	}
	function newmy(){
		var newmy = document.getElementsByClassName("newmy");
		
		var APdiv = document.createElement("div");
		APdiv.innerHTML = Math.floor((Math.random() * 10) + 1);
		
		var HPdiv = document.createElement("div");
		HPdiv.innerHTML = Math.floor((Math.random() * 10) + 1);
		
		var turndiv = document.createElement("div");
		turndiv.innerHTML = "X";
		
		var image = document.createElement("img");
		image.src = "./img/cardlist/card1.JPG";
		image.className = "myplayCard";
		image.id = "mycard" + mycnt;
		image.draggable = "true";
		image.ondragstart="drag(event)";
		
		var maindiv = document.createElement("div");
		maindiv.className = "mycard" + mycnt++;
		maindiv.appendChild(image);
		maindiv.appendChild(APdiv);
		maindiv.appendChild(HPdiv);
		maindiv.appendChild(turndiv);
		
		for (var i = 0; i < newmy.length; i++) {
			if(newmy[i].firstElementChild == null){
				newmy[i].appendChild(maindiv);
				break;
			}
		}
	}
	/* TermProject_2 */
	/* 	Drag을 이용하여 카드를 지정, Drop을 이용하여 목적지 카드 지정*/
	// 카드를 Drop할 수 있게 해주는 메소드
	function allowDrop(ev) {
		ev.preventDefault();
	}
	// 카드를 Drag할 때 id를 set해주는 메소드
	function drag(ev) {
		ev.dataTransfer.setData("text", ev.target.id);
	}
	// 상대필드에 드랍할 경우
	function yourdrop(ev) {
		ev.preventDefault();
		var data = ev.dataTransfer.getData("text");
		var temp = document.getElementsByClassName(data)[0];
		if (document.getElementsByClassName("myhero")[0].children[2].innerHTML <= 0){
			alert("1P 승리!");
		}else if (document.getElementsByClassName("yourhero")[0].children[2].innerHTML <= 0){
			alert("2P 승리!");
		}else if (temp.children[3].innerHTML == "O"){
			temp.children[3].innerHTML = "X";
			if (data.split("c")[0] == "my") {
				if (ev.target.className == "yourplayCard" || ev.target.className == "playCard"){
					var AP = temp.children[1].innerHTML;// 공격력
					var HP = temp.children[2].innerHTML;// 생명력
					var TAP = ev.target.nextElementSibling.innerHTML; //타겟 공격력
					var THP = ev.target.nextElementSibling.nextElementSibling.innerHTML; //타겟 생명력
						if (Number(HP) - Number(TAP) <= 0){//공격했을 때 죽는경우
							deleteImg(ev);
						}else{ // 공격해서 죽지 않는경우 체력 update
							var HP2 = Number(HP) - Number(TAP);
							temp.children[2].innerHTML = HP2;
						}
					ev.target.nextElementSibling.nextElementSibling.innerHTML = Number(THP) - Number(AP); // 타겟의 HP
					if (ev.target.nextElementSibling.nextElementSibling.innerHTML <= 0){ // 타겟의 hp가 0이하일 경우
						if (ev.target.id != "myhero" && ev.target.id != "yourhero"){ // 타겟이 hero가 아닐 경우
							document.getElementsByClassName(ev.target.id)[0].remove();
						}
						else if (ev.target.nextElementSibling.nextElementSibling.innerHTML <= 0){
							alert("2P 승리!");							
						}
					}
				}
			} else {
				ev.target.appendChild(document.getElementsByClassName(data)[0]);
				yourturnend();
			}
		}
	}
	// 나의 필드에 드랍할 경우
	function mydrop(ev) {
		ev.preventDefault();
		var data = ev.dataTransfer.getData("text");
		var temp = document.getElementsByClassName(data)[0];
		if (document.getElementsByClassName("myhero")[0].children[2].innerHTML <= 0){
			alert("1P 승리!");
		}else if (document.getElementsByClassName("yourhero")[0].children[2].innerHTML <= 0){
			alert("2P 승리!");
		}else if (temp.children[3].innerHTML == "O"){
			temp.children[3].innerHTML = "X";
			var data = ev.dataTransfer.getData("text");
			if (data.split("c")[0] == "your") {
				if (ev.target.className == "myplayCard" || ev.target.className == "playCard"){
					var AP = temp.children[1].innerHTML;// 공격력
					var HP = temp.children[2].innerHTML;// 생명력
					var TAP = ev.target.nextElementSibling.innerHTML; //타겟 공격력
					var THP = ev.target.nextElementSibling.nextElementSibling.innerHTML; //타겟 생명력
						if (Number(HP) - Number(TAP) <= 0){//공격했을 때 죽는경우
							deleteImg(ev);
						}else{ // 공격해서 죽지 않는경우 체력 update
							var HP2 = Number(HP) - Number(TAP);
							temp.children[2].innerHTML = HP2;
						}
					ev.target.nextElementSibling.nextElementSibling.innerHTML = Number(THP) - Number(AP); // 타겟의 HP
					if (ev.target.nextElementSibling.nextElementSibling.innerHTML <= 0){ // 타겟의 체력이 0이하일 경우
						if (ev.target.id != "myhero" && ev.target.id != "yourhero"){ // 타겟이 hero가 아닐경우
							document.getElementsByClassName(ev.target.id)[0].remove();
						}
						else if (ev.target.nextElementSibling.nextElementSibling.innerHTML <= 0){
							alert("1P 승리!");							
						}
					}
				}
			} else {
				ev.target.appendChild(document.getElementsByClassName(data)[0]);
				myturnend();
			}
		}
	}
	// 카드를 삭제 해주는 메소드
	function deleteImg(ev) {
		ev.preventDefault();
		var data = ev.dataTransfer.getData("text");
		document.getElementsByClassName(data)[0].remove();
	}
</script>
</html>