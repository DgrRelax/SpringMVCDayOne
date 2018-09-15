<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>

<link rel="stylesheet" href="a.css" type="text/css" /> 


<script src="static/jquery-3.3.1.js"></script>
<script type="text/javascript">
    $(function(){
        $("#submitLogin").click(function(){
             var name = $("#name").val();
             var pwd = $("#pwd").val();
             var users = {name:name,pwd:pwd}; //拼装成json格式
			 /* js中获取项目的路径 */
			 //方法一
             /* http: */
             var protocol = window.location.protocol;
             /* localhost:9080 */
             var host = window.location.host;
             /* /SpringMVCDayOne/index.jsp */
             var pathname = window.location.pathname;
             /* /SpringMVCDayOne */
             var projectName = pathname.substring(0,pathname.substr(1).indexOf('/')+1);
             
             //方法2
             /* http://localhost:9080/SpringMVCDayOne/index.jsp */
             var curPath = window.document.location.href
             var projectNameall = curPath.substring(0,find(curPath,'/',3));
             
             $.ajax({
                 type:"POST",
                 /* url: protocol + "//" + host + projectName +"/addUser", */
                 url: projectNameall + "/addUser",
                 data:users,
                 success:function(data){
                     alert("成功");
                 },
                 error:function(e) {
                     alert("出错："+e);
                 }
             });
        });
        
        /* 查询str字符中cha字符在第 num 次出现的位置 */
        function find(str,cha,num){
     	    var x=str.indexOf(cha);
     	    for(var i=0;i<num;i++){
     	        x=str.indexOf(cha,x+1);
     	    }
     	    return x;
        }
        
    });
</script>

</head>
<body>
		
	<h1>CSS</h1>
	
	<a href="hello">Hello SpringMVC</a>
	<!-- 此访问的路径是  http://localhost:9080/SpringMVCDayOne/hello -->
	
	<!-- 
	<a href="/hello">Hello SpringMVC</a> 若是 hello 前加斜杠，
	其访问的路径是  http://localhost:9080/hello
	 -->
	
	<br>

	<a href="mvc/testModelAndView">Test ModelAndView</a>
	
	<br>
	
	<!-- <a href="mvc/testMethod">Test Method</a> -->
	<!-- mvc/testMethod 的路径方法中规定请求方法必须未post,所以这种请求会报错-->
	<br><!-- mvc/testMethod 路径中使用post 请求，所以这个请求又值 -->
	<form action="mvc/testMethod" method="post">
		<input type="submit" value="Test Method"></input>
	</form>
	
	<br>
	
	<!-- 使用了params{} 如果不传入参数的话，回请求错误 ,
	正确请求参数格式如下，?key=value &链接，火狐浏览器可以，eclipse里面的不行
	-->
	<a href="mvc/testParams?name=巴基&age=18&sex=1">Test testParams</a>
	
	<br>
	
	<!-- 此路径中使用了ant url 同配置符 -->
	<a href="mvc/testAntUrl/dkjid/jdhjdu/aboc">Test AntUrl</a>
	
	<br>
	
	<a href="testModelAndView1">Test ModelAndView</a>
	<br>
	
	<a href="testPathVariable/110/simtch">Test PathVariable</a>
	<br>
	
	<a href="testRestGet/542/Tom">Test RestGET</a>
	<br>
	
	<form action="testRestPOST" method="post">
		<input type="text" name="aaa">
		<input type="submit" value="Test RestPOST">
	</form>
	<br>
	
	
	<form action="testServletAPI" method="post">
		<input type="text" name="username"><br>
		<input type="text" name="password"><br>
		<input type="submit" value="Test ServletAPI">
	</form>
	<br>
	
	<form action="testRequestParam" method="post">
		<input type="text" name="username"><br>
		<input type="text" name="password"><br>
		<input type="submit" value="Test ServletAPI">
	</form>
	<br>
	
	<!-- PUT请求的前端中添加  <input type="hidden" name="_method" value="PUT"/>  -->
	<form action="testRestPUT" method="post">
		<input type="hidden" name="_method" value="PUT"/>
		<input type="text" name="inputname"><br>
		<input type="text" name="inputpass"><br>
		<input type="submit" value="Test PUT">
	</form>
	<br>
	
	<!-- PUT请求的前端中添加  <input type="hidden" name="_method" value="DELETE"/>  -->
	<form action="testRestDelete" method="post">
		<input type="hidden" name="_method" value="DELETE"/>
		<input type="text" name="inputname"><br>
		<input type="text" name="inputpass"><br>
		<input type="submit" value="Test Delete">
	</form>
	<br>
	
	<!-- 使用pojo进行接收 -->
	<form action="testPOJO" method="post">
		username:<input type="text" name="name"/><br/>
		age:<input type="text" name="age"/><br/>
		province:<input type="text" name="address.province"/><br>
		city:<input type="text" name="address.city"/><br/>
		<input type="submit" value="Test POJO"/>
	</form>
	
	
	
	<form action="" method="post" id="testForm">
        <div class="login-item">
            <label>用户名：</label>
            <input type="text" name="name" id="name">
        </div>
            <div class="login-item">
            <label>密码：</label>
            <input type="password" name="pwd" id="pwd">
        </div>
        <div class="login-submit">
            <input type="hidden" name="status" value="1" id="status">
            <input type="button" value="添加用户" id="submitLogin">
        </div>
    </form>
	<br>
	
	<a href="testCookieValue">Test CookieValue</a>
	<br/>

	<a href="testRequestHeader">Test RequestHeader</a>
	<br/>
	
</body>
</html>