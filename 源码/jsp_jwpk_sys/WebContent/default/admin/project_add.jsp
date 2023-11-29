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
		Project m=Project.find(Project.class,id);
		request.setAttribute("project",m);
		String action="save";
		if(m!=null){
			action="update";
		}
%>
<form action="project_temp.jsp" method="POST">
<table class="table" cellspacing="1" cellpadding="2" width="80%" align="center" 
border="0">
  <tbody>
    <tr>
      <th class="bg_tr" align="left" colspan="5" height="25"><center>申请开课</center></th>
    </tr>
    
    <tr>
      <td class="td_bg" width="20%"height="23">任课编号：</td>
      <td class="td_bg" width="70%" colspan="4" >
     	<input type="text" name="code" value="${project.id}" />
      </td>
    </tr>
    
    <tr>
      <td class="td_bg" width="20%"height="23">任课教师：</td>
      <td class="td_bg" width="70%" colspan="4" >
     	<select name="teacher_id" value="${project.teacher_id}">
     		    <%
     		 	for(User c:User.findAll(User.class,"",new Object[]{})){
     		    %>
              	<option value="<%=c.getId()%>" ><%=c.getReal_name() %></option>
              	<% }%>
        </select>
      </td>
    </tr>
    <tr>
      <td class="td_bg" width="20%" height="23">任课课程：</td>
      <td class="td_bg" width="70%" colspan="4">
           <select name="course_id" value="${project.course_id}" >
               <%
     		 	for(Course c:Course.findAll(Course.class)){
     		    %>
              	<option value="<%=c.getId() %>"><%=c.getC_name() %></option>
              <% }%>
             </select>
      </td>
    </tr>
    
    <tr>
      <td class="td_bg" width="20%" height="23" colspan="4">任课班级</td>
      <td class="td_bg" width="70%">
     	<select name="class_id" value="${project.class_id}">
     		    <%
     		 	for(MyClass c:MyClass.findAll(MyClass.class)){
     		    %>
              	<option  value="<%=c.getId() %>"><%=c.getName() %></option>
              	<% }%>
        </select>
      </td>
    </tr>
  
    <input name="actionOption" type="hidden" value=<%=action %>>
    <input name="id" type="hidden">
    <tr>
      <td  colspan="2" class="td_bg"  align="right">
        <input type="submit" name="submit"  onsubmit="checkValue()" value=" 提  交 "> 
        <input type="button" name="reset" onclick="self.location=document.referrer;"   value=" 返回 ">
      </td>
    </tr>
  </tbody>
</table>
</form>
</body>
</html>


