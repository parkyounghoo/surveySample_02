<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="SHORTCUT ICON" href="/assets/images/kpcico.ico" type="image/x-icon" />
<title>KPC DT</title>
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<link type="text/css" rel="StyleSheet" href="/assets/css/kpc/basic.css">
<link type="text/css" rel="StyleSheet" href="/assets/css/kpc/common.css">
<link type="text/css" rel="StyleSheet"
	href="/assets/css/kpc/sub-cont.css">
<script type="text/javascript" src="/assets/js/kpc/jquery.js"></script>
<!-- jQuery -->
<script type="text/javascript" src="/assets/js/kpc/core.js"></script>
<!-- core -->
<script type="text/javascript" src="/assets/js/kpc/common.ui.js"></script>
<link type="text/css" rel="StyleSheet"
	href="/assets/css/kpc/jquery.fullPage.css">
<script type="text/javascript" src="/assets/js/kpc/jquery-ui.min.js"></script>
<script type="text/javascript" src="/assets/js/kpc/jquery.fullPage.js"></script>
<script type="text/javascript" src="/assets/js/kpc/main.js"></script>
<script>
	function signup() {
		location.href = "/Signup"
	}

	function login() {
		location.href = "/Login"
	}

	function custfind() {
		location.href = "/Custfind"
	}

	$(function() {
		$('.btnSignup').on('click', function() {
			signup();
		})

		$('.btnLogin').on('click', function() {
			login();
		})

		$('.btnCustfind').on('click', function() {
			custfind();
		})
	});
</script>
</head>
<body>
	<div class="head-wrap clfix">
		<div class="bg"></div>
		<div class="nav-wrap">
			<div class="col-1">
				<input id="head_img" type="hidden" name="head_img_name" value="6">
				<input id="head_txt" type="hidden" name="head_txt_name"
					value="디지털 트랜스포메이션 역량 측정도구">
				<div class="logo clfix">
					<a href="/Main"><img src="assets/images/wlogo.png"></a>
				</div>
				<ul class="util f_ma clfix">
					<li><a href="#" class="btnSignup">회원가입</a></li>
					<!--[12,300P] -->
					<li><a href="#" class="btnLogin">로그인</a></li>
					<!--로그아웃 -->
					<li><a href="#" class="btnCustfind">아이디/패스워드 찾기</a></li>
					<!--마이페이지 -->
					<li class="last" style="visibility: collapse;"><a href="#"
						class="menu"></a></li>
				</ul>
				<div class="title">
					<h1 style="font-weight: bold">디지털 트랜스포메이션 역량 측정도구</h1>
				</div>
			</div>
		</div>
	</div>
</body>
</html>