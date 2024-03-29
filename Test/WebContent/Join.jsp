<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>

<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width" initial-scale="1">
<link rel="stylesheet" href="css/bootstrap.min.css">

<title>이상훈 게시판 웹사이트</title>

</head>

<body>

	<!-- 네비게이션  -->

	<% String userID = null; %>
	<%@ include file = "header.jsp"%>

	<div class="container">

		<div class="col-lg-4"></div>
		<div class="col-lg-4">

			<!-- 점보트론 -->

			<div class="jumbotron" style="padding-top: 20px;">

				<form method="post" action="joinAction.jsp">

					<h3 style="text-align: center;">회원가입</h3>

					<div class="form-group">

						<input type="text" class="form-control" placeholder="아이디" name="userID" maxlength="20">

					</div>
					<div class="form-group">

						<input type="password" class="form-control" placeholder="비밀번호" name="userPassword" maxlength="20">

					</div>
					<div class="form-group">
					
						<input type="text" class="form-control" placeholder="이름" name="userName" maxlength="20">
						
					</div>
					<div class="form-group" style="text-align: center;">
						<div class="btn-group" data-toggle="buttons">
						
							<label class="btn btn-primary"> <input type="radio" name="userGender" autocomplete="off" value="남자" checked>남자</label> 
							<label class="btn btn-primary"> <input type="radio" name="userGender" autocomplete="off" value="여자" >여자</label>
							
						</div>
					</div>
					<div class="form-group">
						<input type="text" class="form-control" placeholder="이메일" name="userEmail" maxlength="50">
					</div>
					<input type="submit" class="btn btn-primary form-control" value="회원가입">
				</form>
				
			</div>
		</div>
	</div>

	<!-- 애니매이션 담당 JQUERY -->
	<script src="https://code.jquery.com/jquery-3.1.1.min.js"></script>

	<!-- 부트스트랩 JS  -->
	<script src="js/bootstrap.js"></script>

</body>
</html>
