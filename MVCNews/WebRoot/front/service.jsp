<%@ page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="description" content="">
<meta name="author" content="">
<link rel="icon" href="../../favicon.ico">

<title>服务列表--斯多克科技</title>

<!-- Bootstrap core CSS -->
<link href="dist/css/bootstrap.min.css" rel="stylesheet">

<style type="text/css">
*{
	font-family: "微软雅黑" !important;
	font-size: 16px;
}
</style>
</head>
<!-- NAVBAR
================================================== -->
  <body>
      <!--div class="navbar navbar-inverse navbar-fixed-top" role="navigation">
      <div class="container">
        <div class="navbar-header">
          <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
            <span class="sr-only">Toggle navigation</span>
            <span class="icon-bar">test</span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
          </button>
        </div>
        <div class="collapse navbar-collapse">
          <ul class="nav navbar-nav">
            <li><a href="index.html">首页</a></li>
			<li><a href="product.html">产品</a></li>
			<li class="active"><a href="service.html">服务</a></li>
			<li><a href="project.html">项目</a></li>
			<li><a href="account.html">帐户</a></li>
			<li><a href="corpration.html">合作</a></li>
			<li><a href="vip.html">VIP</a></li>
			<li><a href="recruit.html" target="_blank">加入我们</a></li>
		  </ul>
        </div>
      </div>
    </div-->
    <jsp:include page="_header.jsp?index=service" />
	<header class="jumbotron " id="overview">
		<div class="container">	
		    <h1>服务列表 <small>斯多克提供的服务</small></h1>
		</div>
	</header>
	<div class="container">
		<div class="row">
		  <div class="col-sm-6 col-md-4">
			<div class="thumbnail">
			  <img src="dist/img/bigdata.png" width="200" alt="...">
			  <div class="caption">
				<h3>大数据分析</h3>
				<p>Cras justo odio, dapibus ac facilisis in, egestas eget quam. Donec id elit non mi porta gravida at eget metus. Nullam id dolor id nibh ultricies vehicula ut id elit.</p>
				<p><a href="#" class="btn btn-primary" role="button">Button</a> <a href="#" class="btn btn-default" role="button">Button</a></p>
			  </div>
			</div>
		  </div>
		  <div class="col-sm-6 col-md-4">
			<div class="thumbnail">
			  <img src="dist/img/investigate.png" width="200" alt="...">
			  <div class="caption">
				<h3>专业调查</h3>
				<p>Cras justo odio, dapibus ac facilisis in, egestas eget quam. Donec id elit non mi porta gravida at eget metus. Nullam id dolor id nibh ultricies vehicula ut id elit.</p>
				<p><a href="#" class="btn btn-primary" role="button">Button</a> <a href="#" class="btn btn-default" role="button">Button</a></p>
			  </div>
			</div>
		  </div>
		  <div class="col-sm-6 col-md-4">
			<div class="thumbnail">
			  <img src="dist/img/datamining.png" width="200" alt="...">
			  <div class="caption">
				<h3>数据挖掘</h3>
				<p>Cras justo odio, dapibus ac facilisis in, egestas eget quam. Donec id elit non mi porta gravida at eget metus. Nullam id dolor id nibh ultricies vehicula ut id elit.</p>
				<p><a href="#" class="btn btn-primary" role="button">Button</a> <a href="#" class="btn btn-default" role="button">Button</a></p>
			  </div>
			</div>
		  </div>
		</div>
		<div class="row">
		  <div class="col-sm-6 col-md-4">
			<div class="thumbnail">
			  <img src="dist/img/account.png" width="200" alt="...">
			  <div class="caption">
				<h3>账户合作</h3>
				<p>Cras justo odio, dapibus ac facilisis in, egestas eget quam. Donec id elit non mi porta gravida at eget metus. Nullam id dolor id nibh ultricies vehicula ut id elit.</p>
				<p><a href="#" class="btn btn-primary" role="button">Button</a> <a href="#" class="btn btn-default" role="button">Button</a></p>
			  </div>
			</div>
		  </div>
		  <div class="col-sm-6 col-md-4">
			<div class="thumbnail">
			  <img src="dist/img/training.png" width="200" alt="...">
			  <div class="caption">
				<h3>用户培训</h3>
				<p>Cras justo odio, dapibus ac facilisis in, egestas eget quam. Donec id elit non mi porta gravida at eget metus. Nullam id dolor id nibh ultricies vehicula ut id elit.</p>
				<p><a href="#" class="btn btn-primary" role="button">Button</a> <a href="#" class="btn btn-default" role="button">Button</a></p>
			  </div>
			</div>
		  </div>
		  <div class="col-sm-6 col-md-4">
			<div class="thumbnail">
			  <img src="dist/img/11training.png" width="200" alt="...">
			  <div class="caption">
				<h3>一对一培训</h3>
				<p>Cras justo odio, dapibus ac facilisis in, egestas eget quam. Donec id elit non mi porta gravida at eget metus. Nullam id dolor id nibh ultricies vehicula ut id elit.</p>
				<p><a href="#" class="btn btn-primary" role="button">Button</a> <a href="#" class="btn btn-default" role="button">Button</a></p>
			  </div>
			</div>
		  </div>
		</div>
	</div>
	
	<jsp:include page="_footer.jsp" />

</body>
</html>