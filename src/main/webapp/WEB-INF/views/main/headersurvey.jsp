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
<script type="text/javascript" src="/assets/js/chart.js/Chart.min.js"></script>
<script src="https://code.jquery.com/jquery-latest.js"></script>
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
		})
		
		$('.btnMarinSurvey').on('click', function() {
			location.href = "/MainSurvey?id=${param.id }";
		})
		
		loadDataList();
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
				<div class="logo clfix" style="cursor: pointer;">
					<a class="btnMarinSurvey"><img src="assets/images/wlogo.png"></a>
				</div>
				<ul class="util f_ma clfix">
				<li class="pdr_20"><span style="color:#FFF;font-size:15px;" id="nameTxt"></span></li>
					<li><a href="#" class="btnlogout">로그아웃</a></li>
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