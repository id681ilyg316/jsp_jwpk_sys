<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ page language="java" import="entity.*,util.*"%>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>申请新课</title>
<link href="../../Images/css1/css.css" rel="stylesheet" type="text/css">
</head>
<body>
<%      
	response.setCharacterEncoding("utf-8");
    response.setContentType("text/html;charset=utf-8");
		String id=request.getParameter("id");
		Course c=Course.find(Course.class,id); 
		String action="save";
		if(c!=null){
			action="update";
		}
		System.out.println(c);
%>
<form action="add_course_temp.jsp" method="POST">
<table class="table" cellspacing="1" cellpadding="2" width="80%" align="center" 
border="0">
  <tbody>
    <tr>
      <th class="bg_tr" align="left" colspan="2" height="25"><center>申请新课</center></th>
    </tr>
    <tr>
      <td class="td_bg" width="20%" height="23">课程编号：</td>
      <td class="td_bg" width="70%">
      <input name="c_code" value="<%=c==null?"":c.getC_code() %>" type="TEXT" style="border:solid 1px #27B3FE; height:20px; background-color:#FFFFFF" width="150" size="14">
      </td>
    </tr>
    <tr>
      <td class="td_bg" width="20%" height="23">课程名称：</td>
      <td class="td_bg" width="70%">
      <input name="c_name" value="<%=c==null?"":c.getC_name() %>" type="TEXT" style="border:solid 1px #27B3FE; height:20px; background-color:#FFFFFF" width="150" size="14">
      </td>
    </tr>
    
    <tr>
      <td class="td_bg" width="20%" height="23">所属专业：</td>
      <td class="td_bg" width="70%">
      	<select name="c_cate" value="${user.cate_name}">
     		   <%
     		 	List<Category> clist=Category.findAll(Category.class);
     		 	for(Category ca:clist){
     		  %>
              	 <option selected="<%=c!=null?ca.getName().equals(c.getC_cate()):"false" %>"><%=ca.getName() %></option>
              	 <%  } %>
             </select>
      </td>
    </tr>
    <tr>
      <td class="td_bg" width="20%" height="23">课程描述：</td>
      <td class="td_bg" width="70%">
      <input name="c_descr" type="TEXT" 
      style="border:solid 1px #27B3FE; height:20px; background-color:#FFFFFF" 
      value="<%=c==null?"":c.getC_descr() %>" width="150" size="14">
      </td>
    </tr>
    <input name="c_state" type="hidden" value=<%=c==null?"":c.getC_state() %>>
    <input name="actionOption" type="hidden" value=<%=action %>>
    <input name="id" type="hidden" value=<%=c==null?"":c.getId() %>>
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


