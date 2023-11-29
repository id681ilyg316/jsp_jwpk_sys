<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ page language="java" import="entity.*,util.*"%>

<% if(session.getAttribute("loginUser")==null){
  response.sendRedirect("../../login.html");
}%>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<title>任课安排</title>
<link href="../../Images/css1/css.css" rel="stylesheet" type="text/css">
</head>
<body>


<table class="table" cellspacing="1" cellpadding="2" width="80%" align="center" border="0">
  <tbody>
  <tr>
      <th class="bg_tr" align="center" colspan="7" height="25">任课安排</th>
      
    </tr>
    <tr>
      <th class="bg_tr" align="center" width="200" height="25">任课编号</th>
      <th class="bg_tr" align="center" width="200" height="25">任课教师</th>
      <th class="bg_tr" align="center" width="200" height="25">任课课程</th>
      <th class="bg_tr" align="center" width="200" height="25">任课班级</th>
       <th class="bg_tr" align="center" colspan="2" width="200" height="25">操作</th>
    </tr>
    <% 
    	Integer limit=15;
    	Integer start=0;
    	Integer size=1;
    	if(request.getParameter("start")!=null){start=Integer.valueOf(request.getParameter("start"));}
    	if(request.getParameter("size")!=null){size=Integer.valueOf(request.getParameter("size"));}
    	if(size<=0){size=1;}
    	if(request.getParameter("limit")!=null){limit=Integer.valueOf(request.getParameter("limit"));}
    	
    	List<Project> list=Project.findAll(Project.class,"teacher_id is not null",new Object[]{},"id desc",limit,start*(size-1));
    	for(Project c:list){
     %>
    <tr>
      <td class="td_bg" align="center" height="23"><%=c.getCode() %></td>
      <td class="td_bg" align="center" height="23"><%=c.getTeacher().getReal_name() %></td>
       <td class="td_bg" align="center" height="23"><%=c.getCourse().getC_name() %></td>
      <td class="td_bg" align="center" height="23"><%=c.getMyclass().getName() %></td>
      
      <td class="td_bg" align="center" height="23">
      <a href="project_add.jsp"> 新建 </a>
      <a href="project_add.jsp?actionOption=update&id=<%=c.getId() %>" >修改</a>
      <a href="project_temp.jsp?actionOption=delete&id=<%=c.getId() %>" >删除</a></td>
    </tr>
    <%}%>
    <tr>
    <% long total=Project.count(Project.class,null,null); %>
    <%   if(((total /limit)+1) == size){
    %>
    <td class="td_bg" align="right"  colspan="4" height="23">
    		<a href="project_list.jsp?start=0" >第一页</a>
    	
    		<a href="javascript:void(0)">下一页</a>
    		
    		<a href="project_list.jsp?start=<%=(size-1)*limit%>&size=<%=size-1%>">上一页</a>
    		
    		<a href="project_list.jsp?start=<%=total-(total %limit) %>&size=<%=(total /limit)+1 %>">尾页</a>
    		当前第:<%=size%>页
    		总计：<%=total %>条记录,
    		共<%=(total /limit)+1 %>页
    	</td>
    <%     
       }else{
       %>
    <td class="td_bg" align="right"  colspan="4" height="23">
    		<a href="project_list.jsp?start=0" >第一页</a>
    	
    		<a href="project_list.jsp?start=<%=(size)*limit%>&size=<%=size+1%>">下一页</a>
    		
    		<a href="project_list.jsp?start=<%=(size-1)*limit%>&size=<%=size-1%>">上一页</a>
    		
    		<a href="project_list.jsp?start=<%=total-(total %limit) %>&size=<%=(total /limit)+1 %>">尾页</a>
    		当前第:<%=size%>页
    		总计：<%=total %>条记录,
    		共<%=(total /limit)+1 %>页
    	</td>
    <%   
       }
    %>
  </tbody>
</table>

</body>
</html>
