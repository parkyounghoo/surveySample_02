<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1.0, minimum-scale=1.0, maximum-scale=1.0, user-scalable=no" />
<title>KPC DT</title>
<style>
    /* 스크롤 스타일 정의 */
    .table-fixed-header-wrap {
        position: relative;padding-top:41px; /* 기준점과 헤더영역 확보 */
        width:100%;height:400px;margin:0 auto; /* 디자인에 따라 가로 세로 값 설정 */
    }
    .table-fixed-header-wrap .fixed-header-scroll {height:360px;overflow-x:hidden;overflow-y:auto;} /* 실제 스크롤 영역 설정 */
    .table-fixed-header-wrap .fixed-header-bg {
        position:absolute;left:10;top:0;width:680px; /* 헤더영역 위치 */
        height:43px;background:#d8dce3;/* 테이블 헤더와 동일한 스타일 적용 */
    }
    .table-fixed-header-wrap .fixed-th {position: absolute;top:12px;font-size: 13px;font-weight: bold;} /* th 하위의 타이틀 위치 설정 */
    .table-fixed-header-wrap .table thead th {height:0;border:none;} /* 실제 테이블의 th 는 가림 */
	
	[data-md-tooltip] {
	 position: relative;
	}
	[data-md-tooltip]:before {
	   content: '디지털 혁신의 기회와 현재수준의 비교를 통해 차이가 큰 부분에 대한 개선방안을 검토한다.기회부분은 디지털 트랜스포메이션을 통해 혁신의 강도나 기회가 큰 정도를 평가하며, 각 항목에 대한 현재 역량을 비교하여 차이가 큰 것을 개선의 기회로 도출하는 것이다.';
	   position: absolute;
	   bottom: -65px;
	   padding: 8px;
	   width: 630px;
	   transform: translateX(-35%) scale(0);
	   transition: transform 0.3s ease-in-out;
	   transform-origin: top;
	   background: #616161e6;
	   color: white;
	   border-radius: 2px;
	   font-size: 16px;
	   font-weight: 400;
	}
	[data-md-tooltip]:hover:before {
	 transform: translateX(-25%) scale(1);
	}
	
	[data-md-tooltip2] {
	 position: relative;
	}
	[data-md-tooltip2]:before {
	   content: '디지털 혁신의 기회와 현재수준의 비교를 통해 차이가 큰 부분에 대한 개선방안을 검토한다.기회부분은 디지털 트랜스포메이션을 통해 혁신의 강도나 기회가 큰 정도를 평가하며, 각 항목에 대한 현재 역량을 비교하여 차이가 큰 것을 개선의 기회로 도출하는 것이다.';
	   position: absolute;
	   bottom: -65px;
	   padding: 8px;
	   width: 630px;
	   transform: translateX(-35%) scale(0);
	   transition: transform 0.3s ease-in-out;
	   transform-origin: top;
	   background: #616161e6;
	   color: white;
	   border-radius: 2px;
	   font-size: 16px;
	   font-weight: 400;
	}
	[data-md-tooltip2]:hover:before {
	 transform: translateX(-95%) scale(1);
	}
