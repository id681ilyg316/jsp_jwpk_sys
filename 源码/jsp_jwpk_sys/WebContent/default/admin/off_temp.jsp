<%@ page language="java" pageEncoding="UTF-8"%>
<%@ page language="java" import="entity.*,util.*"%>

<% if(session.getAttribute("loginUser")==null){
  response.sendRedirect("../../login.html");
}%>

<%
	request.setCharacterEncoding("UTF-8");
	String action=request.getParameter("actionOption");
	if(action.equals("save")){
		User c=User.createModel(User.class,request.getParameterMap());
  		if(c.save()){
  		 	response.sendRedirect("off_list.jsp");
  		}
	}else if(action.equals("update")){
		User c=User.createModel(User.class,request.getParameterMap());
		if(c.update()){
  		 	response.sendRedirect("off_list.jsp");
  		}
	}else if(action.equals("delete")){
	   String id=request.getParameter("id");
		User c=User.find(User.class,id);
		if(c!=null){
			c.destroy();
		}
		response.sendRedirect("off_list.jsp");
  		
	}
%>