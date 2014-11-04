<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
   <title>帮助中心</title>
   <base href="<%= request.getScheme() + "://" + request.getServerName() + ":" + 
	request.getServerPort() + request.getContextPath() %>/" />
   <link href="front/dist/css/bootstrap.css" rel="stylesheet">
   <link href="front/dist/css/common.css" rel="stylesheet">
<style type="text/css">
.help-index-title{border-bottom: 1px dashed #ddd;}
.help-block{background-color: rgb(248,248,248);padding-bottom: 60px;}
</style>
</head>
<body>
<jsp:include page="../_header.jsp"></jsp:include>
<!-- body -->
<div class="container ">
	<ul id="breadcrumb">
	  <li><a href="#"><span class="icon">主页</span></a></li>
	  <li><a href="front/help/index.jsp"><span class="icon"> </span>帮助中心</a></li>
	</ul>
	<div class="row bgc-white">
		<div class="col-md-6 ">
			<div class="help-block bdradius6">
				<!-- <span class="icon-help icon-help-index1"></span> -->
				<h4 class="help-index-title pd20"><a href="front/help/secondary.jsp?id=js-purchase">产品购买</a></h4>
				<ul class="list-inline">
					<li><a class="pd20 f16" href="front/guide.jsp">新手必读</a></li>
					<li><a class="pd20 f16" href="front/product.jsp">产品介绍</a></li>
					<li><a class="pd20 f16" href="">投资效果</a></li>
				</ul>
				<ul class="list-inline">
					<li><a class="pd20 f16" href="">新手必读</a></li>
					<li><a class="pd20 f16" href="">新手必读</a></li>
					<li><a class="pd20 f16" href="">新手必读</a></li>
				</ul>
			</div>
		</div>
		<div class="col-md-6">
			<div class="help-block bdradius6">
				<h4 class="help-index-title pd20"><a href="front/help/secondary.jsp?id=js-corporation">项目合作</a></h4>
			</div>
		</div>		
	</div>
	
	<div class="row bgc-white">		
		<div class="col-md-6">
			<div class="help-block bdradius6">
				<h4 class="help-index-title pd20"><a href="front/help/secondary.jsp?id=js-account">账户管理</a></h4>
				<ul class="list-inline">
					<li><a class="pd20 f16" href="">登陆注册</a></li>
					<li><a class="pd20 f16" href="">账户密码</a></li>
					<li><a class="pd20 f16" href="">充值</a></li>
				</ul>
				<ul class="list-inline">
					<li><a class="pd20 f16" href="">提现</a></li>
					<li><a class="pd20 f16" href="">安全认证</a></li>
					<li><a class="pd20 f16" href="">消息中心</a></li>
				</ul>
			</div>
		</div>
		
		<div class="col-md-6">
			<div class="help-block bdradius6">
				<h4 class="help-index-title pd20"><a href="front/help/secondary.jsp?id=js-policy">协议条款</a></h4>
				<ul class="list-inline">
					<li><a class="pd20 f16" href="">声明计划</a></li>
					<li><a class="pd20 f16" href="">法律与政策保障</a></li>
					<li><a class="pd20 f16" href="">审核与风控</a></li>
				</ul>
				<ul class="list-inline">
					<li><a class="pd20 f16" href="">账户及隐私安全</a></li>
					<li><a class="pd20 f16" href="">自我保护</a></li>
					<li><a class="pd20 f16" href="">网站相关协议</a></li>
				</ul>
			</div>
		</div>
	</div>
	
	<!-- 股票 -->
	<div class="row mgt20 bgc-white">
		<h3 class="f24 pdl20"><a href="front/help/secondary.jsp?id=js-stock">名词解释</a></h3>
		<hr>
		<!-- A-G -->
		<div class="col-md-12 mgb10" style="border-bottom: 1px dashed #ddd;">
			<span class="tag-blue bdradius4 f16 mgb10">A-G</span>
			<ul class="list-inline">
				<li><a class="pd20 f16" href="">成交数量</a></li>
				<li><a class="pd20 f16" href="">日最高价</a></li>
				<li><a class="pd20 f16" href="">日最低价</a></li>
				<li><a class="pd20 f16" href="">空头</a></li>
				<li><a class="pd20 f16" href="">空头</a></li>
				<li><a class="pd20 f16" href="">价位</a></li>
			</ul>
		</div>
		<!-- H-N -->
		<div class="col-md-12 mgb10" style="border-bottom: 1px dashed #ddd;">
			<span class="tag-blue bdradius4 f16 mgb10">H-N</span>
			<ul class="list-inline">
				<li><a class="pd20 f16" href="">成交数量</a></li>
				<li><a class="pd20 f16" href="">日最高价</a></li>
				<li><a class="pd20 f16" href="">日最低价</a></li>
				<li><a class="pd20 f16" href="">空头</a></li>
				<li><a class="pd20 f16" href="">空头</a></li>
				<li><a class="pd20 f16" href="">价位</a></li>
			</ul>
		</div>
		<!-- O-T -->
		<div class="col-md-12 mgb10" style="border-bottom: 1px dashed #ddd;">
			<span class="tag-blue bdradius4 f16 mgb10">O-T</span>
			<ul class="list-inline">
				<li><a class="pd20 f16" href="">成交数量</a></li>
				<li><a class="pd20 f16" href="">日最高价</a></li>
				<li><a class="pd20 f16" href="">日最低价</a></li>
				<li><a class="pd20 f16" href="">空头</a></li>
				<li><a class="pd20 f16" href="">空头</a></li>
				<li><a class="pd20 f16" href="">价位</a></li>
			</ul>
		</div>
		<!-- U-Z -->
		<div class="col-md-12 mgb10" style="border-bottom: 1px dashed #ddd;">
			<span class="tag-blue bdradius4 f16 mgb10">U-Z</span>
			<ul class="list-inline">
				<li><a class="pd20 f16" href="">成交数量</a></li>
				<li><a class="pd20 f16" href="">日最高价</a></li>
				<li><a class="pd20 f16" href="">日最低价</a></li>
				<li><a class="pd20 f16" href="">空头</a></li>
				<li><a class="pd20 f16" href="">空头</a></li>
				<li><a class="pd20 f16" href="">价位</a></li>
			</ul>
		</div>
	</div>
</div>


<jsp:include page="../_footer.jsp"></jsp:include>

<script type="text/javascript" language="javascript" src="front/dist/js/jquery.min.js" ></script>
<script type="text/javascript" language="javascript" src="front/dist/js/bootstrap.min.js"></script>
<!-- <script type="text/javascript" language="javascript" src="front/dist/js/site.effect.js"></script> -->
</body>
</html>	
