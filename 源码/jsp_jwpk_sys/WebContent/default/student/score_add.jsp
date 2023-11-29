<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ page language="java" import="entity.*,util.*"%>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>无标题文档</title>
<link href="../../Images/css1/css.css" rel="stylesheet" type="text/css">
</head>
<body>
<% 
		String id=request.getParameter("id");
		Score m=Score.find(Score.class,id); 
		String action="save";
		request.setAttribute("category",m);
		if(m!=null){
			action="update";
		}
%>
<form action="score_temp.jsp" method="POST">
<table class="table" cellspacing="1" cellpadding="2" width="80%" align="center" 
border="0">
  <tbody>
    <tr>
      <th class="bg_tr" align="left" colspan="2" height="25"><center>成绩设置</center></th>
    </tr>
    <tr>
      <td class="td_bg" width="20%" height="23">评分课程</td>
      <td class="td_bg" width="70%">
     	<select name="course_id" value="${category.course_id}">
     		     <%
     		 	  for(Course c:Course.findAll(Course.class)){
     		     %>
              	 <option value="<%=c.getId() %>" selected="<%=m!=null?(c.getId().intValue()==m.getCourse_id().intValue()):"false" %>"><%=c.getC_name() %></option>
              	 <%  } %>
              	 
            </select>
      </td>
    </tr>
    <tr>
      <td class="td_bg" width="20%" height="23">评分学生：</td>
      <td class="td_bg" width="70%">
      <select name="student_id" value="${category.student_id}">
     		   <%
     		 	for(User c:User.findAll(User.class)){
     		  %>
              	 <option value="<%=c.getId() %>" selected="<%=m!=null?(c.getId().intValue()==m.getStudent_id().intValue()):"false" %>"><%=c.getReal_name() %></option>
              	 <%  } %>
              	 
             </select>
      </td>
    </tr>
    <tr>
      <td class="td_bg" width="20%" height="23">评分值：</td>
      <td class="td_bg" width="70%">
      <input name="value" >
      </td>
    </tr>
    <input name="actionOption" type="hidden" value=<%=action %>>
     <input name="teacher_id" type="hidden" value=${loginUser.id} >
    <input name="id" type="hidden" value=${category.id} >
    <tr>
      <td  colspan="2" class="td_bg"  align="right">
        <input type="submit" name="submit"  onsubmit="checkValue()" value=" 提  交 "> 
        <input type="reset" name="reset"   value=" 重  置 ">
      </td>
    </tr>
  </tbody>
</table>
</form>
</body>
</html>


