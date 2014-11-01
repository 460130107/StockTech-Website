<%@ page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
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
</head>
<body>
<jsp:include page="_header.jsp?index=project" />
<div id="project">
	<div class="product-topphoto text-center" style="height:200px;background: url('front/dist/img/project-top.jpg');-webkit-background-size:100% 100%;">
		<h2 style="line-height: 200px;color: #fff;margin: 0;">斯多克，海量用户的投资选择</h2>
	</div>
	<br>
	<div class="container">
		<div class="btn-group">
			<a class="btn btn-default" href="front/project.jsp#personal">个人用户项目</a>
			<a class="btn btn-default" href="front/project.jsp#company">公司/集团用户项目</a>
		</div>
	</div>
	<br>
	<div class="container text-center">
		<div class="panle" data-panle="personal" id="personal">
			<h3 style="border-bottom: 3px rgb(241, 241, 241) solid;margin: 0;padding:0;">
				<img alt="product-crowd" src="front/dist/img/project-personal.png" style="margin: 0;padding:0 30px 0;font-size: 24px;position: relative;top:25px;">
			</h3><br><br>
		</div>
		<div class="panle" data-panle="company" id="company">
			<h3 style="border-bottom: 3px rgb(241, 241, 241) solid;margin: 0;padding:0;">
				<img alt="product-crowd" src="front/dist/img/project-company.png" style="margin: 0;padding:0 30px 0;font-size: 24px;position: relative;top:25px;">
			</h3><br><br>
		</div>		
	</div>
</div>
<br>
<jsp:include page="_footer.jsp" />
<script src="front/dist/js/jquery.min.js" type="text/javascript"></script>
<script type="text/javascript" language="javascript" src="front/dist/js/bootstrap.min.js"></script>
</body>
</html>