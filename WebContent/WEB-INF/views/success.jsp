<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<p>success !!</p>
	
	time:${requestScope.time}
	
	<br>
	names:${requestScope.names}
	<br>
	request user:${requestScope.user},${requestScope.content}
	<br>
	session user:${sessionScope.user},${requestScope.content}
	<br>
	request school:${requestScope.school}
	<br>
	session school:${sessionScope.school}
	<br>
	<fmt:message key="i18n.username"></fmt:message>
	<br>
	<fmt:message key="i18n.password"></fmt:message>
</body>
</html>