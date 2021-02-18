<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE HTML>
<html>
<head>
<meta charset="utf-8" />
<meta name="viewport"
	content="width=device-width, initial-scale=1.0, minimum-scale=1.0, maximum-scale=1.0, user-scalable=no" />
<link rel="SHORTCUT ICON" href="/assets/images/kpcico.ico" type="image/x-icon" />
<title>KPC DT</title>
<meta http-equiv="X-UA-Compatible" content="IE=edge">
</head>
<body class="sub" style="background-color: #F5F7FB">
	<jsp:include page="../main/headerlogin.jsp"></jsp:include>
	<div class="col-1 cont-wrap">
		<h2>로그인</h2>
		<div class="cont">
			<div class="login">
				<div class="box">
					<form name="pfrmLogin" method="post">
						<p class="bold txt">아이디 / 비밀번호를 입력하세요.</p>
						<input class="t1" type="text" name="id" id="id" value=""
							maxlength="16" title="아이디를 입력하세요" placeholder="아이디"> <input
							class="t1" type="password" name="password" id="password" value=""
							title="비밀번호를 입력하세요" placeholder="비밀번호" autocomplete="off">
						<a class="btnLoginSub" href="#" style="background-color: #EF4053;border-color: #EF4053">로그인</a>
					</form>
				</div>
				<ul class="etcLogin">
					<li><a href="#" class="btnSignup">회원가입</a></li>
					<li><a href="#" class="btnCustfind">아이디</a> / <a href="#"
						class="btnCustfind">비밀번호</a> 찾기</li>
				</ul>
				<p class="info">
					비밀번호는 영문의 대/소문자를 구분합니다.<br> 비밀번호 도용을 막기 위해 <span
						class="fcBlue">영문, 숫자, 특수문자</span>의 조합으로 이루어진 비밀번호를<br> 만드는
					것이 좋으며 정기적으로 비밀번호의 수정을 권합니다.
				</p>
			</div>
		</div>
	</div>
	<jsp:include page="../main/footer.jsp"></jsp:include>
	<script>
		function loginSub() {
			$.ajax({
				url : '/api/login',
				method : 'POST',
				data : {
					id : $("#id").val(),
					password : $("#password").val()
				},
				dataType : 'json',
				success : function(data) {
					var b64str =  btoa($("#id").val());
					if (data.result.resultCode == 1) {
						if($("#id").val() == 'admin'){
							location.href = "/adminSignup?id=" + b64str;
						}
						else{
							location.href = "/Survey?id=" + b64str;
						}
					} else {
						alert("로그인에 실패했습니다.");
					}
				}
			})
		}

		$(function() {
			$('.btnLoginSub').on('click', function() {
				loginSub();
			})

			$("#password, #id").on('keyup', function(e) {
				if (e.keyCode == 13) {
					loginSub();
				}
			})
		});
	</script>
</body>