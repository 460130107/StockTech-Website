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
<link rel="icon" href="front/dist/img/icon_stockii_square.png">
<title>斯多克科技，互联网金融引导者</title>
<link href="front/dist/css/bootstrap.css" rel="stylesheet">
<link href="front/dist/css/index.css" rel="stylesheet" type="text/css">
<link href="front/dist/css/common.css" rel="stylesheet">
<!--[if lte IE 9]>
	<script src="front/dist/js/respond.js"></script>
	<script src="front/dist/js/html5.js"></script>
<![endif]-->
</head>
<!-- NAVBAR
================================================== -->
<body>

<jsp:include page="_header.jsp?index=index" />
<!-- Carousel
    ================================================== -->
<div id="myCarousel" class="carousel slide" data-ride="carousel" > 
  <ol class="carousel-indicators">
    <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
    <li data-target="#myCarousel" data-slide-to="1"></li>
    <li data-target="#myCarousel" data-slide-to="2"></li>
  </ol>
  <div class="carousel-inner" >
    <div class="item active"> 
    <img src="front/dist/img/index_slide_1.jpg" alt="First slide">
      <div class="container">
        <div class="carousel-caption">
        </div>
      </div>
    </div>
    <div class="item"> <img src="front/dist/vagrant_header_background.png" alt="Second slide">
      <div class="container">
        <div class="carousel-caption">
          <h1>如何把钱用在正确的地方</h1>
          <p>股票投资，唯快不破！斯多克，让您抢尽先机！</p>
          <p><a class="btn btn-lg btn-primary" href="#" role="button">与我们合作</a></p>
        </div>
      </div>
    </div>
    <div class="item"> <img src="front/dist/vagrant_header_background.png" alt="Third slide">
      <div class="container">
        <div class="carousel-caption">
          <h1>斯多克VIP套餐，最专业的服务，最高效的决策</h1>
          <p>只需要1280/月，就可以享受到业界最先进的决策服务！(8月份前10个客户，可额外享用最高级VIP服务一个月！)</p>
          <p><a class="btn btn-lg btn-primary" href="#" role="button">注册会员</a></p>
        </div>
      </div>
    </div>
  </div>
  <!-- 轮播（Carousel）导航 -->
  <a class="left carousel-control" href="#myCarousel" role="button" data-slide="prev"><span class="glyphicon glyphicon-chevron-left"></span></a> 
  <a class="right carousel-control" href="#myCarousel" role="button" data-slide="next"><span class="glyphicon glyphicon-chevron-right"></span></a> </div>
<!-- /.carousel --> 


<!-- Marketing messaging and featurettes
    ================================================== --> 
<!-- Wrap the rest of the page in another container to center all the content. -->

