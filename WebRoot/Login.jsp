<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'Login.jsp' starting page</title>
    <link href="css/form.css" type="text/css" rel="stylesheet"/>
		<link href="css/table.css" type="text/css" rel="stylesheet"/>
		<link href="css/vbulletin.css" type="text/css" rel="stylesheet"/>
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

  </head>
  <body>
  	<hr>
  	
  	
  	<center>
  		<form action="guest.action" method="post">
  			<input type="hidden" name="method" value="login" />
  			用户名：<input name="guestName"><br>
  			密码:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
  			 
  			<input type="password" name="guestPw"><br>
  			选择自动登录的时间：<select name="date">
  			<option value="0">--选择自动登录的时间--</option>
  				<option value="1">一周</option>
  				<option value="2">二周</option> 
  			</select>
  		    <input type="submit" value="登录">
  		</form>
  		<hr>
  		
  	</center>
  </body>
</html>
