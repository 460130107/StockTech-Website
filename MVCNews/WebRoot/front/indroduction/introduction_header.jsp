<%@ page contentType="text/html" pageEncoding="UTF-8"%>
<html>
<head>
<title>公司简介 -- 斯多克科技</title>
</head>
<body>
<nav class="nav" role="navigation" style="background: url('front/dist/img/introduction_header-1.png')">
	<div class="container">
		<div class="navbar-header">
			<a class="navbar-brand nav-logo" href="front/index.jsp"></a>
		</div>
		<div class="collapse navbar-collapse">
			<ul class="nav navbar-nav">
				<li style="padding: 10px;font-size: 20px;color:#fff;padding-left:30px;">简介中心</li>
			</ul>
			<div id="account-bar" class="collapse navbar-collapse text-right">
				<ul class="nav navbar-nav" style="float: right;border-left: 2px solid black;height: 50px;">
					<li class='${param.index=="account"?"active":"" }'><a href="front/account.jsp">登录</a></li>
					<li class='${param.index=="account"?"active":"" }'><a href="front/signup.jsp">注册</a></li>
					<li class='${param.index=="account"?"active":"" }'><a href="front/account.jsp">忘记密码</a></li>
				</ul>
			</div>	
		</div>			
	</div>
</nav>
</body>
</html>