<%@ page language="java" pageEncoding="UTF-8"%>
<%@ page language="java" import="entity.*,util.*"%>

<% if(session.getAttribute("loginUser")==null){
  response.sendRedirect("../../login.html");
}%>

<%
	request.setCharacterEncoding("UTF-8");
	String action=request.getParameter("actionOption");
	if(action.equals("save")){
		Byrow c=Byrow.createModel(Byrow.class,request.getParameterMap());
		if(c.save()){
	    	response.sendRedirect("byrow_list.jsp?class_id="+c.getClass_id()+"&course_id="+c.getCourse_id());
		}
  		
 	 
	}else if(action.equals("update")){
		Byrow c=Byrow.createModel(Byrow.class,request.getParameterMap());
		if(c.update()){
  		 	response.sendRedirect("byrow_list.jsp");
  		}
	}else if(action.equals("delete")){
	   String id=request.getParameter("id");
		User c=User.find(User.class,id);
		if(c!=null){
			c.destroy();
		}
		response.sendRedirect("byrow_list.jsp");
  		
	}
%>