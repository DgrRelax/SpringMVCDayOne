<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>New Page</title>

<!-- <link rel="stylesheet" href="/SpringMVCDayOne/static/a.css" type="text/css" />  -->

<%-- <link rel="stylesheet" href="<%= this.getServletContext().getContextPath()%>/static/a.css" type="text/css" />  --%>

<%-- 	<link rel="stylesheet" href="${pageContext.request.contextPath}/static/a.css" type="text/css" /> --%>

	<link rel="stylesheet" href="../static/a.css" type="text/css" />

</head>
<body>
	<h1>ModelAndView 跳转</h1>
	
	<br>
	
	${requestScope.address}
	
	<br>
	
	${address }

	<br>	
	
	${requestScope.Object.name} <!-- 对象的实例是user, ModelAndView传的是key value 值 -->
	<br>
	${requestScope.Object.age}
	<br>
	${requestScope.Object.address.province}
	<br>
	${requestScope.Object.address.city}
	<br>
	
	
	
</body>
</html>