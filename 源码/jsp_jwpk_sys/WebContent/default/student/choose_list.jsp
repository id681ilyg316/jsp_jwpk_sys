<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ page language="java" import="entity.*,util.*"%>

<% if(session.getAttribute("loginUser")==null){
  response.sendRedirect("../../login.html");
}%>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<title>选课功能</title>
<link href="../../Images/css1/css.css" rel="stylesheet" type="text/css">
</head>
<body>


<table class="table" cellspacing="1" cellpadding="2" width="80%" align="center" border="0">
  <tbody>
    <tr>
      <th class="bg_tr" align="center" colspan="5" height="25">选课记录</th>
    </tr>
    <tr>
      <td class="td_bg" align="left" colspan="5" height="25"> <a href="choose_add.jsp"> &nbsp;&nbsp;&nbsp;&nbsp;点我选课 </a></td>
    </tr>
    <tr>
      <th class="bg_tr" align="center" width="150" height="25">选课人</th>
      <th class="bg_tr" align="center" width="250" height="25">所在班级</th>
      <th class="bg_tr" align="center" width="250" height="25">选课课程</th>
      <th class="bg_tr" align="center" colspan="2" width="300" height="25">操作</th>
    </tr>
    <% 
    	Integer limit=5;
    	Integer start=0;
    	Integer size=1;
    	if(request.getParameter("start")!=null){start=Integer.valueOf(request.getParameter("start"));}
    	if(request.getParameter("size")!=null){size=Integer.valueOf(request.getParameter("size"));}
    	if(size<0){size=1;}
    	if(request.getParameter("limit")!=null){limit=Integer.valueOf(request.getParameter("limit"));}
    	
    	List<Choose> list=Choose.findAll(Choose.class,"",new Object[]{},"id desc",limit,start);
    	for(Choose c:list){
     %>
    <tr>
      <td class="td_bg" align="center" height="23"><%=c.getStudent().getReal_name() %></td>
      <td class="td_bg" align="center" height="23"><%=c.getStudent().getMyclass().getName() %></td>
      <td class="td_bg" align="center" height="23"><%=c.getCourse().getC_name() %></td>     
      <td class="td_bg" align="center" height="23">     
      <a href="choose_add.jsp?actionOption=update&id=<%=c.getId() %>" >修改</a></td>
      <td class="td_bg" align="center" height="23">
      <a href="choose_temp.jsp?actionOption=delete&id=<%=c.getId() %>" >删除</a></td>
    </tr>
    <%}%>
    <tr>
    <% long total=Choose.count(Choose.class,null,null); %>
    	<td class="td_bg" align="right"  colspan="6" height="23">
    		<a href="choose_list.jsp?start=0">第一页</a>
    	
    		<a href="choose_list.jsp?start=<%=(size)*limit%>&size=<%=size+1%>">下一页</a>
    		
    		<a href="choose_list.jsp?start=<%=(size-1)*limit%>&size=<%=size-1%> %>">上一页</a>
    		
    		<a href="choose_list.jsp?start=<%=total-(total %limit) %>&size=<%=(total /limit)+1 %>">尾页</a>
    		当前第:<%=size%>页
    		总计：<%=total %>条记录,
    		共<%=(total /limit)+1 %>页
    	</td>
    </tr>
  </tbody>
</table>

</body>
</html>
