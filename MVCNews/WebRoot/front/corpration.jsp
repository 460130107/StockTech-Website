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

<link href="front/dist/css/bootstrap.css" rel="stylesheet">
<link href="front/dist/css/common.css" rel="stylesheet">
<link href="front/dist/css/corpration.css" rel="stylesheet">
<link href="front/dist/css/jquery.fs.boxer.css" rel="stylesheet">
<link href="front/dist/css/customer-service.css" rel="stylesheet">
<title>合作加盟--斯多克科技</title>

</head>
<!-- NAVBAR
================================================== -->
  <body>
    <jsp:include page="_header.jsp?index=corpration" />
	<div class="suspend">
		<dl>
			<dt class="IE6PNG"></dt>
			<dd class="suspendQQ"><a href="http://wpa.qq.com/msgrd?v=3&uin=610353064&site=qq&menu=yes" target="_blank"></a></dd>
			<dd class="suspendTel"><a href="javascript:void(0);"></a></dd>
		</dl>
	</div>
	<div class="container-fluid maxbg">
		<div class="banner-img">
			<img alt="hello" src="front/dist/img/stockii_services.jpg">
		</div>

		<div class="container">
			<div class="col-lg-12">
				<div class="page-header delaration">
					<h1>
						与<span class="stockii-name">斯多克</span>一同开启<span class="science-green">智能投资</span>时代<small>&nbsp;&nbsp;一个英明的决策可以彻底改变您的一生</small>
					</h1>
				</div>
			</div>
			<div class="container">
				<div class="delaration">
					<div class="row thumb-list">
						<div class="col-lg-4">
							<div class="thumbnail">
								<img alt="300x200" src="front/dist/img/project_3board_cooperation.jpg" />
								<div class="caption">
									<h3 class="title"><a>标准合作</a></h3>
									<p class="body">
										标准合作旨在为有一定投资实力的个体和小型团体服务，适合于小型证券公司，有实力的散户。标准合作是斯多克的主打模式，享受斯多克的标准服务。
									</p>
									<hr/>
									<p>
									<a class="btn btn-success boxer" href="#hidden">咨询标准合作</a>
									<div id="hidden" style="display: none;">
									    <div class="content" style="height: 400px; width: 400px;">
									    	<img src="front/dist/img/project_3board_cooperation.jpg" alt="" style="height: 300px; width: 300px;">
									    	<div>客服经理：<span class="glyphicon glyphicon-search"></span></div>
									    </div>
									</div>
									</p>
<!-- 									<hr/> -->
<!-- 									<p class="text-right"> -->
<!-- 										<a class="btn" href="#"><span class="glyphicon glyphicon-edit"></span></a> -->
<!-- 										<a class="btn" href="#"><span class="glyphicon glyphicon-heart"></span></a> -->
<!-- 										<a class="btn" href="#"><span class="glyphicon glyphicon-trash"></span></a> -->
<!-- 									</p> -->
								</div>
							</div>
						</div>
						<div class="col-lg-4">
							<div class="thumbnail">
								<img alt="300x200" src="front/dist/img/project_broker_cooperation.jpg" />
								<div class="caption">
									<h3>高级合作</h3>
									<p class="body">
										高级合作仅为大型证券公司，具有一定投资实力的金融公司和组织提供更强大的业务服务与投资能力。除了标准接口和基础数据外，高级合作模式的客户还拥有斯多克的<strong>A级接口</strong>和<strong>全部数据</strong></p>
									<hr/>
									<p>
										<a class="btn btn-success" href="#">咨询高级合作</a>
									</p>
								</div>
							</div>
						</div>
						<div class="col-lg-4">
							<div class="thumbnail">
								<img alt="300x200" src="front/dist/img/project_fund_cooperation.jpg" />
								<div class="caption">
									<h3>定制合作<span class="title-unable">（暂不开放）</span></h3>
									<p class="body">
										定制级的合作仅对斯多克的战略合作伙伴开放。</p>
									<hr/>
									<p>
										<a class="btn btn-success" href="#">咨询定制合作</a>
									</p>
								</div>
							</div>
						</div>
						</div>
<!-- 					<h1> -->
<!-- 						与<span class="stockii-name">斯多克</span>一同开启<span class="science-green">智能投资</span>时代<small>&nbsp;&nbsp;一个英明的决策可以彻底改变您的一生</small> -->
<!-- 					</h1> -->
				</div>
			</div>
				
			<div class="container">
				<div class="page-header">
					<h1>
						合作须知
