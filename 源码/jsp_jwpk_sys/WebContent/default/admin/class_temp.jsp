<%@ page language="java" pageEncoding="UTF-8"%>
<%@ page language="java" import="entity.*,util.*"%>

<% if(session.getAttribute("loginUser")==null){
  response.sendRedirect("../../login.html");
}%>

<%
	request.setCharacterEncoding("UTF-8");
	String action=request.getParameter("actionOption");
	if(action.equals("save")){
		MyClass c=MyClass.createModel(MyClass.class,request.getParameterMap());
  		if(c.save()){
  		 	response.sendRedirect("class_list.jsp");
  		}
	}else if(action.equals("update")){
		MyClass c=MyClass.createModel(MyClass.class,request.getParameterMap());
		if(c.update()){
  		 	response.sendRedirect("class_list.jsp");
  		}
	}else if(action.equals("delete")){
	   String id=request.getParameter("id");
		MyClass c=MyClass.find(MyClass.class,id);
		if(c!=null){
			c.destroy();
		}
		response.sendRedirect("class_list.jsp");
  		
	}
%>