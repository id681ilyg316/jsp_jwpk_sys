<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<% if(session.getAttribute("loginUser")==null){
  response.sendRedirect("login.html");
  response.setCharacterEncoding("UTF-8");
  response.setContentType("text/html;charset=utf-8");
}%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html xmlns="http://www.w3.org/1999/xhtml"><head><title>管理中心</title>
<meta http-equiv="Content-Type" content="text/html;charset=utf-8"></head>
<frameset rows="59,*" frameborder="no" border="0" framespacing="0">
	<frame src="default/top.jsp" noresize="noresize" frameborder="0" name="topFrame" marginwidth="0" marginheight="0" scrolling="no">
<frameset rows="*" cols="195,*" id="frame">
	<frame src="default/left.jsp" name="leftFrame" noresize="noresize" marginwidth="0" marginheight="0" frameborder="0" scrolling="auto">
	<frame src="default/right.jsp" name="main" marginwidth="0" marginheight="0" frameborder="0" scrolling="yes">
</frameset>
<frame src="UntitledFrame-1" noresize="noresize" frameborder="0" name="bottomFrame" marginwidth="0" marginheight="0" scrolling="no">
<noframes>
	<body></body>
</noframes>
</frameset>
</html>