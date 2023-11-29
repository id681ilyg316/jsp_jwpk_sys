<%@ page contentType="text/html; charset=UTF-8" language="java" %>
<%@ page language="java" import="entity.*,util.*"%>
<% if(session.getAttribute("loginUser")==null){
  response.sendRedirect("login.html");
  response.setCharacterEncoding("UTF-8");
  response.setContentType("text/html;charset=utf-8");
}%>