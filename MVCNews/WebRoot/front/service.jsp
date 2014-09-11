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
<link href="front/dist/css/bootstrap.min.css" rel="stylesheet">
<link href="front/dist/css/common.css" rel="stylesheet">
<link href="front/dist/css/service.css" rel="stylesheet" >
<style type="text/css">
	/*#main-service img{
		transition:transform 1s ease;
		-o-transition:-o-transform 1s ease;
		-moz-transition:-moz-transform 1s ease;
		-webkit-transition:-webkit-transform 1s ease;
	}
	#main-service .col-md-6:hover img{
		transform:rotate(30deg);
		-o-transform:rotate(30deg);
		-moz-transform:rotate(30deg);
		-webkit-transform:rotate(30deg);
		filter:progd:DXImageTransform.Microsoft.BasicImage(rotation=3);
		-ms-filter:progd:DXImageTransform.Microsoft.BasicImage(rotation=3);
	}*/
</style>
<title>服务列表--斯多克科技</title>

</head>
<!-- NAVBAR
================================================== -->
<body>
	<jsp:include page="_header.jsp?index=service" />
	<header class="jumbotron subhead-grassgreen" id="overview">
		<div class="container">
			<!--  <h1>服务列表</h1>
			<p class="lead">斯多克提供丰富、可靠、多样的服务！</p>  -->
			<ul class="list-inline">
				<li><a href="">大数据分析</a>/</li>
				<li><a href="">专业调查</a>/</li>
				<li><a href="">数据挖掘</a>/</li>
				<li><a href="">账户合作</a>/</li>
				<li><a href="">用户培训</a>/</li>
				<li><a href="">一对一指导</a>/</li>
			</ul>
		</div>
	</header>
	<!-- <header class="text-center">What can we do for you?
	</header> -->
	<div id="main-service">
	<!-- 第一行 -->
	 <div class="container" >
		<div class="row" >
			<div class="col-md-6" data-item="1">
				<div class="row">
					<img src="front/dist/img/service_bigdata.jpg"/>			
					<span class="title">大数据分析</span>
					<p class="lead">Cras justo odio, dapibus ac facilisis in, egestas eget quam. Donec id elit non mi porta gravida at eget metus. Nullam id dolor id nibh ultricies vehicula ut id elit.</p>					
				</div>
				<!-- <img src="front/dist/img/service_bigdata.jpg"/>
				<span class="title">大数据分析</span>
				<p class="lead">Cras justo odio, dapibus ac facilisis in, egestas eget quam. Donec id elit non mi porta gravida at eget metus. Nullam id dolor id nibh ultricies vehicula ut id elit.</p> -->
			</div>
			<div class="col-md-6" data-item="2">
				<div class="row">
					<img src="front/dist/img/service_analyse.jpg"/>
					<span>专业调查</span>
					<p class="lead">Cras justo odio, dapibus ac facilisis in, egestas eget quam. Donec id elit non mi porta gravida at eget metus. Nullam id dolor id nibh ultricies vehicula ut id elit.</p>
				</div>
			</div>
		</div>
	</div> 
	
	<!-- 第二行 -->
	 <div class="container">
		<div class="row" >
			<div class="col-md-6" data-item="3">
				<div class="row">
					<img src="front/dist/img/service_datamining.jpg"/>
					<span>数据挖掘</span>
					<p class="lead">Cras justo odio, dapibus ac facilisis in, egestas eget quam. Donec id elit non mi porta gravida at eget metus. Nullam id dolor id nibh ultricies vehicula ut id elit.</p>
				</div>
			</div>
			<div class="col-md-6" data-item="4">
				<div class="row">
					<img src="front/dist/img/service_cooperation.jpg"/>
					<span>账户合作</span>
					<p class="lead">Cras justo odio, dapibus ac facilisis in, egestas eget quam. Donec id elit non mi porta gravida at eget metus. Nullam id dolor id nibh ultricies vehicula ut id elit.</p>
				</div>
			</div>
		</div>
	</div> 
	
	<!-- 第三行 -->
	<div class="container">
		<div class="row" >
			<div class="col-md-6" data-item="5">
				<div class="row">
					<img src="front/dist/img/service_usertraining.jpg"/>
					<span>用户培训</span>
					<p class="lead">Cras justo odio, dapibus ac facilisis in, egestas eget quam. Donec id elit non mi porta gravida at eget metus. Nullam id dolor id nibh ultricies vehicula ut id elit.</p>
				</div>
			</div>
			<div class="col-md-6" data-item="6">
				<div class="row">
					<img src="front/dist/img/service_onetoone.jpg"/>
					<span>一对一指导</span>
					<p class="lead">Cras justo odio, dapibus ac facilisis in, egestas eget quam. Donec id elit non mi porta gravida at eget metus. Nullam id dolor id nibh ultricies vehicula ut id elit.</p>
				</div>
			</div>
		</div>
	</div> 
	</div>
  
		
	
	<jsp:include page="_footer.jsp" />
	<script type="text/javascript" src="front/dist/js/jquery.min.js"></script>
	<script type="text/javascript" src="front/dist/js/bootstrap.min.js"></script>
	<script type="text/javascript" language="javascript" src="front/dist/js/site.effect.js"></script>
</body>
</html>