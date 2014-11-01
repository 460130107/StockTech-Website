<%@ page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<! DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="description" content="">
<meta name="author" content="">
<base href="<%= request.getScheme() + "://" + request.getServerName() + ":" + 
	request.getServerPort() + request.getContextPath() %>/" />
<link rel="icon" href="./dist/img/icon_stockii_square.png">
<title>斯多克，科技改变投资</title>
<link href="front/dist/css/bootstrap.css" rel="stylesheet">
<link href="front/dist/css/common.css" rel="stylesheet">
<link href="front/dist/css/index.css" rel="stylesheet" type="text/css">
<!--[if lte IE 9]>
	<script src="front/dist/js/respond.js"></script>
	<script src="front/dist/js/html5.js"></script>
<![endif]-->

</head>
<!-- NAVBAR
================================================== -->
<body>

<jsp:include page="_header.jsp?index=index" />
<div class="container-fluid">
	<div class="row-fluid poster-main">
		<div class="col-lg-2 col-lg-offset-5 action-area">
			<a class="link-button" href="front/product.jsp">
			</a>
		</div>
		<img class="main-bg" alt="main-bg" src="front/dist/img/index_main_bg.jpg">
	</div>
</div>
<div class="container-fluid">
<!-- what is stockii -->
<div id="what_is_stockii" class="text-center">	
	<!-- what can stockii provide -->
	<div class="container">		
		<span id="page_title">斯多克能提供什么　</span><img alt="question" src="front/dist/img/index-intro-question.png" style="width:50px;height: auto;position:relative;top:-8px;">
		<hr class="top"><hr class="bottom"><br>
		<div class="row">
			<div class="col-md-6"><img alt="" src="front/dist/img/index-intro-keyword.png" class="intro"> </div>
			<div class="col-md-6 text-left">
				<ul class="list-unstyled">
					<li>智能化投资
						<p>利用大数据、科学云计算、移动分布式计算等新兴技术进行投资智能化</p>
					</li>
					<li>一对一式服务
						<p>斯多克为每个客户量身打造不同的投资方案，提供本息安全、回报丰厚、操作便捷的互联网金融投资产品。</p>
					</li>
				</ul>				
			</div>
		</div>	
		<img alt="process-arrow" src="front/dist/img/process/process_right_bottom.png"　class="process-arrow">					
	</div>	<!-- ./ end provide -->
	<!-- what is smart investment -->
	<div class="container">		
		<span id="page_title">什么是智能投资　</span><img alt="question" src="front/dist/img/index-intro-question.png" style="width:50px;height: auto;position:relative;top:-8px;">
		<hr class="top"><hr class="bottom"><br>
		<div class="row">
			<div class="col-md-6"><img alt="" src="front/dist/img/index-intro-keyword.png" class="intro"> </div>
			<div class="col-md-6 text-left">
				<ul class="list-unstyled">
					<li>大数据
						<p>大数据(big data)，或称巨量资料，指的是所涉及的资料量规模巨大到无法透过目前主流软件工具，在合理时间内达到撷取、管理、处理、并整理成为帮助企业经营决策更积极目的的资讯</p>
					</li>
					<li>智能分析
						<p>根据实时动态的投资报告分析，通过不同参数指标预设不同的预播规则，一旦投资在场景中触发了预定义参数指标的边界，斯多克产品会向您发出投资提示，用户可以通过实时提示采取相关措施</p>
					</li>
					<!-- 
					<li>科学云计算
						<p></p>
					</li>
					<li>移动分布式计算
						<p></p>
					</li> -->
				</ul>
			</div>
		</div>
		<img alt="process-arrow" src="front/dist/img/process/process_left_bottom.png"　class="process-arrow">				
	</div>	<!-- ./ end smart investment -->
	<!--  -->
	<div class="container">		
		<span id="page_title">为什么选择斯多克　</span><img alt="question" src="front/dist/img/index-intro-question.png" style="width:50px;height: auto;position:relative;top:-8px;">
		<hr class="top"><hr class="bottom"><br>
		<div class="row">
			<div class="col-md-6"><img alt="" src="front/dist/img/index-intro-keyword.png" class="intro"> </div>
			<div class="col-md-6 text-left">
				<ul class="list-unstyled">
					<li>好收益</li>
					<li>低门栏</li>
					<li>更方便</li>
				</ul>
			</div>
		</div>				
	</div>	
	<img class="split" alt="top" src="front/dist/img/introduction_header-2.png">
