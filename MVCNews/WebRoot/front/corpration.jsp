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

<link href="front/dist/css/bootstrap.min.css" rel="stylesheet">
<link href="front/dist/css/common.css" rel="stylesheet">
<link href="front/dist/css/corpration.css" rel="stylesheet">
<title>合作加盟--斯多克科技</title>

</head>
<!-- NAVBAR
================================================== -->
  <body>
    <jsp:include page="_header.jsp?index=corpration" />
<!-- 	<header class="jumbotron subhead-dimblue" id="overview"> -->
<!-- 		<div class="container"> -->
<!-- 			<h1>与我们合作</h1> -->
<!-- 			<p class="lead">互利共赢，一同引领互联网金融的未来！</p> -->
<!-- 		</div> -->
<!-- 	</header> -->
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
				<div class="page-header delaration">
					<ul class="thumbnails">
					<li class="span4">
						<div class="thumbnail">
							<img alt="300x200" src="img/people.jpg" />
							<div class="caption">
								<h3>
									冯诺尔曼结构
								</h3>
								<p>
									也称普林斯顿结构，是一种将程序指令存储器和数据存储器合并在一起的存储器结构。程序指令存储地址和数据存储地址指向同一个存储器的不同物理位置。
								</p>
								<p>
									<a class="btn btn-primary" href="#">浏览</a> <a class="btn" href="#">分享</a>
								</p>
							</div>
						</div>
					</li>
					<h1>
						与<span class="stockii-name">斯多克</span>一同开启<span class="science-green">智能投资</span>时代<small>&nbsp;&nbsp;一个英明的决策可以彻底改变您的一生</small>
					</h1>
				</div>
			</div>
			<div class="col-lg-2">
				<ul class="nav nav-tabs nav-stacked">
                <li class="active"><a href="front/corpration.jsp#mode">合作模式</a></li>
                <li><a href="front/corpration.jsp#procedure">合作流程</a></li>
                <li><a href="front/corpration.jsp#mustknow">合作须知</a></li>
                <li><a href="front/corpration.jsp#contact">联系方式</a></li>
            </ul>
			</div>
			<div class="col-lg-10">
				<p>
					<em>斯多克</em>是一个分布式的版本控制系统，最初由<strong>Linus Torvalds</strong>编写，用作Linux内核代码的管理。在推出后，Git在其它项目中也取得了很大成功，尤其是在Ruby社区中。
				</p>
				<dl>
					<dt>Rolex</dt>
					<dd>劳力士创始人为汉斯.威尔斯多夫，1908年他在瑞士将劳力士注册为商标。</dd>
					<dt>Vacheron Constantin</dt>
					<dd>始创于1775年的江诗丹顿已有250年历史，</dd>
					<dd>是世界上历史最悠久、延续时间最长的名表之一。</dd>
					<dt>IWC</dt>
					<dd>创立于1868年的万国表有“机械表专家”之称。</dd>
					<dt>Cartier</dt>
					<dd>卡地亚拥有150多年历史，是法国珠宝金银首饰的制造名家。</dd>
				</dl>
				<address>
					<strong>Twitter, Inc.</strong><br /> 795 Folsom Ave, Suite 600<br />
					San Francisco, CA 94107<br /> <abbr title="Phone">P:</abbr> (123)
					456-7890
				</address>
			</div>
		</div>
	</div>
	
	<jsp:include page="_footer.jsp" />
	<script type="text/javascript" language="javascript" src="front/dist/js/jquery.min.js" ></script>
	<script type="text/javascript" language="javascript" src="front/dist/js/bootstrap.min.js"></script>
	<script type="text/javascript" language="javascript" src="front/dist/js/site.effect.js"></script>
	<script type="text/javascript" src="front/dist/js/stockii-ui.js"></script>
	
	<script type="text/javascript">
		$(function () {
			fullscreenHeight(".maxbg");
		});
		
	</script>
</body>
</html>