<%@ page contentType="text/html" pageEncoding="UTF-8"%>
<html>
 	 <link href="front/dist/css/bootstrap.min.css" rel="stylesheet">
 	 <link href="front/dist/css/common.css" rel="stylesheet">
  <body>
      <nav class="navbar navbar-inverse navbar-fixed-top" role="navigation">
      <div class="container">
        <div class="navbar-header">
          <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
            <span class="sr-only">Toggle navigation</span>
            <span class="icon-bar">test</span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
          </button>
        </div>
        <div class="collapse navbar-collapse">
          <ul class="nav navbar-nav">
            <li class='${param.index=="index"?"active":"" }'><a href="front/index.jsp">首页</a></li>
            <li class='${param.index=="product"?"active":"" }'><a href="front/product-1.jsp">产品</a></li>
            <li class='${param.index=="service"?"active":"" }'><a href="front/service-2.jsp">服务</a></li>
            <li class='${param.index=="project"?"active":"" }'><a href="front/project-1.jsp">项目</a></li>
            <li class='${param.index=="account"?"active":"" }'><a href="front/account.jsp">帐户</a></li>
            <li class='${param.index=="corpration"?"active":"" }'><a href="front/corpration.jsp">合作</a></li>
            <li class='${param.index=="recruit"?"active":"" }'><a href="front/recruit.jsp" target="_blank">加入我们</a></li>
          </ul>
        </div><!--/.nav-collapse -->
      </div>
    </nav>
</body>
</html>
