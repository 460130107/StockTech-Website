<%@ page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>关于斯多克</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="description" content="斯多克科技，智能投资领导者！">
<meta name="keywords" content="斯多克科技，斯多克，智能投资，股票投资">
<meta name="author" content="斯多克科技">
<meta name="robots" content="index,follow">
<meta name="application-name" content="istocktech.com">
<link rel="icon" href="./dist/img/icon_stockii_square.png">
<base href="<%= request.getScheme() + "://" + request.getServerName() + ":" + 
	request.getServerPort() + request.getContextPath() %>/" />
<link href="front/dist/css/bootstrap.css" rel="stylesheet">
<link href="front/dist/css/common.css" rel="stylesheet">
<style type="text/css">
    
</style>
</head>

<body data-spy="scroll" data-target="#myScrollspy">
<jsp:include page="_header.jsp" />
    <div class="container">
				<div class="page-header">
					<h1>
						我们的团队
<!-- 						与<span class="stockii-name">斯多克</span>一同开启<span -->
<!-- 							class="science-green">智能投资</span>时代<small>&nbsp;&nbsp;一个英明的决策可以彻底改变您的一生</small> -->
					</h1>
					<div>斯多克以开启智能投资崭新时代的梦想及互联网金融创新的基因凝聚了一批充满阳光、活力和进取精神的金融及技术精英，他们成为了伟大梦想脚踏实地的践行者。</div>
				</div>
<!-- 				<div class="col-lg-2"> -->
<!-- 					<ul class="nav nav-tabs nav-stacked"> -->
	<!--                 <li class="active"><a href="front/corpration.jsp#mode">合作模式</a></li> -->
<!-- 						<li><a href="front/corpration.jsp#partner">合作伙伴</a></li> -->
<!-- 						<li><a href="front/corpration.jsp#declaration">合作宣言</a></li> -->
<!-- 		                <li><a href="front/corpration.jsp#mustknow">合作须知</a></li> -->
<!-- 		                <li><a href="front/corpration.jsp#contact">联系方式</a></li> -->
<!-- 	            	</ul> -->
<!-- 				</div> -->
				<div class="col-lg-10 sections news-list">
					<div class="row">
						<div class="col-lg-3">
							<img class="cover" alt="photo" src="front/dist/img/manager_photo_wangyufei.jpg">
						</div>
						<div class="col-lg-9">
							<div class="row title">
								<h3 class="col-lg-12">王宇飞<span class="title-subtitle text-right">创始合伙人</span></h3>
							</div>
							<div class="row body">
								<div>毕业于北京邮电大学计算机学院，曾先后创立ChubbyWhale、Stockii等公司，在量化投资、人工智能等领域均有深入研究和实践。中关村青年创业者联盟发起人，海淀区优秀青年人才计划人选。</div>
								<div>2014年，主导创建斯多克科技公司。</div>
							</div>
						</div>
						
					</div>
					<hr/>
					<div class="row">
						<div class="col-lg-3">
							<img class="cover" alt="photo" src="front/dist/img/manager_photo_xunaixuan.jpg">
						</div>
						<div class="col-lg-9">
							<div class="row title">
								<h3 class="col-lg-12">张峻岷<span class="title-subtitle text-right">创始合伙人</span></h3>
							</div>
							<div class="row body">
								<div>张峻岷博士毕业于美国伊利诺伊州立大学计算机系，曾拜读于世界顶级大数据专家李克·伯纳门下，对Hadoop MapReduce及NoSQL Database有深入研究，是将大数据应用到证券投资领域的最早期实践者之一。</div>
								<div>2014年，作为合伙人创建斯多克科技公司。</div>
							</div>
						</div>
					</div>
					<hr/>
					<div class="row">
						<div class="col-lg-3">
							<img class="cover" alt="photo" src="front/dist/img/manager_photo_xunaixuan.jpg">
						</div>
						<div class="col-lg-9">
							<div class="row title">
								<h3 class="col-lg-12">徐乃煊<span class="title-subtitle text-right">副总裁</span></h3>
							</div>
							<div class="row body">
								<div>曾就职于SAP大中华区大数据业务部，工商银行证券投资基金中心。原Dobytes Studio创始人，Intimatest的开发者，在互联网开发及营销领域有深刻理解和广泛实践。</div>
								<div>2014年，作为合伙人创建斯多克科技公司。</div>
							</div>
						</div>
					</div>
					<hr/>
					<div class="row">
						<div class="col-lg-3">
							<img class="cover" alt="photo" src="front/dist/img/manager_photo_xunaixuan.jpg">
						</div>
						<div class="col-lg-9">
							<div class="row title">
								<h3 class="col-lg-12">关放<span class="title-subtitle text-right">技术总监、首席架构师</span></h3>
							</div>
							<div class="row body">
								<div>曾就职于微软亚洲研究院，中国联通云计算中心。长期负责大型企业的系统架构、项目管理工作，对大型互联网产品、服务的设计与架构具有独到造诣。</div>
								<div>目前全面负责斯多克的数据采集、分析及交易的平台架构设计等工作。</div>
							</div>
						</div>
					</div>
					<hr/>
					<div class="row">
						<div class="col-lg-3">
							<img class="cover" alt="photo" src="front/dist/img/manager_photo_xunaixuan.jpg">
						</div>
						<div class="col-lg-9">
							<div class="row title">
								<h3 class="col-lg-12">刘敏<span class="title-subtitle text-right">首席安全官</span></h3>
							</div>
							<div class="row body">
								<div>知名青年安全专家，曾拜读于世界顶级安全学者，美国北卡罗莱纳州立大学的Donald Jiang门下，深入研究网络安全，移动安全等课题，并发现了Maven13-106等数个安全漏洞。同时在CS架构、系统设计等领域具有丰富的经验。</div>
								<div>目前全面负责斯多克科技的数据安全等工作。</div>
							</div>
						</div>
					</div>
					<hr/>
					
				</div>
			
			
			</div>
<jsp:include page="_footer.jsp" />
<script type="text/javascript" language="javascript" src="front/dist/js/jquery.min.js" ></script>
<script type="text/javascript" language="javascript" src="front/dist/js/bootstrap.min.js"></script>	
<script type="text/javascript" language="javascript" src="front/dist/js/site.effect.js"></script>
<script type="text/javascript">
$(document).ready(function(){
    $("#myNav").affix({
        offset: { 
            top: 125 
     	}
    });
});
</script>
</body>
</html>

