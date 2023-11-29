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
		Byrow m=Byrow.find(Byrow.class,id); 
		request.setAttribute("byrow",m);
		String action="save";
		if(m!=null){
			action="update";
		}
%>
<form action="byrow_temp.jsp" method="POST">
<table class="table" cellspacing="1" cellpadding="2" width="80%" align="center" 
border="0">
  <tbody>
    <tr>
      <th class="bg_tr" align="left" colspan="2" height="25"><center>排课安排</center></th>
    </tr>
    <tr>
    	<td class="td_bg" width="20%" height="23">安排教师</td>
    	<td class="td_bg" width="70%">
    		<select name="teacher_id" value="${project.teacher_id}">
     		    <%
     		 	for(User c:User.findAll(User.class,"u_type=?",new Object[]{"teacher"})){
     		    %>
              	<option value="<%=c.getId()%>" ><%=c.getReal_name() %></option>
              	<% }%>
        </select>
    	</td>
    </tr>
    <tr>
      <td class="td_bg" width="20%" height="23">排课班级</td>
      <td class="td_bg" width="70%">
     		<select name="class_id" >
     		  <%
     		 	for(MyClass c:MyClass.findAll(MyClass.class)){
     		  %>
              <option value="<%=c.getId() %>" selected="<%=m!=null?c.getId().equals(m.getMyclass().getId()):"false" %>"><%=c.getName() %></option>
              <%  } %>
             </select>
      </td>
    </tr>
    <tr>
      <td class="td_bg" width="20%" height="23">排课课程</td>
      <td class="td_bg" width="70%">
     		<select name="course_id" value="${project.course_id}">
     		   <%
     		 	for(Course c:Course.findAll(Course.class,"",new Object[]{})){
     		  %>
  <option value="<%=c.getId() %>" selected="<%=m!=null?c.getId().equals(m.getId()):"false" %>"><%=c.getC_name() %></option>
              <%  } %>
             </select>
      </td>
    </tr>
    
    <tr>
      <td class="td_bg" width="20%" height="23">排产日期</td>
      <td class="td_bg" width="70%">
     		<select name="col_value">
     		     <option value=1>星期一</option>
     		     <option value=2>星期二</option>
     		     <option value=3>星期三</option>
     		     <option value=4>星期四</option>
     		     <option value=5>星期五</option>
     		     
             </select>
             
             <select name="row_value" >
     		     <option value=1>第一节</option>
     		     <option value=2>第二节</option>
     		     <option value=3>第三节</option>
     		     <option value=4>第四节</option>
     		     <option value=5>第五节</option>
     		     <option value=6>第六节</option>
     		     <option value=7>第七节</option>
             </select>
      </td>
      
    </tr>
    <tr>
      <td  colspan="2" class="td_bg"  align="right">
        <input type="submit" name="submit"  onsubmit="checkValue()" value=" 提  交 "> 
        <input type="button" name="reset" onclick="self.location=document.referrer;"   value=" 返回 ">
      </td>
    </tr>
  </tbody>
</table>
<input name="actionOption" type="hidden" value=<%=action %>>
<input name="id" type="hidden"  value="${byrow.id}" >
</form>
</body>
</html>


