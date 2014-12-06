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
<title>公司简介--斯多克科技</title>
</head>
<body>
<jsp:include page="_header.jsp" />

<!-- START THE FEATURETTES -->
  <div class="container featurette">
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
  </div>
  <hr class="featurette-divider">

<jsp:include page="_footer.jsp" />
</body>
</html>