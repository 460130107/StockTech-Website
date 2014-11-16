<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<base href="<%=basePath%>">
<title>斯多克 -- 最新资讯</title>
   
<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">    
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
<link rel="stylesheet" type="text/css" href="front/dist/css/bootstrap.css">
<link rel="stylesheet" type="text/css" href="front/dist/css/base.css">
<link rel="stylesheet" type="text/css" href="front/dist/css/common.css">
<link rel="stylesheet" type="text/css" href="front/dist/css/page.css">
</head>
<body>
<jsp:include page="_header.jsp?index=news"></jsp:include>

<div class="container">
	<div class="row">
		<div class="col-lg-12">
			<div class="tab-horizontal">
				<div class="topbar">
					<ul class="mgt20">
						<li class="active" data-target="js-block1">全部新闻</li>
						<li class="" data-target="js-block2">财经头条</li>
						<li class="" data-target="js-block3">财经要闻</li>
						<li class="" data-target="js-block4">投资者管理</li>
					</ul>
					<span class="more important"><a href="front/news.jsp">返回资讯主页&#8634;</a></span>
				</div>
				<div class="clearfix"></div>
				<div class="content mgt20 mgb20">
					<!-- 全部新闻 -->
					<div class="block" data-aim="js-block1">
						<div class="news">
							<div class="row">
								<div class="col-lg-3 col-md-3 col-sm-3 col-xs-3"><img class="imply" alt="新闻1+1" src="front/dist/img/news/news1.jpg"></div>
								<div class="col-lg-9 col-lg-9 col-sm-9 col-xs-9">
									<div class="fagement">
										<p class="title">新闻1+1 all-1</p>
										<p class="source">新华社新闻</p>
										<div class="body">。先说说周五兰石引起的惨案，兰石之前说过几次，可以翻前贴看看。射人先射马，擒贼先擒王，龙头跌下神坛是必须的，另外龙头跌落，也会拉了一片陪葬。以跌停开始回调是迅猛的，直线下落，很快会回调到位，整体兰石那批估计要在回调20%左右。迪瑞医疗，腾信股份，花园生物等相对优秀者肯定不会回调到开板价的；质地差些的搞不好回到开板价。</div>
									</div>
								</div>
							</div>							
						</div>
						<div class="news">
							<div class="row">
								<div class="col-lg-3 col-md-3 col-sm-3 col-xs-3"><img class="imply" alt="新闻1+1" src="front/dist/img/news/news1.jpg"></div>
								<div class="col-lg-9 col-lg-9 col-sm-9 col-xs-9">
									<div class="fagement">
										<p class="title">新闻1+1 all-2</p>
										<p class="source">新华社新闻</p>
										<div class="body">。先说说周五兰石引起的惨案，兰石之前说过几次，可以翻前贴看看。射人先射马，擒贼先擒王，龙头跌下神坛是必须的，另外龙头跌落，也会拉了一片陪葬。以跌停开始回调是迅猛的，直线下落，很快会回调到位，整体兰石那批估计要在回调20%左右。迪瑞医疗，腾信股份，花园生物等相对优秀者肯定不会回调到开板价的；质地差些的搞不好回到开板价。</div>
									</div>
								</div>
							</div>							
						</div>
					</div><!-- end 全部新闻 -->
					
					<!-- 财经头条 -->
					<div class="block hide" data-aim="js-block2">
						<div class="news">
							<div class="row">
								<div class="col-lg-3 col-md-3 col-sm-3 col-xs-3"><img class="imply" alt="新闻1+1" src="front/dist/img/news/news1.jpg"></div>
								<div class="col-lg-9 col-lg-9 col-sm-9 col-xs-9">
									<div class="fagement">
										<p class="title">新闻1+1 b2-1</p>
										<p class="source">新华社新闻</p>
										<div class="body">。先说说周五兰石引起的惨案，兰石之前说过几次，可以翻前贴看看。射人先射马，擒贼先擒王，龙头跌下神坛是必须的，另外龙头跌落，也会拉了一片陪葬。以跌停开始回调是迅猛的，直线下落，很快会回调到位，整体兰石那批估计要在回调20%左右。迪瑞医疗，腾信股份，花园生物等相对优秀者肯定不会回调到开板价的；质地差些的搞不好回到开板价。</div>
									</div>
								</div>
							</div>							
						</div>
						<div class="news">
							<div class="row">
								<div class="col-lg-3 col-md-3 col-sm-3 col-xs-3"><img class="imply" alt="新闻1+1" src="front/dist/img/news/news1.jpg"></div>
								<div class="col-lg-9 col-lg-9 col-sm-9 col-xs-9">
									<div class="fagement">
										<p class="title">新闻1+1 b2-2</p>
										<p class="source">新华社新闻</p>
										<div class="body">。先说说周五兰石引起的惨案，兰石之前说过几次，可以翻前贴看看。射人先射马，擒贼先擒王，龙头跌下神坛是必须的，另外龙头跌落，也会拉了一片陪葬。以跌停开始回调是迅猛的，直线下落，很快会回调到位，整体兰石那批估计要在回调20%左右。迪瑞医疗，腾信股份，花园生物等相对优秀者肯定不会回调到开板价的；质地差些的搞不好回到开板价。</div>
									</div>
								</div>
							</div>							
						</div>
					</div><!-- end 财经头条 -->
					
					<div class="block hide" data-aim="js-block3">
						<div class="news">
							<div class="row">
								<div class="col-lg-3 col-md-3 col-sm-3 col-xs-3"><img class="imply" alt="新闻1+1" src="front/dist/img/news/news1.jpg"></div>
								<div class="col-lg-9 col-lg-9 col-sm-9 col-xs-9">
									<div class="fagement">
										<p class="title">新闻1+1 b3-1</p>
										<p class="source">新华社新闻</p>
										<div class="body">。先说说周五兰石引起的惨案，兰石之前说过几次，可以翻前贴看看。射人先射马，擒贼先擒王，龙头跌下神坛是必须的，另外龙头跌落，也会拉了一片陪葬。以跌停开始回调是迅猛的，直线下落，很快会回调到位，整体兰石那批估计要在回调20%左右。迪瑞医疗，腾信股份，花园生物等相对优秀者肯定不会回调到开板价的；质地差些的搞不好回到开板价。</div>
									</div>
								</div>
							</div>							
						</div>
						<div class="news">
							<div class="row">
								<div class="col-lg-3 col-md-3 col-sm-3 col-xs-3"><img class="imply" alt="新闻1+1" src="front/dist/img/news/news1.jpg"></div>
								<div class="col-lg-9 col-lg-9 col-sm-9 col-xs-9">
									<div class="fagement">
										<p class="title">新闻1+1 b3-2</p>
										<p class="source">新华社新闻</p>
										<div class="body">。先说说周五兰石引起的惨案，兰石之前说过几次，可以翻前贴看看。射人先射马，擒贼先擒王，龙头跌下神坛是必须的，另外龙头跌落，也会拉了一片陪葬。以跌停开始回调是迅猛的，直线下落，很快会回调到位，整体兰石那批估计要在回调20%左右。迪瑞医疗，腾信股份，花园生物等相对优秀者肯定不会回调到开板价的；质地差些的搞不好回到开板价。</div>
									</div>
								</div>
							</div>							
						</div>	
					</div>
					
					<div class="block hide" data-aim="js-block4">
						<div class="news">
							<div class="row">
								<div class="col-lg-3 col-md-3 col-sm-3 col-xs-3"><img class="imply" alt="新闻1+1" src="front/dist/img/news/news1.jpg"></div>
								<div class="col-lg-9 col-lg-9 col-sm-9 col-xs-9">
									<div class="fagement">
										<p class="title">新闻1+1 b4-1</p>
										<p class="source">新华社新闻</p>
										<div class="body">。先说说周五兰石引起的惨案，兰石之前说过几次，可以翻前贴看看。射人先射马，擒贼先擒王，龙头跌下神坛是必须的，另外龙头跌落，也会拉了一片陪葬。以跌停开始回调是迅猛的，直线下落，很快会回调到位，整体兰石那批估计要在回调20%左右。迪瑞医疗，腾信股份，花园生物等相对优秀者肯定不会回调到开板价的；质地差些的搞不好回到开板价。</div>
									</div>
								</div>
							</div>							
						</div>
						<div class="news">
							<div class="row">
								<div class="col-lg-3 col-md-3 col-sm-3 col-xs-3"><img class="imply" alt="新闻1+1" src="front/dist/img/news/news1.jpg"></div>
								<div class="col-lg-9 col-lg-9 col-sm-9 col-xs-9">
									<div class="fagement">
										<p class="title">新闻1+1 b4-2</p>
										<p class="source">新华社新闻</p>
										<div class="body">。先说说周五兰石引起的惨案，兰石之前说过几次，可以翻前贴看看。射人先射马，擒贼先擒王，龙头跌下神坛是必须的，另外龙头跌落，也会拉了一片陪葬。以跌停开始回调是迅猛的，直线下落，很快会回调到位，整体兰石那批估计要在回调20%左右。迪瑞医疗，腾信股份，花园生物等相对优秀者肯定不会回调到开板价的；质地差些的搞不好回到开板价。</div>
									</div>
								</div>
							</div>							
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>

<jsp:include page="_footer.jsp" />
<script type="text/javascript" language="javascript" src="front/dist/js/jquery.min.js" ></script>
<script type="text/javascript" language="javascript" src="front/dist/js/jquery-ui.min.js"></script>
<script type="text/javascript" language="javascript" src="front/dist/js/bootstrap.min.js"></script>
<script type="text/javascript">
function switchTab_hor(){
	var target=$(this).attr("data-target");
	$(".tab-horizontal .block[data-aim]").removeClass("hide");
	$(".tab-horizontal .block[data-aim!='"+target+"']").addClass("hide");
	/*topbar li style switch*/
	$(".tab-horizontal .topbar li").removeClass("active");
	$(".tab-horizontal .topbar li[data-target='"+target+"']").addClass("active");
}
$(".tab-horizontal .topbar li").click(switchTab_hor);
</script>
</body>
</html>
