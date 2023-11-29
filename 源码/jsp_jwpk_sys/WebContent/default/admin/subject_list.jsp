<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ page language="java" import="entity.*,util.*"%>
<jsp:include page="../../safe.jsp" />
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<title>申请课程列表</title>
<link href="../../Images/css1/css.css" rel="stylesheet" type="text/css">
</head>
<body>


<table class="table" cellspacing="1" cellpadding="2" width="80%" align="center" border="0">
  <tbody>
 	<tr>
      <th class="bg_tr" align="center" colspan="7" height="25"><div align="center"> 
      				<center>申请课程列表</center></div>
      </th>
    </tr>
    <tr>
      <th class="bg_tr" align="center" width="100" height="25">申请编号</th>
      <th class="bg_tr" align="center" width="150" height="25">申请人</th>
      <th class="bg_tr" align="center" width="200" height="25">申请课程</th>
      <th class="bg_tr" align="center" width="200" height="25">所属专业</th>
      <th class="bg_tr" align="center" width="100" height="25">状态</th>
      <th class="bg_tr" align="center" colspan="2" width="200" height="25">操作</th>
    </tr>
    <% 
    	Integer limit=5;
    	Integer start=0;
    	Integer size=1;
    	if(request.getParameter("start")!=null){start=Integer.valueOf(request.getParameter("start"));}
    	if(request.getParameter("size")!=null){size=Integer.valueOf(request.getParameter("size"));}
    	if(size<=0){size=1;}
    	if(request.getParameter("limit")!=null){limit=Integer.valueOf(request.getParameter("limit"));}
    	List<Subject> list=Subject.findAll(Subject.class,"",new Object[]{},"id desc",limit,start*(size-1));
    	for(Subject c:list){
     %>
    <tr>
     <td class="td_bg" align="center" height="23"><%=c.getCode() %></td>
     <td class="td_bg" align="center" height="23"><%=c.getTeacher().getReal_name() %></td>
     <td class="td_bg" align="center" height="23"><%=c.getCourse()!=null?c.getCourse().getC_name():"" %></td>
 
      <td class="td_bg" align="center" height="23"><%=c.getCategory().getName() %></td>
      <td class="td_bg" align="center" height="23"><%=c.getStatus() %></td>
      <td class="td_bg" align="center" height="23">
      <a href="subject_temp.jsp?actionOption=update&id=<%=c.getId() %>&status=通过" >通过</a></td>
      <td class="td_bg" align="center" height="23">
      <a href="subject_temp.jsp?actionOption=update&id=<%=c.getId() %>&status=拒绝" >拒绝</a></td>  
    </tr>
    <%}%>
    <tr>
    <% long total=Subject.count(Subject.class,null,null); %>
   <%   if(((total /limit)+1) == size){
    %>
    <td class="td_bg" align="right"  colspan="7" height="23">
    		<a href="subject_list.jsp?start=0" >第一页</a>
    	
    		<a href="javascript:void(0)">下一页</a>
    		
    		<a href="subject_list.jsp?start=<%=(size-1)*limit%>&size=<%=size-1%>">上一页</a>
    		
    		<a href="subject_list.jsp?start=<%=total-(total %limit) %>&size=<%=(total /limit)+1 %>">尾页</a>
    		当前第:<%=size%>页
    		总计：<%=total %>条记录,
    		共<%=(total /limit)+1 %>页
    	</td>
    <%     
       }else{
       %>
    <td class="td_bg" align="right"  colspan="7" height="23">
    		<a href="subject_list.jsp?start=0" >第一页</a>
    	
    		<a href="subject_list.jsp?start=<%=(size)*limit%>&size=<%=size+1%>">下一页</a>
    		
    		<a href="subject_list.jsp?start=<%=(size-1)*limit%>&size=<%=size-1%>">上一页</a>
    		
    		<a href="subject_list.jsp?start=<%=total-(total %limit) %>&size=<%=(total /limit)+1 %>">尾页</a>
    		当前第:<%=size%>页
    		总计：<%=total %>条记录,
    		共<%=(total /limit)+1 %>页
    	</td>
    <%   
       }
    %>
    </tr>
  </tbody>
</table>

</body>
</html>
