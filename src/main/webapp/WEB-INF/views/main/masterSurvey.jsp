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
	function logout() {
		location.href = "/Main"
	}
	
	function loadDataList() {
		$.ajax({
			url : '/api/getuserName',
			method : 'POST',
			data : {
				id : atob('${param.id }')
			},
			dataType : 'json',
			success : function(data) {
				$('#nameTxt').html(data.result.member.name + '님 환영합니다.');
			}
		})
	}
	
	$(function() {
		$('.btnlogout').on('click', function() {
			logout();
		});

		$('.btnSurvey').on('click', function() {
			if('${param.id }' == 'admin'){
				location.href = "/adminSignup?id=${param.id }";
			}
			else{
				location.href = "/Survey?id=${param.id }";
			}
		});

		$('.btnMarinSurvey').on('click', function() {
			location.href = "/Main";
		})
		
		loadDataList();
	});
</script>
</head>
<body>
	<div class="head-wrap">
		<div class="col-1 clfix">
			<input id="head_img" type="hidden" name="head_img_name" value="">
			<input id="head_txt" type="hidden" name="head_txt_name" value="">
			<div class="logo clfix" style="cursor: pointer;">
				<a class="btnMarinSurvey"><img src="assets/images/wlogo.png"></a>
			</div>
			<ul class="util f_ma clfix">
				<li class="pdr_20"><span style="color:#FFF;font-size:15px;" id="nameTxt"></span></li>
				<li><a href="#" class="btnlogout">로그아웃</a></li>
				<li class="last" style="visibility: collapse;"><a href="#"
					class="menu"></a></li>
			</ul>
		</div>
	</div>
	<div class="main-cont">
		<div class="s1 content-wrap">
			<div class="t1 slide">
				<div class="content" style="position:absolute; z-index:2;margin-top: 250px;margin-left: 320px">

				</div>
			</div>
		</div>
	</div>
</body>
