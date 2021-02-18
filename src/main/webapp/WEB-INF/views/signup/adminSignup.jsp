<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8" />
<meta name="viewport"
	content="width=device-width, initial-scale=1.0, minimum-scale=1.0, maximum-scale=1.0, user-scalable=no" />
<link rel="SHORTCUT ICON" href="/assets/images/kpcico.ico" type="image/x-icon" />
<title>KPC DT</title>
<meta http-equiv="X-UA-Compatible" content="IE=edge">
</head>
<body class="sub">
	<jsp:include page="../main/headersurvey.jsp"></jsp:include>
	<div class="col-1 cont-wrap">
		<div class="info-wrap">
			<table class="info-table">
				<colgroup>
					<col style="width: 20%;">
					<col style="width: 80%;">
				</colgroup>
				<tbody>
					<tr class="first">
						<th><label>이름</label></th>
						<td><input type="text" class="inputTxt" value="" id="name"
							maxlength="16" name="username" style="width: 190px;"> <span
							class="txt">이름을 입력해주세요.</span></td>
					</tr>
					<tr>
						<th><label>회사명</label></th>
						<td><input type="text" class="inputTxt" value="" id="company"
							maxlength="16" name="username" style="width: 190px;"> <span
							class="txt">회사명을 입력해주세요.</span></td>
					</tr>
					<tr>
						<th><label>사업자번호</label></th>
						<td><input type="text" class="inputTxt" value="" id="companyNo"
							maxlength="16" name="username" style="width: 190px;"> <span
							class="txt">사업자번호를 입력해주세요.</span></td>
					</tr>
					<tr>
						<th><label>업종</label></th>
						<td><select id="ksicMain" name="ksicMain">
								<option value="">선택</option>
								<c:forEach var="item" items="${requestScope.ksicMain}">
									<option value="${item.ksicCode}">${item.ksicKorName}</option>
								</c:forEach>
						</select> <select id="ksicSub" name="ksicSub">
								<option value="">선택</option>
								<c:forEach var="item" items="${requestScope.ksicSub}">
									<option value="${item.ksicCode}">${item.ksicKorName}</option>
								</c:forEach>
						</select></td>
					</tr>
				</tbody>

			</table>
		</div>
		<div class="btnCenter">
			<input type="button" value="설문시작" class="inputCommon btnReg"
				style="cursor: pointer;">
		</div>
	</div>
	<jsp:include page="../main/footer.jsp"></jsp:include>
	<script>
		function Register(num){
			$.ajax({
				url : '/api/register',
				method : 'POST',
				data : {
					name : $("#name").val(),
					company : $("#company").val(),
					companyNo : $("#companyNo").val(),
					birth : '',
					id : 'user' + num,
					password : '',
					address : '',
					email : '',
					telNo : '',
					telNoComp : '',
					ksicMain : $("#ksicMain").val(),
					ksicSub : $("#ksicSub").val()
				},
				dataType : 'json',
				success : function(data) {
					var b64str =  btoa('user' + num);
					if (data.result.resultCode == 1) {
						location.href = "/Survey?id=" + b64str;
					} else {
						alert("등록에 실패 했습니다.");
					}
				}
			});
		}
		$(function() {
			$('.btnReg').on('click', function() {
				var ranNum = Math.floor(Math.random()*(10000000000000000));
    			if($("#name").val()==""){alert('이름을 입력해 주세요.')}
    			else if($("#company").val()==""){alert('회사명을 입력해 주세요.')}
    			else if($("#companyNo").val()==""){alert('사업자번호를 입력해 주세요.')}
    			else if($("#ksicMain").val()==""){alert('업종을 입력해 주세요.')}
    			else{Register(ranNum);}
			});

			$("#ksicMain").off("change");
    		$("#ksicMain").on("change", function() {
    			$.ajax({
    				url : '/api/ksicSub',
    				method : 'POST',
    				data : {
    					ksicCode : $("#ksicMain").val(),
    				},
    				dataType : 'json',
    				success : function(data) {
    					$("#ksicSub").empty();
    					if(data.result.ksicSub.length > 0){
    						$('#ksicSub').append("<option value =''>선택</option>");
    						for(var idx = 0; idx < data.result.ksicSub.length; idx++){
    							$('#ksicSub').append("<option value ='"+data.result.ksicSub[idx].ksicCode + "'>"
    									+ data.result.ksicSub[idx].ksicKorName + '</option>');
    						}
    					}
    					else{
    						$('#ksicSub').append("<option value =''>선택</option>");
    					}
    				}
    			})
    		});
		});
	</script>
</body>
</html>