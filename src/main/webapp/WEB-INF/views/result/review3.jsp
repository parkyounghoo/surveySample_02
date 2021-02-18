<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1.0, minimum-scale=1.0, maximum-scale=1.0, user-scalable=no" />
<title>KPC DT</title>
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
											<h6 class="m-1 font-weight-bold" style="font-size: 20px;color: #262626"><i class="fas fa-list-ul"></i> 매트릭스 분석</h6>
										</div>
										 <div class="card-body">
										 	<div class="row">
												<div class="col-lg-4" style="padding-left: 7px">
													<div class="card shadow mb-4">
														<div class="card-header py-3">
															<h6 class="m-0 font-weight-bold text-gray-900" style="font-size: 19px;">디지털 비전-전략과제 추진 역량</h6>
														</div>
													  	<div class="card-body">
													  		<div id="container" style="height: 350px;width: 100%">
													  		</div>
													  		<div class="row" style="margin-left: 3px;margin-top: 40px">
													  			<div class="col-lg-12" style="padding-left: 0px">
														  			<div class="card shadow mb-4">
															  			<div class="card-header py-3">
																			<h6 class="m-0 font-weight-bold text-gray-900" style="font-size: 19px;">유형별 특성 및 대응방안</h6>
																		</div>
														  				<div class="card-body" style="margin-top: 20px;height: 280px">
														  					<h6 class="m-0 font-weight-bold" style="font-size: 19px;color: #FA9851" id="matrixName1"></h6>
														  					<hr style="border : solid 1px #FA9851">
														  					<div align='center' style="font-size: 16px;width:80%" id="matrixResult1">
														  					</div>
														  				</div>
														  			</div>
													  			</div>
													  		</div>
													  	</div>
												  	</div>
												</div>
												<div class="col-lg-4" style="padding-left: 0px">
													<div class="card shadow mb-4">
														<div class="card-header py-3">
															<h6 class="m-0 font-weight-bold text-gray-900" style="font-size: 19px;">디지털 비전-인적 및 조직문화 역량</h6>
														</div>
													  	<div class="card-body">
													  		<div id="container2" style="height: 350px;width: 100%">
													  		</div>
													  		<div class="row" style="margin-left: 3px;margin-top: 40px">
													  			<div class="col-lg-12" style="padding-left: 0px">
														  			<div class="card shadow mb-4">
															  			<div class="card-header py-3">
																			<h6 class="m-0 font-weight-bold text-gray-900" style="font-size: 19px;">유형별 특성 및 대응방안</h6>
																		</div>
														  				<div class="card-body" style="margin-top: 20px;height: 280px">
														  					<h6 class="m-0 font-weight-bold" style="font-size: 19px;color: #FA9851" id="matrixName2"></h6>
														  					<hr style="border : solid 1px #FA9851">
														  					<div align='center' style="font-size: 16px;width:80%" id="matrixResult2">
														  					</div>
														  				</div>
														  			</div>
													  			</div>
													  		</div>
													  	</div>
												  	</div>
												</div>
												<div class="col-lg-4" style="padding-left: 0px">
													<div class="card shadow mb-4">
														<div class="card-header py-3">
															<h6 class="m-0 font-weight-bold text-gray-900" style="font-size: 19px;">디지털 영역,프로세스-디지털 기술&솔루션 역량</h6>
														</div>
													  	<div class="card-body">
													  		<div id="container3" style="height: 350px;width: 100%;">
													  		</div>
													  		<div class="row" style="margin-left: 3px;margin-top: 40px">
													  			<div class="col-lg-12" style="padding-left: 0px">
														  			<div class="card shadow mb-4">
															  			<div class="card-header py-3">
																			<h6 class="m-0 font-weight-bold text-gray-900" style="font-size: 19px;">유형별 특성 및 대응방안</h6>
																		</div>
														  				<div class="card-body" style="margin-top: 20px;height: 280px">
														  					<h6 class="m-0 font-weight-bold" style="font-size: 19px;color: #FA9851" id="matrixName3"></h6>
														  					<hr style="border : solid 1px #FA9851">
														  					<div align='center' style="font-size: 16px;width:80%" id="matrixResult3">
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
   		</div>
	</div>
	<script>
		function dataAccess(){
			$.ajax({
				url : '/api/getMatrixList',
				method : 'POST',
				data : {
					id : atob('${param.id }')
				},
				dataType : 'json',
				success : function(data) {
					var data1 = [
					  {x: data.result.AbilityEvl[0].resultAvg, value: data.result.AbilityEvl[1].resultAvg}
					];
					//x 1 y 2
					var chart1 = anychart.quadrant();
					var series1 = chart1.marker(data1);

					// configure the visual settings of the first series
					series1.normal().fill("#EF4053", 1);
					series1.normal().stroke("#EF4053", 1);

					chart1.padding(40);
				    // configure quarters
				    chart1.quarters(
				    {
				        rightTop: {
				        	fill: "#FBC094",
				        	stroke: "#FBC094",
				            title: {
				                text: "독수리 형",
				                fontSize: "20",
				                fontWeight: "bold",
				                fontColor: "white"
				            }
				        },
				        rightBottom: {
				            title: {
				                text: "공작새 형",
				                fontSize: "20",
				                fontWeight: "bold"
				            }
				        },
				        leftTop: {
				            title: {
				                text: "코뿔소 형",
				                fontSize: "20",
				                fontWeight: "bold"
				            }
				        },
				        leftBottom: {
				        	fill: "#FBC094",
				        	stroke: "#FBC094",
				            title: {
				                text: "나무늘보 형",
				                fontSize: "20",
				                fontWeight: "bold",
				                fontColor: "white"
				            }
				        },
				    });
				    
					chart1.xScale().minimum(0);
					chart1.xScale().maximum(5);
					chart1.yScale().minimum(0);
					chart1.yScale().maximum(5);
					
					var yLabel = chart1.quarters().leftBottom().label(1);
					yLabel.useHtml(true);
					yLabel.text("미흡 ← 디지털 전략과제 추진역량 → 우수");
					yLabel.position("leftBottom");
					yLabel.offsetX(-20);
					yLabel.offsetY(-130);
					yLabel.rotation(-90);

					var xLabel = chart1.quarters().leftBottom().label(0);
					xLabel.useHtml(true);
					xLabel.text("취약 ← 디지털 비전과 리더십 → 양호");
					xLabel.position("leftBottom");
					xLabel.offsetX(200);
					xLabel.offsetY(20);

					chart1.container("container");
					chart1.draw();

					var data2 = [
						{x: data.result.AbilityEvl[0].resultAvg, value: data.result.AbilityEvl[4].resultAvg}
					];
					//x 1 y 5
					var chart2 = anychart.quadrant();
					var series2 = chart2.marker(data2);

					// configure the visual settings of the first series
					series2.normal().fill("#EF4053", 1);
					series2.normal().stroke("#EF4053", 1);
					
					chart2.padding(40);
				    // configure quarters
				    chart2.quarters(
				    {
				        rightTop: {
				        	fill: "#FBC094",
				        	stroke: "#FBC094",
				            title: {
				                text: "매 형",
				                fontSize: "20",
				                fontWeight: "bold",
				                fontColor: "white"
				            }
				        },
				        rightBottom: {
				            title: {
				                text: "갈매기 형",
				                fontSize: "20",
				                fontWeight: "bold"
				            }
				        },
				        leftTop: {
				            title: {
				                text: "메뚜기 형",
				                fontSize: "20",
				                fontWeight: "bold"
				            }
				        },
				        leftBottom: {
				        	fill: "#FBC094",
				        	stroke: "#FBC094",
				            title: {
				                text: "곰 형",
				                fontSize: "20",
				                fontWeight: "bold",
				                fontColor: "white"
				            }
				        },
				    });
				    
					chart2.xScale().minimum(0);
					chart2.xScale().maximum(5);
					chart2.yScale().minimum(0);
					chart2.yScale().maximum(5);
					
					var yLabel = chart2.quarters().leftBottom().label(1);
					yLabel.useHtml(true);
					yLabel.text("낮음 ← 인적역량과 조직문화역량 → 높음");
					yLabel.position("leftBottom");
					yLabel.offsetX(-20);
					yLabel.offsetY(-130);
					yLabel.rotation(-90);

					var xLabel = chart2.quarters().leftBottom().label(0);
					xLabel.useHtml(true);
					xLabel.text("취약 ← 디지털 비전과 리더십 → 양호");
					xLabel.position("leftBottom");
					xLabel.offsetX(200);
					xLabel.offsetY(20);
					
					chart2.container("container2");
					chart2.draw();

					var data3 = [
						{x: data.result.AbilityEvl[2].resultAvg, value: data.result.AbilityEvl[3].resultAvg}
					];
					//x 3 y 4
					var chart3 = anychart.quadrant();
					var series3 = chart3.marker(data3);

					// configure the visual settings of the first series
					series3.normal().fill("#EF4053", 1);
					series3.normal().stroke("#EF4053", 1);

					chart3.padding(40);
				    // configure quarters
				    chart3.quarters(
				    {
				        rightTop: {
				        	fill: "#FBC094",
				        	stroke: "#FBC094",
				            title: {
				                text: "표범 형",
				                fontSize: "20",
				                fontWeight: "bold",
				                fontColor: "white"
				            }
				        },
				        rightBottom: {
				            title: {
				                text: "뱀 형",
				                fontSize: "20",
				                fontWeight: "bold"
				            }
				        },
				        leftTop: {
				            title: {
				                text: "악어 형",
				                fontSize: "20",
				                fontWeight: "bold"
				            }
				        },
				        leftBottom: {
				        	fill: "#FBC094",
				        	stroke: "#FBC094",
				            title: {
				                text: "사슴 형",
				                fontSize: "20",
				                fontWeight: "bold",
				                fontColor: "white"
				            }
				        },
				    });
				    
					chart3.xScale().minimum(0);
					chart3.xScale().maximum(5);
					chart3.yScale().minimum(0);
					chart3.yScale().maximum(5);
					var yLabel = chart3.quarters().leftBottom().label(1);
					yLabel.useHtml(true);
					yLabel.text("낮음 ← 디지털 기술과 솔루션역량 → 높음");
					yLabel.position("leftBottom");
					yLabel.offsetX(-20);
					yLabel.offsetY(-130);
					yLabel.rotation(-90);

					var xLabel = chart3.quarters().leftBottom().label(0);
					xLabel.useHtml(true);
					xLabel.text("낮음 ← 디지털 혁신 영역 수준 → 높음");
					xLabel.position("leftBottom");
					xLabel.offsetX(200);
					xLabel.offsetY(20);
					
					chart3.container("container3");
					chart3.draw();

					$('#matrixName1').html(data.result.Matrix1.capListName);
					$('#matrixResult1').html(data.result.Matrix1.rangeText);
					$('#matrixName2').html(data.result.Matrix2.capListName);
					$('#matrixResult2').html(data.result.Matrix2.rangeText);
					$('#matrixName3').html(data.result.Matrix3.capListName);
					$('#matrixResult3').html(data.result.Matrix3.rangeText);
				}
			})
		}
		$(function() {
			dataAccess();
		});
	</script>
	<script src="/assets/js/kpc/anychart-base.min.js"></script>
</body>
</html>