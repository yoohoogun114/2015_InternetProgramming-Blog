<%@ page contentType="text/html;charset=utf-8" %>
<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
	<head>
		<title>12121518 유호균</title>
		<meta charset="utf-8">
		<link type="text/css" href="..\css\account.css" rel="stylesheet" />
		<script type="text/javascript" src="..\js\account.js"></script>
	</head>
		<body>
		<form action="jsp_newuser.jsp" method="get" onsubmit="return validateForm(this)">

		<h1 align="center" class="title">
				Account register
		</h1>
				<hr align="left" style="width:387px;margin-right:auto;margin-left:auto"> 
			<form action="jsp_newuser.jsp">
				<table border="0" style="margin-left: auto; margin-right: auto;">
					<tr> 
					<td colspan="3" id="nessesary" style="background-color:#FFE0FF;">분홍색 칸은 필수입력사항입니다</td>
					</tr>
					<tr>
					<td>ProfilePhoto</td> <td> <input type="file" name="Profile" accept="image/*" style="background-color:#80C6FC;"> </td> 
					</tr>
					<tr>
						<td>ID</td>
						<td><input type="text" name="Ids" id="idInput"required autofocus placeholder="ID를 입력해주세요(5자이상 20자이하)" size="35" maxlength="20"  style="width: 97%;background-color:#FFE0FF;" onkeydown="chkValid(this)" onchange="chkValid(this);" onfocusout="chkValid(this);"> <br/></td>
						
					</tr>
					<tr>
						<td>PW</td>
						<td><input type="password" name="Pws" id="pwInput"  required placeholder="PW를 입력해주세요(6자이상 20자이하)" size="35" maxlength="20" style="width: 97%;background-color:#FFE0FF;" onkeydown="chkValid(this);" onchange="chkValid(this);" onfocusout="chkValid(this);"><br/></td>
					</tr>
					<tr>
						<td>PW Confirmation</td>
						<td><input type="password" name="Pwc" id="pwConfirmInput" required placeholder="PW 재확인(6자이상 20자이하)" size="35" maxlength="20" style="width: 97%;background-color:#FFE0FF;" onkeydown="chkValid(this);" onchange="chkValid(this);" onfocusout="chkValid(this);"><br/></td>
					</tr>
					<tr>
						<td>NickName</td>
						<td><input type="text" name="NickName" id="nicknameInput" required placeholder="별명을 입력해주세요(2자이상 20자이하)" size="35" style="width: 97%;background-color:#FFE0FF;"onkeydown="chkValid(this);" onchange="chkValid(this);" onfocusout="chkValid(this);"><br/></td>
					</tr>
					<tr>
						<td>Address</td>
						<td>
							<select size="1" name="Address" id="addressInput" reqdisableduired style="width: 100%;border:outset;" size="35"style="width: 100%" > 
							<option>선택해주세요</option> <option>서울</option> <option>경기,인천</option> <option>강원</option> <option>전라</option>   
							<option>경상</option>  <option>충청</option>  <option>제주</option>  
							</select></td>
						</tr>
						<tr>
						<td>BirthDay</td> <td><input name="BirthDay" id="birthdayInput"type="datetime-local" style="width: 97%"> </td> 
						</tr>
						<tr>
						<td>Telephone</td> <td><input type="tel" name="TelePhone" id="telephoneInput" style="width: 97%"> </td>

						</tr>
						<tr>
						<td>LikeFood</td>
						<td><input type="text" name="LikeFood" Value="좋아하는 음식 분류를 선택해 주세요" disabled size="35" style="width: 97%"><br/></td>
					</tr>
					<tr>
					<td></td>
					<td><input type="checkbox" name="Rice" id="rice">밥류 <input type="checkbox" name="NUDDLE" id="nuddle">면류 <input type="checkbox" name="Meat" id="meat">고기류 <input type="checkbox" name="VEGETABLE" id="vegetable">야채류 <input type="checkbox" name="DRINK" id="drink">음료    </td>
					<tr>
						<td>LikeChicken</td>
						<td><input type="text" name="LikeChicken"  disabled value="치킨에대한 선호도 (싫어함1<-->10좋아함)" size="35" style="width: 97%"> <br/></td>
					</tr>
					<tr>
					<td></td> <td> <input type="range" name="ChickPoint" id="likechickenInput" min="0" max="10" vlaue="5" style="width: 97%"> </td>
					</tr>

				
					<tr>
						<td>Eatout</td>
						<td><input type="text" name="eatout"  disabled value="집밥에대한 상대 선호도 (집밥1<-->10외식)" size="35" style="width: 97%"> <br/></td>
					</tr>
					<tr>
					<td> </td> <td> <input type="range" id="eatoutInput"  name="EatOutPoint" min="0" max="10" vlaue="5" style="width: 98%"> </td> 
					</tr>

					<tr>
						<td>LikeMostFood</td>
						<td><input type="text" name="LikeMostFood" id="likemostfoodInput" required placeholder="가장 좋아하는 음식을 입력하세요" size="35" style="width: 97%; background-color:#FFE0FF;"> <br/></td>
						
					</tr>
					<tr>
						<td></td>
						<td><input type="submit" value="Send" style="width: 47%;background-color:#80C6FC">
						 	<input type="reset" value="Reset" style="width: 47%;background-color:#80C6FC"></td>
						
					</tr>
				</table>


			</form>

			<table border="3" id="outputPrintTable" style="width:0px; height:0px; margin-left:auto; margin-right:auto; display:none"
			 >
			<tr>
			<td>
			<div id="outputId"></div>
			<div id="outputPw"></div>
			<div id="outputNickname"></div>
			<div id="outputAddress"></div>
			<div id="outputBirthday"></div>
			<div id="outputTelephone"></div>
			<div id="outputLikeRice"></div>
			<div id="outputLikechicken"></div>

			<div id="outputEatout"></div>
			<div id="outputLikemostfood"></div>
			</td>
			</tr>
			</table>
			
			

		</form>
		</body>

		<footer>
   						<p align="right">Copyright 2015~now by Yoohogyun. All Rights Reserved.</p>
   						<p align="right">- last updated 15.4.29</p>
   		</footer>


	</html>


