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
<link href="front/dist/css/bootstrap.min.css" rel="stylesheet">
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

<div class="container">
	<div class="row clearfix">
	<!-- 产品介绍  第一行 -->
	<div class="col-md-12 column mgb20 mgt20">
		<div class="row clearfix">
			<!-- 产品一 -->
			<div class="col-md-4 column">
			  <div class="layer bdradius12-tl bdradius12-tr">
				<ul class="list-unstyled ">
					<li class="table-header bgc-green2 pd20 f26 bdradius12-tl bdradius12-tr">产品 --XXXXX</li>
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
					<li class="table-header bgc-green1 pd20 f26 bdradius12-tl bdradius12-tr">产品 --XXXXX</li>
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
					<li class="table-header bgc-yellow1 pd20 f26 bdradius12-tl bdradius12-tr">产品 --XXXXX</li>
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
					<li class="table-header bgc-green2 pd20 f26 bdradius12-tl bdradius12-tr">产品 --XXXXX</li>
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
					<li class="table-header bgc-green1 pd20 f26 bdradius12-tl bdradius12-tr">产品 --XXXXX</li>
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
					<li class="table-header bgc-yellow1 pd20 f26 bdradius12-tl bdradius12-tr">产品 --XXXXX</li>
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
</div>


<jsp:include page="_footer.jsp" />
<script type="text/javascript" language="javascript" src="front/dist/js/jquery.min.js" ></script>
<script type="text/javascript" language="javascript" src="front/dist/js/bootstrap.min.js"></script>
<script type="text/javascript" language="javascript" src="front/dist/js/site.effect.js"></script>
</body>
</html>