</div>
<!-- ./end what is stockii -->

<!-- product platform -->
<div id="index-product" class="text-center">
<h1>斯多克产品</h1>
<div class="container text-center" >	
	<h3><span>全平台支持</span></h3>
	<br>
	<ul class="list-inline">
		<li style="margin:0 60px;"><a href="front/product.jsp#application"><img alt="" src="front/dist/img/mobile_icon_pc.png" style="margin-bottom: 30px;"></a><br><p>桌面产品</p></li>
		<li style="margin:0 60px;"><a href="front/product.jsp#application"><img alt="" src="front/dist/img/mobile_icon_iphone.png" style="margin-bottom: 30px;"></a><br><p>Iphone</p></li>
		<li style="margin:0 60px;"><a href="front/product.jsp#application"><img alt="" src="front/dist/img/mobile_icon_android.png" style="margin-bottom: 30px;"></a><br><p>Android</p></li>
	</ul>
</div><br>
<a href="front/product.jsp" class="btn btn-success">更多了解</a>
<div class="container text-center" >
	<h3><span>多角度定位</span></h3>
	<br>
	<ul class="list-inline">
		<li style="margin:0 60px;"><a href="front/product.jsp#crowd"><img alt="" src="front/dist/img/mobile_icon_pc.png" style="margin-bottom: 30px;"></a><br><p>投资人群</p></li>
		<li style="margin:0 60px;"><a href="front/product.jsp#amount"><img alt="" src="front/dist/img/mobile_icon_iphone.png" style="margin-bottom: 30px;"></a><br><p>投资额度</p></li>
		<li style="margin:0 60px;"><a href="front/product.jsp#period"><img alt="" src="front/dist/img/mobile_icon_android.png" style="margin-bottom: 30px;"></a><br><p>投资周期</p></li>
	</ul>
</div><br>
<a href="front/product.jsp" class="btn btn-success">更多了解</a><br>
<img class="split" alt="top" src="front/dist/img/introduction_header-2.png">
</div>  

<!-- project introduction -->
<div id="index-project" class="text-center" style="">
<h1>斯多克项目</h1>
<div class="container">
	<h3><span>多人群适用</span></h3>
	<br><br>
	<ul class="list-inline">
		<li style="margin:0 60px;"><a href="front/project.jsp"><img alt="" src="front/dist/img/mobile_icon_pc.png" style="margin-bottom: 30px;"></a><br><p>个人级用户</p></li>
		<li style="margin:0 60px;"><a href="front/project.jsp"><img alt="" src="front/dist/img/mobile_icon_iphone.png" style="margin-bottom: 30px;"></a><br><p>企业级用户</p></li>
	</ul>
</div>
<a href="front/project.jsp" class="btn btn-warning">更多了解</a>
</div>
<!-- ./ end service introduction -->
</div>
<jsp:include page="_footer.jsp" />

<!-- dialog before jump -->


<script src="front/dist/js/jquery.min.js" type="text/javascript"></script>
<script src="front/dist/js/jquery-ui.min.js" type="text/javascript"></script>
<script type="text/javascript" language="javascript" src="front/dist/js/bootstrap.min.js"></script>
<script type="text/javascript" language="javascript" src="front/dist/js/site.effect.js"></script>
<!-- marketing展示效果 -->
<script type="text/javascript" language="javascript">   
    $( ".ser-blind" ).hover(
            function() {
            	var options_down={direction:"down"};
            	var options_up={direction:"left"};
            	var num=this.getAttribute("data-num");
            	switch(num){
            	   case "1":
            		   $(".ser-blind-top[data-num='1']").toggle("blind");
                       $(".ser-blind-bottom[data-num='1']").toggle( "blind",options_down );
            		   break;
            	   case "2":
            		   $(".ser-blind-top[data-num='2']").toggle("blind");
                       $(".ser-blind-bottom[data-num='2']").toggle( "blind",options_down );
            		   break;
            	   case "3":
            		   $(".ser-blind-top[data-num='3']").toggle("blind");
                       $(".ser-blind-bottom[data-num='3']").toggle( "blind",options_down );
            		   break;
            	}
            }
    );
    
</script>
</body>
</html>
