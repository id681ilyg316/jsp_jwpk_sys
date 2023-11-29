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
		Subject m=Subject.find(Subject.class,id); 
		String action="save";
		request.setAttribute("category",m);
		if(m!=null){
			action="update";
		}
%>
<form action="subject_temp.jsp" method="POST">
<table class="table" cellspacing="1" cellpadding="2" width="80%" align="center" 
border="0">
  <tbody>
    <tr>
      <th class="bg_tr" align="left" colspan="3" height="25"><center>申请课程</center></th>
    </tr>
    <tr>
      <td class="td_bg" width="20%" height="23">申请编号</td>
      <td class="td_bg" width="70%">
     		 <input name="code" type="TEXT" 
      style="border:solid 1px #27B3FE; height:20px; background-color:#FFFFFF" 
      value="${category.code}"
      width="150" size="14">
      </td>
    </tr>
    <tr>
      <td class="td_bg" width="20%" height="23">开课课程</td>
      <td class="td_bg" width="70%">
     		 <select name="course_id" value="${category.course_id}">
     		     <%
     		 	  for(Course c:Course.findAll(Course.class)){
     		     %>
              	 <option value="<%=c.getId() %>" selected="<%=m!=null?(c.getId().intValue()==m.getClass_id().intValue()):"false" %>"><%=c.getC_name() %></option>
              	 <%  } %>
              	 
            </select>
      </td>
    </tr>
    <tr>
      <td class="td_bg" width="20%" height="23">申请班级</td>
      <td class="td_bg" width="70%">
     		 <select name="class_id" value="${category.class_id}">
     		     <%
     		 	  for(MyClass c:MyClass.findAll(MyClass.class)){
     		     %>
              	 <option value="<%=c.getId() %>" selected="<%=m!=null?(c.getId().intValue()==m.getClass_id().intValue()):"false" %>"><%=c.getName() %></option>
              	 <%  } %>
              	 
            </select>
      </td>
    </tr>
    <tr>
      <td class="td_bg" width="20%" height="23">专业名称：</td>
      <td class="td_bg" width="70%">
        <select name="cate_id" value="${category.cate_id}">
     		     <%
     		 	  for(Category c:Category.findAll(Category.class)){
     		     %>
              	 <option value="<%=c.getId() %>" selected="<%=m!=null?(c.getId().intValue()==m.getCate_id().intValue()):"false" %>"><%=c.getName() %></option>
              	 <%  } %>
              	 
        </select>
      </td>
    </tr>
    <input name="actionOption" type="hidden" value=<%=action %>>
    <input name="teacher_id" type="hidden" value=${loginUser.id} >
    <input name="status" type="hidden" value="未审" >
    <input name="id" type="hidden" value=${category.id} >
    <tr>
      <td  colspan="3" class="td_bg"  align="right">
        <input type="submit" name="submit"  onsubmit="checkValue()" value=" 提  交 "> 
        <input type="button" name="reset" onclick="self.location=document.referrer;"   value=" 返回 ">
      </td>
    </tr>
  </tbody>
</table>
</form>
</body>
</html>


