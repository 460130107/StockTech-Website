<%@ page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html">
<html>
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="description" content="">
<meta name="author" content="">
<base href="<%= request.getScheme() + "://" + request.getServerName() + ":" + 
	request.getServerPort() + request.getContextPath() %>/" />
<link rel="icon" href="../../favicon.ico">
<link href="front/dist/css/bootstrap.css" rel="stylesheet">
<link href="front/dist/css/common.css" rel="stylesheet">
<style type="text/css">
	div.panle{
		border:2px solid #fff;
		border-radius:4px;-o-border-radius:4px;-moz-border-radius:4px;-webkitborder-radius:4px;
	}
	.layer{
		border: 1px solid #ddd;
	}
</style>
</head>
<body>
<jsp:include page="_header.jsp?index=product" />
<div class="suspend">
		<dl>
			<dt class="IE6PNG"></dt>
			<dd class="suspendQQ"><a href="http://jq.qq.com/?_wv=1027&amp;k=LohcW9" target="_blank"></a></dd>
			<dd class="suspendTel"><a href="javascript:void(0);"></a></dd>
		</dl>
	</div>
<div class="container-fluid text-center bg-lattice content-banner">
	<img alt="hello" src="front/dist/img/product_banner.png">
</div>

<div class="container">
	<div class="row clearfix">
	
	<!-- 产品介绍  第一行 -->
	<div class="col-md-12 column mgb20 mgt20">
		<div class="row clearfix">
			<!-- 产品一 -->
			<div class="col-md-4 column">
			  <div class="layer bdradius12-tl bdradius12-tr">
				<ul class="list-unstyled ">
					<li class="table-header bgc-red3 pd20 f26 bdradius12-tl bdradius12-tr">产品 --XXXXX</li>
					<li class="table-item pd6 pdl20 f16"><span>平台提供信用认证标、机构担保标、实地认证标等多类产品，用户根据审核后的信息，自选合适的借款标的，构建符合个人意愿的投资组合。</span></li>				
					<li class="table-item pd6 pdl20 f14">收益稳定，预期年化收益最高达11%</li>
					<li class="table-item pd6 pdl20 f14">低门槛，最低1,000元起</li>
					<li class="table-item pd6 pdl20 f14">资金安全，投资标的适用本金保障计划</li>
					<li class="table-footer table-item pd6 pdl20 f14">系统优先投标，精选优质债权，省心省力</li>
				</ul> 
				<div style="text-align: center;" class="pd10">
					<a href="front/productDetail.jsp" type="button" class="btn btn-default btn-info">详情</a>
					<a type="button" class="btn btn-default btn-info">下载</a>
				</div>				
			  </div>
			</div>
			<!-- 产品二 -->
			<div class="col-md-4 column">
			  <div class="layer bdradius12-tl bdradius12-tr">
				<ul class="list-unstyled ">
					<li class="table-header bgc-red4 pd20 f26 bdradius12-tl bdradius12-tr">产品 --XXXXX</li>
					<li class="table-item pd6 pdl20 f16"><span>平台提供信用认证标、机构担保标、实地认证标等多类产品，用户根据审核后的信息，自选合适的借款标的，构建符合个人意愿的投资组合。</span></li>				
					<li class="table-item pd6 pdl20 f14">收益稳定，预期年化收益最高达11%</li>
					<li class="table-item pd6 pdl20 f14">低门槛，最低1,000元起</li>
					<li class="table-item pd6 pdl20 f14">资金安全，投资标的适用本金保障计划</li>
					<li class="table-footer table-item pd6 pdl20 f14">系统优先投标，精选优质债权，省心省力</li>
				</ul> 
				<div style="text-align: center;" class="pd10">
					<a href="front/developing.jsp" type="button" class="btn btn-default btn-info">详情</a>
					<a type="button" class="btn btn-default btn-info">下载</a>
				</div>					
			  </div>
			</div>
			<!-- 产品一三-->
			<div class="col-md-4 column">
			  <div class="layer bdradius12-tl bdradius12-tr">
				<ul class="list-unstyled ">
					<li class="table-header bgc-red5 pd20 f26 bdradius12-tl bdradius12-tr">产品 --XXXXX</li>
					<li class="table-item pd6 pdl20 f16"><span>平台提供信用认证标、机构担保标、实地认证标等多类产品，用户根据审核后的信息，自选合适的借款标的，构建符合个人意愿的投资组合。</span></li>				
					<li class="table-item pd6 pdl20 f14">收益稳定，预期年化收益最高达11%</li>
					<li class="table-item pd6 pdl20 f14">低门槛，最低1,000元起</li>
					<li class="table-item pd6 pdl20 f14">资金安全，投资标的适用本金保障计划</li>
					<li class="table-footer table-item pd6 pdl20 f14">系统优先投标，精选优质债权，省心省力</li>
				</ul> 
				<div style="text-align: center;" class="pd10">
					<a href="front/productDetail.jsp" type="button" class="btn btn-default btn-info">详情</a>
					<a type="button" class="btn btn-default btn-info">下载</a>
				</div>					
			  </div>
			</div>			
		</div>
	</div><!-- end 产品介绍 第一行 -->
	<!-- 产品介绍  第二行 -->
	<div class="col-md-12 column mgb20">		
		<div class="row clearfix">
			<!-- 产品一 -->
			<div class="col-md-4 column">
			  <div class="layer bdradius12-tl bdradius12-tr">
				<ul class="list-unstyled ">
					<li class="table-header bgc-red3 pd20 f26 bdradius12-tl bdradius12-tr">产品 --XXXXX</li>
					<li class="table-item pd6 pdl20 f16"><span>平台提供信用认证标、机构担保标、实地认证标等多类产品，用户根据审核后的信息，自选合适的借款标的，构建符合个人意愿的投资组合。</span></li>				
					<li class="table-item pd6 pdl20 f14">收益稳定，预期年化收益最高达11%</li>
					<li class="table-item pd6 pdl20 f14">低门槛，最低1,000元起</li>
					<li class="table-item pd6 pdl20 f14">资金安全，投资标的适用本金保障计划</li>
					<li class="table-footer table-item pd6 pdl20 f14">系统优先投标，精选优质债权，省心省力</li>
				</ul> 
				<div style="text-align: center;" class="pd10">
					<a href="front/productDetail.jsp" type="button" class="btn btn-default btn-info">详情</a>
					<a type="button" class="btn btn-default btn-info">下载</a>
				</div>				
			  </div>
			</div>
			<!-- 产品二 -->
			<div class="col-md-4 column">
			  <div class="layer bdradius12-tl bdradius12-tr">
				<ul class="list-unstyled ">
					<li class="table-header bgc-red4 pd20 f26 bdradius12-tl bdradius12-tr">产品 --XXXXX</li>
					<li class="table-item pd6 pdl20 f16"><span>平台提供信用认证标、机构担保标、实地认证标等多类产品，用户根据审核后的信息，自选合适的借款标的，构建符合个人意愿的投资组合。</span></li>				
					<li class="table-item pd6 pdl20 f14">收益稳定，预期年化收益最高达11%</li>
					<li class="table-item pd6 pdl20 f14">低门槛，最低1,000元起</li>
					<li class="table-item pd6 pdl20 f14">资金安全，投资标的适用本金保障计划</li>
					<li class="table-footer table-item pd6 pdl20 f14">系统优先投标，精选优质债权，省心省力</li>
				</ul> 
				<div style="text-align: center;" class="pd10">
					<a href="front/productDetail.jsp" type="button" class="btn btn-default btn-info">详情</a>
					<a type="button" class="btn btn-default btn-info">下载</a>
				</div>					
			  </div>
			</div>
			<!-- 产品一三-->
			<div class="col-md-4 column">
			  <div class="layer bdradius12-tl bdradius12-tr">
				<ul class="list-unstyled ">
					<li class="table-header bgc-red5 pd20 f26 bdradius12-tl bdradius12-tr">产品 --XXXXX</li>
					<li class="table-item pd6 pdl20 f16"><span>平台提供信用认证标、机构担保标、实地认证标等多类产品，用户根据审核后的信息，自选合适的借款标的，构建符合个人意愿的投资组合。</span></li>				
					<li class="table-item pd6 pdl20 f14">收益稳定，预期年化收益最高达11%</li>
					<li class="table-item pd6 pdl20 f14">低门槛，最低1,000元起</li>
					<li class="table-item pd6 pdl20 f14">资金安全，投资标的适用本金保障计划</li>
					<li class="table-footer table-item pd6 pdl20 f14">系统优先投标，精选优质债权，省心省力</li>
				</ul> 
				<div style="text-align: center;" class="pd10">
					<a href="front/productDetail.jsp" type="button" class="btn btn-default btn-info">详情</a>
					<a type="button" class="btn btn-default btn-info">下载</a>
				</div>					
			  </div>
			</div>			
		</div>
	</div><!-- end 产品介绍 第二行 -->
	</div>
	
	
	<!-- f & q -->
	<div class="container">
		<div class="row mgb20">
			<h3 class="bgc-red4 pdl20 pdb20 pdt20 f24">常见问题<a href="front/guide.jsp" class="btn btn-default btn-info mgr20" style="float: right;">新手指南</a></h3>
			
			<div class="col-md-12 mgb20" style="border-bottom: 1px dashed #ddd;">
				<p class="f20 pd20">Q1：我可以炒股吗？
				<p class="f16">　　　可以，年满18周岁，具有完全民事权利能力和民事行为能力，可以在斯多克网站上进行注册、完成实名认证、绑定银行卡，成为炒股达人。
								
			</div>
		</div>
		
		<div class="row mgb20">
			<div class="col-md-12 mgb20" style="border-bottom: 1px dashed #ddd;">
				<p class="f20 pd20">Q2：什么样的产品适合我？
				<p class="f16">　　　请根据以下数据和您的个人投资需求正确的选择斯多克的产品。或者可以点击<a target="_blank" href="http://wpa.qq.com/msgrd?v=3&uin=2271088927&site=qq&menu=yes">这里</a>，联系客服帮助您选择正确的投资产品。
								
			</div>
		</div>
		
		<div class="row mgb20">
			<div class="col-md-12 mgb20" style="border-bottom: 1px dashed #ddd;">
				<p class="f20 pd20">Q3：怎样进行投资？
				<p class="f16">　　　请您按照以下步骤进行投资：<br>
									　　　1. 在人人贷网站上进行注册、通过实名认证、成功绑定银行卡；<br>
									　　　2. 账户充值；<br>
									　　　3. 浏览U计划、散标投资列表、债权转让列表，选择自己感兴趣的投资方式；<br>
									　　　4. 确认投资，投资成功。<br>								
			</div>
		</div>		
	</div>
	
</div>


<jsp:include page="_footer.jsp" />
<script type="text/javascript" language="javascript" src="front/dist/js/jquery.min.js" ></script>
<script type="text/javascript" language="javascript" src="front/dist/js/bootstrap.min.js"></script>
<script type="text/javascript" language="javascript" src="front/dist/js/site.effect.js"></script>
<script type="text/javascript">
$(function() {
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