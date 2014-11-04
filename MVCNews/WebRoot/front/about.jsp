<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<base href="<%=basePath%>">  
<title>关于我们</title>
<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">    
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
<link href="front/dist/css/bootstrap.css" rel="stylesheet">
<link href="front/dist/css/common.css" rel="stylesheet">
<style type="text/css">
div.personBlock{
	background-color: #F9F9F9;
	min-height: 190px;
}
div.line{
	border-top:1px solid #2EA7E0;
	margin-left: 140px;
	margin-right: 20px;
	margin-top: 10px;margin-bottom: 10px;
}
div.perInfo{
	text-align: right;
	height: 25px;
	line-height: 25px;
}

img.personImg{	
	width: 120px;height: 150px;
	border: 2px solid #ddd;	
	float: left;
	margin-right: 20px;
}
span.name,span.identity{
	color: #2EA7E0;
	display: inline-block;
}
span.name {
	float: left;
	font-size: 20px;
}
span.identity{
	/* float: right; */
	margin-right: 50px;
	font-size: 16px;
	text-align: center;
}
</style>
</head>

<body>
<jsp:include page="_header.jsp"></jsp:include>
<%
String id="root";
if(request.getParameter("id")=="" || request.getParameter("id")==null){
	id="root";
}else{
	id=request.getParameter("id");
}
%>

