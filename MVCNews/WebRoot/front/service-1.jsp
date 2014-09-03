<%@ page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="description" content="">
<meta name="author" content="">
<base
	href="<%=request.getScheme() + "://" + request.getServerName()
					+ ":" + request.getServerPort() + request.getContextPath()%>/" />
<link rel="icon" href="../../favicon.ico">
<link rel="stylesheet/less" type="text/css" href="front/dist/css/service.less.css">
<script src="front/dist/js/less-1.7.4.min.js" type="text/javascript"></script>
<title>服务列表--斯多克科技</title>

</head>
<!-- NAVBAR
================================================== -->
<body>
	<jsp:include page="_header.jsp?index=service" />
	<!-- <header class="jumbotron subhead-grassgreen" id="overview">
		<div class="container">
			<h1>服务列表</h1>
			<p class="lead">斯多克提供丰富、可靠、多样的服务！</p>
		</div>
	</header> -->
	<header class="text-center">What can we do for you?
		<!-- <img class="service-img" src="front/dist/img/service-1-small.png" /> -->
	</header>
	<div class="container" id="main-service-1">
		<div class="row">
			<div class="col-md-3 text-center">
				<ul class="nav nav-tabs nav-stacked">
				    <li class="active" data-item="1"><a href="#bigdata" data-toggle="tab" >大数据分析</a></li>
				    <li data-item="2"><a href="#survey" data-toggle="tab">专业调查</a></li>
				    <li data-item="3"><a href="#mining" data-toggle="tab">数据挖掘</a></li>
				    <li data-item="4"><a href="#account" data-toggle="tab">账户合作</a></li>
				    <li data-item="5"><a href="#user" data-toggle="tab">用户合作</a></li>
				    <li data-item="6"><a href="#train" data-toggle="tab">一对一培训</a></li>
			  	</ul>
			</div>
			<div class="col-md-9">
				<!-- 主题内容 -->
				<div id="myTabContent" class="tab-content">
			   		<div class="tab-pane fade in active" id="bigdata">
			      		<img src="front/dist/img/service_bigdata.jpg"/>
			      		<p class="title">大数据分析</p>
			      		<p class="content">大数据分析是指对规模巨大的数据进行分析。大数据可以概括为4个V， 数据量大(Volume)、速度快(Velocity)、类型多(Variety)、真实性(Veracity)。大数据作为时下最火热的IT行业的词汇，随之而来的数据仓库、数据安全、数据分析、数据挖掘等等围绕大数据的商业价值的利用逐渐成为行业人士争相追捧的利润焦点。随着大数据时代的来临，大数据分析也应运而生</p>
			      		
			   		</div>
				   <div class="tab-pane fade" id="survey">
				   	 	<img src="front/dist/img/service_analyse.jpg" />
				   	 	<p class="title">专业调查</p>
				   	 	<p class="content"></p>			
				   </div>
				   <div class="tab-pane fade" id="mining">
				   		<img src="front/dist/img/service_datamining.jpg" />
				   	 	<p class="title">数据挖掘</p>
				   	 	<p class="content"></p>	
				   </div>
				   <div class="tab-pane fade" id="account">
				   		<img src="front/dist/img/service_cooperation.jpg" />
				   	 	<p class="title">账户合作</p>
				   	 	<p class="content"></p>	
				   </div>
				   <div class="tab-pane fade" id="user">
				   		<img src= "front/dist/img/service_usertraining.jpg"/>
				   	 	<p class="title">用户培训</p>
				   	 	<p class="content"></p>	
				   </div>
				   <div class="tab-pane fade" id="train">
				   		<img src="front/dist/img/service_onetoone.jpg" />
				   	 	<p class="title">一对一培训</p>
				   	 	<p class="content"></p>	
				   </div>
				</div>
			</div>
		</div>
	</div>
	<!-- <div class="clear">123</div> -->
  
		
	
	<jsp:include page="_footer-3.jsp" />
	<script type="text/javascript" src="front/dist/js/jquery.min.js"></script>
	<script type="text/javascript" src="front/dist/js/bootstrap.min.js"></script>
	<!-- 等高布局 -->
	<script type="text/javascript">
		$(document).ready(function(){
			var leftHig=parseInt($(".col-md-3").css("height"));
			var rightHig=parseInt($(".col-md-9").css("height"));
			if(rightHig<leftHig){
				leftHig=leftHig+"px";
				$(".col-md-9").css("height",leftHig);
			}
			$("li").click(function(){
				var leftHig=parseInt($(".col-md-3").css("height"));
				var rightHig=parseInt($(".col-md-9").css("height"));
				if(rightHig<leftHig){
					leftHig=leftHig+"px";
					$(".col-md-9").css("height",leftHig);
				}
			});
		});
	</script>
	<!-- 去掉标签的右边框 -->
	<script type="text/javascript">
	</script>
</body>
</html>