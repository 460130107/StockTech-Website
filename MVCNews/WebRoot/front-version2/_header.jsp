<%@ page contentType="text/html" pageEncoding="UTF-8"%>
<html>
<body>
	<nav class="nav navbar-inverse" role="navigation">
		<div class="container">
			<div class="navbar-header">
				<a class="navbar-brand nav-logo" href="#"></a>
			</div>
			<div class="collapse navbar-collapse">
				<ul class="nav navbar-nav">
					<li class='${param.index=="index"?"active":"" }'>
						<a href="front/index.jsp">首页</a></li>
					<li class='${param.index=="product"?"active":"" }'>
						<a href="front/product.jsp">产品</a></li>
					<li class='${param.index=="project"?"active":"" }'>
						<a href="front/project.jsp">项目</a></li>
						
					
					
					<li class="dropdown">
						<a class="dropdown-toggle" data-toggle="dropdown" href="front/recruit.jsp" target="_blank">关于斯多克</a>
							<ul class="dropdown-menu" data-toggle="toggle_ul">
								<li><a href="front/recruit.jsp">关于我们 </a></li>
								<li><a href="front/service_process.jsp">服务流程 </a></li>
							</ul>
					</li>
				</ul>
				<div id="account-bar" class="collapse navbar-collapse text-right">
					<ul class="nav navbar-nav" style="float: right;border-left: 1px solid black;height: 50px;">
						<li class='${param.index=="account"?"active":"" }'>
							<a href="front/account.jsp">登录</a>|</li>
						<li class='${param.index=="account"?"active":"" }'>
							<a href="front/signup.jsp">注册</a>|</li>
						<li class='${param.index=="account"?"active":"" }'>
							<a href="front/account.jsp">忘记密码</a></li>
					</ul>
				</div>
			</div>
			<!--/.nav-collapse -->
		</div>
	</nav>
</body>
</html>
