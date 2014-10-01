<%@ page contentType="text/html" pageEncoding="UTF-8"%>
<! DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<title>全屏滚动</title>
<link rel="stylesheet" href="./css/jquery.fullPage.css">
<link rel="stylesheet" href="./css/flexslide.css">
<style>
#menu { margin: 0; padding: 0; position: fixed; right:0; top: 0; list-style-type: none; z-index: 70;}
#menu li {  margin:  0; font-size: 14px;}
#menu a { float: right; padding: 10px 10px; background-color: #463E3E; color: #fff; text-decoration: none;width:60px;height:50px;line-height: 50px;border-bottom: 1px solid #fff;}
#menu .active a { color: #fff; background-color: #E78941;}

#bt-login{position: fixed;top:10px;list-style-type: none;z-index: 2;}
#bt-login li {float:left;  margin:  0; font-size: 14px;}
#bt-login a { float:left; padding: 0 10px; text-align:center;text-decoration: none;width:60px;height:50px;line-height: 50px;}
.section { text-align: center; font: "Microsoft Yahei"; color: #fff;}
</style>
<script src="./js/jquery-1.8.3.min.js"></script>
<script src="./js/jquery-ui-1.10.3.min.js"></script>
<script src="./js/jquery.fullPage.min.js"></script>
<script src="./js/jquery.flexslider-2.2.2.js"></script>
<script>
$(document).ready(function() {
	$.fn.fullpage({
		slidesColor: ['#EC6D6D', '#F4944E', '#56A8D2', '#72C7A5','#F7D091'],
		anchors: ['page1', 'page2', 'page3', 'page4','page5'],
		menu: '#menu',
		loopBottom: true,
		loopTop:true,
	});
});
</script>
</head>
<body>
<div id="part_menu">
<ul id="menu" style="height: 1000px;background: #463E3E;">
	<li data-menuanchor="page1" class="active"><a href="#page1">about</a></li>
	<li data-menuanchor="page2"><a href="#page2">advantage</a></li>
	<li data-menuanchor="page3"><a href="#page3">product</a></li>
	<li data-menuanchor="page4"><a href="#page4">service</a></li>
	<li data-menuanchor="page5"><a href="#page5">usage</a></li>
	
	<!-- 
	<li>
		<ul>
			<li style="padding: 0;margin: 0;border-right: 1px solid black;"><a href="login.jsp">登录</a></li>
			<li style="padding: 0;margin: 0;"><a href="signup.jsp" style="color:white;background: #333333;">注册</a></li>
		</ul>
	</li>	 -->
</ul>
<ul id="bt-login">
	<li style="border-right: 1px solid #fff;"><a style="background: #fff;color:#333;" href="login.jsp">登录</a></li>
	<li><a href="signup.jsp" style="background: #333;color:#fff;">注册</a></li>
</ul>
</div>
<div id="index-main">
<!-- stockii introduction part-1-->
<div class="section">
	<img alt="stockii introduction" src="./img/img-introduction-1.jpg">
</div><!-- ./ end stockii introduction part-1 -->

<!-- advantage part-2-->
<div class="section">
	<img alt="advantage" src="./img/img-advantage-1.jpg">
</div><!-- ./ end advantage part-2 -->

<!-- product part-3 -->
<div class="section">
	<a href="./product.jsp?idp=1" style="width:75px;height:25px;position: absolute;left:64%;top:33%;z-index:2;font: 40px;"></a>
	<a href="./product.jsp?idp=2" style="width:75px;height:25px;position: absolute;left:70%;top:47%;z-index:2;"></a>
	<a href="./product.jsp?idp=3" style="width:75px;height:25px;position: absolute;left:63%;top:62%;z-index:2;"></a>
	<a href="./product.jsp?idp=4" style="width:75px;height:25px;position: absolute;left:70%;top:77%;z-index:2;"></a>
	<img alt="product introduction" src="./img/img-product-1.jpg"><br>
	<img alt="product introduction 2" src="./img/img-product-2.jpg">
	<img alt="product introduction 3" src="./img/img-product-3.jpg">
	<img alt="product introduction 4" src="./img/img-product-4.jpg">
	<img alt="product introduction 5" src="./img/img-product-5.jpg">
</div><!-- ./ end product part-3 -->

<!-- service part-4 -->
<div class="section">
	<h1>斯多克服务项目</h1>

</div><!-- ./ end service part-4 -->

<!-- usage part-5 -->
<div class="section">
	<h1>斯多克产品使用流程</h1>
	<div class="usage">
	    <ul class="slides">
	        <li><a href="###"><img src="img/img-usage-1.jpg" alt="pic1"></a></li>
	        <li><a href="###"><img src="img/img-usage-2.jpg" alt="pic2"></a></li>
	        <li><a href="###"><img src="img/img-usage-3.jpg" alt="pic3"></a></li>
	        <li><a href="###"><img src="img/img-usage-4.jpg" alt="pic4"></a></li>
	        <li><a href="###"><img src="img/img-usage-5.jpg" alt="pic5"></a></li>
	    </ul>
	</div>
</div><!-- ./ end usage part-5 -->

</div>
<!-- ./ end index-main -->
<script>
$(function(){
	$('.usage').flexslider({
		animation: 'slide',
		pauseOnHover: true,
		prevText: '上一个',
		nextText: '下一个'
	});
});
</script>
</body>
</html>