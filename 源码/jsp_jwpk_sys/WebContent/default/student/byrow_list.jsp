<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ page language="java" import="entity.*,util.*"%>
<jsp:include page="../../safe.jsp" />

<% 
   String class_id=request.getParameter("class_id");
   List<Byrow> byrows=null;
   if(class_id==null){
   		class_id="0";
   }
   MyClass mclass=MyClass.find(MyClass.class,class_id);
   request.setAttribute("mclass",mclass);
   byrows=Byrow.findAll(Byrow.class,"class_id=? ",new Object[]{class_id});
   String args[][]=new String[8][6];
   for(int i=0;i<args.length;i++){
   	for(int j=0;j<args[0].length;j++){
   		args[i][j]="";
   	}
   }
   
   args[0][0]=" / ";
   args[0][1]="星期一";
   args[0][2]="星期二";
   args[0][3]="星期三";
   args[0][4]="星期四";
   args[0][5]="星期五";
   
   args[1][0]="第一节";
   args[2][0]="第二节";
   args[3][0]="第三节";
   args[4][0]="第四节";
   args[5][0]="第五节";
   args[6][0]="第六节";
   args[7][0]="第七节";
   
   for(Byrow brow:byrows){
      args[brow.getRow_value()][brow.getCol_value()]="("+brow.getTeacher().getReal_name()+")"+brow.getCourse().getC_name();
   }
%>

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
      <th class="bg_tr" align="center" colspan="7" height="25">${mclass.name} 课程安排</th>
    </tr>
 
  
    <% for(int i=0;i<args.length;i++){%>
    <tr>
       <% for(int j=0 ;j<args[0].length;j++){ %>
    
    	<% if(i==0){ %>
    	
           <th class="bg_tr" align="center" height="25"><%=args[i][j] %></th>
     
        <% }else{ %>
       
            <td class="td_bg" align="center" height="23"><%=args[i][j] %></td>
        <%} %>
        
        <%} %>
        <tr>
   <%}%>

  </tbody>
</table>

</body>
</html>
