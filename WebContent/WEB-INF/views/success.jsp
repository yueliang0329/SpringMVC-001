<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
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
</body>
</html>