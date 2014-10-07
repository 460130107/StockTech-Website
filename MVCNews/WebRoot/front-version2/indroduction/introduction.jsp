<%@ page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html >
<html>
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="description" content="">
<meta name="author" content="">
<base href="<%= request.getScheme() + "://" + request.getServerName() + ":" + 
	request.getServerPort() + request.getContextPath() %>/" />
<link rel="icon" href="front/dist/img/icon_stockii_square.png">
<link href="front/dist/css/bootstrap.min.css" rel="stylesheet">
<link href="front/dist/css/common.css" rel="stylesheet">
<title>公司简介--斯多克科技</title>
<style type="text/css">
hr.top{
	padding: 0;margin: 0;
	border: 1px solid #2D8CB3;
}
hr.bottom{
	padding: 0;margin: 0;
	border: 1px solid #54B2DA;
}
nav,nav li,nav a{
	color:#ddd;
}
#top_title{
	width:100%;
	height:350px;
	background-image: url("front/dist/img/introduction_header-1.png");
	padding:60px 20px 0;
}
#top_title img{
	position: relative;
	height:150px;
	
}

#page_title{
	font-size: 40px;
	color:white;
}

#introduction_main{
	padding:60px 0 30px;
	background: url("front/dist/img/introduction_bg-1.png") repeat;
}

#introduction_main .intro_title{
	font-size: 24px;
	font-weight: bold;
	color:#333;
}

div.text-center{
	padding: 60px;
}
</style>
</head>
<jsp:include page="introduction_header.jsp"></jsp:include>
<hr class="top"><hr class="bottom">
<div id="top_title" class="text-center">
	<div class="container">
		<span id="page_title">斯多克，智能投资的领跑者</span>
		<hr class="top"><hr class="bottom"><br>
		<span>XXXXXXXXXXXXXXXXXXXXXXXXXXXX</span><br><br>
		<a class="btn btn-success btn-lg" href="front/account.jsp">Free--立即注册</a>
	</div>
	<img alt="top" src="front/dist/img/introduction_header-2.png">
</div>

<div id="introduction_main">
	<div id="what_is_stockii">
		<div class="container">			
			<img alt="what-is-stockii" src="front/dist/img/index_intro1.jpg" style="float: left;">
			<div class="text-center">
				<p class="intro_title">斯多克是什么？？</p>
			</div>			
		</div>
	</div>
	<div id="smart_investment">
		<div class="container">			
			<img alt="sart-investment" src="front/dist/img/index_intro2.jpg" style="float: right;">
			<div class="text-center">
				<p class="intro_title">什么是智能投资？？</p>
			</div>			
		</div>
	</div>
	<div id="reliable">
		<div class="container">			
			<img alt="reliable" src="front/dist/img/index_intro3.jpg" style="float: left;">
			<div class="text-center">				
				<p class="intro_title">智能投资的可靠度</p>
			</div>			
		</div>
	</div>
</div>
<jsp:include page="../_footer.jsp"></jsp:include>
</body>
</html>