<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ page language="java" import="entity.*,util.*"%>
<jsp:include page="../../safe.jsp" />
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>无标题文档</title>
<link href="../../Images/css1/css.css" rel="stylesheet" type="text/css">
</head>
<body>
<% 
		String id=request.getParameter("id");
		User m=User.find(User.class,id); 
		request.setAttribute("user",m);
		String action="save";
		if(m!=null){
			action="update";
		}
%>
<form action="off_temp.jsp" method="POST">
<table class="table" cellspacing="1" cellpadding="2" width="80%" align="center" 
border="0">
  <tbody>
    <tr>
      <th class="bg_tr" align="left" colspan="2" height="25"><center>系办个人信息</center></th>
    </tr>
    
    <tr>
      <td class="td_bg" width="20%" height="23">用户名：</td>
      <td class="td_bg" width="70%">
     		 <input name="u_name" type="TEXT" size="14" value="${user.u_name}">
      </td>
    </tr>
    
    <tr>
      <td class="td_bg" width="20%" height="23">登录密码：</td>
      <td class="td_bg" width="70%">
     		 <input name="u_pwd" type="TEXT" size="14" value="${user.u_pwd}">
      </td>
    </tr>
    
    <tr>
      <td class="td_bg" width="20%" height="23">真实姓名：</td>
      <td class="td_bg" width="70%">
     		 <input name="real_name" type="TEXT" size="14" value="${user.real_name}">
      </td>
    </tr>
    
    <tr>
      <td class="td_bg" width="20%" height="23">性别：</td>
      <td class="td_bg" width="70%">
     		<select name="sex" value="${user.sex}">
              	 <option>男</option>
                 <option>女</option>
             </select>
      </td>
    </tr>
    <tr>
      <td class="td_bg" width="20%" height="23">专业：</td>
      <td class="td_bg" width="70%">
     		<select name="cate_name" value="${user.cate_name}">
     		   <%
     		 	List<Category> clist=Category.findAll(Category.class);
     		 	for(Category c:clist){
     		  %>
              	 <option selected="<%=m!=null?c.getName().equals(m.getCate_name()):"false" %>"><%=c.getName() %></option>
              	 <%  } %>
             </select>
      </td>
    </tr>
     <tr>
      <td class="td_bg" width="20%" height="23">职称：</td>
      <td class="td_bg" width="70%">
     		 <input name="title_name" type="TEXT" size="14" value="${user.title_name}">
      </td>
    </tr>
    <input name="actionOption" type="hidden" value=<%=action %>>
    <input name="id" type="hidden" value="${user.id}" >
    <input name="u_type" type="hidden" value="off">
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


