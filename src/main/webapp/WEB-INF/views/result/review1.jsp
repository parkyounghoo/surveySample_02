<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1.0, minimum-scale=1.0, maximum-scale=1.0, user-scalable=no" />
<title>KPC DT</title>
<link type="text/css" rel="StyleSheet" href="/assets/css/kpc/app.min.css">
<link type="text/css" rel="StyleSheet" href="/assets/css/kpc/light-template.css">
<style>
	.bubble{
		position:relative;
	}
	.bubble .label{
		color:#ffffff;
		background-color:#EF4053!important;
		border-radius:5px;
		padding:10px;
	}
	.bubble .tail{
		left:10%;
		margin-left:-18px;
		border-right :11px solid transparent;
		border-top:18px solid #EF4053!important;
		border-left : 18px solid transparent;
		position:absolute;
		bottom:-18px;
		width:0; height:0;
	}
</style>
</head>
<body>
	<div class="main-cont" style="margin-left: 20px;">
		<div align='center' style="height: 900px;margin-top: 60px;">
			<div id="wrapper">
				<div id="content-wrapper" class="d-flex flex-column" style="overflow: hidden;">
					<div id="content">
						<div class="container-fluid">
							<div class="row" style="margin-top: 20px;">
								<div class="col-lg-12" style="padding-left: 0px;">
									<div class="card shadow mb-4">
										<div class="card-header flex-row align-items-center justify-content-between" style="height: 50px;background-color: #eef2f3" align='left'>
											<h6 class="m-1 font-weight-bold" style="font-size: 20px;color: #262626"><i class="fas fa-list-ul"></i> 역량 평가 결과</h6>
										</div>
										 <div class="card-body">
										 	<div class="row" style="margin-left: 5px">
										 		<div class="col-lg-5" style="padding-left: 0px">
										 			<div class="card shadow mb-4">
													  <div class="card-body">
													  	<div class="card"  id="reviewMain" style="opacity: 0;height: 280px;background:-webkit-linear-gradient(220deg,#E46875,#E46875)!important;background:-moz- oldlinear-gradient(220deg,#E46875,#E46875)!important;background:-o-linear-gradient(220deg,#E46875,#E46875)!important;background:linear-gradient(230deg,#E46875,#E46875)!important;color:#fff!important">
									                        <div class="card-body">
									                            <div class="row align-items-center">
									                            	<div class="col-md-4">
									                                    <img src="/assets/images/undraw_onboarding_o8mv.svg" alt="..." class="img-fluid">
									                                </div>
									                                <div class="col-md-8">
									                                    <div style="width:100%; height:280px;" align='left'>
																	    	<div class="card-body" style="font-size: 18px;padding-top: 0px;width: 330px">
																	    		<div style="margin-left: -30px;padding-bottom: 5px"><i class="fas fa-quote-left"></i></div>
																				<span style="color: white;font-weight: bold" id="userCompName"></span>
																				<span style="font-size:16px;color: black">디지털 트랜스포메이션 </span> 
																				<br><span style="font-size:16px;color: black">역량 평가 결과</span>
																				<br><span style="font-size:16px;color: black">전체 평균점수 </span><span style="color: white;font-weight: bold" id="avgTotText"></span>
																				<span style="font-size:16px;color: black">으로</span>
																				<br><span style="color: white;font-weight: bold" id="rangeText"></span> <span style="font-size:16px;color: black">해당합니다.</span>
																				<br><span style="font-size:16px;color: black">이는</span>
																				<div style="color: white;font-weight: bold;width:335px" id="resultAvg">
																					
																				</div>
																				<div style="margin-left: 320px;;padding-top: 5px"><i class="fas fa-quote-right"></i></div>
																			</div>
																		</div>
									                                </div>
									                                
									                            </div>
									                        </div>
									                    </div>
													    <div class="board-wrap" id="reviewMain2" style="opacity: 0;height: 450px;margin-top: 50px">
													    	<div class="card-body shadow mb-4 widget-10-body p-4">
																<div class="widget-10">
																	<div class="widget-10-event">
																		<div class="widget-10-event-body">
																			<div class="widget-10-event-date" style="height: 50px;width: 110px;" id="border5">
																				<span class="day-num" style="font-size: 20px;padding-top: 8px;" id="title5">고도화</span>
																				<span class="month">(4.4~5)</span>
																			</div>
																			<div class="widget-10-event-info" align='left'>
																				<div class="desc" style="font-size: 18px" id="desc5">높은 수준의 시장선도형 디지털 혁신이 이루어지고<br> 성과향상이 가속화되는 단계</div>
																			</div>
																		</div>
																	</div>
																	<div class="widget-10-event" style="margin-top: 30px">
																		<div class="widget-10-event-body">
																			<div class="widget-10-event-date" style="height: 50px;width: 110px" id="border4">
																				<span class="day-num" style="font-size: 20px;padding-top: 8px" id="title4">강화</span>
																				<span class="month">(3.7~4.4)</span>
																			</div>
																			<div class="widget-10-event-info" align='left'>
																				<div class="desc" style="font-size: 18px" id="desc4">디지털 혁신과제에 대한 실행이 안정화되고,<br> 특정 부분에서 성과가 가시화되는 단계</div>
																			</div>
																		</div>
																	</div>
																	<div class="widget-10-event" style="margin-top: 30px">
																		<div class="widget-10-event-body">
																			<div class="widget-10-event-date" style="height: 50px;width: 110px" id="border3">
																				<span class="day-num" style="font-size: 20px;padding-top: 8px" id="title3">기반구축</span>
																				<span class="month">(3~3.7)</span>
																			</div>
																			<div class="widget-10-event-info" align='left'>
																				<div class="desc" style="font-size: 18px" id="desc3">디지털 혁신에 대한 계획을 수립하고,<br>여러 시도를 하며 활동이 이루어지는 단계</div>
																			</div>
																		</div>
																	</div>
																	<div class="widget-10-event" style="margin-top: 30px">
																		<div class="widget-10-event-body">
																			<div class="widget-10-event-date" style="height: 50px;width: 110px" id="border2">
																				<span class="day-num" style="font-size: 20px;padding-top: 8px" id="title2">초기</span>
																				<span class="month">(2~3)</span>
																			</div>
																			<div class="widget-10-event-info" align='left'>
																				<div class="desc" style="font-size: 18px" id="desc2">디지털 혁신에 관심을 보이고,<br>과제를 탐색하나 체계적인 계획이 미흡한 단계</div>
																			</div>
																		</div>
																	</div>
																	<div class="widget-10-event" style="margin-top: 30px">
																		<div class="widget-10-event-body">
																			<div class="widget-10-event-date" style="height: 50px;width: 110px" id="border1">
																				<span class="day-num" style="font-size: 20px;padding-top: 8px" id="title1">미흡</span>
																				<span class="month">(1~2)</span>
																			</div>
																			<div class="widget-10-event-info" align='left'>
																				<div class="desc" style="font-size: 18px" id="desc1">디지털 혁신을 시작하지 않았거나 관심이 미흡한 단계</div>
																			</div>
																		</div>
																	</div>
																</div>
															</div>
													    </div>
													  </div>
													</div>
										 		</div>
										 		<div class="col-lg-7">
										 			<div class="row">
										 			<div class="mb-4" style="width:19%;cursor: pointer;float: left;margin-right: 5px;height: 140px;margin-left: 5px" onclick='abilityEvlDetail(1)'>
										            	<div class="card shadow h-100 py-2" id="card1">
										            		<div class="card-body">
										            			<div class="row no-gutters align-items-center">
										            				<div class="col">
										            					<div class="font-weight-bold text-uppercase" style="font-size: 17px;">
										            						디지털 <br>비전과 리더십
										            					</div>
										            					<div class="mb-0 font-weight-bold" style="font-size: 13px;color: #FA9851;margin-top: 5px" id="cardText1">
										            					</div>
										            					<div class="h3 mb-0 font-weight-bold text-gray-800" id="avg1" style="margin-top: 5px">
										            					</div>
										            				</div>
										            				<div style="position: absolute;left: 120px;top: 5px;display: none" id="click1">
										            					<figure class="avatar avatar-xl avatar-state-danger">
																		</figure>
										            				</div>
										            			</div>
										            		</div>
										            	</div>
										            </div>
										            <div class="mb-4" style="width:19%;cursor: pointer;float: left;margin-right: 5px;height: 140px" onclick='abilityEvlDetail(2)'>
										              <div class="card shadow h-100 py-2" id="card2">
										            		<div class="card-body">
										            			<div class="row no-gutters align-items-center">
										            				<div class="col">
										            					<div class="font-weight-bold text-uppercase" style="font-size: 17px;">
										            						디지털 <br>전략과제
										            					</div>
										            					<div class="mb-0 font-weight-bold" style="font-size: 13px;color: #FA9851;margin-top: 5px" id="cardText2">
										            					</div>
										            					<div class="h3 mb-0 font-weight-bold text-gray-800" id="avg2" style="margin-top: 5px">
										            					</div>
										            				</div>
										            				<div style="position: absolute;left: 120px;top: 5px;" id="click2">
										            					<figure class="avatar avatar-xl avatar-state-danger">
																		</figure>
										            				</div>
										            			</div>
										            		</div>
										            	</div>
										            </div>
										            <div class="mb-4" style="width:19%;cursor: pointer;float: left;margin-right: 5px;height: 140px" onclick='abilityEvlDetail(3)'>
										              <div class="card shadow h-100 py-2" id="card3">
										            		<div class="card-body">
										            			<div class="row no-gutters align-items-center">
										            				<div class="col">
										            					<div class="font-weight-bold text-uppercase" style="font-size: 17px;">
										            						디지털 <br>혁신영역
										            					</div>
										            					<div class="mb-0 font-weight-bold" style="font-size: 13px;color: #FA9851;margin-top: 5px" id="cardText3">
										            					</div>
										            					<div class="h3 mb-0 font-weight-bold text-gray-800" id="avg3" style="margin-top: 5px">
										            					</div>
										            				</div>
										            				<div style="position: absolute;left: 120px;top: 5px" id="click3">
										            					<figure class="avatar avatar-xl avatar-state-danger">
																		</figure>
										            				</div>
										            			</div>
										            		</div>
										            	</div>
										            </div>
										            <div class="mb-4" style="width:19%;cursor: pointer;float: left;margin-right: 5px;height: 140px" onclick='abilityEvlDetail(4)'>
										              <div class="card shadow h-100 py-2" id="card4">
										            		<div class="card-body">
										            			<div class="row no-gutters align-items-center">
										            				<div class="col">
										            					<div class="font-weight-bold text-uppercase" style="font-size: 17px;">
										            						디지털 <br>기술과 솔루션
										            					</div>
										            					<div class="mb-0 font-weight-bold" style="font-size: 13px;color: #FA9851;margin-top: 5px" id="cardText4">
										            					</div>
										            					<div class="h3 mb-0 font-weight-bold text-gray-800" id="avg4" style="margin-top: 5px">
										            					</div>
										            				</div>
										            				<div style="position: absolute;left: 120px;top: 5px" id="click4">
										            					<figure class="avatar avatar-xl avatar-state-danger">
																		</figure>
										            				</div>
										            			</div>
										            		</div>
										            	</div>
										            </div>
										            <div class="mb-4 mr-4" style="width:19%;cursor: pointer;float: left;height: 140px" onclick='abilityEvlDetail(5)'>
										              <div class="card shadow h-100 py-2" id="card5">
										            		<div class="card-body">
										            			<div class="row no-gutters align-items-center">
										            				<div class="col">
										            					<div class="font-weight-bold text-uppercase" style="font-size: 17px;">
										            						인적역량과 <br>조직문화
										            					</div>
										            					<div class="mb-0 font-weight-bold" style="font-size: 13px;color: #FA9851;margin-top: 5px" id="cardText5">
										            					</div>
										            					<div class="h3 mb-0 font-weight-bold text-gray-800" id="avg5" style="margin-top: 5px">
										            					</div>
										            				</div>
										            				<div style="position: absolute;left: 120px;top: 5px" id="click5">
										            					<figure class="avatar avatar-xl avatar-state-danger">
																		</figure>
										            				</div>
										            			</div>
										            		</div>
										            	</div>
										            </div>
										            </div>
										            <div class="row" style="margin-right: 5px">
											           <div class="card shadow" style="width:100%;height: 290px;">
												    		<div class="card-body" style="font-size: 19px;width:830px; height: 150px;">
																<canvas id="AbilityEvl"></canvas>
															</div>
														</div>
														<div class="card shadow mt-4" style="width:100%;height: 330px">
															<div class="card-body" style="width:830px;height: 150px">
																<canvas id="AbilityEvlDetail"></canvas>
															</div>
														</div>
										            </div>
										 		</div>
									        </div>
										 </div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<script>
		var chart;
		
		var dataResult = new Array();
		var capResultText = new Array();
		var rangeTextList = new Array();
		
		function setText(cnt){
			$.ajax({
				url : '/api/resultDesc',
				method : 'POST',
				data : {
					resultAvgSum : cnt
				},
				dataType : 'json',
				success : function(data) {
					$('#rangeText').html(data.result.AbilityEvlText.rangeText);
					$('#resultAvg').html(data.result.AbilityEvlText.resultAvg);

					var id = data.result.AbilityEvlText.id;
					$('#border' + id).addClass('widget-10-event-date2')
					$('#title' + id).css('color','#EF4053')
					$('#desc' + id).css('color','#505050');
					$('#desc' + id).css('font-weight','bold');
				}
			});
		}
		function abilityEvlDetailChart(AbilityEvlCode){
			var backColorList = ['#EF4053','#EF4053','#EF4053','#EF4053','#EF4053'];
			var backColor = '';
			if(AbilityEvlCode == '1'){
				backColor = backColorList[0];
			}
			else if(AbilityEvlCode == '2'){
				backColor = backColorList[1];
			}
			else if(AbilityEvlCode == '3'){
				backColor = backColorList[2];
			}
			else if(AbilityEvlCode == '4'){
				backColor = backColorList[3];
			}
			else if(AbilityEvlCode == '5'){
				backColor = backColorList[4];
			}
			
			var txt = "";
			if(AbilityEvlCode == 1){
				txt = "1. 디지털 비전과 리더십";
			}
			else if(AbilityEvlCode == 2){
				txt = "2. 디지털 전략과제 추진";
			}
			else if(AbilityEvlCode == 3){
				txt = "3. 디지털 혁신 영역";
			}
			else if(AbilityEvlCode == 4){
				txt = "4. 디지털 기술과 솔루션";
			}
			else if(AbilityEvlCode == 5){
				txt = "5. 인적역량과 조직문화";
			}
			$
					.ajax({
						url : '/api/AbilityEvlDetail',
						method : 'POST',
						data : {
							capCode : AbilityEvlCode,
							id : atob('${param.id }')
						},
						dataType : 'json',
						success : function(data) {
							var dataResult = new Array();
							var labelResult = new Array();
							if (chart) {
								chart.destroy();
							}
							for (var idx = 0; idx < data.result.AbilityEvlList.length; idx++) {
								dataResult
										.push(data.result.AbilityEvlList[idx].resultAvg);
								labelResult
										.push(data.result.AbilityEvlList[idx].capName);
							}

							var ctx = document.getElementById(
									'AbilityEvlDetail').getContext('2d');
							var config = {
								type : 'bar',
								data : {
									labels : labelResult,
									datasets : [ {
										label : txt,
										data : dataResult,
										backgroundColor : backColor,
										fill : true,
										lineTension : 0
									} ]
								},
								options : {
									maintainAspectRatio: false,
									legend:{
										labels: {
											fontSize : 15
										}
									},
									responsive : true,
									scales : {
										xAxes : [ {
											stacked : false,
											ticks : {
												fontColor: 'black',
												fontSize:14
											}
										} ],
										yAxes : [ {
											stacked : false,
											ticks : {
												min : 0,
												max : 5,
												fontColor: 'black',
												fontSize:14
											}
										} ]
									},
									tooltips : {
										enabled : false
									},
									hover : {
										animationDuration : 0
									},
									animation : {
										duration : 1,
										onComplete : function() {
											var chartInstance = this.chart, ctx = chartInstance.ctx;
											ctx.font = Chart.helpers
													.fontString(
															Chart.defaults.global.defaultFontSize,
															Chart.defaults.global.defaultFontStyle,
															Chart.defaults.global.defaultFontFamily);
											ctx.fillStyle = 'black';
											ctx.textAlign = 'center';
											ctx.textBaseline = 'bottom';
											this.data.datasets
													.forEach(function(dataset,
															i) {
														var meta = chartInstance.controller
																.getDatasetMeta(i);
														meta.data
																.forEach(function(
																		bar,
																		index) {
																	var data = dataset.data[index];
																	ctx
																			.fillText(
																					data,
																					bar._model.x,
																					bar._model.y - 5);
																});
													});
										}
									}
								}
							};
							chart = new Chart(ctx, config);
						}
					})
		}
		function abilityEvlDetail(AbilityEvlCode) {
			$("#reviewMain").delay(700).animate({
			      opacity: '1'
			    }, "slow");
			$("#reviewMain2").delay(700).animate({
			      opacity: '1'
			    }, "slow");
			for (var idx = 1; idx < 6; idx++) {
				if(idx == AbilityEvlCode){
					$('#card' + idx).css('border-top', 'solid 4px #EF4053');
					$('#click' + idx).css('display','none');
					$('#cardText' + idx).css('color','#EF4053');
				}
				else{
					$('#card' + idx).css('border-top','');
					$('#click' + idx).css('display','block');
					$('#cardText' + idx).css('color','#FA9851');
				}
			}

			
			
			var backgroundColor = ['rgba(250, 152, 81, 1)','rgba(250, 152, 81, 1)','rgba(250, 152, 81, 1)','rgba(250, 152, 81, 1)','rgba(250, 152, 81, 1)'];
			if(AbilityEvlCode == '1'){
				backgroundColor[0] = '#EF4053';
			}
			else if(AbilityEvlCode == '2'){
				backgroundColor[1] = '#EF4053';
			}
			else if(AbilityEvlCode == '3'){
				backgroundColor[2] = '#EF4053';
			}
			else if(AbilityEvlCode == '4'){
				backgroundColor[3] = '#EF4053';
			}
			else if(AbilityEvlCode == '5'){
				backgroundColor[4] = '#EF4053';
			}

			$('#cardText1').html('(' + rangeTextList[0] + ')');
			$('#cardText2').html('(' + rangeTextList[1] + ')');
			$('#cardText3').html('(' + rangeTextList[2] + ')');
			$('#cardText4').html('(' + rangeTextList[3] + ')');
			$('#cardText5').html('(' + rangeTextList[4] + ')');

			var ctx = document.getElementById('AbilityEvl').getContext('2d');
			var myChart = new Chart(
					ctx,
					{
						type : 'bar',
						data : {
							labels : [ '1. 디지털 비전과 리더십', '2. 디지털 전략과제 추진',
									'3. 디지털 혁신 영역', '4. 디지털 기술과 솔루션',
									'5. 인적역량과 조직문화' ],
							datasets : [ {
								label : '디지털 트랜스포메이션 역량 평가',
								data : dataResult,
								backgroundColor: backgroundColor
							} ]
						},
						options : {
							maintainAspectRatio: false,
							onClick: function(c, i) {
								for (var idx = 0; idx < 5; idx++) {
									if(idx == (i[0]._index)){
										backgroundColor[idx] = '#EF4053';

										$('#card' + (idx + 1)).css('border-top', 'solid 4px #EF4053');
										$('#click' + (idx + 1)).css('display','none');
									}
									else{
										backgroundColor[idx] = 'rgba(250, 152, 81, 1)';

										$('#card' + (idx + 1)).css('border-top','');
										$('#click' + (idx + 1)).css('display','block');
									}
								}

								this.update();
								abilityEvlDetailChart(i[0]._index + 1);
							},
							legend:{
								display: false,
							},
							scales : {
								xAxes : [ {
									stacked : false,
									ticks : {
										fontColor: 'black',
										fontSize: 14
									}
								} ],
								yAxes : [ {
									stacked : false,
									ticks : {
										min : 0,
										max : 5,
										fontColor: 'black',
										fontSize: 14
									}
								} ]
							},
							tooltips : {
								enabled : true,
								callbacks: {
					                label: function(tooltipItem, data) {
						                if(data['labels'][tooltipItem['index']] == "1. 디지털 비전과 리더십"){
							                return rangeTextList[0] + " : " + capResultText[0];
						                }
						                else if(data['labels'][tooltipItem['index']] == "2. 디지털 전략과제 추진"){
						                	return rangeTextList[1] + " : " + capResultText[1];
						                }
						                else if(data['labels'][tooltipItem['index']] == "3. 디지털 혁신 영역"){
						                	return rangeTextList[2] + " : " + capResultText[2];
						                }
						                else if(data['labels'][tooltipItem['index']] == "4. 디지털 기술과 솔루션"){
						                	return rangeTextList[3] + " : " + capResultText[3];
						                }
						                else if(data['labels'][tooltipItem['index']] == "5. 인적역량과 조직문화"){
						                	return rangeTextList[4] + " : " + capResultText[4];
						                }
					                }
					            }
							},
							hover : {
								animationDuration : 5,
								onHover: function(e) {
									var point = this.getElementAtEvent(e);
									if (point.length) e.target.style.cursor = 'pointer';
									else e.target.style.cursor = 'default';
								}
							},
							animation : {
								duration : 5,
								onComplete : function() {
									var chartInstance = this.chart, ctx = chartInstance.ctx;
									ctx.font = Chart.helpers
											.fontString(
													Chart.defaults.global.defaultFontSize,
													Chart.defaults.global.defaultFontStyle,
													Chart.defaults.global.defaultFontFamily);
									ctx.fillStyle = 'black';
									ctx.textAlign = 'center';
									ctx.textBaseline = 'bottom';
									this.data.datasets.forEach(function(
											dataset, i) {
										var meta = chartInstance.controller
												.getDatasetMeta(i);
										meta.data.forEach(function(bar, index) {
											var data = dataset.data[index];
											ctx.fillText(data, bar._model.x,
													bar._model.y - 5);
										});
									});
								}
							}
						}
					});

			abilityEvlDetailChart(AbilityEvlCode);
		}
		$(function() {
			var userCompName = "";
			<c:forEach items="${requestScope.AbilityEvl}" var="result">
				var json = new Object();
				dataResult.push("${result.resultAvg}");
				rangeTextList.push("${result.rangeText}");
				capResultText.push("${result.capResultText}");
				userCompName = "${result.userCompName}";
			</c:forEach>
			
			var totCnt = 0;
			for(var idx = 0; idx < dataResult.length; idx++){
				$('#avg' + (idx + 1)).html(dataResult[idx] + "점" + "<span style='font-size: 17px'>/5점</span>");
				totCnt += Number(dataResult[idx]);
			}
			
			$('#avgTot').html((totCnt/5).toFixed(1) + "점" + "<span style='font-size: 17px'>/5점</span>");
			$('#avgTotText').html((totCnt/5).toFixed(1) + "점");
			$('#userCompName').html(userCompName);

			setText((totCnt/5));

			abilityEvlDetail('1');
		});

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
			loadDataList();
		});
	</script>
</body>
</html>