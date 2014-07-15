<%@ page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="description" content="">
<meta name="author" content="">
<link rel="icon" href="dist/img/icon.png">

<title>登录斯多克</title>
<link href="dist/css/signin.css" rel="stylesheet">
</head>

<body>
   <!--div class="navbar navbar-inverse navbar-fixed-top" role="navigation">
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
            <li><a href="index.html">首页</a></li>
            <li><a href="product.html">产品</a></li>
            <li><a href="service.html">服务</a></li>
            <li><a href="project.html">项目</a></li>
            <li class="active"><a href="account.html">帐户</a></li>
            <li><a href="corpration.html">合作</a></li>
            <li><a href="vip.html">VIP</a></li>
            <li><a href="recruit.html" target="_blank">加入我们</a></li>
          </ul>
        </div>
      </div>
    </div-->
    <jsp:include page="_header.jsp?index=account" />

    <div class="container">
      <form class="form-signin" role="form">
        <h2 class="form-signin-heading">登录到斯多克</h2>
        <input type="email" class="form-control" placeholder="用户名" required autofocus>
        <input type="password" class="form-control" placeholder="密码" required>
        <label class="checkbox">
          <input type="checkbox" value="remember-me">记住此用户名
        </label>
        <button class="btn btn-lg btn-primary btn-block" type="submit">登录</button>
        <a href="signup.html" class="btn btn-lg btn-warning btn-block">注册</a>
      </form>

    </div> <!-- /container -->


    <jsp:include page="_footer.jsp" />
  </body>
</html>
