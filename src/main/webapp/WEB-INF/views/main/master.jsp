<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE HTML>
<html>
<head>
<meta charset="utf-8" />
<meta name="viewport"
	content="width=device-width, initial-scale=1.0, minimum-scale=1.0, maximum-scale=1.0, user-scalable=no" />
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<link rel="SHORTCUT ICON" href="/assets/images/kpcico.ico" type="image/x-icon" />
<title>KPC DT</title>
<link type="text/css" rel="StyleSheet" href="/assets/css/kpc/basic.css">
<link type="text/css" rel="StyleSheet" href="/assets/css/kpc/common.css">
<link type="text/css" rel="StyleSheet" href="/assets/css/kpc/layout.css">
<script type="text/javascript" src="/assets/js/kpc/jquery.js"></script>
<script type="text/javascript" src="/assets/js/kpc/core.js"></script>
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
	<div class="head-wrap">
		<div class="col-1 clfix">
			<input id="head_img" type="hidden" name="head_img_name" value="">
			<input id="head_txt" type="hidden" name="head_txt_name" value="">
			<div class="logo clfix">
				<a href="#"><img src="assets/images/wlogo.png"></a>
			</div>
			<ul class="util f_ma clfix">
				<li><a href="#" class="btnSignup">회원가입</a></li>
				<li><a href="#" class="btnLogin">로그인</a></li>
				<li><a href="#" class="btnCustfind">아이디/패스워드 찾기</a></li>
				<li class="last" style="visibility: collapse;"><a href="#"
					class="menu"></a></li>
			</ul>
		</div>
	</div>
	<div class="main-cont">
		<div class="s1 content-wrap">
			<div class="t2 slide">
				<div class="content" style="position:absolute; z-index:2;margin-top: 250px;margin-left: 320px">
					<div class="col-1">
					
					</div>
				</div>
			</div>
		</div>
	</div>
</body>
