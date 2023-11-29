<%@ page language="java" pageEncoding="UTF-8"%>
<%@ page language="java" import="entity.*,util.*"%>

<% if(session.getAttribute("loginUser")==null){
  response.sendRedirect("../../login.html");
}%>

<%
	request.setCharacterEncoding("UTF-8");
	String action=request.getParameter("actionOption");
	if(action.equals("save")){
		Score c=Score.createModel(Score.class,request.getParameterMap());
  		if(c.save()){
  		 	response.sendRedirect("score_list.jsp");
  		}
	}else if(action.equals("update")){
		Score c=Score.createModel(Score.class,request.getParameterMap());
		if(c.update()){
  		 	response.sendRedirect("score_list.jsp");
  		}
	}else if(action.equals("delete")){
	   String id=request.getParameter("id");
		Score c=Score.find(Score.class,id);
		if(c!=null){
			c.destroy();
		}
		response.sendRedirect("score_list.jsp");
  		
	}
%>