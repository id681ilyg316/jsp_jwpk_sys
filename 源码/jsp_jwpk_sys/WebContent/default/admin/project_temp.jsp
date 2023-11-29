<%@ page language="java" pageEncoding="UTF-8"%>
<%@ page language="java" import="entity.*,util.*"%>

<% if(session.getAttribute("loginUser")==null){
  response.sendRedirect("../../login.html");
}%>

<%
	request.setCharacterEncoding("UTF-8");
	String action=request.getParameter("actionOption");
	if(action.equals("save")){
		Project c=Project.createModel(Project.class,request.getParameterMap());
  		if(c.save()){
  		 	response.sendRedirect("project_list.jsp");
  		}
	}else if(action.equals("update")){
		Project c=Project.createModel(Project.class,request.getParameterMap());
		if(c.update()){
  		 	response.sendRedirect("project_list.jsp");
  		}
	}else if(action.equals("delete")){
	   String id=request.getParameter("id");
		Project c=Project.find(Project.class,id);
		if(c!=null){
			c.destroy();
		}
		response.sendRedirect("project_list.jsp");
  		
	}
  	
  	
%>

