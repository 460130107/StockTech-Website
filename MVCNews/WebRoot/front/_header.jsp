<%@ page contentType="text/html" pageEncoding="UTF-8"%>

<div class="container-fluid">
	<nav class="nav navbar-default" role="navigation">
        <div class="container">
          <div class="navbar-header">
            <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
              <span class="sr-only">Toggle navigation</span>
              <span class="icon-bar"></span>
              <span class="icon-bar"></span>
              <span class="icon-bar"></span>
            </button>
            <a class="navbar-brand nav-logo" href="index">Stockii</a>
          </div>
          <div id="navbar" class="navbar-collapse collapse">
            <ul class="nav navbar-nav">
             	<li class='${param.index=="index"?"active":"" }'>
					<a href="index" onFocus="this.blur()">首页</a></li>
				 <li class='${param.index=="product"?"active":"" }'>
					<a href="product" onFocus="this.blur()">产品</a></li>
				 <li class='${param.index=="corpration"?"active":"" }'>
					<a href="corpration" onFocus="this.blur()">合作</a></li>
				<li class='${param.index=="news"?"active":"" }'>
					<a href="news" onFocus="this.blur()">咨询中心</a></li>
				 <li class='${param.index=="about"?"active":"" }'>
					<a href="about" onFocus="this.blur()">关于我们</a></li>
            </ul>
            <ul class="nav navbar-nav navbar-right">
		 		<li class='${param.index=="account"?"active":"" }'>
					<a href="account" onFocus="this.blur()">登录</a></li>
				<li class='${param.index=="signup"?"active":"" }'>
					<a href="signup" onFocus="this.blur()">注册</a></li>
				<li class='${param.index=="forum"?"active":"" }'>
					<a href="forum" onFocus="this.blur()">论坛</a></li>
            </ul>
          </div><!--/.nav-collapse -->
        </div><!--/.container-fluid -->
      </nav>
</div>
