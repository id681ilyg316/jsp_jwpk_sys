<%@ page language="java" pageEncoding="UTF-8"%>
<%@ page language="java" import="entity.*,util.*"%>
<jsp:include page="../../safe.jsp" />
<%
	request.setCharacterEncoding("UTF-8");
	String action=request.getParameter("actionOption");
	if(action.equals("save")){
		Course c=Course.createModel(Course.class,request.getParameterMap());
		System.out.println(c.getC_descr());
  		if(c.save()){
  		 	response.sendRedirect("course_list.jsp");
  		}
	}else if(action.equals("update")){
		Course c=Course.createModel(Course.class,request.getParameterMap());
		if(c.update()){
  		 	response.sendRedirect("course_list.jsp");
  		}
	}else if(action.equals("delete")){
	   String id=request.getParameter("id");
		Course c=Course.find(Course.class,id);
		if(c!=null){
			c.destroy();
		}
		response.sendRedirect("course_list.jsp");
  		
	}
  	
  	
%>

