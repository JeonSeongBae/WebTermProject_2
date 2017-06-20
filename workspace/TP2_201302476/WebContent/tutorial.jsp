<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" type="text/css" href="./tutorialcss.css">
<title>Insert title here</title>
</head>
<body>
	<main>
	<div class="Tutorial" id="Tutorial">
		<h1>T U T O R I A L</h1>
		<div>
			<!-- 		1P의 직업케릭터 -->
		</div>
		<!-- 튜토리얼이 이루어지는 공간 -->
		<div class="tutorialTable">
			<!-- 		1P에 들어와있는 카드 -->
			<table class="Hand" id="yourHand">
				<tr>
					<td ondrop="drop(event)" ondragover="allowDrop(event)"><img
						class="playCard" id="yourcard1" src="./img/cardlist/card1.JPG"
						draggable="true" ondragstart="drag(event)"></td>
					<td ondrop="drop(event)" ondragover="allowDrop(event)"><img
						class="playCard" id="yourcard2" src="./img/cardlist/card2.JPG"
						draggable="true" ondragstart="drag(event)"></td>
					<td ondrop="drop(event)" ondragover="allowDrop(event)"><img
						class="playCard" id="yourcard3" src="./img/cardlist/card3.JPG"
						draggable="true" ondragstart="drag(event)"></td>
					<td ondrop="drop(event)" ondragover="allowDrop(event)"><img
						class="playCard" id="yourcard4" src="./img/cardlist/card4.JPG"
						draggable="true" ondragstart="drag(event)"></td>
				</tr>
			</table>
		</div>
		<!-- 		1P가 낸카드 -->
		<div class="tutorialTable">
			<table class="Field" id="yourField">
				<tr>
					<td ondrop="yourdrop(event)" ondragover="allowDrop(event)"></td>
					<td ondrop="yourdrop(event)" ondragover="allowDrop(event)"></td>
					<td ondrop="yourdrop(event)" ondragover="allowDrop(event)"></td>
					<td ondrop="yourdrop(event)" ondragover="allowDrop(event)"></td>
					<td ondrop="yourdrop(event)" ondragover="allowDrop(event)"></td>
				</tr>
			</table>
		</div>
		<div>
			<!-- 		1P의 덱 -->
		</div>
		<!-- 		턴 넘기는 버튼 -->
		<img id="terminateTurn" src="./img/terminateTurn2.png">
		<!-- 		2P의 직업케릭터 -->
		<!-- 		2P가 낸카드 -->
		<div class="tutorialTable">
			<table class="Field" id="myField">
				<tr>
					<td ondrop="mydrop(event)" ondragover="allowDrop(event)"></td>
					<td ondrop="mydrop(event)" ondragover="allowDrop(event)"></td>
					<td ondrop="mydrop(event)" ondragover="allowDrop(event)"></td>
					<td ondrop="mydrop(event)" ondragover="allowDrop(event)"></td>
					<td ondrop="mydrop(event)" ondragover="allowDrop(event)"></td>
				</tr>
			</table>
		</div>
		<!-- 		2P 손에있는 카드 -->
		<div class="tutorialTable">
			<table class="Hand" id="myHand">
				<tr>
					<td ondrop="drop(event)" ondragover="allowDrop(event)"><img
						class="playCard" id="mycard1" src="./img/cardlist/card5.JPG"
						draggable="true" ondragstart="drag(event)"></td>
					<td ondrop="drop(event)" ondragover="allowDrop(event)"><img
						class="playCard" id="mycard2" src="./img/cardlist/card6.JPG"
						draggable="true" ondragstart="drag(event)"></td>
					<td ondrop="drop(event)" ondragover="allowDrop(event)"><img
						class="playCard" id="mycard3" src="./img/cardlist/card7.JPG"
						draggable="true" ondragstart="drag(event)"></td>
					<td ondrop="drop(event)" ondragover="allowDrop(event)"><img
						class="playCard" id="mycard4" src="./img/cardlist/card8.JPG"
						draggable="true" ondragstart="drag(event)"></td>
				</tr>
			</table>
		</div>
		<div>
			<!-- 		2P의 덱 -->
		</div>
	</div>
	</main>
</body>
<script type="text/javascript">
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
	// 카드를 Drop할 때 해당 table의 chile로 만들어줌
	function yourdrop(ev) {
		ev.preventDefault();
		var data = ev.dataTransfer.getData("text");
		if(data.split("c").equals("my")){
			
		}else{
			ev.target.appendChild(document.getElementById(data));
			}
		}
	}
	// 카드를 Drop할 때 해당 table의 chile로 만들어줌
	function mydrop(ev) {
		ev.preventDefault();
		var data = ev.dataTransfer.getData("text");
		if(data.split("c").equals("your")){
			var temp = document.getElementById(data);
			var temphtml = temp.innerHTML;
			temp.innerHTML = Number(temp.innerHTML)-1;
			alert("temp: "+temp+"Html"+temp.innerHTML);
		}else{
			ev.target.appendChild(document.getElementById(data));
			}
		}
	// 카드를 삭제 해주는 메소드
	function deleteImg(ev) {
		ev.preventDefault();
		var data = ev.dataTransfer.getData("text");
		document.getElementById(data).remove();
	}
	// 카드로 공격하였을 때에 Damage계산을 해주는 메소드
	function attack() {
	}
	// 카드의 체력을 확인하여 제거시켜주는 메소드
	function life() {
	}
	// 턴이 종료됨에 따라 차례를 바꿔주는 메소드
	function turnover() {
	}
	// 상대방의 턴일 때 자신은 아무 행동을 하지 못하게 해주는 메소드
	function yourturn() {
	}
	// 덱에서 한장의 카드를 선택해 꺼내주는 메소드
	function drawcard() {
	}
	// 최대카드의 개수 이상의 카드를 핸드에 가지고 오지 못하게 하는 메소드
	function fullhand() {
	}
	// 버프에 관한 메소드
	function buff() {
	}
	// 특수능력에 관한 메소드
	function skill() {
	}
</script>
</html>