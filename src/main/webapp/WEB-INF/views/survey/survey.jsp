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
<script type="text/javascript"
	src="/assets/js/bootstrap/bootstrap.bundle.js"></script>
<link href="/assets/css/kpc/sb-admin.css" rel="stylesheet" />
<link href="/assets/fontawesome-free/css/all.min.css" rel="stylesheet"
	type="text/css" />
<script>
	function popup(gubun){
		var popupX = (document.body.offsetWidth / 2) - (950 / 2);
		var popupY= (window.screen.height / 2) - (530 / 2);
		var pop = window.open("/surveyPopup?code=" + btoa(gubun) + "&id=" + '${param.id }',"pop","width=950,height=530,left="+ popupX + ",top="+popupY+",  scrollbars=yes, resizable=yes");
	}
	function zoomIn(event) {
	   event.target.style.transform = "scale(1.15)";
	   event.target.style.zIndex = 1;
	   event.target.style.transition = "all 0.1s";
	}
	
	function zoomOut(event) {
	  event.target.style.transform = "scale(1)";
	  event.target.style.zIndex = 0;
	  event.target.style.transition = "all 0.1s";
	}
</script>
</head>
<body class="sub" style="background-color: #F5F7FB">
	<jsp:include page="../main/headersurvey.jsp"></jsp:include>
	<input id="totalCount" type="hidden" name="head_txt_name"></input>
	<input id="totalResultCount" type="hidden" name="head_txt_name"></input>
	<div id="wrapper" style="margin-top: 5px;">
		<div id="content-wrapper" style="padding-bottom: 30px">
			<div class="container-fluid" style="font-size: 12px" align='center'>
				<div class="card shadow" style="width: 1485px;height: 550px" align='left'>
					<div class="card-header py-3" style="background-color: #eef2f3">
						<h6 class="m-0 font-weight-bold" style="font-size: 19px;color: #262626"><i class="fas fa-book-reader"></i>&nbsp;&nbsp;&nbsp;디지털 성숙도 측정 항목</h6>
					</div>
					<div class="card-body">
						<div class="board-wrap" style="margin-top: 40px">
							<div class="card shadow" style="width:250px;float: left;margin-left: 55px" onmouseenter="zoomIn(event)" onmouseleave="zoomOut(event)">
								<div class="card-body" style="padding: 0px">
									<img src="/assets/images/list1.png" alt=""
											style="width: 248px; height: 145px;" id="img1"/>
									<dl>
										<dt><label style="font-size: 16px;font-weight: bold;color: black;padding-top: 15px;padding-left: 10px">디지털 비전과 리더십</label></dt>
										<dd style="font-size: 13px;padding-left: 10px">
											&nbsp;&nbsp;&#149 디지털 비전과 목표<br>&nbsp;&nbsp;&#149 디지털 리더십
										</dd>
									</dl>
									<div style="padding-top: 15px;padding-left: 10px;padding-bottom: 15px">
										<button id="btn1" type="button" class="btn" style="width:78px;height: 33px;font-size: 13px;background-color: #EF4053;color: white" onclick="popup(1000);">설문하기</button>
										<sub id="span1" style="font-size: 14px"></sub>
									</div>
								</div>
							</div>
							<div class="card shadow" style="width:250px;float: left;margin-left: 20px" onmouseenter="zoomIn(event)" onmouseleave="zoomOut(event)">
								<div class="card-body" style="padding: 0px">
									<img src="/assets/images/list2.png" alt=""
											style="width: 248px; height: 145px;" id="img1"/>
									<dl>
										<dt><label style="font-size: 16px;font-weight: bold;color: black;padding-top: 15px;padding-left: 10px">디지털 전략과제</label></dt>
										<dd style="font-size: 13px;padding-left: 10px">
											&nbsp;&nbsp;&#149 전략과제 체계화 및 우선순위<br>&nbsp;&nbsp;&#149 전략과제 추진 실행력
										</dd>
									</dl>
									<div style="padding-top: 15px;padding-left: 10px;padding-bottom: 15px">
										<button id="btn2" type="button" class="btn" style="width:78px;height: 33px;font-size: 13px;background-color: #EF4053;color: white" onclick="popup(2000);">설문하기</button>
										<sub id="span2" style="font-size: 14px"></sub>
									</div>
								</div>
							</div>
							<div class="card shadow" style="width:250px;float: left;margin-left: 20px" onmouseenter="zoomIn(event)" onmouseleave="zoomOut(event)">
								<div class="card-body" style="padding: 0px">
									<img src="/assets/images/main3.jpg" alt=""
											style="width: 248px; height: 145px;" id="img1"/>
									<dl>
										<dt><label style="font-size: 16px;font-weight: bold;color: black;padding-top: 15px;padding-left: 10px">디지털 혁신 영역</label></dt>
										<dd style="font-size: 13px;padding-left: 10px">
											&nbsp;&nbsp;&#149 혁신 영역에서 수준 평가<br>&nbsp;&nbsp;&#149 혁신 영역에서 도입 기회나 영향도 평가
										</dd>
									</dl>
									<div style="padding-top: 15px;padding-left: 10px;padding-bottom: 15px">
										<button id="btn3" type="button" class="btn" style="width:78px;height: 33px;font-size: 13px;background-color: #EF4053;color: white" onclick="popup(3000);">설문하기</button>
										<sub id="span3" style="font-size: 14px"></sub>
									</div>
								</div>
							</div>
							<div class="card shadow" style="width:250px;float: left;margin-left: 20px" onmouseenter="zoomIn(event)" onmouseleave="zoomOut(event)">
								<div class="card-body" style="padding: 0px">
									<img src="/assets/images/list4.png" alt=""
											style="width: 248px; height: 145px;" id="img1"/>
									<dl>
										<dt><label style="font-size: 16px;font-weight: bold;color: black;padding-top: 15px;padding-left: 10px">디지털 기술과 솔루션</label></dt>
										<dd style="font-size: 13px;padding-left: 10px">
											&nbsp;&nbsp;&#149 솔루션에 대한 현재 수준 평가<br>&nbsp;&nbsp;&#149 솔루션의 도입 기회나 영향도 평가
										</dd>
									</dl>
									<div style="padding-top: 15px;padding-left: 10px;padding-bottom: 15px">
										<button id="btn4" type="button" class="btn" style="width:78px;height: 33px;font-size: 13px;background-color: #EF4053;color: white" onclick="popup(4000);">설문하기</button>
										<sub id="span4" style="font-size: 14px"></sub>
									</div>
								</div>
							</div>
							<div class="card shadow" style="width:250px;float: left;margin-left: 20px" onmouseenter="zoomIn(event)" onmouseleave="zoomOut(event)">
								<div class="card-body" style="padding: 0px">
									<img src="/assets/images/list5.png" alt=""
											style="width: 248px; height: 145px;" id="img1"/>
									<dl>
										<dt><label style="font-size: 16px;font-weight: bold;color: black;padding-top: 15px;padding-left: 10px">디지털 인적역량과 조직문화</label></dt>
										<dd style="font-size: 13px;padding-left: 10px">
											&nbsp;&nbsp;&#149 인적역량<br>&nbsp;&nbsp;&#149 조직문화
										</dd>
									</dl>
									<div style="padding-top: 15px;padding-left: 10px;padding-bottom: 15px">
										<button id="btn5" type="button" class="btn" style="width:78px;height: 33px;font-size: 13px;background-color: #EF4053;color: white" onclick="popup(5000);">설문하기</button>
										<sub id="span5" style="font-size: 14px"></sub>
									</div>
								</div>
							</div>
						</div>
						<div style="width:100%;margin-top: 380px" align='center'>
							<a href="#" class="btn btn-icon-split" style="background-color: #EF4053;border-color: #EF4053;color: white" id="btnCommon">
							  	<span class="icon text-white-50">
							      <i class="fas fa-flag"></i>
							    </span>
							    <span class="text">결과 보기</span>
							 </a>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<jsp:include page="../main/footer.jsp"></jsp:include>
	<script type="text/javascript" src="/assets/js/kpc/jquery.circliful.js"></script>
	<script>
		function SurveyList(){
			$.ajax({
				url : '/api/SurveyList',
				method : 'POST',
				data : {
					id : atob('${param.id }')
				},
				dataType : 'json',
				success : function(data) {
					var totalCount = 0;
					var totalResultCount = 0;
					for(var idx = 0; idx < data.result.surveyList.length; idx++){
						totalCount += data.result.surveyList[idx].capTotalCount;
						totalResultCount += data.result.surveyList[idx].capResultCount;
						var progress = (data.result.surveyList[idx].capResultCount / data.result.surveyList[idx].capTotalCount) * 100;

						if(progress == 100){
							$('#btn' + (idx + 1)).removeAttr('onclick');
							$('#btn' + (idx + 1)).html('설문완료');
							$('#btn' + (idx + 1)).css('background-color','gray');
							$('#btn' + (idx + 1)).css('border-color','gray');
						}
						
						$('#progressBarMain' + (idx + 1)).css('width', progress + '%');	

						$('#span' + (idx + 1)).html('('+data.result.surveyList[idx].capResultCount+'/'+data.result.surveyList[idx].capTotalCount+')');
					}

					$('#totalCount').val(totalCount);
					$('#totalResultCount').val(totalResultCount);	
				}
			});
		}
		
		$(function() {
			SurveyList();
			$('#btnCommon').on('click', function() {
				if($('#totalCount').val() == $('#totalResultCount').val()){
					location.href = "/Result?id=" + '${param.id }';
				}
				else{
					alert('설문이 완료되지 않았습니다.')
				}
			})
		});
	</script>
</body>