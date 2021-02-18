<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE HTML>
<html>
<head>
<meta charset="utf-8" />
<meta name="viewport"
	content="width=device-width, initial-scale=1.0, minimum-scale=1.0, maximum-scale=1.0, user-scalable=no" />
<link rel="SHORTCUT ICON" href="/assets/images/kpcico.ico" type="image/x-icon" />
<title>KPC DT</title>
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<script language="javascript">
document.domain = "localhost";

function goPopup(){
	var popupX = (document.body.offsetWidth / 2) - (600 / 2);
	var popupY= (window.screen.height / 2) - (400 / 2);
	var pop = window.open("/address","pop","width=570,height=420,left="+ popupX + ",top="+popupY+",  scrollbars=yes, resizable=yes");
	}

function jusoCallBack(roadAddrPart1,addrDetail){
	 document.form.roadAddrPart1.value = roadAddrPart1;
	 document.form.addrDetail.value = addrDetail;
	}
</script>
</head>
<body class="sub" style="background-color: #F5F7FB">
	<form name="form" id="form" method="post">
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
					<li class="on">
						<p class="tit" style="border-top-color: #EF4053; color: #EF4053">회원가입 정보입력</p>
						<p class="desc">
							회원 가입에 꼭 필요한 고객님의<br>정보를 알려주세요.
						</p>
					</li>
					<li>
						<p class="tit">회원가입 완료</p>
						<p class="desc">
							감사합니다.<br>회원가입이 완료되었습니다.
						</p>
					</li>
				</ul>
				<h3>02. 회원가입 정보입력</h3>
				<h4>기본정보</h4>
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
								<td><input type="text" class="inputTxt" value=""
									id="company" maxlength="16" name="username"
									style="width: 190px;"> <span class="txt">회사명을
										입력해주세요.</span></td>
							</tr>
							<tr>
								<th><label>사업자 번호</label></th>
								<td><input type="text" class="inputTxt" value=""
									id="companyNo" maxlength="16" name="username"
									style="width: 190px;"> <span class="txt">사업자 번호를
										입력해주세요.</span></td>
							</tr>
							<tr>
								<th><label>생년월일</label></th>
								<td><input type="text" class="inputTxt" value="" id="birth"
									name="birth" maxlength="16" style="width: 190px;"> <span
									class="txt">YYYY-MM-DD 예시)1981-08-10 형태로 입력해주세요.</span></td>
							</tr>
							<tr>
								<th><label>아이디</label></th>
								<td><input type="text" class="inputTxt" value="" id="id"
									name="userid" id="userid" maxlength="16" style="width: 190px;">
									<a href="#not" class="btnCommon org btnId"
									style="cursor: pointer;background-color: #EF4053;border-color: #EF4053">아이디 중복확인</a> <input type="hidden"
									name="uniq_chk" id="uniq_chk"
									class="{label:'아이디 중복 확인',required:true}"> <span
									class="txt">ID는 영문소문자와 숫자만 입력 가능합니다.</span></td>
							</tr>
							<tr>
								<th><label>비밀번호</label></th>
								<td><input type="password" name="password1"
									class="inputTxt" id="pw" value="" style="width: 190px;">
									<span class="txt">영문+숫자+특수문자 조합하여 8~16자로 입력해 주세요.</span></td>

							</tr>
							<tr>
								<th><label>비밀번호 확인</label></th>
								<td><input type="password" name="password2" id="pw2"
									class="inputTxt" value="" style="width: 190px;"> <font
									id="chkNotice" size="2"></font></td>
							</tr>
							<tr>
								<th><label>주소</label></th>
								<td>
									<p class="block mgb_10"></p> <input class="inputTxt mgr_10"
									type="button" onClick="goPopup();" value="주소 검색" style="background-color: #EF4053;color: white"><input
									id="roadAddrPart1" class="w300px inputTxt mgr_10"
									name="address1" type="text" placeholder="주소" readonly="">
									<input class="w300px inputTxt" type="text" name="address2"
									id="addrDetail" placeholder="상세주소">
								</td>
							</tr>
							<tr>
								<th><label>E-Mail</label></th>
								<td><input type="text" class="inputTxt" value=""
									maxlength="50" style="width: 190px;" name="email1" id="email1">
									<span>@</span> <input type="text" class="inputTxt" value=""
									maxlength="50" style="width: 190px;"
									name="email2" id="email2"> <select
									class="emaildropdown" id="emaildropdown">
										<option value="직접입력">직접입력</option>
									
										<option value="naver.com">naver.com</option>

										<option value="nate.com">nate.com</option>

										<option value="hanmail.net">hanmail.net</option>

										<option value="gmail.com">gmail.com</option>

								</select></td>
							</tr>
							<tr>
								<th><label>휴대전화 번호</label></th>
								<td><select id="telNoCellComp" name="telNoCellComp"
									title="통신사">
										<option value="">통신사선택</option>
										<option value="KT">KT</option>
										<option value="SKT">SKT</option>
										<option value="LGU">LGU</option>
										<option value="ETC">알뜰폰</option>
								</select> <select id="telNoCell1" name="telNoCell1" title="휴대전화 앞 3~4자리">
										<option value="010">010</option>
										<option value="011">011</option>
										<option value="016">016</option>
										<option value="017">017</option>
										<option value="018">018</option>
										<option value="019">019</option>
								</select> <span>-</span> <input type="text" name="telNoCell2" id="tel1"
									class="inputTxt" value="" style="width: 67px;" maxlength="4">
									<span>-</span> <input type="text" name="telNoCell3" id="tel2"
									class="inputTxt" value="" style="width: 67px;" maxlength="4"></td>
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
					<input type="button" value="회원가입완료" class="inputCommon btnReg"
						style="cursor: pointer;background-color: #EF4053;border-color: #EF4053">
				</div>
			</div>
		</div>
		<jsp:include page="../main/footer.jsp"></jsp:include>
		<script>
		function idCheck() {
			if ($("#id").val() == "") {
				alert("ID를 입력해 주세요.");
			} else {
				$.ajax({
					url : '/api/idCheck',
					method : 'POST',
					data : {
						id : $("#id").val()
					},
					dataType : 'json',
					success : function(data) {
						if (data.result.resultCode == 1) {
							alert("중복된 ID 입니다.");
						} else {
							alert("사용가능합니다.");
							$("#uniq_chk").val('성공');
						}
					}
				})
			}
		}

		function Register(){
			$.ajax({
				url : '/api/register',
				method : 'POST',
				data : {
					name : $("#name").val(),
					company : $("#company").val(),
					companyNo : $("#companyNo").val(),
					birth : $("#birth").val(),
					id : $("#id").val(),
					password : $("#pw").val(),
					address : $("#roadAddrPart1").val() + " " + $("#addrDetail").val(),
					email : $("#email1").val() + "@" + $("#email2").val(),
					telNo : $("#telNoCell1").val() + "-" + $("#tel1").val() + "-" + $("#tel2").val(),
					telNoComp : $("#telNoCellComp").val(),
					ksicMain : $("#ksicMain").val(),
					ksicSub : $("#ksicSub").val()
				},
				dataType : 'json',
				success : function(data) {
					if (data.result.resultCode == 1) {
						alert("등록되었습니다.");
						location.href = "/Signup_2?id=" + btoa($("#id").val());
					} else {
						alert("등록에 실패 했습니다.");
					}
				}
			});
		}
		
		$(function() {
			$('.btnId').on('click', function() {
				idCheck();
			});

			$("#emaildropdown").off("change");
    		$("#emaildropdown").on("change", function() {
    			if($("#emaildropdown").val() == "직접입력"){
    				$("#email2").attr('readonly', false);
    				$("#email2").val('');
       			}
    			else if($("#emaildropdown").val() != "이메일선택"){
    				$("#email2").attr('readonly', true);
    				$("#email2").val($("#emaildropdown").val());
       			}
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

    		$('.btnReg').on('click', function() {
    			if($("#name").val()==""){alert('이름을 입력해 주세요.')}
    			else if($("#company").val()==""){alert('회사명을 입력해 주세요.')}
    			else if($("#companyNo").val()==""){alert('사업자번호를 입력해 주세요.')}
    			else if($("#birth").val()==""){alert('생년월일을 입력해 주세요.')}
    			else if($("#id").val()==""){alert('아이디를 입력해 주세요.')}
    			else if($("#pw").val()==""){alert('비밀번호를 입력해 주세요.')}
    			else if($("#pw2").val()==""){alert('비밀번호를 입력해 주세요.')}
    			else if($("#roadAddrPart1").val()==""){alert('주소를 입력해 주세요.')}
    			else if($("#addrDetail").val()==""){alert('상세주소를 입력해 주세요.')}
    			else if($("#email1").val()==""){alert('이메일을 입력해 주세요.')}
    			else if($("#email2").val()==""){alert('이메일을 입력해 주세요.')}
    			else if($("#telNoCell1")==""){alert('휴대전화번호를 입력해 주세요.')}
    			else if($("#tel1").val()==""){alert('휴대전화번호를 입력해 주세요.')}
    			else if($("#tel2").val()==""){alert('휴대전화번호를 입력해 주세요.')}
    			else if($("#telNoCellComp").val()==""){alert('휴대전화번호를 입력해 주세요.')}
    			else if($("#ksicMain").val()==""){alert('업종을 입력해 주세요.')}
    			else if($("#uniq_chk").val()!="성공"){alert('아이디 중복확인이 필요 합니다.')}
    			else{Register();}
			});

    		$('#pw').keyup(function(){
    		      $('#chkNotice').html('');
    		    });

   		    $('#pw2').keyup(function(){

   		        if($('#pw').val() != $('#pw2').val()){
   		          $('#chkNotice').html('비밀번호 일치하지 않음<br><br>');
   		          $('#chkNotice').attr('color', '#f82a2aa3');
   		        } else{
   		          $('#chkNotice').html('비밀번호 일치함<br><br>');
   		          $('#chkNotice').attr('color', '#199894b3');
   		        }

   		    });

	   		 $("#id").keydown(function(key) {
	   			if (key.keyCode == 13) {
	   				idCheck();
	   			}
   			});
		});
	</script>
	</form>
</body>