<%@ page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="description" content="">
<meta name="author" content="">
<base href="<%=basePath%>" />
<link rel="icon" href="../../favicon.ico">
<link href="front/dist/css/bootstrap.css" rel="stylesheet">
<link href="front/dist/css/common.css" rel="stylesheet">
<link href="front/dist/css/product.css" rel="stylesheet">
</head>
<body>
<jsp:include page="_header.jsp?index=product" />

<div id="product">
	<div class="topBackground">
		<div class="container">
			<p class="text3">开启智能投资时代</p>
			<p class="text2">智能&nbsp;.&nbsp;丰厚&nbsp;.&nbsp;利润</p>			
			<button class="btn-view" onclick="javascript:window.location.href='<%=basePath %>front/productDetail.jsp'">查看此方案&nbsp;&nbsp;<img alt="btn-view" src="front/dist/img/icon-arrow-5.png"></button>
			<button class="btn-other" onclick="javascript:window.location.href='<%=basePath %>front/productDetail.jsp'">其他方案</button>
		</div>
		
	</div>
	<div class="layer layer-pro">
	<div class="container profile text-center">
		<p class="title">产品介绍</p>
		<p class="additional">产品介绍，包含产品下载链接等接口</p>
		<!-- 产品一 -->
		<div class="col-xs-4 col-sm-4 col-md-4 col-lg-4  pro-module active" data-target="js-product1">
			<div class="content">
				<p class="bar">
					<span>①</span><br/>
					<span>新型智能决策方式</span>
				</p>	
				<div class="mainBd">
					<p class="phrase">新型智能决策方式</p>
					<p class="phrase">规避经验决策风险</p>
					<p class="phrase">强化理性决策回报</p>
					<p class="phrase">强化理性决策回报</p>
				</div>	
				<button class="btn-view" onclick="jump('item3');">点击查看</button>	
			</div>
		</div>
		
		<!-- 产品二 -->
		<div class="col-xs-4 col-sm-4 col-md-4 col-lg-4  pro-module" data-target="js-product2">
			<div class="content">
				<p class="bar">
					<span>②</span><br/>
					<span>新型智能决策方式</span>
				</p>	
				<div class="mainBd">
					<p class="phrase">新型智能决策方式</p>
					<p class="phrase">规避经验决策风险</p>
					<p class="phrase">强化理性决策回报</p>
					<p class="phrase">强化理性决策回报</p>
				</div>	
				<button class="btn-view" onclick="jump('item3');">点击查看</button>		
			</div>
		</div>
		<!-- 产品三 -->
		<div class="col-xs-4 col-sm-4 col-md-4 col-lg-4  pro-module" data-target="js-product3">
			<div class="content">
				<p class="bar">
					<span>③</span><br/>
					<span>新型智能决策方式</span>
				</p>	
				<div class="mainBd">
					<p class="phrase">新型智能决策方式</p>
					<p class="phrase">规避经验决策风险</p>
					<p class="phrase">强化理性决策回报</p>
					<p class="phrase">强化理性决策回报</p>
				</div>	
				<button class="btn-view" onclick="jump('item3');">点击查看</button>		
			</div>
		</div>
	</div>
	</div>
	
	<!-- 产品特点 -->
	<div class="layer layer-trait">
		<!-- 对应产品一 -->	
		<div class="container tab text-center js-tab" id="js-product1">		
			<div class="switch col-xs-4 col-sm-4 col-md-4 col-lg-4 ">
				<p class="title">
					<img alt="特点一图标" src="front/dist/img/product-icon-trait1.png">
					<span class="title">特点一：智能决策方式</span>
				</p>
				<p class="content">
					111新型智能决策方式，规避经验决策风险，强化理性决策回报，强化理性决策回报,新型智能决策方式，规避经验决策风险，强化理性决策回报，强化理性决策回报,新型智能决策方式，规避经验决策风险，强化理性决策回报，强化理性决策回报
				</p>
				<p class="more"><a href="http://www.baidu.com">Read More&nbsp;&nbsp;<img alt="特点一图标" src="front/dist/img/product-icon-more.png"></a></p>
			</div>
			<div class="switch col-xs-4 col-sm-4 col-md-4 col-lg-4 ">
				<p class="title">
					<img alt="特点一图标" src="front/dist/img/product-icon-trait2.png">
					<span class="title">特点二：智能决策方式</span>
				</p>
				<p class="content">
					111新型智能决策方式，规避经验决策风险，强化理性决策回报，强化理性决策回报,新型智能决策方式，规避经验决策风险，强化理性决策回报，强化理性决策回报,新型智能决策方式，规避经验决策风险，强化理性决策回报，强化理性决策回报
				</p>
				<p class="more"><a href="http://www.baidu.com">Read More&nbsp;&nbsp;<img alt="特点一图标" src="front/dist/img/product-icon-more.png"></a></p>
			</div>
			<div class="switch col-xs-4 col-sm-4 col-md-4 col-lg-4 ">
				<p class="title">
					<img alt="特点一图标" src="front/dist/img/product-icon-trait3.png">
					<span class="title">特点三：智能决策方式</span>
				</p>
				<p class="content">
					111新型智能决策方式，规避经验决策风险，强化理性决策回报，强化理性决策回报,新型智能决策方式，规避经验决策风险，强化理性决策回报，强化理性决策回报,新型智能决策方式，规避经验决策风险，强化理性决策回报，强化理性决策回报
				</p>
				<p class="more"><a href="http://www.baidu.com">Read More&nbsp;&nbsp;<img alt="特点一图标" src="front/dist/img/product-icon-more.png"></a></p>
			</div>
		</div><!-- end 对应产品一 -->	
		
		<!-- 对应产品二 -->	
		<div class="container tab text-center js-tab" id="js-product2">		
			<div class="switch col-sm-4 col-md-4 col-lg-4 ">
				<p class="title">
					<img alt="特点一图标" src="front/dist/img/product-icon-trait1.png">
					<span class="title">特点一：智能决策方式</span>
				</p>
				<p class="content">
					222新型智能决策方式，规避经验决策风险，强化理性决策回报，强化理性决策回报,新型智能决策方式，规避经验决策风险，强化理性决策回报，强化理性决策回报,新型智能决策方式，规避经验决策风险，强化理性决策回报，强化理性决策回报
				</p>
				<p class="more"><a href="http://www.baidu.com">Read More&nbsp;&nbsp;<img alt="特点一图标" src="front/dist/img/product-icon-more.png"></a></p>
			</div>
			<div class="switch col-sm-4 col-md-4 col-lg-4 ">
				<p class="title">
					<img alt="特点一图标" src="front/dist/img/product-icon-trait2.png">
					<span class="title">特点二：智能决策方式</span>
				</p>
				<p class="content">
					222新型智能决策方式，规避经验决策风险，强化理性决策回报，强化理性决策回报,新型智能决策方式，规避经验决策风险，强化理性决策回报，强化理性决策回报,新型智能决策方式，规避经验决策风险，强化理性决策回报，强化理性决策回报
				</p>
				<p class="more"><a href="http://www.baidu.com">Read More&nbsp;&nbsp;<img alt="特点一图标" src="front/dist/img/product-icon-more.png"></a></p>
			</div>
			<div class="switch col-sm-4 col-md-4 col-lg-4 ">
				<p class="title">
					<img alt="特点一图标" src="front/dist/img/product-icon-trait3.png">
					<span class="title">特点三：智能决策方式</span>
				</p>
				<p class="content">
					222新型智能决策方式，规避经验决策风险，强化理性决策回报，强化理性决策回报,新型智能决策方式，规避经验决策风险，强化理性决策回报，强化理性决策回报,新型智能决策方式，规避经验决策风险，强化理性决策回报，强化理性决策回报
				</p>
				<p class="more"><a href="http://www.baidu.com">Read More&nbsp;&nbsp;<img alt="特点一图标" src="front/dist/img/product-icon-more.png"></a></p>
			</div>
		</div><!-- end 对应产品二 -->
		
		<!-- 对应产品三 -->
		<div class="container tab text-center js-tab" id="js-product3">		
			<div class="switch col-sm-4 col-md-4 col-lg-4 ">
				<p class="title">
					<img alt="特点一图标" src="front/dist/img/product-icon-trait1.png">
					<span class="title">特点一：智能决策方式</span>
				</p>
				<p class="content">
					333新型智能决策方式，规避经验决策风险，强化理性决策回报，强化理性决策回报,新型智能决策方式，规避经验决策风险，强化理性决策回报，强化理性决策回报,新型智能决策方式，规避经验决策风险，强化理性决策回报，强化理性决策回报
				</p>
				<p class="more"><a href="http://www.baidu.com">Read More&nbsp;&nbsp;<img alt="特点一图标" src="front/dist/img/product-icon-more.png"></a></p>
			</div>
			<div class="switch col-sm-4 col-md-4 col-lg-4 ">
				<p class="title">
					<img alt="特点一图标" src="front/dist/img/product-icon-trait2.png">
					<span class="title">特点二：智能决策方式</span>
				</p>
				<p class="content">
					333新型智能决策方式，规避经验决策风险，强化理性决策回报，强化理性决策回报,新型智能决策方式，规避经验决策风险，强化理性决策回报，强化理性决策回报,新型智能决策方式，规避经验决策风险，强化理性决策回报，强化理性决策回报
				</p>
				<p class="more"><a href="http://www.baidu.com">Read More&nbsp;&nbsp;<img alt="特点一图标" src="front/dist/img/product-icon-more.png"></a></p>
			</div>
			<div class="switch col-sm-4 col-md-4 col-lg-4 ">
				<p class="title">
					<img alt="特点一图标" src="front/dist/img/product-icon-trait3.png">
					<span class="title">特点三：智能决策方式</span>
				</p>
				<p class="content">
					333新型智能决策方式，规避经验决策风险，强化理性决策回报，强化理性决策回报,新型智能决策方式，规避经验决策风险，强化理性决策回报，强化理性决策回报,新型智能决策方式，规避经验决策风险，强化理性决策回报，强化理性决策回报
				</p>
				<p class="more"><a href="http://www.baidu.com">Read More&nbsp;&nbsp;<img alt="特点一图标" src="front/dist/img/product-icon-more.png"></a></p>
			</div>
		</div><!-- end 对应产品三 -->
	</div><!-- end 产品特点 -->
	
	<!-- F & Q -->
	<div class="layer layer-fq text-left">
		<div class="container fq">
			<p class="title"><img alt="答疑解惑" src="front/dist/img/product-icon-fq.png">答疑解惑</p>
			<p class="additional">为您解答您会遇到的常见问题</p>
			<span class="splitLine"></span>
			<div class="item">
				<p class="name">①新型智能决策方式</p>
				<p class="para">w3cschool教程提供了最全的的web技术基础教程。本站包括了HTML教程、CSS教程、Javascript教程、PHP教程等各种建站基础教程。 同时本站中也提供了大量的在线实例，通过实例，您可以更好地学习如何建站。</p>
			</div>
			<span class="splitLine"></span>
			<div class="item">
				<p class="name">②新型智能决策方式</p>
				<p class="para">w3cschool教程提供了最全的的web技术基础教程。本站包括了HTML教程、CSS教程、Javascript教程、PHP教程等各种建站基础教程。 同时本站中也提供了大量的在线实例，通过实例，您可以更好地学习如何建站。</p>
			</div>
			<span class="splitLine"></span>
			<div class="item">
				<p class="name">③新型智能决策方式</p>
				<p class="para">w3cschool教程提供了最全的的web技术基础教程。本站包括了HTML教程、CSS教程、Javascript教程、PHP教程等各种建站基础教程。 同时本站中也提供了大量的在线实例，通过实例，您可以更好地学习如何建站。</p>
			</div>
		</div>
	</div><!-- end F & Q -->
	
