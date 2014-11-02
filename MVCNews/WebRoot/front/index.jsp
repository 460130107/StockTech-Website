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
<div class="page-content">
	<div class="container-fluid">
		<div class="row-fluid poster-main" style="padding-top:430px;height:659px;background-image: url('front/dist/img/index_main_bg.jpg');background-size:100% 100% ">
			<div style="text-align: center;"><a class="link-button" href="front/product.jsp"></a></div>
		</div> 
	
	<div class="sections-list container-fluid">
		<div class="row section section-nomargin">
			<div class="col-lg-12 pin">
				<img alt="pin" src="front/dist/img/index_pin_gray.png">
			</div>
			<div class="col-lg-12 wisdom-saying text-center">
				<div class="row">
					<div class="col-lg-2 col-lg-offset-5">
						<img alt="portrait" src="front/dist/img/index_investor_livermore.png">
						<p class="author-name">杰西·利弗莫尔</p>
					</div>
				</div>
				<div class="row">
					<div class="col-lg-6 col-lg-offset-3 content">
						"如果你比99%的人知道的都多<br/>那你一定比99%的人都赚钱"
					</div>
				</div>
				<div class="row">
					<div class="col-lg-6 col-lg-offset-3 explaination">
						<span class="important-data">24年</span>行业数据积累，<span class="important-data">16亿</span>条股市信息，<span class="important-data">21万</span>家公司情报<br/>尽情为您服务
					</div>
				</div>
				<div class="row">
					<div class="col-lg-6 col-lg-offset-3 link">
						<a href="front/product.jsp">了解如何利用这些数据
							<span class="link-icon"></span>
							</a><img alt="link" src="front/dist/img/index_icon_goto.png" >
					</div>
				</div>
			</div>
		</div>
		
		<div class="row section section-margin section-white">
			<div class="col-lg-12 pin">
				<img alt="pin" src="front/dist/img/index_pin_white.png">
			</div>
			<div class="col-lg-12 wisdom-saying text-center">
				<div class="row">
					<div class="col-lg-2 col-lg-offset-5">
						<img alt="portrait" src="front/dist/img/index_investor_newberg.png">
						<p class="author-name">罗伊·纽伯格</p>
					</div>
				</div>
				<div class="row">
					<div class="col-lg-6 col-lg-offset-3 content">
						"投资的成功是建立在已有的知识和经验基础上的"
					</div>
				</div>
				<div class="row">
					<div class="col-lg-6 col-lg-offset-3 explaination">
						<span class="important-data">专家</span>级的水平，<span class="important-data">管家</span>式的服务，斯多克为客户提供业界<span class="important-data">顶级</span>服务体验
					</div>
				</div>
				<div class="row">
					<div class="col-lg-6 col-lg-offset-3 link">
						<a href="front/ourteam.jsp">查看我们的团队
							<span class="link-icon"></span>
							</a><img alt="link" src="front/dist/img/index_icon_goto.png" >
					</div>
				</div>
			</div>
		</div>
		
		<div class="row section section-onmargin">
			<div class="col-lg-12 pin">
				<img alt="pin" src="front/dist/img/index_pin_gray.png">
			</div>
			<div class="col-lg-12 wisdom-saying text-center">
				<div class="row">
					<div class="col-lg-2 col-lg-offset-5">
						<img alt="portrait" src="front/dist/img/index_investor_buffett.png">
						<p class="author-name">沃伦·巴菲特</p>
					</div>
				</div>
				<div class="row">
					<div class="col-lg-6 col-lg-offset-3 content">
						"别犯大错"
					</div>
				</div>
				<div class="row">
					<div class="col-lg-6 col-lg-offset-3 explaination">
						新型智能决策方式，规避经验决策<span class="ignore-data">风险</span>，强化理性决策<span class="important-data">收益</span>
					</div>
				</div>
				<div class="row">
					<div class="col-lg-6 col-lg-offset-3 link">
						<a href="front/product.jsp">详细了解如何斯多克如何帮您做出更可靠决策
							<span class="link-icon"></span>
							</a><img alt="link" src="front/dist/img/index_icon_goto.png" >
					</div>
				</div>
			</div>
		</div>
		
		<div class="row section section-margin section-white">
			<div class="col-lg-12 pin">
				<img alt="pin" src="front/dist/img/index_pin_white.png">
			</div>
			<div class="col-lg-12 wisdom-saying text-center">
				<div class="row">
					<div class="col-lg-2 col-lg-offset-5">
						<img alt="portrait" src="front/dist/img/index_investor_rogers.png">
						<p class="author-name">吉姆·罗杰斯</p>
					</div>
				</div>
				<div class="row">
					<div class="col-lg-6 col-lg-offset-3 content">
						"让富有的人更富有"
					</div>
				</div>
				<div class="row">
					<div class="col-lg-6 col-lg-offset-3 explaination">
						您对斯多克的<span class="important-data">信任</span>将为您带来超越想象的<span class="important-data">回报</span>！
					</div>
				</div>
				<div class="row">
					<div class="col-lg-6 col-lg-offset-3 link">
						<a href="front/productDetail.jsp">查看我能获得多少回报率
							<span class="link-icon"></span>
							</a><img alt="link" src="front/dist/img/index_icon_goto.png" >
					</div>
				</div>
			</div>
		</div>
		
	</div>
</div>

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
