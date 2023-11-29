<%@ page language="java" pageEncoding="UTF-8"%>
<%@ page language="java" import="entity.*,util.*"%>

<% if(session.getAttribute("loginUser")==null){
  response.sendRedirect("../../login.html");
}%>

<%
	request.setCharacterEncoding("UTF-8");
	
	String action=request.getParameter("actionOption");
	if(action.equals("save")){
		User c=(User)session.getAttribute("loginUser");
		c.setU_pwd(request.getParameter("u_pwd"));
  		if(c.save()){
  		 	response.sendRedirect("changePwd.jsp");
  		 	%>
  		 	修改成功!!!
  		 	<%
  		}
	}
%>