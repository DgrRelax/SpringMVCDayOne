<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>跳转成功的回参</title>
</head>
<body>
	<h1>Success 222222 !!!!</h1>
	<br>
	
	Model   key : value 形式参数 ：： ${requestScope.param}
	<br>
	Map     key : value 形式参数：：${requestScope.un}<br>
	Map     key : value 形式参数：：${requestScope.pw}
	<br>
	
	用户名： ${requestScope.outnamme}<br>
	密     码： ${requestScope.outpass}
	<br>
	
	
</body>
</html>	