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
<link type="text/css" rel="StyleSheet" href="/assets/css/kpc/icheck-bootstrap.css">
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
<script type="text/javascript"
	src="/assets/js/bootstrap/bootstrap.bundle.js"></script>
<link href="/assets/css/kpc/sb-admin.css" rel="stylesheet" />
<script>
	function saveFormData(){
		self.close(); 
		opener.location.reload();
	}
	window.addEventListener("beforeunload", function (e) {
	  saveFormData();
	});
</script>
</head>
<body class="popup_page" style="overflow: hidden; margin-top: 80px" onBeforeUnload="saveFormData()">
	<input id="surveyCount" type="hidden" name="surveyCount" value="1">
	<input id="totalCount" type="hidden" name="totalCount" value="">
	<input id="capCode" type="hidden" name="capCode" value="">
	<input id="capListNo" type="hidden" name="capListNo" value="">
	<div class="popup_page_content" style="width: 100%;height: 370px">
		<div class="popup-content-top">
			<p style="float: left; padding-top: 10px; padding-left: 20px">
				<img src="/assets/images/kpcicon.jpg">
			</p>
			<h3 style="padding-top: 15px;font-weight: bold;font-size: 17px" id="survey125">
				<span id="surveyTitle"></span>
			</h3>
			<h3 id="survey34" style="display:none;font-size: 17px;padding-top: 8px;">
				<span style="font-size: 13px; font-weight: bold" id="mainTitle"></span>
				<br /> <span style="font-weight: bold" id="subTitle"></span>
			</h3>
			<div align='right' style="width:20%; height: 60px;float:right;text-align: right;margin-right: 10px">
				<div style="font-size: 16px;padding-top: 20px;padding-right: 5px" id="spanCount"></div>
				<div class="progress" style="margin-top: 5px;width:100%;height: 10px">
				    <div id="progressPercent" class="progress-bar" style="background-color: #E35B68;"></div>
				 </div>
			</div>
		</div>
		<div class="Q-area" style="width: 100%;">
			<p id="surveyText" style="font-weight: bold;font-size: 15px"></p>
		</div>
		<div class="Q-list" style="width: 100%;height: 300px;" id="QList" onkeydown="keyDown();">
			<ul style="width: 100%;margin-left: 130px;height:130px;margin-bottom: 15px" >
				<li>
				<div style="float: left">
					<div class="radio icheck-success">
	                    <input type="radio" name="chk31" id="chk5" value="5">
						<label for="chk5" class="icon">매우 긍정</label>
					</div>
					</div>
					<div style="float: left">     
					<div class="radio icheck-success">
						&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
						<input type="radio" name="chk31" id="chk4" value="4">
						<label for="chk4" class="icon">긍정</label>
					</div>
					</div>
					<div style="float: left">  
					<div class="radio icheck-success">		
						&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;			
						<input type="radio" name="chk31" id="chk3" value="3">
						<label for="chk3" class="icon">보통</label>
					</div>
					</div>
					<div style="float: left">  
					<div class="radio icheck-success">			
						&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;		
						<input type="radio" name="chk31" id="chk2" value="2">
						<label for="chk2" class="icon">부정</label>
					</div>
					</div>
					<div style="float: left">  
					<div class="radio icheck-success">
						&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;					
						<input type="radio" name="chk31" id="chk1" value="1">
						<label for="chk1" class="icon">매우 부정</label>
					</div>
					</div>
					<div style="float: left">  
					<div class="radio icheck-success">
						&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
						<input type="radio" name="chk31" id="chk6" value="0">
						<label for="chk6" class="icon">해당없음</label>
					</div>
					</div>
				</li>
			</ul>
			
			<div style="border-bottom: solid 1px #D69CA2;padding-top: 140px"></div>
			<div class="button-section" style="margin-bottom: 20px;">
				<button type="button" class="change-page btnBack btn btn-danger"
					style="height: 35px;width: 105px">
					↼ <span>BACK</span>
				</button>
				<button type="button" class="change-page btnNext btn btn-danger"
					style="height: 35px;width: 105px">
					<span>NEXT</span> ⇀
				</button>
			</div>
		</div>
		<div id="QLast" style="display: none;height: 300px;cursor: pointer;" onclick="self.close(); opener.location.reload();">
			<div class="boxResult" style="margin-top: 10px;height: 246px;border-top: solid 1px #D69CA2;border-bottom: solid 1px #D69CA2">
				<span class="illust" style="float: left"><img class="flex"
					src="/assets/images/illust_member.png" style="width: 400px"></span>
				<p class="txtResult" style="font-size: 30px;padding-top: 100px;padding-left: 430px">
					<span class="bold" style="color: #E35B68" id="codeName"></span><br>
					설문이 완료 되었습니다.
				</p>
				<button type="button" class="change-page btnClose btn btn-danger"
					style="height: 35px;width: 105px;margin-top: 60px;margin-left: 375px">
					<span>닫기</span>
				</button>
			</div>
		</div>
	</div>
	<script>
		function keyDown(){
			if(event.keyCode ==13){
				if($(":input:radio[name=chk31]:checked").is(":checked") == false){
					alert('설문 내용에 해당하는 보기를 선택하세요.');
				}
				else{
					resultInsert();
					
					var cnt = Number($("#surveyCount").val()) + 1;
					$("#surveyCount").val(cnt);
					getSurvey('next');
					if (atob('${param.code }') == '3000') {
						if (cnt > 33) {
							$("#mainTitle")
									.html('B) 디지털 혁신 영역에서 도입 기회나 영향도에 대한 수준 평가');
						} else {
							$("#mainTitle").html(
									'A) 디지털 혁신 영역에 대한 현재 수준 평가');
						}
					} else if (atob('${param.code }') == '4000') {
						if (cnt > 14) {
							$("#mainTitle")
									.html(
											'B) 디지털 기술과 솔루션의 도입 기회나 영향도에 대한 수준 평가');
						} else {
							$("#mainTitle").html(
									'A) 디지털 기술과 솔루션에 대한 현재 수준 평가');
						}
					}

					if($("#totalCount").val() < cnt){
						$('.btnBack').css('display','none');
						$('.btnNext').css('display','none');
						$('.Q-area').css('display','none');
						$('#QList').css('display','none');
						$('#QLast').css('display','block');
						$('.btnClose').css('display','block');
						
						$('#spanCount').html('설문 완료 ('+$("#totalCount").val()+'/'+$("#totalCount").val()+')');
						$("#progressPercent").css('width', '100%');
					}

					$(":input:radio[name=chk31]:checked").attr("checked", false);
				}
			}
		}
		function getSurvey(gubun) {
			$.ajax({
				url : '/api/getSurvey',
				method : 'POST',
				data : {
					capCode : atob('${param.code }'),
					capOrder : $("#surveyCount").val(),
					id : atob('${param.id }')
				},
				dataType : 'json',
				success : function(data) {
					$("#surveyTitle").html(data.result.survey.capName);
					$("#surveyText").html(
							$("#surveyCount").val() + ". "
									+ data.result.survey.capListName);
					$("#subTitle").html(data.result.survey.capName);

					$("#capCode").val(data.result.survey.capCode);
					$("#capListNo").val(data.result.survey.capListNo);
					
					var progress = (Number($("#surveyCount").val() - 1) / Number($("#totalCount").val())) * 100;

					$('#spanCount').html('설문 문항 ('+$("#surveyCount").val()+'/'+$("#totalCount").val()+')');
					$("#progressPercent").css('width', progress + '%');
					
					if(gubun == 'back'){
						$("input:radio[name='chk31']:radio[value='" + data.result.survey.capResult + "']").prop('checked', true); 
					}
				}
			});
		}

		function getTotalCount(){
			$.ajax({
				url : '/api/getSurveyTotalCount',
				method : 'POST',
				data : {
					capCode : atob('${param.code }'),
					id : atob('${param.id }')
				},
				dataType : 'json',
				success : function(data) {
					$("#totalCount").val(data.result.cnt.capTotalCount);

					if(data.result.cnt.capTotalCount != data.result.cnt.capResultCount){
						var cnt = (data.result.cnt.capResultCount + 1);
						
						$("#surveyCount").val(cnt);
					}

					getSurvey();
				}
			});
		}

		function resultInsert(){
			$.ajax({
				url : '/api/resultInsert',
				method : 'POST',
				data : {
					id: atob('${param.id }'),
					capCode: $("#capCode").val(),
					capListNo: $("#capListNo").val(),
					capResult: $(":input:radio[name=chk31]:checked").val()
				},
				dataType : 'json',
				success : function(data) {
				}
			});
		}
		
		$(function() {
			$("#" + atob('${param.code }')).css('display','block');
			getTotalCount();
			var cnt = Number($("#surveyCount").val()) + 1;

			if (atob('${param.code }') == '3000') {
				$("#codeName").html('디지털 혁신 영역');
				$("#survey125").css('display', 'none');
				$("#survey34").css('display', 'block');

				if (atob('${param.code }') == '3000') {
					if (cnt > 33) {
						$("#mainTitle").html('B) 디지털 혁신 영역에서 도입 기회나 영향도에 대한 수준 평가');
					} else {
						$("#mainTitle").html('A) 디지털 혁신 영역에 대한 현재 수준 평가');
					}
				}
			} else if (atob('${param.code }') == '4000') {
				$("#codeName").html('디지털 기술과 솔루션');
				$("#survey125").css('display', 'none');
				$("#survey34").css('display', 'block');

				if (atob('${param.code }') == '4000') {
					if (cnt > 14) {
						$("#mainTitle").html('B) 디지털 기술과 솔루션의 도입 기회나 영향도에 대한 수준 평가');
					} else {
						$("#mainTitle").html('A) 디지털 기술과 솔루션에 대한 현재 수준 평가');
					}
				}
			} else if (atob('${param.code }') == '1000') {
				$("#codeName").html('디지털 비전과 리더십');
			} else if (atob('${param.code }') == '2000') {
				$("#codeName").html('디지털 전략과제');
			} else if (atob('${param.code }') == '5000') {
				$("#codeName").html('디지털 인적역량과 조직문화 ');
			}

			$('.btnBack').on('click',function() {
				var cnt = Number($("#surveyCount").val()) - 1;
				if (cnt != 0) {
					$("#surveyCount").val(cnt);
					getSurvey('back');

					if (atob('${param.code }') == '3000') {
						if (cnt > 33) {
							$("#mainTitle").html('B) 디지털 혁신 영역에서 도입 기회나 영향도에 대한 수준 평가');
						} else {
							$("#mainTitle").html('A) 디지털 혁신 영역에 대한 현재 수준 평가');
						}
					} else if (atob('${param.code }') == '4000') {
						if (cnt > 14) {
							$("#mainTitle").html('B) 디지털 기술과 솔루션의 도입 기회나 영향도에 대한 수준 평가');
						} else {
							$("#mainTitle").html('A) 디지털 기술과 솔루션에 대한 현재 수준 평가');
						}
					}
				}
				$(":input:radio[name=chk31]:checked").attr("checked", false);
			});

			$('.btnNext').on('click',function() {
				if($(":input:radio[name=chk31]:checked").is(":checked") == false){
					alert('설문 내용에 해당하는 보기를 선택하세요.');
				}
				else{
					resultInsert();
					
					var cnt = Number($("#surveyCount").val()) + 1;
					$("#surveyCount").val(cnt);
					getSurvey('next');
					if (atob('${param.code }') == '3000') {
						if (cnt > 33) {
							$("#mainTitle")
									.html('B) 디지털 혁신 영역에서 도입 기회나 영향도에 대한 수준 평가');
						} else {
							$("#mainTitle").html(
									'A) 디지털 혁신 영역에 대한 현재 수준 평가');
						}
					} else if (atob('${param.code }') == '4000') {
						if (cnt > 14) {
							$("#mainTitle")
									.html(
											'B) 디지털 기술과 솔루션의 도입 기회나 영향도에 대한 수준 평가');
						} else {
							$("#mainTitle").html(
									'A) 디지털 기술과 솔루션에 대한 현재 수준 평가');
						}
					}

					if($("#totalCount").val() < cnt){
						$('.btnBack').css('display','none');
						$('.btnNext').css('display','none');
						$('.Q-area').css('display','none');
						$('#QList').css('display','none');
						$('#QLast').css('display','block');
						$('.btnClose').css('display','block');
						
						$('#spanCount').html('설문 완료 ('+$("#totalCount").val()+'/'+$("#totalCount").val()+')');
						$("#progressPercent").css('width', '100%');
					}

					$(":input:radio[name=chk31]:checked").attr("checked", false);
				}
			});
		});
	</script>
</body>