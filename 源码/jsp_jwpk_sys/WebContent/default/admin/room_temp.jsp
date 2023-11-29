<%@ page language="java" pageEncoding="UTF-8"%>
<%@ page language="java" import="entity.*,util.*"%>

<% if(session.getAttribute("loginUser")==null){
  response.sendRedirect("../../login.html");
}%>

<%
	request.setCharacterEncoding("UTF-8");
	String action=request.getParameter("actionOption");
	if(action.equals("save")){
		Room c=Room.createModel(Room.class,request.getParameterMap());
  		if(c.save()){
  		 	response.sendRedirect("room_list.jsp");
  		}
	}else if(action.equals("update")){
		Room c=Room.createModel(Room.class,request.getParameterMap());
		if(c.update()){
  		 	response.sendRedirect("room_list.jsp");
  		}
	}else if(action.equals("delete")){
	   String id=request.getParameter("id");
		Room c=Room.find(Room.class,id);
		if(c!=null){
			c.destroy();
		}
		response.sendRedirect("room_list.jsp");
  		
	}
%>