<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ page language="java" import="entity.*"%>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<title>无标题文档</title>
<link href="../../Images/css1/css.css" rel="stylesheet" type="text/css">
</head>
<body>
<%    
		User loginUser=(User)session.getAttribute("loginUser");
		String id=request.getParameter("id");
		Choose m=Choose.find(Choose.class,id);
		request.setAttribute("project",m);
		String action="save";
		if(m!=null){
			action="update";
		}
%>
<form action="choose_temp.jsp" method="POST">
<table class="table" cellspacing="1" cellpadding="2" width="80%" align="center" 
border="0">
  <tbody>
    <tr>
      <th class="bg_tr" align="left" colspan="5" height="25"><center>申请课程</center></th>
    </tr>
    
    
    
    <tr>
      <td class="td_bg" width="500" height="23" align="right">申请课程：</td>
      <td class="td_bg" width="500" colspan="4">
           <select name="course_id" value="${project.course_id}" >
               <%
     		 	for(Course c:Course.findAll(Course.class)){
     		    %>
              	<option value="<%=c.getId() %>"><%=c.getC_name() %></option>
              <% }%>
             </select>
      </td>
    </tr>
  
    <input name="actionOption" type="hidden" value=<%=action %>>
     <input name="student_id" type="hidden" value="${loginUser.id}">
    <input name="id" type="hidden" value="${project.id}">
    <tr>
      <td  colspan="5" class="td_bg" align="right">
        <input type="submit" name="submit"  onsubmit="checkValue()" value=" 提  交 "> 
        <input type="reset" name="reset"   value=" 重  置 ">
      </td>
    </tr>
  </tbody>
</table>
</form>
</body>
</html>


