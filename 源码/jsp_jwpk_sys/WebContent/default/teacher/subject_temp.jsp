<%@ page language="java" pageEncoding="UTF-8"%>
<%@ page language="java" import="entity.*,util.*"%>
<jsp:include page="../../safe.jsp" />

<%
	request.setCharacterEncoding("UTF-8");
	String action=request.getParameter("actionOption");
	if(action.equals("save")){
		Subject c=Subject.createModel(Subject.class,request.getParameterMap());
  		if(c.save()){
  		 	response.sendRedirect("subject_list.jsp");
  		}
	}else if(action.equals("update")){
		Subject c=Subject.createModel(Subject.class,request.getParameterMap());
		if(c.update()){
  		 	response.sendRedirect("subject_list.jsp");
  		}
	}else if(action.equals("delete")){
	   String id=request.getParameter("id");
		Subject c=Subject.find(Subject.class,id);
		if(c!=null){
			c.destroy();
		}
		response.sendRedirect("subject_list.jsp");
  		
	}
%>