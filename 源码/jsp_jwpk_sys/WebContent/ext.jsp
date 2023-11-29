<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
session.setAttribute("loginUser",null);
response.sendRedirect("login.html");
%>
