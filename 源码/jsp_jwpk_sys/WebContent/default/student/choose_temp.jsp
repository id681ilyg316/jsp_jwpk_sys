<%@ page language="java" pageEncoding="UTF-8"%>
<%@ page language="java" import="entity.*,util.*"%>

<% if(session.getAttribute("loginUser")==null){
  response.sendRedirect("../../login.html");
}%>

<%
	request.setCharacterEncoding("UTF-8");
	String action=request.getParameter("actionOption");
	if(action.equals("save")){
		Choose c=Project.createModel(Choose.class,request.getParameterMap());
  		if(c.save()){
  		 	response.sendRedirect("choose_list.jsp");
  		}
	}else if(action.equals("update")){
		Choose c=Choose.createModel(Choose.class,request.getParameterMap());
		if(c.update()){
  		 	response.sendRedirect("choose_list.jsp");
  		}
	}else if(action.equals("delete")){
	   String id=request.getParameter("id");
		Choose c=Choose.find(Choose.class,id);
		if(c!=null){
			c.destroy();
		}
		response.sendRedirect("choose_list.jsp");
  		
	}
  	
  	
%>

