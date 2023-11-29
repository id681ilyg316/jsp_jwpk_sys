<%@ page language="java" pageEncoding="UTF-8"%>
<%@ page language="java" import="entity.*,util.*"%>

<% if(session.getAttribute("loginUser")==null){
  response.sendRedirect("../../login.html");
}%>

<%
	request.setCharacterEncoding("UTF-8");
	String action=request.getParameter("actionOption");
	if(action.equals("save")){
		Category c=Category.createModel(Category.class,request.getParameterMap());
		c.setCode(SystemUtil.getNextBillCode(Category.class,"B"));
  		if(c.save()){
  		 	response.sendRedirect("category_list.jsp");
  		}
	}else if(action.equals("update")){
		Category c=Category.createModel(Category.class,request.getParameterMap());
		if(c.update()){
  		 	response.sendRedirect("category_list.jsp");
  		}
	}else if(action.equals("delete")){
	   String id=request.getParameter("id");
		Category c=Category.find(Category.class,id);
		if(c!=null){
			c.destroy();
		}
		response.sendRedirect("category_list.jsp");
  		
	}
%>