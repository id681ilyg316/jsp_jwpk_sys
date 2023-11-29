<%@ page contentType="text/html; charset=UTF-8"%>
<%@ page language="java"%>
<%@ page session="true"%>

<% 
   String err = (String)request.getParameter("err");
   String redirect = (String)request.getParameter("redirect");
   
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
"http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
   <title>操作提示页面</title>
   	<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
	<meta http-equiv="Pragma" content="no-cache">
	<meta http-equiv="Cache-Control" content="no-cache">
	<meta http-equiv="Expires" content="0">
   
</head>
<BODY>
   <DIV align="center">
              <H3><%="教室已经在使用"%> </H3>
              <BR>
              <FORM name="form" action="byrow_add.jsp">
                    <INPUT type="submit" value="返回">
              </FORM>
   </DIV>
</BODY>
</html>

