<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ page language="java" import="entity.*,util.*"%>

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>无标题文档</title>
<link href="../Images/css1/css.css" rel="stylesheet" type="text/css">
</head>
<body>

<form action="changePwd_temp.jsp?actionOption=save" method="POST">
<table class="table" cellspacing="1" cellpadding="2" width="80%" align="center" 
border="0">
  <tbody>
    <tr>
      <th class="bg_tr" align="left" colspan="2" height="25"><center>个人信息</center></th>
    </tr>
    
    <tr>
      <td class="td_bg" width="20%" height="23">用户名：</td>
      <td class="td_bg" width="70%">
     		 <input name="u_name" type="TEXT" size="14" value="${loginUser.u_name}">
      </td>
    </tr>
    
    <tr>
      <td class="td_bg" width="20%" height="23">登录密码：</td>
      <td class="td_bg" width="70%">
     		 <input name="u_pwd" type="TEXT" size="14" value="${loginUser.u_pwd}">
      </td>
    </tr>
    <input name="id" type="hidden"  value="${loginUser.id}" >
    <input name="u_type" type="hidden" value="student">
    <tr>
      <td  colspan="2" class="td_bg"  align="right">
        <input type="submit" name="submit"  onsubmit="checkValue()" value=" 修  改 "> 
        <input type="reset" name="reset"   value=" 重  置 ">
      </td>
    </tr>
  </tbody>
</table>
</form>
</body>
</html>


