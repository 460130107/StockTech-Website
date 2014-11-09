<%@ page contentType="text/html" pageEncoding="UTF-8"%>
<%
	int result = (Integer)request.getAttribute("result");
%>
<center>
<%
	if(result == 1){	// 注册成功
%>
		<h3>感谢您的宝贵意见，两秒后将跳转到登陆页！</h3>
		<h3>如果没有跳转，请按<a href="front/index.jsp">这里</a>！</h3>
<%
	} else {
%>
		<h3>感谢您的宝贵意见，两秒后将跳转到登陆页！</h3>
		<h3>如果没有跳转，请按<a href="front/index.jsp">这里</a>！</h3>
<%
	}
%>
</center>