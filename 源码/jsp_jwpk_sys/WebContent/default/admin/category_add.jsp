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
		Category m=Category.find(Category.class,id); 
		String action="save";
		request.setAttribute("category",m);
		if(m!=null){
			action="update";
		}
%>
<form action="category_temp.jsp" method="POST">
<table class="table" cellspacing="1" cellpadding="2" width="80%" align="center" 
border="0">
  <tbody>
    <tr>
      <th class="bg_tr" align="left" colspan="2" height="25"><center>类别管理</center></th>
    </tr>
 
    <tr>
      <td class="td_bg" width="20%" height="23">类别名称</td>
      <td class="td_bg" width="70%">
     		 <input name="name" type="TEXT" 
      style="border:solid 1px #27B3FE; height:20px; background-color:#FFFFFF" 
      value="${category.name}"
      width="150" size="14">
      </td>
    </tr>
    <tr>
      <td class="td_bg" width="20%" height="23">描述：</td>
      <td class="td_bg" width="70%">
      <input name="remark" type="TEXT"
         style="border:solid 1px #27B3FE; height:20px; background-color:#FFFFFF" 
         value="${category.remark}"
      width="150" size="14">
      </td>
    </tr>
    <input name="actionOption" type="hidden" value=<%=action %>>
    <input name="id" type="hidden" value=${category.id} >
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