</style>
</head>
<body>
	<div class="main-cont" style="margin-left: 20px">
		<div align='center' style="height: 900px;margin-top: 60px;">
			<div id="wrapper">
				<div id="content-wrapper" class="d-flex flex-column">
					<div id="content">
						<div class="container-fluid">
				          	<div class="row" style="margin-top: 20px">
								<div class="col-lg-12" style="padding-left: 0px">
									<div class="card shadow mb-4">
										<div class="card-header flex-row align-items-center justify-content-between" style="height: 50px;background-color: #eef2f3" align='left'>
											<h6 class="m-1 font-weight-bold" style="font-size: 20px;color: #262626"><i class="fas fa-list-ul"></i> 기회와 현재수준 평가 결과 비교</h6>
										</div>
										 <div class="card-body">
										 <div class="row">
											<div class="col-lg-6" style="padding-left: 7px">
												<div class="card shadow mb-4">
													<div class="card-header py-3">
														<h6 class="m-0 font-weight-bold text-gray-900" style="font-size: 19px;">디지털혁신 영역의 비교 평가</h6>
													</div>
												  	<div class="card-body" style="width: 735px;height: 769px">
												    	<canvas id="CmprEval" style="height: 250px; width: 600px;margin-left: -10px"></canvas>
												    	<div class="table-fixed-header-wrap" style="margin-top: 40px;margin-left: 10px;width: 680px">
												    		<div class="fixed-header-scroll">
												    			<div class="table-responsive">
												    				<div class="fixed-header-bg" style="font-size: 20px"></div><!-- 헤더 스타일 -->
														    		<table class="table table-striped nomargin">
														    			<thead style="background-color: #fff;">
														    				<tr>
														    					<th class="text-center" style="width:50px;">
														    						<div class="fixed-th" style="width:50px;">
														    							항목
														    						</div>
														    					</th>
														    					<th class="text-center" style="width:65px">
														    						<div class="fixed-th" style="width:55px;">
														    							현재(A)
														    						</div>
														    					</th>
														    					<th class="text-center" style="width:75px">
														    						<div class="fixed-th" style="width:65px;">
														    							기회(B)
														    						</div>
														    					</th>
														    					<th class="text-center" style="width:90px">
														    						<div class="fixed-th" style="width:90px;" data-md-tooltip="Tooltip content">
														    							차이(A-B)&nbsp;&nbsp;<i class="far fa-question-circle"></i>
														    						</div>
														    					</th>
														    					<th class="text-center" style="width: 378px">
														    						<div class="fixed-th" style="width: 378px">
														    							평가
														    						</div>
														    					</th>
														    				</tr>
														    			</thead>
														    			<tbody id="setTbody" style="color: black">
														    			
														    			</tbody>
														    		</table>
														    	</div>
												    		</div>
												    	</div>
												    	
												  	</div>
												</div>
											</div>
											<div class="col-lg-6">
												<div class="card shadow mb-4">
													<div class="card-header py-3">
														<h6 class="m-0 font-weight-bold text-gray-900" style="font-size: 19px">디지털기술 및 솔루션 영역의 비교 평가</h6>
													</div>
												  	<div class="card-body" style="width: 735px;height: 769px">
												    	<canvas id="CmprEval2" style="height: 292px; width: 700px;margin-left: -10px"></canvas>
												    	<div class="table-fixed-header-wrap" style="margin-top: 40px;width: 680px;">
												    		<div class="fixed-header-scroll">
												    			<div class="table-responsive">
												    				<div class="fixed-header-bg"></div><!-- 헤더 스타일 -->
															    	<table class="table table-striped nomargin">
																		<thead>
																			<tr>
																				<th class="text-center" style="width: 190px;">
																					<div class="fixed-th" style="width: 190px;">
														    							항목
														    						</div>
																				</th>
																				<th class="text-center" style="width:300px;">
																					<div class="fixed-th" style="width:300px;">
														    							<span>세부 항목</span>
														    						</div>
																				</th>
																				<th class="text-center" style="width: 50px;">
																					<div class="fixed-th" style="width: 50px;">
														    							<span>현재(A)</span>
														    						</div>
																				</th>
																				<th class="text-center" style="width: 63px;">
																					<div class="fixed-th" style="width: 63px;">
														    							<span>기회(B)</span>
														    						</div>
																				</th>
																				<th class="text-center" style="width: 82px;">
																					<div class="fixed-th" style="width: 82px;" data-md-tooltip2="Tooltip content">
														    							<span>차이(A-B)</span>&nbsp;&nbsp;<i class="far fa-question-circle"></i>
														    						</div>
																				</th>
																			</tr>
																		</thead>
																		<tbody id="setTbody2" style="color: black">
																		</tbody>
																	</table>
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
		</div>
	</div>
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
		loadDataList();
	});
	$(function() {
		$.ajax({
			url : '/api/getCmprList',
			method : 'POST',
			data : {
				id : atob('${param.id }')
			},
			dataType : 'json',
			success : function(data) {
				
				var CmprListA = new Array();
				var CmprListB = new Array();
				var CmprAscA = new Array();
				var CmprAscB = new Array();
				var text = "";
				var html = "";
				for (var idx = 0; idx < data.result.CmprDesc.length; idx++) {
					var CmprA = data.result.CmprDesc[idx].capResultA;
					var CmprB = data.result.CmprDesc[idx].capResultB;
					var CmprC = data.result.CmprDesc[idx].capResultMinus;

					CmprAscA.push(data.result.CmprAsc[idx].capResultA);
					CmprAscB.push(data.result.CmprAsc[idx].capResultB);
					
					CmprListA.push(CmprA);
					CmprListB.push(CmprB);
					
					html += '<tr style="height: 35px;">';
					html += '<td align="center" title="'+data.result.CmprDesc[idx].capListName+'" style="cursor: pointer">';
					html += data.result.CmprDesc[idx].seqNo;
					html += '</td>';
					html += '<td align="center">';
					html += CmprA;
					html += '</td>';
					html += '<td align="center"> ';
					html += CmprB;
					html += '</td>';
					html += '<td align="center">';
					html += CmprC;
					html += '</td>';
					html += '<td>';
					html += data.result.CmprDesc[idx].rangeText;
					html += '</td>';
					html += '</tr>';
				};
				$('#setTbody').html(html);

				var CmprList2A = new Array(); 
				var CmprList2B = new Array();
				var html2 = "";
				for (var idx = 0; idx < data.result.CmprList.length; idx++) {
					var CmprName = data.result.CmprList[idx].capListName;
					var CmprA = data.result.CmprList[idx].capResultA;
					var CmprB = data.result.CmprList[idx].capResultB;
					var CmprC = data.result.CmprList[idx].capResultMinus;

					CmprList2A.push(CmprA);
					CmprList2B.push(CmprB);
					
					if(idx == 0){
						html2 += '<tr style="height: 35px;">';
						html2 += '<td rowspan="7" align="center" style="vertical-align: middle;">';
						html2 += '	디지털기술 및 <br>솔루션(7)';
						html2 += '</td>';
						html2 += '<td>';
						html2 += CmprName;
						html2 += '</td>';
						html2 += '<td align="center">';
						html2 += CmprA;
						html2 += '</td>';
						html2 += '<td align="center">';
						html2 += CmprB;
						html2 += '</td>';
						html2 += '<td align="center">';
						html2 += CmprC;
						html2 += '</td>';
						html2 += '</tr>';
					}
					else{
						html2 += '<tr style="height: 35px;">';
						html2 += '<td>';
						html2 += CmprName;
						html2 += '</td>';
						html2 += '<td align="center">';
						html2 += CmprA;
						html2 += '</td>';
						html2 += '<td align="center">';
						html2 += CmprB;
						html2 += '</td>';
						html2 += '<td align="center">';
						html2 += CmprC;
						html2 += '</td>';
						html2 += '</tr>';
					}
					$('#setTbody2').html(html2);
				};
				
				var ctx = document.getElementById('CmprEval').getContext('2d');
				var gradient = ctx.createLinearGradient(0, 0, 0, 450);
				gradient.addColorStop(0, 'rgba(247,108,6, 0.9)'); 
				gradient.addColorStop(0.5, 'rgba(247,108,6, 0.25)');  
				gradient.addColorStop(1, 'rgba(247,108,6, 0)');

				var gradient2 = ctx.createLinearGradient(0, 0, 0, 450);
				gradient2.addColorStop(0, 'rgba(83,154,168, 0.9)'); 
				gradient2.addColorStop(0.5, 'rgba(83,154,168, 0.5)');  
				gradient2.addColorStop(1, 'rgba(83,154,168, 0.2)');
				var myChart = new Chart(
						ctx,
						{
							type : 'line',
							data : {
								labels : [ '1','2','3','4','5','6','7','8','9','10'
									,'11','12','13','14','15','16','17','18','19','20'
									,'21','22','23','24','25','26','27','28','29','30','31','32','33' ],
								datasets : [ {
									label : '현재(A)',
									data : CmprAscA,
									backgroundColor : gradient,
									borderColor: '#FC2525',
							        pointBackgroundColor: 'white',
							        borderWidth: 1,
							        pointBorderColor: 'white'
								},{
									label : '기회(B)',
									data : CmprAscB,
									backgroundColor : gradient2,
									borderColor: '#05CBE1',
							        pointBackgroundColor: 'white',
							        pointBorderColor: 'white',
							        borderWidth: 1
								}  ],
							},
							options : {
								elements: {
				                    point:{
				                        radius: 0
				                    }
				                },
								legend: {
									display:true,
									labels: {
										fontColor: 'black',
										fontSize : 16,
									}
								},
								responsive : true,
								scales : {
									xAxes : [ {
										stacked : false,
										ticks : {
											fontColor: 'black'
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
								}
							}
						});	
				
				var ctx2 = document.getElementById('CmprEval2').getContext('2d');
				var myChart2 = new Chart(
						ctx2,
						{
							type : 'line',
							data : {
								labels : ['데이터의 관리 및 분석','사용료기반 클라우드','모바일 환경 구축','소셜미디어 활용','인공지능기술','사물인터넷기술','블록체인기술'],
								datasets : [ {
									label : '현재(A)',
									data : CmprList2A,
									backgroundColor : gradient,
									borderColor: '#FC2525',
							        pointBackgroundColor: 'white',
							        borderWidth: 1,
							        pointBorderColor: 'white'
								},{
									label : '기회(B)',
									data : CmprList2B,
									backgroundColor : gradient2,
									borderColor: '#05CBE1',
							        pointBackgroundColor: 'white',
							        pointBorderColor: 'white',
							        borderWidth: 1
								}  ],
							},
							options : {
								elements: {
				                    point:{
				                        radius: 0
				                    }
				                },
								legend: {
									display:true,
									labels: {
										fontColor: 'black',
										fontSize : 16,
									}
								},
								responsive : true,
								scales : {
									xAxes : [ {
										stacked : false,
										ticks : {
											fontColor: 'black',
											fontSize:10
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
								}
							}
						});	
			}
		});
	});
</script>
</body>
</html>