<div class="container marketing"> 
  
  <!-- Three columns of text below the carousel -->
  <div class="row">
    <div class="col-lg-4"> 
    	<figure class="ser-blind" data-num="1"><!-- ser-blind==ser-mod-blind -->
	        <img src="image/indexPic.jpg" /><!-- ser-blind-top==ser-blind-toggle-top --><!-- ser-blind-toggle -->
	        <figcaption class="ser-blind-top" data-num="1">产品与套餐 &raquo;</figcaption>
	        <figcaption class="ser-blind-bottom" data-num="1"><h3>产品与套餐 </h3><p>斯多克致力于投资智能化，旨在为广大客户提供智能化的决策。</p><p>更多细节&raquo;</p></figcaption>       
      	</figure>
    </div>
    <!-- /.col-lg-4 -->
    <div class="col-lg-4">
    	<figure class="ser-blind" data-num="2">
            <img src="image/indexPic.jpg" />
            <figcaption class="ser-blind-top" data-num="2">资产管理 &raquo;</figcaption>
            <figcaption class="ser-blind-bottom" data-num="2"><h3>资产管理  </h3><p>斯多克致力于投资智能化，旨在为广大客户提供智能。</p><p>更多细节&raquo;</p></figcaption>       
        </figure>
    </div>
    <!-- /.col-lg-4 -->
    <div class="col-lg-4"> 
    	<figure class="ser-blind" data-num="3">
            <img src="image/indexPic.jpg" />
            <figcaption class="ser-blind-top" data-num="3">网上开户 &raquo;</figcaption>
            <figcaption class="ser-blind-bottom" data-num="3"><h3>网上开户 </h3><p>斯多克致力于投资智能化，旨在为广大客户提供贴心的服务。</p><p>更多细节&raquo;</p></figcaption>       
        </figure>
    </div>
    <!-- /.col-lg-4 --> 
  </div>
  <!-- /.row --> 
  </div>
  
  <!-- START THE FEATURETTES -->
  <div class="container featurette">
  <!-- <p>新增加内容</p> -->
  <hr class="featurette-divider">
  <div class="row featurette">
    <div class="col-md-7" >
     <div data-index-left="1">
      <h2 class="featurette-heading">斯多克科技提供什么：</br>
        </br>
        <span class="text-muted">让投资智能起来。</span></h2>
      <p class="lead">利用大数据、科学云计算、移动分布式计算等新兴技术进行投资智能化</p>
    </div>
    </div>
    <div class="col-md-5" > <div data-index-right="1"> <img class="featurette-image img-responsive" src="front/dist/img/index_intro1.jpg" alt="Generic placeholder image"> </div> </div>
  </div>
  <hr class="featurette-divider">
  <div class="row featurette">
    <div class="col-md-5" > <div data-index-left="2" ><img class="featurette-image img-responsive" src="front/dist/img/index_intro2.jpg" alt="Generic placeholder image"></div> </div>
    <div class="col-md-7">
     <div data-index-right="2" >
      <h2 class="featurette-heading">所谓的智能是指什么呢？</br>
        </br>
        <span class="text-muted">大数据和云计算</span></h2>
      <p class="lead">大数据(big data)，或称巨量资料，指的是所涉及的资料量规模巨大到无法透过目前主流软件工具，在合理时间内达到撷取、管理、处理、并整理成为帮助企业经营决策更积极目的的资讯</p>
     </div>
    </div>
  </div>
  <hr class="featurette-divider">
  <div class="row featurette">
    <div class="col-md-7" >
    <div data-index-left="3">
      <h2 class="featurette-heading">智能决策有多少是可靠的？</br>
        </br>
        <span class="text-muted">我们提供差异化的服务.</span></h2>
      <p class="lead">毫无疑问，最尊贵的客人会赢得最佳的服务，斯多克具有“再次光临的顾客可为公司带来25%-85%的利润，而吸引它们再次光临的因素首先是服务质量的好坏，其次是产品本身，最后才是价格”，因此，做好服务工作，以真诚和温情打动消费者的心，培养“永久顾客”，刺激重复购买，才是谋求企业长远利益的上策。.</p>
     </div>
    </div>
    <div class="col-md-5" > <div data-index-right="3" > <img class="featurette-image img-responsive" src="front/dist/img/index_intro3.jpg" alt="" style="width:500px; height: 500px;"> </div> </div>
  </div>
  <hr class="featurette-divider">
  
  <!-- /END THE FEATURETTES -->
  
  
</div>
<!-- /.container -->

	<jsp:include page="_footer.jsp" />
<script type="text/javascript" language="javascript" src="front/dist/js/jquery.min.js"></script>
<script type="text/javascript" language="javascript" src="front/dist/js/bootstrap.js"></script>
<script type="text/javascript" language="javascript" src="front/dist/js/jquery-ui.min.js"></script>
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
<!-- 降落特效 -->
<script type="text/javascript">
	/*$(document).ready(function(){
		$(".ser-blind").css("display","none");
		$(".ser-blind[data-num='1']").toggle("drop",{direction:"left"});
		$(".ser-blind[data-num='2']").toggle("drop",{direction:"up"});
		$(".ser-blind[data-num='3']").toggle("drop",{direction:"right"});
		$("div[data-index-left='1']").css("display","none");
		$("div[data-index-right='1']").css("display","none");
		$("div[data-index-left='1']").toggle("drop",{direction:"left"});
		$("div[data-index-right='1']").toggle("drop",{direction:"right"});
		var dropflagleft=1,dropflagright=1;
		$(document).scroll(function(){				
				if($(this).scrollTop()==500 && dropflagleft==1){
					$("div[data-index-left='2']").toggle("drop",{direction:"right"});
					$("div[data-index-right='2']").toggle("drop",{direction:"left"});
					dropflagleft++;
				}
				if($(this).scrollTop()==1000 && dropflagright==1){
					$("div[data-index-left='3']").toggle("drop",{direction:"left"});
					$("div[data-index-right='3']").toggle("drop",{direction:"right"});
					dropflagright++;
				}
		});
	});*/
</script>
</body>
</html>
