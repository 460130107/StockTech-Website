<%@ page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
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
<link href="front/dist/css/bootstrap.css" rel="stylesheet">
<link href="front/dist/css/base.css" rel="stylesheet">
<link href="front/dist/css/common.css" rel="stylesheet">
<link href="front/dist/css/page.css" rel="stylesheet">
<title>合作加盟--斯多克科技</title>
</head>
<body>
<jsp:include page="_header.jsp?index=corpration" />

<!-- QQ service -->
<div class="suspend">   
	<dl>
		<dt class="IE6PNG"></dt>
		<dd class="suspendQQ"><a href="http://jq.qq.com/?_wv=1027&amp;k=LohcW9" target="_blank"></a></dd>
		<dd class="suspendTel"><a href="javascript:void(0);"></a></dd>
	</dl>
</div>

<div id="product">
	<div class="topBackground">
		<div class="container">
			<p class="text3">改变人生的英明决策</p>
			<p class="text2">智能&nbsp;.&nbsp;丰厚&nbsp;.&nbsp;利润</p>			
			<button class="btn-view" onclick="javascript:window.location.href='productDetail'">查看此方案&nbsp;&nbsp;<img alt="btn-view" src="front/dist/img/icon-arrow-5.png"></button>
			<button class="btn-other" onclick="javascript:window.location.href='productDetail'">其他方案</button>
		</div>
		
	</div>
	<div class="layer layer-pro">
	<div class="container profile text-center">
		<p class="title">合作介绍</p>
		<p class="additional">合作介绍，包含合作下载链接等接口</p>
		<!-- 合作一 -->
		<div class="col-xs-12 col-sm-4 col-md-4 col-lg-4  square-y" data-target="js-product1">
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
				<button class="btn-view" >点击查看</button>	
			</div>
		</div>
		
		<!-- 合作二 -->
		<div class="col-xs-12 col-sm-4 col-md-4 col-lg-4  square-y" data-target="js-product2">
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
				<button class="btn-view" >点击查看</button>		
			</div>
		</div>
		<!-- 合作三 -->
		<div class="col-xs-12 col-sm-4 col-md-4 col-lg-4  square-y" data-target="js-product3">
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
				<button class="btn-view" >点击查看</button>		
			</div>
		</div>
	</div>
	</div>
	
	<!-- F & Q -->
	<div class="layer layer-fq text-left">
		<div class="container fq">
			<p class="title"><img alt="答疑解惑" src="front/dist/img/product-icon-fq.png">合作须知</p>
			<p class="additional">为您解答您会遇到的常见问题</p>
			<span class="splitLine"></span>
			<div class="item">
				<p class="name">&#10053;&nbsp;合作机构</p>
				<p class="para">
					<span class="title">&#10019;证券公司、投资机构</span>
					<span class="cont">斯多克科技现已与银河证券、中信证券、国金证券等各种大中小型证券公司以及100多家证券投资机构达成合作协议及意向。</span>
					<span class="title">&#10019;政府机构：</span>
					<span>出于对国内量化交易市场和新型金融科技的支持，斯多克的发展还受到了中国证监会、中国银监会、中国互联网信息管理中心等政府机构的支持</span>
					<span class="title">&#10019;科技同行</span>
					<span>斯多克与阿里巴巴，微软研究院都建立了长久合作关系。</span>
					<span class="title">&#10019;顶级学府</span>
					<span>斯多克与美国伊利诺州立大学、北大光华学院、北京邮电大学等国内外一流大学都达成了项目合作。</span>
				</p>
			</div>
			<span class="splitLine"></span>
			<div class="item">
				<p class="name">&#10053;&nbsp;合作宣言</p>
				<p class="para">为合作伙伴提供及时、专业的技术、高效的解决方案、支持服务等资源，使我们的最终用户可以享受到更加值得信赖、更加有价值的产品</p>
			</div>
			<span class="splitLine"></span>
			<div class="item">
				<p class="name">&#10053;&nbsp;合作须知</p>
				<p class="para">斯多克科技将会与合作伙伴一起形成网络立体式的经营模式，旨在努力通过为合作伙伴提供及时、专业的技术、高效的解决方案、支持服务等资源，使我们的最终用户可以享受到更加值得信赖、更加有价值的产品、技术、服务的同时，使我们的合作伙伴有机会获得更高的利润空间、更丰厚的投资回报。 　　斯多克科技合作伙伴计划会为您提供最佳架构，帮助您在满足用户不断增长的投资需求的同时，创造新的盈利机会，使您在发展迅速、基于互联网的商业环境中稳操胜券。</p>
			</div>
			<span class="splitLine"></span>
			<div class="item">
				<p class="name">&#10053;&nbsp;联系方式</p>
				<p class="para">
					<span class="title">&#10019;客服电话</span>
					<span class="cont">400-888-999</span>
					<span class="title">&#10019;公司传真</span>
					<span class="cont">010-81569999</span>
					<span class="title">&#10019;业务邮箱<span class="small">(非诚勿扰)</span></span>
					<span class="cont">business_stock@163.com</span>
				</p>
			</div>
		</div>
	</div><!-- end F & Q -->
	
</div>

<jsp:include page="_footer.jsp" />
</body>
</html>