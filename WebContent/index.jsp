<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<a href="helloworld">hello world!</a>
	<br>
	<a href="springmvc/testRequestMapping">testRequestMapping!</a>	
	<br>
	<a href="springmvc/testMethod">testMethod!</a>
	<br>
	<form action="springmvc/testMethod" method="post">
		<input type="submit" value="提交"/>
	</form>
	<br>
	<a href="springmvc/testParamsAndHeaders?username=tom&age=11">testParamsAndHeaders!</a>
	<br>
	<a href="springmvc/testAntPath/mnxyc/abc">testAntPath!</a>
	<br>
	<a href="springmvc/testPathVariable/1">testPathVariable!</a>
	<br>
	<a href="springmvc/testRest/1">Test Rest Get!</a>
	<br>
	<form action="springmvc/testRest" method="post">
		<input type="submit" value="Test Rest Post"/>
	</form>
	<br>
	<form action="springmvc/testRest/1" method="post">
		<input type="hidden" name="_method" value="DELETE"/>
		<input type="submit" value="Test Rest DELETE"/>
	</form>
	<br>
	<form action="springmvc/testRest/1" method="post">
		<input type="hidden" name="_method" value="PUT"/>
		<input type="submit" value="Test Rest PUT"/>
	</form>
	<br>
	<a href="springmvc/testRequestParam?username=atguigu&age=11">Test RequestParam</a>	
	<br>
	<a href="springmvc/testRequestHeader">Test RequestHeader</a>
	<br>
	<a href="springmvc/testCookieValue">Test CookieValue</a>
	<br>
	<form action="springmvc/testPojo" method="post">
		username:<input type="text" name="username"/>
		<br>
		password:<input type="password" name="password"/>
		<br>
		email:<input type="text" name="email"/>
		<br>
		age:<input type="text" name="age"/>
		<br>
		city:<input type="text" name="address.city"/>
		<br>
		street:<input type="text" name="address.street"/>
		<br>
		<input type="submit" value="submit"/>
	</form>
	<br>
	<a href="springmvc/testServletAPI">Test ServletAPI</a>
	<br>
	<a href="springmvc/testModelAndView">Test ModelAndView</a>
	<br>
	<a href="springmvc/testMap">Test Map</a>
	<br>
	<a href="springmvc/testSessionAttributes">Test SessionAttributes</a>
	<br>
	<a href="daohang.jsp">导航</a>
	<br>
	<!-- 模拟修改操作
		1、原始数据  1，tom，123456，tom@163.com，12
		2、密码不能被修改
		3、表单回显	
	 -->
	
	<form action="springmvc/testModelAttribute" method="post">
		<input type="hidden" name="id" value="1"/>
		username:<input type="text" name="username" value="tom"/>
		<br>
		email:<input type="text" name="email" value="tom@163.com"/>
		<br>
		age:<input type="text" name="age" value="12"/>
		<br>
		<input type="submit" value="submit"/>
	</form>
	
	<br>
	<a href="springmvc/testView">Test View</a>
	<br>
	<a href="springmvc/testRedirect">Test Redirect</a>
</body>
</html>