<div class="container mgb40 mgt40">
 <div class="row">
		<div class="col-md-9" style="float: right;left:-100px;">
			<div class="content">
				<div class="js-content pdl20 pdr20 bgc-white"  id="js-info" style="border: 1px solid #ddd;min-height: 600px;">
					<!-- 公司简介 info -->
					<h3>公司简介</h3>
					<p class="f16 spac1 lineheight26">
						斯多克(stockii.com)，系人人友信集团旗下公司及独立品牌。自2010年5月成立至今，斯多克的服务已覆盖了全国30余个省的2000多个地区，服务了几十万名客户，成功帮助他们通过信用申请获得融资借款，或通过自主出借获得稳定收益。
						作为中国最早的一批基于互联网的P2P信用借贷服务平台，斯多克以其诚信、透明、公平、高效、创新的特征赢得了良好的用户口碑。现在，斯多克已成为行业内最具影响力的品牌之一。
					<hr style="border: 1px dashed #ddd;" class="mgt20 mgb20">
					
					<h2 class="f18 fwb spac2" style="color: #86CBC4;">使命</h2>
					<p class="f14 spac1 lineheight24">实现个人的信用自主和金融自由。
					<hr style="border: 1px dashed #ddd;" class="mgt20 mgb20">
					
					<h2 class="f18 fwb spac2" style="color: #86CBC4;">愿望</h2>
					<p class="f14 spac1 lineheight22">打造一个人人参与、人人自由、人人平等的互联网个人金融服务平台。
					<hr style="border: 1px dashed #ddd;" class="mgt20 mgb20">
					
					<h2 class="f18 fwb spac2" style="color: #86CBC4;">核心价值</h2>
					<p class="f14 spac1 lineheight24">释放用户借款和理财的自主权利
							借款人通过个人信用申请借款，获得资金；理财人通过公开信息自主选择进行投资，获得收益。
							建立互联网时代的个人金融风险定价体系
							通过有效的个人信用模型和大数据挖掘，逐步建立并完善符合时代特征的个人金融风险定价体系。
							实现更低借款成本和更稳健投资收益
							受益于精准的个人金融风险定价体系和安全分散有保障的投资机制，借款人和理财人的权益均可得到充分的
							保障和满足。
					<hr style="border: 1px dashed #ddd;" class="mgt20 mgb20">
				</div> 
				<div class="js-content pdl20 pdr20 bgc-white" id="js-manage" style="border: 1px solid #ddd;min-height: 600px;">
					<!-- 管理团队 -->
					<h3>管理团队</h3>
					<p class="f16 spac1 lineheight26">
						斯多克以普惠金融的梦想及互联网金融创新的基因凝聚了一批充满阳光、活力和进取精神的金融及技术精英，他们成为了伟大梦想脚踏实地的践行者。
					<hr style="border: 1px dashed #ddd;" class="mgt20 mgb20">
					<!-- manager 1 -->
					<div class="personBlock pdt20 pdb20 mgt20 mgb20">
						<img class="personImg" alt="王宇飞" src="front/dist/img/manager_photo_wangyufei.jpg">
						<div class="perInfo"><span class="name">王宇飞</span><span class="identity text-right">创始合伙人</span></div>
						<div class="line"></div>
						<p class="f16 spac1 lineheight24" style="color: #666666;">毕业于北京邮电大学计算机学院，曾先后创立ChubbyWhale、Stockii等公司，在量化投资、人工智能等领域均有深入研究和实践。中关村青年创业者联盟发起人，海淀区优秀青年人才计划人选。
												<br>2014年，主导创建斯多克科技公司。
					</div>
					<!-- manager 2 -->
					<div class="personBlock pdt20 pdb20 mgt20 mgb20">
						<img class="personImg" alt="张峻岷" src="front/dist/img/manager_photo_wangyufei.jpg">
						<div class="perInfo"><span class="name">张峻岷</span><span class="identity text-right">创始合伙人</span></div>
						<div class="line"></div>
						<p class="f16 spac1 lineheight24" style="color: #666666;">张峻岷博士毕业于美国伊利诺伊州立大学计算机系，曾拜读于世界顶级大数据专家李克·伯纳门下，对Hadoop MapReduce及NoSQL Database有深入研究，是将大数据应用到证券投资领域的最早期实践者之一。
												<br>2014年，主导创建斯多克科技公司。
					</div>
					<!-- manager 3 -->
					<div class="personBlock pdt20 pdb20 mgt20 mgb20">
						<img class="personImg" alt="徐乃煊" src="front/dist/img/manager_photo_xunaixuan.jpg">
						<div class="perInfo"><span class="name">徐乃煊</span><span class="identity text-right">创始合伙人</span></div>
						<div class="line"></div>
						<p class="f16 spac1 lineheight24" style="color: #666666;">曾就职于SAP大中华区大数据业务部，工商银行证券投资基金中心。原Dobytes Studio创始人，Intimatest的开发者，在互联网开发及营销领域有深刻理解和广泛实践。
												<br>2014年，主导创建斯多克科技公司。
					</div>
					<!-- manager 4 -->
					<div class="personBlock pdt20 pdb20 mgt20 mgb20">
						<img class="personImg" alt="关放" src="front/dist/img/manager_photo_xunaixuan.jpg">
						<div class="perInfo"><span class="name">关放</span><span class="identity text-right">技术总监、首席架构师</span></div>
						<div class="line"></div>
						<p class="f16 spac1 lineheight24" style="color: #666666;">曾就职于微软亚洲研究院，中国联通云计算中心。长期负责大型企业的系统架构、项目管理工作，对大型互联网产品、服务的设计与架构具有独到造诣。目前全面负责斯多克的数据采集、分析及交易的平台架构设计等工作。
					</div>
					<!-- manager 5 -->
					<div class="personBlock pdt20 pdb20 mgt20 mgb20">
						<img class="personImg" alt="刘敏" src="front/dist/img/manager_photo_xunaixuan.jpg">
						<div class="perInfo"><span class="name">刘敏</span><span class="identity text-right">首席安全官</span></div>
						<div class="line"></div>
						<p class="f16 spac1 lineheight24" style="color: #666666;">知名青年安全专家，曾拜读于世界顶级安全学者，美国北卡罗莱纳州立大学的Donald Jiang门下，深入研究网络安全，移动安全等课题，并发现了Maven13-106等数个安全漏洞。同时在CS架构、系统设计等领域具有丰富的经验。目前全面负责斯多克科技的数据安全等工作。
					</div>
			
				</div>
				<div class="js-content pdl20 pdr20 bgc-white" id="js-export" style="border: 1px solid yellow;min-height: 600px;">3</div>
				
				<div class="js-content pdl20 pdr20 bgc-white" id="js-recruit" style="border: 1px solid #ddd;min-height: 600px;">
					<!-- 招贤纳士 -->
					<h3>招贤纳士</h3>
					<p class="f14 spac1 lineheight26">
						我们是一支在互联网和金融领域非常优秀的团队！我们有梦有理想，我们积极乐观，脚踏实地，充满激情！如果你也和我们一样，那么欢迎你加入我们的团队！
					<p class="f14 spac1 lineheight26 mgt20">我们会为你提供<br>
															在全新的互联网金融行业里开启个人事业的机会<br>
															富有竞争力的薪酬待遇<br>
															轻松惬意的工作氛围和充满活力的团队文化<br>
															完善的培训体系和更多的晋升机会<br>
					<p class="f14 spac1 lineheight26 mgt20">请发送您的简历至<a class="text-primary fwb">stock@163.com</a>，标题请注明所申请职位。
					<hr style="border: 1px dashed #ddd;" class="mgt20 mgb20">
					<h3 class="f20">在招聘中的职位</h3>
					
				</div>
				
				<div class="js-content pdl20 pdr20 bgc-white" id="js-concat" style="border: 1px solid #ddd;min-height: 600px;">
					<!-- 联系我们 -->
					<h3>联系我们</h3>
					<p class="f14 spac1 lineheight26">
						斯多克当前的服务已覆盖了全国30余个省的2000多个地区，在北京的西直门和五道口均设有办公场所，在上海设有专业的信审服务中心。
					<hr style="border: 1px dashed #ddd;" class="mgt20 mgb20">
					<p class="f18 spac2" style="color: #86CBC4;">公司地址
						<p class="f14 spac1">地址：北京市海淀区中关村东路8号东升大厦C座133
						<p class="f14 spac1 mgb20">邮编：100001
					<p class="f18 spac2" style="color: #86CBC4;">客服电话
						<p class="f14 spac1">如果您在使用斯多克(www.stockii.com)的过程中有任何疑问请您与斯多克客服人员联系。
						<p class="f14 spac1">24小时客服电话：400-111-999
						<p class="f14 spac1 mgb20">在线帮助：<a href="front/help/index.jsp">http://www.stockii.com/help/index</a>
					<p class="f18 spac2" style="color: #86CBC4;">商务合作
						<p class="f14 spac1">如果贵公司希望与我们建立商务合作关系，形成优势互补，请将合作意向进行简要描述并发送邮件至：
						<p class="f14 spac1">stockii_cooperation@163.com
						<p class="f14 spac1 mgb20">备注：斯多克目前暂时没有线下加盟/线下开店等商务合作模式，谢谢关注。
					<p class="f18 spac2" style="color: #86CBC4;">信息同步
						<p class="f14 spac1">如果您还希望了解我们更多信息，请关注我们的新浪微博、腾讯微博、微信或博客。
						<p class="f14 spac1">微信公众平台：renrendai（扫描右侧二维码关注斯多克微信）
						<p class="f14 spac1">新浪博客：blog.sina.com.cn/renrendai
						<p class="f14 spac1">新浪微博：e.weibo.com/renrendai
						<p class="f14 spac1 mgb20">腾讯微博：t.qq.com/renrendai
				</div>
	  		</div>
		</div>
	
		<div class="col-md-2">
			<div class="bar">
		  		<ul class="sidebar">
		  			<li class="side-fli pd20 active js-sideli" data-target="js-info"><a href="javascript:void(0);">公司简介</a></li>
		  			<li class="side-fli pd20 js-sideli" data-target="js-manage"><a href="javascript:void(0);">管理团队</a></li>
		  			<li class="side-fli pd20 js-sideli" data-target="js-export"><a href="javascript:void(0);">专家顾问</a></li>
		  			<li class="side-fli pd20 js-sideli" data-target="js-recruit"><a href="javascript:void(0);">招贤纳士</a></li>
		  			<li class="side-fli pd20 js-sideli" data-target="js-concat"><a href="javascript:void(0);">联系我们</a></li>
		  		</ul>
		  	</div>
		</div>
		
  </div>
	
	
</div>

<jsp:include page="_footer.jsp"></jsp:include>
<script type="text/javascript" language="javascript" src="front/dist/js/jquery.min.js" ></script>
<script type="text/javascript" language="javascript" src="front/dist/js/bootstrap.min.js"></script>
<script type="text/javascript">
$(function(){
	var js_id="<%=id%>";
	//console.log("js-id = "+js_id);
	if(js_id.match("root")){
		//sidebar 
		$(".side-fli").removeClass("active");
		$(".side-fli[data-target='js-info']").addClass("active");
		//show and hide content block
		$(".js-content[id!='js-info']").addClass("hide");
	}else{
		//sidebar 
		$(".side-fli").removeClass("active");
		$(".side-fli[data-target='"+js_id+"']").addClass("active");
		//show and hide content block
		$(".js-content[id!='"+js_id+"']").addClass("hide");
		
		
	}
	$(".js-sideli").on({
		"click":function(){
			/* $(this).siblings().removeClass("active");
			$(this).addClass("active"); */
			var target=$(this).attr("data-target");
			console.log("data-target = "+target);
			window.location.href="front/about.jsp?id="+target;
		}
	});
});
</script>
</body>
</html>
