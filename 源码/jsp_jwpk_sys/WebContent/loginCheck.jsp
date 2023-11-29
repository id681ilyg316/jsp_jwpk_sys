<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ page language="java" import="entity.*,util.*"%>
<%

	response.setCharacterEncoding("utf-8");
    response.setContentType("text/html;charset=utf-8");
  	String name=request.getParameter("UserName");
  	String pwd=request.getParameter("Password");
  	String type=request.getParameter("Authd");
  	
  	User u=SystemUtil.login(name,pwd,type);
    if(u!=null){
        session.setAttribute("loginUser", u);
    	response.sendRedirect("main.jsp");
    }else{
        response.sendRedirect("error.jsp");
    }
%>

