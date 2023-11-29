<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ page language="java" import="entity.*,util.*"%>

<% if(session.getAttribute("loginUser")==null){
  response.sendRedirect("../../login.html");
}%>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<title>班级管理 </title>
<link href="../../Images/css1/css.css" rel="stylesheet" type="text/css">
</head>
<body>


<table class="table" cellspacing="1" cellpadding="2" width="80%" align="center" border="0">
  <tbody>
  <tr>
   <th class="bg_tr" align="center"  colspan="4" height="23">
 			班级管理   
   </th>
  </tr>
  <tr>
   <td class="td_bg" align="left"  colspan="4" height="23">
 			 <a href="class_add.jsp">&nbsp;&nbsp;&nbsp;&nbsp;新增班级</a>
   </td>
  </tr>
    <tr>
      <th class="bg_tr" align="center" width="300" height="25">班级名称</th>
      <th class="bg_tr" align="center" width="350" height="25">所属专业</th>
    
      <th class="bg_tr" align="center" colspan="2" width="350" height="25">操作</th>
    </tr>
    <% 
    	Integer limit=5;
    	Integer start=0;
    	Integer size=1;
    	if(request.getParameter("start")!=null){start=Integer.valueOf(request.getParameter("start"));}
    	if(request.getParameter("size")!=null){size=Integer.valueOf(request.getParameter("size"));}
    	if(size<0){size=1;}
    	if(request.getParameter("limit")!=null){limit=Integer.valueOf(request.getParameter("limit"));}
    	List<MyClass> list=MyClass.findAll(MyClass.class,"",new Object[]{},"id desc",limit,start);
    	for(MyClass c:list){
     %>
    <tr>
      <td class="td_bg" align="center" height="23"><%=c.getName() %></td>
      <td class="td_bg" align="center" height="23"><%=c.getCategory().getName() %></td>
      
      <td class="td_bg" align="center" height="23">
      <a href="byrow_list.jsp?class_id=<%=c.getId() %>"> 查看课时安排  </a>
      </td>
      
    </tr>
    <%}%>
    <tr>
    <% long total=MyClass.count(MyClass.class,null,null); %>
    	<td class="td_bg" align="right"  colspan="4" height="23">
    		<a href="class_list.jsp?start=0">第一页</a>
    	
    		<a href="class_list.jsp?start=<%=(size)*limit%>&size=<%=size+1%>">下一页</a>
    		
    		<a href="class_list.jsp?start=<%=(size-1)*limit%>&size=<%=size-1%> %>">上一页</a>
    		
    		<a href="class_list.jsp?start=<%=total-(total %limit) %>&size=<%=(total /limit)+1 %>">尾页</a>
    		当前第:<%=size%>页
    		总计：<%=total %>条记录,
    		共<%=(total /limit)+1 %>页
    	</td>
    </tr>
  </tbody>
</table>

</body>
</html>
