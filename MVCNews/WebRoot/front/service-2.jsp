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
<link rel="stylesheet/less" type="text/css" href="./front/dist/css/service.less.css">
<script src="front/dist/js/less-1.7.4.min.js" type="text/javascript"></script>
<style type="text/css">
	#main-service-2 img{
		transition:transform 1s ease;
		-o-transition:-o-transform 1s ease;
		-moz-transition:-moz-transform 1s ease;
		-webkit-transition:-webkit-transform 1s ease;
	}
	#main-service-2 .col-md-6:hover img{
		transform:rotate(30deg);
		-o-transform:rotate(30deg);
		-moz-transform:rotate(30deg);
		-webkit-transform:rotate(30deg);
		filter:progd:DXImageTransform.Microsoft.BasicImage(rotation=3);
		-ms-filter:progd:DXImageTransform.Microsoft.BasicImage(rotation=3);
	}
</style>
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
	<div id="main-service-2">
	<!-- 第一行 -->
	 <div class="container" >
		<div class="row" >
			<div class="col-md-6" data-item="1">
				<img src="front/dist/img/service_bigdata.jpg"/>
				<span class="title">大数据分析</span>
				<p class="lead">Cras justo odio, dapibus ac facilisis in, egestas eget quam. Donec id elit non mi porta gravida at eget metus. Nullam id dolor id nibh ultricies vehicula ut id elit.</p>
			</div>
			<div class="col-md-6" data-item="2">
				<img src="front/dist/img/service_analyse.jpg"/>
				<span>专业调查</span>
				<p class="lead">Cras justo odio, dapibus ac facilisis in, egestas eget quam. Donec id elit non mi porta gravida at eget metus. Nullam id dolor id nibh ultricies vehicula ut id elit.</p>
			</div>
		</div>
	</div> 
	
	<!-- 第二行 -->
	 <div class="container">
		<div class="row" >
			<div class="col-md-6" data-item="3">
				<img src="front/dist/img/service_datamining.jpg"/>
				<span>数据挖掘</span>
				<p class="lead">Cras justo odio, dapibus ac facilisis in, egestas eget quam. Donec id elit non mi porta gravida at eget metus. Nullam id dolor id nibh ultricies vehicula ut id elit.</p>
			</div>
			<div class="col-md-6" data-item="4">
				<img src="front/dist/img/service_cooperation.jpg"/>
				<span>账户合作</span>
				<p class="lead">Cras justo odio, dapibus ac facilisis in, egestas eget quam. Donec id elit non mi porta gravida at eget metus. Nullam id dolor id nibh ultricies vehicula ut id elit.</p>
			</div>
		</div>
	</div> 
	
	<!-- 第三行 -->
	<div class="container">
		<div class="row" >
			<div class="col-md-6" data-item="5">
				<img src="front/dist/img/service_usertraining.jpg"/>
				<span>用户培训</span>
				<p class="lead">Cras justo odio, dapibus ac facilisis in, egestas eget quam. Donec id elit non mi porta gravida at eget metus. Nullam id dolor id nibh ultricies vehicula ut id elit.</p>
			</div>
			<div class="col-md-6" data-item="6">
				<img src="front/dist/img/service_onetoone.jpg"/>
				<span>一对一指导</span>
				<p class="lead">Cras justo odio, dapibus ac facilisis in, egestas eget quam. Donec id elit non mi porta gravida at eget metus. Nullam id dolor id nibh ultricies vehicula ut id elit.</p>
			</div>
		</div>
	</div> 
	</div>
  
		
	
	<jsp:include page="_footer-3.jsp" />
	<script type="text/javascript" src="front/dist/js/jquery.min.js"></script>
	<script type="text/javascript" src="front/dist/js/bootstrap.min.js"></script>
	<!-- 根据data-item给不同的col-md-6添加边框 -->
	<script type="text/javascript">
		$(document).ready(function(){
			var items=$(".col-md-6");
			//console.log(typeof items);
			items.each(function(){
				$(this).css("border","1px white");
			});
			items.each(function(){				
				//console.log($(this).attr("data-item"));
				if($(this).attr("data-item")%4==1 || $(this).attr("data-item")%4==0){
					$(this).css("border","1px solid rgba(201,201,201,1)");
					$(this).css("border-radius","20px");$(this).css("-o-border-radius","20px");
					$(this).css("-moz-border-radius","20px");$(this).css("-webkit-border-radius","20px");
				}else{
					$(this).hover(
						function(){
							items.each(function(){
								if($(this).attr("data-item")%4==1 || $(this).attr("data-item")%4==0){
									$(this).css("border","1px white");
								}else{
									$(this).css("border","1px solid rgba(201,201,201,1)");
									$(this).css("border-radius","20px");$(this).css("-o-border-radius","20px");
									$(this).css("-moz-border-radius","20px");$(this).css("-webkit-border-radius","20px");
								}
							});
							/*$(this).prev().css("border","0");*/
						},
						function(){
							items.each(function(){
								if($(this).attr("data-item")%4==1 || $(this).attr("data-item")%4==0){
									$(this).css("border","1px solid rgba(201,201,201,1)");
									$(this).css("border-radius","20px");$(this).css("-o-border-radius","20px");
									$(this).css("-moz-border-radius","20px");$(this).css("-webkit-border-radius","20px");
								}else{
									$(this).css("border","1px white");
								}
							});
						}
					);
				}				
			});
		});
	</script>
</body>
</html>