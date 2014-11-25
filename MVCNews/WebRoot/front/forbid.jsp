<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="description" content="">
<meta name="author" content="">
<base href="<%= request.getScheme() + "://" + request.getServerName() + ":" + 
	request.getServerPort() + request.getContextPath() %>/" />
<link rel="icon" href="./dist/img/icon_stockii_square.png">
<title>斯多克，改变您投资股票的方式</title>
<link href="front/dist/css/bootstrap.css" rel="stylesheet">
<link href="front/dist/css/base.css" rel="stylesheet">
<link href="front/dist/css/common.css" rel="stylesheet">
<link href="front/dist/css/index.css" rel="stylesheet" type="text/css">
<!--[if lte IE 9]>
	<script src="front/dist/js/respond.js"></script>
	<script src="front/dist/js/html5.js"></script>
<![endif]-->

</head>
<body>
<jsp:include page="_header.jsp"></jsp:include>
<div class="container">
	<div class="row">
		<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12" style="min-height: 600px;"><h1 style="line-height: 600px;">对不起，您请求的资源不被允许。点击<a href="index">[ 这里 ]</a>返回主页</h1></div>
	</div>
</div>

<jsp:include page="_footer.jsp"></jsp:include>
</body>
</html>
