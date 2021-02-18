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
			<ul class="step-cont clfix">
				<li>
					<p class="tit">이용약관 확인 및 동의</p>
					<p class="desc">
						이용약관 및 개인정보 수집 및 이용 안내를<br> 확인해 주세요
					</p>
				</li>
				<li>
					<p class="tit">회원가입 정보입력</p>
					<p class="desc">
						회원 가입에 꼭 필요한 고객님의<br>정보를 알려주세요.
					</p>
				</li>
				<li class="on">
					<p class="tit" style="border-top-color: #EF4053; color: #EF4053">회원가입 완료</p>
					<p class="desc">
						감사합니다.<br>회원가입이 완료되었습니다.
					</p>
				</li>
			</ul>
			<h3>03. 회원가입 완료</h3>
			<div class="boxResult">
				<span class="illust"><img class="flex"
					src="/assets/images/illust_member.png"></span>
				<p class="txtResult">
					<span class="bold" style="color: #EF4053">KPC DT</span> 회원으로 가입해 주셔서 감사합니다.
				</p>
				<span>회원님의 의견이 세상의 한 조각이 되었으면 합니다.</span>
			</div>
			<h4>가입 정보 확인</h4>
			<div class="info-wrap" style="border-top-color: #EF4053">
				<table class="info-table">
					<colgroup>
						<col style="width: 20%;">
						<col style="width: 80%;">
					</colgroup>
					<tbody>
						<tr class="first">
							<th><label>회원구분</label></th>
							<td><span>개인회원</span></td>
						</tr>
						<tr>
							<th><label>이름</label></th>
							<td><span id="nameTxt"></span></td>
						</tr>
						<tr>
							<th><label>아이디</label></th>
							<td><span id="idTxt"></span></td>
						</tr>
						<tr>
							<th><label>E-Mail</label></th>
							<td><span id="emailTxt"></span></td>
						</tr>
					</tbody>
				</table>
			</div>
			<div class="btnCenter">
				<a href="/Login" class="btnCommon org" style="background-color: #EF4053;border-color: #EF4053"><span class="btnTxt">확인</span></a>
			</div>
		</div>
	</div>
	<jsp:include page="../main/footer.jsp"></jsp:include>
	<script>
		function loadDataList() {
			$.ajax({
				url : '/api/getuserName',
				method : 'POST',
				data : {
					id : atob('${param.id }')
				},
				dataType : 'json',
				success : function(data) {
					$('#nameTxt').html(data.result.member.name);
					$('#idTxt').html(data.result.member.id);
					$('#emailTxt').html(data.result.member.email);
				}
			})
		}

		$(function() {
			loadDataList();
		});
	</script>
</body>