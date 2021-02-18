<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE HTML>
<html>
<head>
<meta charset="UTF-8">
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
<script type="text/javascript" src="/assets/js/chart.js/Chart.min.js"></script>
<script type="text/javascript" src="/assets/js/bootstrap/bootstrap.bundle.js"></script>
<script src="https://code.jquery.com/jquery-latest.js"></script>
<link href="/assets/css/kpc/sb-admin-2.css" rel="stylesheet" />
<link href="/assets/fontawesome-free/css/all.min.css" rel="stylesheet"
	type="text/css" />
<link href="/assets/css/kpc/quirk.css" rel="stylesheet" />
<script>
	$(function() {
		$('.btnMarinSurvey').on('click', function() {
			location.href = "/MainSurvey?id=${param.id }";
		})
		;
		$('.btnlogout').on('click', function() {
			logout();
		});

		$('.btnSurvey').on('click', function() {
			if(atob('${param.id }') == 'admin'){
				location.href = "/adminSignup?id=${param.id }";
			}
			else{
				location.href = "/Survey?id=${param.id }";
			}
		});
	});
</script>
</head>
<body>
	<div class="head-wrap" style="background-image: url('assets/images/sub6.jpg');">
		<div class="col-1 clfix">
			<input id="head_img" type="hidden" name="head_img_name" value="">
			<input id="head_txt" type="hidden" name="head_txt_name" value="">
			<div class="logo clfix" style="margin-top: 8px;margin-left: 170px;cursor: pointer;">
				<a class="btnMarinSurvey"><img src="assets/images/wlogo.png"></a>
			</div>
			<ul class="util f_ma clfix" style="margin-right: 200px;">
				<li class="pdr_20"><span style="color:#fff;font-size:15px;" id="nameTxt"></span></li>
				<li><a href="#" class="btnSurvey">설문화면</a></li>
				<li><a href="#" class="btnlogout">로그아웃</a></li>
			</ul>
		</div>
	</div>
	<div class="main-cont">
		<div class="s2 content-wrap">
		    <div class="t1 slide">
		    	<jsp:include page="../result/review1.jsp"></jsp:include>
		    </div>
			<div class="t2 slide">	
				<jsp:include page="../result/review2.jsp"></jsp:include>
			</div>
			<div class="t3 slide">	
				<jsp:include page="../result/review3.jsp"></jsp:include>
			</div>
		</div>
	</div>
</body>