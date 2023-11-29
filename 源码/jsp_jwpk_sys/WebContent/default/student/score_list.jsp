<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ page language="java" import="entity.*,util.*"%>
<jsp:include page="../../safe.jsp" />
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<title>无标题文档</title>
<link href="../../Images/css1/css.css" rel="stylesheet" type="text/css">
</head>
<body>


<table class="table" cellspacing="1" cellpadding="2" width="80%" align="center" border="0">
  <tbody>

     <tr>
      <th class="bg_tr" align="center" colspan="5" height="25">成绩查询</th>
    </tr>

    <tr>
      <th class="bg_tr" align="center" height="25">班级</th>
      <th class="bg_tr" align="center" height="25">教师</th>
      <th class="bg_tr" align="center" height="25">课程</th>
      <th class="bg_tr" align="center" height="25">学生</th>
      <th class="bg_tr" align="center" height="25">成绩</th>
      
    </tr>
    <% 
    	Integer limit=1;
    	Integer start=0;
    	Integer size=1;
    	if(request.getParameter("start")!=null){start=Integer.valueOf(request.getParameter("start"));}
    	if(request.getParameter("size")!=null){size=Integer.valueOf(request.getParameter("size"));}
    	if(size<0){size=1;}
    	if(request.getParameter("limit")!=null){limit=Integer.valueOf(request.getParameter("limit"));}
    	List<Score> list=Score.findAll(Score.class,"",new Object[]{},"id desc",limit,start);
    	for(Score c:list){
     %>
    <tr>
      <td class="td_bg" align="center" height="23"><%=c.getStudent().getMyclass().getName() %></td>
      <td class="td_bg" align="center" height="23"><%=c.getTeacher().getReal_name() %></td>
      <td class="td_bg" align="center" height="23"><%=c.getCourse().getC_name() %></td>
      <td class="td_bg" align="center" height="23"><%=c.getStudent().getReal_name() %></td>
      <td class="td_bg" align="center" height="23"><%=c.getValue() %></td>
    </tr>
    <%}%>
    
    	<tr>
		<th colspan="6" class="td_bg" >
			<form action="score_list.jsp" method="post">
				学生:<input type="text" name="student">
				课程:<input type="text" name="class">
				<input type="submit" value="查找"  >
			</form>
        </th>
	</tr>
    
    <tr>
    <% long total=Score.count(Score.class,null,null); %>
    	<td class="td_bg" align="right"  colspan="6" height="23">
    		<a href="score_list.jsp?start=0">第一页</a>
    	
    		<a href="score_list.jsp?start=<%=(size)*limit%>&size=<%=size+1%>">下一页</a>
    		
    		<a href="score_list.jsp?start=<%=(size-1)*limit%>&size=<%=size-1%> %>">上一页</a>
    		
    		<a href="score_list.jsp?start=<%=total-(total %limit) %>&size=<%=(total /limit)+1 %>">尾页</a>
    		当前第:<%=size%>页
    		总计：<%=total %>条记录,
    		共<%=(total /limit)+1 %>页
    	</td>
    </tr>
  </tbody>
</table>

</body>
</html>
