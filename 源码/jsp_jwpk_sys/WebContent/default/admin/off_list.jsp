<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ page language="java" import="entity.*,util.*"%>
<jsp:include page="../../safe.jsp" />
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<title>系办人员管理</title>
<link href="../../Images/css1/css.css" rel="stylesheet" type="text/css">
</head>
<body>


<table class="table" cellspacing="1" cellpadding="2" width="80%" align="center" border="0">
  <tbody>
  <tr>
      <th class="bg_tr" align="center" colspan="7" height="25">系办人员管理</th>
      
    </tr>
   <tr>
    <td class="td_bg" align="center" colspan="7" height="25"><div align="left"> 
    <a href="off_add.jsp">&nbsp;&nbsp;&nbsp;&nbsp;增加一办事人员 </a></div>
    </td>
   	 
   </tr>
    <tr>
      <th class="bg_tr" align="center" width="150" height="25">用户名</th>
      <th class="bg_tr" align="center" width="150" height="25">真实姓名</th>
      <th class="bg_tr" align="center" width="200" height="25">所属系</th>
      <th class="bg_tr" align="center" width="100" height="25">性别</th>
      <th class="bg_tr" align="center" width="100" height="25">职称</th>
    
      <th class="bg_tr" align="center" colspan="2" width="300" height="25">操作</th>
    </tr>
    <% 
    	Integer limit=5;
    	Integer start=0;
    	Integer size=1;
    	if(request.getParameter("start")!=null){start=Integer.valueOf(request.getParameter("start"));}
    	if(request.getParameter("size")!=null){size=Integer.valueOf(request.getParameter("size"));}
    	if(size<=0){size=1;}
    	if(request.getParameter("limit")!=null){limit=Integer.valueOf(request.getParameter("limit"));}
    	List<User> list=User.findAll(User.class,"u_type=?",new Object[]{"off"},"id desc",limit,start*(size-1));
    	for(User c:list){
     %>
    <tr>
      <td class="td_bg" align="center" height="23"><%=c.getU_name() %></td>
      <td class="td_bg" align="center" height="23"><%=c.getReal_name() %></td>
      <td class="td_bg" align="center" height="23"><%=c.getCate_name() %></td>
      <td class="td_bg" align="center" height="23"><%=c.getSex() %></td>
      <td class="td_bg" align="center" height="23"><%=c.getTitle_name() %></td>
      <td class="td_bg" align="center" height="23">
      <a href="off_add.jsp?actionOption=update&id=<%=c.getId() %>" >修改</a></td>
      <td class="td_bg" align="center" height="23">
      <a href="off_temp.jsp?actionOption=delete&id=<%=c.getId() %>" >删除</a></td>    
    </tr>
    <%}%>
    <tr>
    <% long total=User.count(User.class,"u_type=?",new Object[]{"off"}); %>
    <%   if(((total /limit)+1) == size){
    %>
    <td class="td_bg" align="right"  colspan="6" height="23">
    		<a href="off_list.jsp?start=0" >第一页</a>
    	
    		<a href="javascript:void(0)">下一页</a>
    		
    		<a href="off_list.jsp?start=<%=(size-1)*limit%>&size=<%=size-1%>">上一页</a>
    		
    		<a href="off_list.jsp?start=<%=total-(total %limit) %>&size=<%=(total /limit)+1 %>">尾页</a>
    		当前第:<%=size%>页
    		总计：<%=total %>条记录,
    		共<%=(total /limit)+1 %>页
    	</td>
    <%     
       }else{
       %>
    <td class="td_bg" align="right"  colspan="6" height="23">
    		<a href="off_list.jsp?start=0" >第一页</a>
    	
    		<a href="off_list.jsp?start=<%=(size)*limit%>&size=<%=size+1%>">下一页</a>
    		
    		<a href="off_list.jsp?start=<%=(size-1)*limit%>&size=<%=size-1%>">上一页</a>
    		
    		<a href="off_list.jsp?start=<%=total-(total %limit) %>&size=<%=(total /limit)+1 %>">尾页</a>
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
