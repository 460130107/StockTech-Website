<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'productDetail.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	<link href="front/dist/css/bootstrap.css" rel="stylesheet">
	<link href="front/dist/css/common.css" rel="stylesheet">
	<link href="front/dist/css/product.css" rel="stylesheet">
	<link href="front/dist/css/customer-service.css" rel="stylesheet">
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
	<!-- <div class="pdt60 pdb60" style="text-align:center;background-size:100% 100%;;background-image: url('front/dist/img/product-detail.jpg');">
	</div> -->
	<a class="btn btn-default btn-info" href="">点击下载</a>
</div>
  
   <!-- 产品图形介绍 -->
   <div class="bgc-green1">
	  <div class="container">
		<div class="row mgb10 mgt10" >
			<div class="col-md-3">
				<img alt="140x140" src="front/dist/img/account_bg.jpg" class="img-polaroid bdradius6" style="width: 200px;height: 200px;"/>
			</div>
			<div class="col-md-8">
				<h3 class="f20 fwb">产品简介</h3>
				<p class="f16">拍拍贷同时也是第一家由工商部门特批，获得"金融信息服务"资质，从而得到政府认可的互联网金融平台。 拍拍 贷用先进的理念和创新的技术建立了一个安全、高效、诚信、透明的互联网金融平台，规范了个人借贷行为，让 借入者改善生产生活，让借出者增加投资渠道。拍拍贷相信，随着互联网的发展和中国个人信用体系的健全，先进 的理念和创新的技术将给民间借贷带来历史性的变革，拍拍贷将是这场变革的领导者</p>
			</div>
		</div>
		<div class="row mgb10">
			<div class="col-md-3">
				<img alt="140x140" src="front/dist/img/account_bg.jpg" class="img-polaroid bdradius6" style="width: 200px;height: 200px;"/>
			</div>
			<div class="col-md-8">
				<h3 class="f20 fwb">投资收益</h3>
				<p class="f16">拍拍贷同时也是第一家由工商部门特批，获得"金融信息服务"资质，从而得到政府认可的互联网金融平台。 拍拍 贷用先进的理念和创新的技术建立了一个安全、高效、诚信、透明的互联网金融平台，规范了个人借贷行为，让 借入者改善生产生活，让借出者增加投资渠道。拍拍贷相信，随着互联网的发展和中国个人信用体系的健全，先进 的理念和创新的技术将给民间借贷带来历史性的变革，拍拍贷将是这场变革的领导者</p>
			</div>
		</div>
		<div class="row mgb10 ">
			<div class="col-md-3">
				<img alt="140x140" src="front/dist/img/account_bg.jpg" class="img-polaroid bdradius6" style="width: 200px;height: 200px;"/>
			</div>
			<div class="col-md-7">
				<h3 class="f20 fwb">申请须知</h3>
				<p class="f16">拍拍贷同时也是第一家由工商部门特批，获得"金融信息服务"资质，从而得到政府认可的互联网金融平台。 拍拍 贷用先进的理念和创新的技术建立了一个安全、高效、诚信、透明的互联网金融平台，规范了个人借贷行为，让 借入者改善生产生活，让借出者增加投资渠道。拍拍贷相信，随着互联网的发展和中国个人信用体系的健全，先进 的理念和创新的技术将给民间借贷带来历史性的变革，拍拍贷将是这场变革的领导者</p>
			</div>
		</div>
	 </div>
   </div>
	
	<!-- 投资效果 -->
	<!-- <div class="bgc-green">
		<div class="row question">
		<div class="title"> 
	  		<h3>投资效果</h3>
	  	</div> 
	  	<hr>
		<div class="span4">
				<img alt="140x140" src="" class="img-circle img-detail"/>
			</div>
			<div class="span4">
				<img alt="140x140" src="" class="img-circle img-detail"/>
			</div>
			<div class="span4">
				<img alt="140x140" src="" class="img-circle img-detail"/>
			</div>
		</div>
	</div> -->
	
	<!-- 产品相关细节问题 -->
	<div class="bgc-blue1">
	<div class="container">
		<div> 
	  		<h3 class="f24">产品细节咨询</h3>
	  	</div> 
	  	<hr> 
		<ul>
			<li>
				<h5 class="f20"><span>&#10034;&nbsp;</span>什么是产品XXX</h5>
				<p class="f16">　U计划是斯多克推出的便捷高效的自动投标工具。<br>　U计划在用户认可的标的范围内，对符合要求的标的进行自动投标，且回款本金在相应期限内自动复投，期限结束后U</p>
			</li>
			<li>
				<h5 class="f20"><span>&#10034;&nbsp;</span>原优选理财计划的相关说明</h5>
				<p class="f16">　1.U计划支持提前退出，提前退出费用为加入计划金额的2%。<br>
							　2.U计划到期后自动退出，无需另行操作。<br>
							　3.U计划支持的收益处理方式：<br>
							　收益再投资<br>
							　提取至主账户<br>
							　注：收益处理方式选择后不再支持中途修改。</p>
			</li>
			<li>
				<h5 class="f20"><span>&#10034;&nbsp;</span>问题问题问题</h5>
				<p class="f16">　U计划上线后，不再新发优选理财计划。<br>
							    　历史上已发布的优选理财计划照常运行，原有规则保持不变。每期收益均会根据您所选择的收益处理方式照常处置，直到优选理财计划期满您主动选择退出为止。<br>
							    　原优选理财计划仍保留三种收益处理方式：收益再投资、当日提取至斯多克账户或每月定时提取至用户指定的银行卡，用户可以根据需求修改收益处理方式。<br>
							　原优选理财计划仍不支持提前退出。
	                       </p>
			</li>
		</ul>
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
