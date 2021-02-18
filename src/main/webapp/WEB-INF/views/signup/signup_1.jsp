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
		<h2>회원가입</h2>
		<div class="member cont">
			
			</div>
			<p class="chk">
				<input type="checkbox" id="check2" class="chk" name="check2"
					value="Y"><label for="agree2">개인정보수집 및 이용에 동의합니다.</label>
			</p>
			<div class="btnCenter">
				<a href="/" class="btnCommon"><span class="btnTxt">취소</span></a> <a
					href="#" class="btnCommon mgl_10 btnSignupCheck"
					style="background-color: #EF4053; color: white;"><span
					class="btnTxt">확인</span></a>
			</div>
		</div>
	</div>
	<jsp:include page="../main/footer.jsp"></jsp:include>
	<script>
		$(function() {
			$('.btnSignupCheck').on('click', function() {
				if (!$('input:checkbox[id="check1"]').is(":checked")) {
					alert('사이트 이용약관에 동의해 주세요');
				} else if (!$('input:checkbox[id="check2"]').is(":checked")) {
					alert('개인정보수집 및 이용에 동의해 주세요');
				} else {
					location.href="/Signup_1";
				}

			})
		});
	</script>
</body>