</div>

<jsp:include page="_footer.jsp" />
<script type="text/javascript" language="javascript" src="front/dist/js/jquery.min.js" ></script>
<script type="text/javascript" language="javascript" src="front/dist/js/jquery-ui.min.js"></script>
<script type="text/javascript" language="javascript" src="front/dist/js/bootstrap.min.js"></script>
<!-- 交互效果 -->
<script type="text/javascript">
$(function(){
	//设置默认显示为产品一的特点
	$("div.tab[id!='js-product1']").addClass("hide");
	$('div[data-target]').on({
		"mouseenter":function(){
			var target=$(this).attr('data-target');
			$("div.tab").removeClass("hide");
			$("div.tab[id!='"+target+"']").addClass("hide");
			$("div.tab[id='"+target+"']").effect("slide","slow");
		}
	});
	// 回调函数
    function callback() {
      setTimeout(function() {
        $( "#effect" ).removeAttr( "style" ).hide().fadeIn();
      }, 1000 );
    };
    
    //active样式
    var lastIndex=2;
    $('div.pro-module').hover(function(){
    	console.log("this index = "+$(this).index());
    	if($(this).index()==lastIndex){
    		console.log('no change');
    	}else{
    		$(this).siblings().removeClass('active');
    		$(this).addClass('active');
    		lastIndex=$(this).index();
    	}
    	
    });
});
function jump(str){
	window.location.href="<%=basePath%>"+"front/productDetail.jsp";
}
</script>
</body>
</html>