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
		<h2>회원정보 찾기</h2>
		<div class="cont">
			<p class="txt">아이디 및 비밀번호는 입력하신 정보가 등록된 정보와 일치하는 경우만 찾을 수 있습니다.</p>
			<div class="boxType" style="background-color: white">
				<div id="dvsearch">
					<p class="title">비밀번호 찾기</p>

					<div class="table-wrap">
						<table>
							<colgroup>
								<col width="20%;">
								<col width="80%;">
							</colgroup>
							<tbody>
								<tr>
									<th>이름</th>
									<td><input class="w400px" type="text" name="name"
										id="name" value="" maxlength="50"></td>
								</tr>
								<tr>
									<th>아이디</th>
									<td><input class="w400px" type="text" name="id" id="id"
										value="" maxlength="50"></td>
								</tr>
							</tbody>
						</table>
					</div>
					<a class="btnCustFindSub" href="#"
						style="font-size: 20px; color: white; background-color: #19396c; border: 1px solid #1f4787; line-height: 40px; height: 46px; width: 100%; box-sizing: border-box; display: block;">비밀번호
						확인</a>
				</div>
				<div id="dvresult" style="display: none">
					<p class="txt" id="passwordTxt"></p>
				</div>

			</div>
		</div>
	</div>
	<jsp:include page="../main/footer.jsp"></jsp:include>
	<script>
		function custFindSub() {
			$.ajax({
				url : '/api/custFind',
				method : 'POST',
				data : {
					name : $("#name").val(),
					id : $("#id").val()
				},
				dataType : 'json',
				success : function(data) {
					if (data.result.password == "fail") {
						alert('검색 결과가 없습니다.');
					} else {
						$("#dvsearch").css("display", "none");
						$("#dvresult").css("display", "block");
						$("#passwordTxt")
								.html("패스워드 : " + data.result.password);
					}
				}
			})
		}

		$(function() {
			$('.btnCustFindSub').on('click', function() {
				if ($("#name").val() == "") {
					alert('이름을 입력해 주세요.');
				} else if ($("#id").val() == "") {
					alert('id를 입력해 주세요.');
				} else {
					custFindSub();
				}

			});

			$("#id").keydown(function(key) {
	   			if (key.keyCode == 13) {
	   				custFindSub();
	   			}
   			});
		});
	</script>
</body>