<!-- 						与<span class="stockii-name">斯多克</span>一同开启<span -->
<!-- 							class="science-green">智能投资</span>时代<small>&nbsp;&nbsp;一个英明的决策可以彻底改变您的一生</small> -->
					</h1>
				</div>
				<div class="col-lg-2">
					<ul class="nav nav-tabs nav-stacked">
	<!--                 <li class="active"><a href="front/corpration.jsp#mode">合作模式</a></li> -->
						<li><a href="front/corpration.jsp#partner">合作伙伴</a></li>
						<li><a href="front/corpration.jsp#declaration">合作宣言</a></li>
		                <li><a href="front/corpration.jsp#mustknow">合作须知</a></li>
		                <li><a href="front/corpration.jsp#contact">联系方式</a></li>
	            	</ul>
				</div>
				<div class="col-lg-10 sections">
					<div id="partner" class="row">
						<h3>合作伙伴</h3>
						<hr/>
							<p>
							<dl>
								<dt>证券公司、投资机构</dt>
								<dd>斯多克科技现已与<strong>银河证券</strong>、<strong>中信证券</strong>、<strong>国金证券</strong>等各种大中小型证券公司以及100多家证券投资机构达成合作协议及意向。</dd>
								<dt>政府机构：</dt>
								<dd>出于对国内量化交易市场和新型金融科技的支持，斯多克的发展还受到了<strong>中国证监会</strong>、<strong>中国银监会</strong>、<strong>中国互联网信息管理中心</strong>等政府机构的支持</dd>
								<dt>科技同行</dt>
								<dd>斯多克与<strong>阿里巴巴</strong>，<strong>微软研究院</strong>都建立了长久合作关系。</dd>
								<dt>顶级学府</dt>
								<dd>斯多克与<strong>美国伊利诺州立大学</strong>、<strong>北大光华学院</strong>、<strong>北京邮电大学</strong>等国内外一流大学都达成了项目合作。</dd>
							</dl>
					</div>
					
					<div id="declaration" class="row">
						<h3>合作宣言</h3>
						<hr/>
						<p>
							斯多克科技将会与合作伙伴一起形成网络立体式的经营模式，旨在努力通过为合作伙伴提供及时、专业的技术、高效的解决方案、支持服务等资源，使我们的最终用户可以享受到更加值得信赖、更加有价值的产品、技术、服务的同时，使我们的合作伙伴有机会获得更高的利润空间、更丰厚的投资回报。
		　　斯多克科技合作伙伴计划会为您提供最佳架构，帮助您在满足用户不断增长的投资需求的同时，创造新的盈利机会，使您在发展迅速、基于互联网的商业环境中稳操胜券。	
						</p>
					</div>
					
					<div id="mustknow" class="row">
						<h3>合作须知</h3>
						<hr/>
						<p>
							斯多克科技将会与合作伙伴一起形成网络立体式的经营模式，旨在努力通过为合作伙伴提供及时、专业的技术、高效的解决方案、支持服务等资源，使我们的最终用户可以享受到更加值得信赖、更加有价值的产品、技术、服务的同时，使我们的合作伙伴有机会获得更高的利润空间、更丰厚的投资回报。
		　　斯多克科技合作伙伴计划会为您提供最佳架构，帮助您在满足用户不断增长的投资需求的同时，创造新的盈利机会，使您在发展迅速、基于互联网的商业环境中稳操胜券。	
						</p>
					</div>
					
					<div id="procedure" class="row">
						<h3>联系方式</h3>
						<hr/>
						<address>
						<strong>北京斯多克科技有限公司</strong><br />海淀区中关村东路8号东升大厦C座133<br />
<!-- 						<strong>Stockii, Ltd.</strong><br /> C133 DongSheng Mansion, ZhongGuanCun Donglu, Haidian<br /> -->
						<abbr title="Phone">联系人：王先生</abbr><br/>
						<abbr title="Phone">电话：18610351400</abbr>
					</address>
					</div>
					
				</div>
			
			
			</div>
		</div>
	</div>
	
	<jsp:include page="_footer.jsp" />
	<script type="text/javascript" language="javascript" src="front/dist/js/jquery.min.js" ></script>
	<script type="text/javascript" language="javascript" src="front/dist/js/bootstrap.min.js"></script>
	<script type="text/javascript" language="javascript" src="front/dist/js/site.effect.js"></script>
	<script type="text/javascript" language="javascript" src="front/dist/js/jquery.fs.boxer.js"></script>
	<script type="text/javascript" src="front/dist/js/stockii-ui.js"></script>
	
	<script type="text/javascript">
		$(function () {
// 			fullscreenHeight(".maxbg");
			$(".boxer").boxer();
			
			$(".suspend").mouseover(function() {
		        $(this).stop();
		        $(this).animate({width: 160}, 400);
	    	});
	
		    $(".suspend").mouseout(function() {
		        $(this).stop();
		        $(this).animate({width: 40}, 400);
		    });
		});
		
	</script>
</body>
</html>