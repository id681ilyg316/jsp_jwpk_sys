<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ page language="java" import="entity.*"%>
<% User user=((User)session.getAttribute("loginUser"));%>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>管理系统</title>
<link href="../Images/css1/left_css.css" rel="stylesheet" type="text/css">
</head>
<SCRIPT language=JavaScript>
function showsubmenu(sid)
{
whichEl = eval("submenu" + sid);
if (whichEl.style.display == "none")
{
eval("submenu" + sid + ".style.display=\"\";");
}
else
{
eval("submenu" + sid + ".style.display=\"none\";");
}
}
</SCRIPT>
<body bgcolor="16ACFF">
<table width="98%" border="0" cellpadding="0" cellspacing="0" background="Images/tablemde.jpg">
  <% if(user.getU_type().equals("student")){ %>
  <!-- ------student start -->
  <tr>
    <td>
    <TABLE width="97%" border=0 align=right cellPadding=0 cellSpacing=0 class=leftframetable>
      <TBODY>
        <TR>
          <TD height="25" style="background:url(../Images/left_tt.gif) no-repeat">
            <table width="100%" border="0" cellspacing="0" cellpadding="0">
              <tr>
                <TD width="20"></TD>
                <TD class=STYLE1 style="CURSOR: hand" onclick=showsubmenu(1); height=25>学生管理</TD>
              </tr>
            </table>            
            </TD>
          </TR>
          
        <TR>
          <TD><TABLE id=submenu1 cellSpacing=0 cellPadding=0 width="100%" border=0>
              <TBODY>
                <TR>
                  <TD width="2%"><IMG src="../Images/closed.gif"></TD>
                  <TD height=23><A href="student/student_add.jsp?id=<%=user.getId() %>"  target=main>基本信息</A></TD>
                </TR>
              </TBODY>
          </TABLE>
         </TD>
        </TR>
        
        <TR>
          <TD><TABLE id=submenu1 cellSpacing=0 cellPadding=0 width="100%" border=0>
              <TBODY>
                <TR>
                  <TD width="2%"><IMG src="../Images/closed.gif"></TD>
                  <TD height=23><A href="student/choose_list.jsp"  target=main>选课功能</A></TD>
                </TR>
              </TBODY>
          </TABLE>
         </TD>
        </TR>
        
        <TR>
          <TD><TABLE id=submenu1 cellSpacing=0 cellPadding=0 width="100%" border=0>
              <TBODY>
                <TR>
                  <TD width="2%"><IMG src="../Images/closed.gif"></TD>
                  <TD height=23><A href="student/byrow_list.jsp?class_id=${loginUser.class_id}"  target=main>课程安排</A></TD>
                </TR>
              </TBODY>
             </TABLE>
          </TD>
        </TR>
        
        <TR>
          <TD><TABLE id=submenu1 cellSpacing=0 cellPadding=0 width="100%" border=0>
              <TBODY>
                <TR>
                  <TD width="2%"><IMG src="../Images/closed.gif"></TD>
                  <TD height=23><A href="student/score_list.jsp"  target=main>成绩查询</A></TD>
                </TR>
              </TBODY>
          </TABLE>
         </TD>
        </TR>
        
      </TBODY>
    </TABLE>
    </td>
  </tr>
  <% }else if(user.getU_type().equals("teacher")){ %>
<!-- ------teacher start -->
   <tr>
    <td>
    <TABLE width="97%" border=0 align=right cellPadding=0 cellSpacing=0 class=leftframetable>
      <TBODY>
        <TR>
          <TD height="25" style="background:url(../Images/left_tt.gif) no-repeat">
            <table width="100%" border="0" cellspacing="0" cellpadding="0">
              <tr>
                <TD width="20"></TD>
                <TD class=STYLE1 style="CURSOR: hand" onclick=showsubmenu(1); height=25>教师管理</TD>
              </tr>
            </table>            
           </TD>
         </TR>
          
         <TR>
          <TD><TABLE id=submenu1 cellSpacing=0 cellPadding=0 width="100%" border=0>
              <TBODY>
                <TR>
                  <TD width="2%"><IMG src="../Images/closed.gif"></TD>
                  <TD height=23><A href="teacher/subject_list.jsp"  target=main>课程申请</A></TD>
                </TR>
              </TBODY>
          </TABLE>
         </TD>
        </TR>
 
        <TR>
          <TD><TABLE id=submenu1 cellSpacing=0 cellPadding=0 width="100%" border=0>
              <TBODY>
                <TR>
                  <TD width="2%"><IMG src="../Images/closed.gif"></TD>
                  <TD height=23><A href="teacher/student_list.jsp"  target=main>学生管理</A></TD>
                </TR>
              </TBODY>
          </TABLE>
         </TD>
        </TR>
        
        <TR>
          <TD><TABLE id=submenu1 cellSpacing=0 cellPadding=0 width="100%" border=0>
              <TBODY>
                <TR>
                  <TD width="2%"><IMG src="../Images/closed.gif"></TD>
                  <TD height=23><A href="teacher/score_list.jsp"  target=main>成绩管理</A></TD>
                </TR>
              </TBODY>
          </TABLE>
         </TD>
        </TR>
        
        <TR>
          <TD><TABLE id=submenu1 cellSpacing=0 cellPadding=0 width="100%" border=0>
              <TBODY>
                <TR>
                  <TD width="2%"><IMG src="../Images/closed.gif"></TD>
                  <TD height=23><A href="teacher/byrow_list.jsp"  target=main>排课管理</A></TD>
                </TR>
              </TBODY>
          </TABLE>
         </TD>
        </TR>    
         
      </TBODY>
    </TABLE>
    </td>
  </tr>
  
  <% }else if(user.getU_type().equals("admin")){ %>
  <!-- ------admin start -->
  	<tr>
    <td>
    <TABLE width="97%" border=0 align=right cellPadding=0 cellSpacing=0 class=leftframetable>
      <TBODY>
        <TR>
          <TD height="25" style="background:url(../Images/left_tt.gif) no-repeat">
            <table width="100%" border="0" cellspacing="0" cellpadding="0">
              <tr>
                <TD width="20"></TD>
                <TD class=STYLE1 style="CURSOR: hand" onclick=showsubmenu(1); height=25>教务管理</TD>
              </tr>
            </table>            
            </TD>
          </TR>
          
        <TR>
          <TD><TABLE id=submenu1 cellSpacing=0 cellPadding=0 width="100%" border=0>
              <TBODY>
                <TR>
                  <TD width="2%"><IMG src="../Images/closed.gif"></TD>
                  <TD height=23><A href="admin/subject_list.jsp"  target=main>课程申请管理</A></TD>
                </TR>
              </TBODY>
          </TABLE>
         </TD>
        </TR>
        
        <TR>
          <TD><TABLE id=submenu1 cellSpacing=0 cellPadding=0 width="100%" border=0>
              <TBODY>
                <TR>
                  <TD width="2%"><IMG src="../Images/closed.gif"></TD>
                  <TD height=23><A href="admin/course_list.jsp"  target=main>课程设置</A></TD>
                </TR>
              </TBODY>
          </TABLE>
         </TD>
        </TR>      
        
        <TR>
          <TD><TABLE id=submenu1 cellSpacing=0 cellPadding=0 width="100%" border=0>
              <TBODY>
                <TR>
                  <TD width="2%"><IMG src="../Images/closed.gif"></TD>
                  <TD height=23><A href="admin/open_course.jsp"  target=main>课程情况</A></TD>
                </TR>
              </TBODY>
          </TABLE>
         </TD>
        </TR>       
          
        <TR>
          <TD><TABLE id=submenu1 cellSpacing=0 cellPadding=0 width="100%" border=0>
              <TBODY>
                <TR>
                  <TD width="2%"><IMG src="../Images/closed.gif"></TD>
                   <TD height=23><A href="admin/category_list.jsp"  target=main>专业设置</A></TD>
                </TR>
              </TBODY>
          </TABLE>
         </TD>
        </TR>
        
        <TR>
          <TD><TABLE id=submenu1 cellSpacing=0 cellPadding=0 width="100%" border=0>
              <TBODY>
                <TR>
                  <TD width="2%"><IMG src="../Images/closed.gif"></TD>
                  <TD height=23><A href="admin/byrow_list.jsp"  target=main>排课管理</A></TD>
                </TR>
              </TBODY>
          </TABLE>
         </TD>
        </TR>     
        
        <TR>
          <TD><TABLE id=submenu1 cellSpacing=0 cellPadding=0 width="100%" border=0>
              <TBODY>
                <TR>
                  <TD width="2%"><IMG src="../Images/closed.gif"></TD>
                  <TD height=23><A href="admin/off_list.jsp"  target=main>系办人员管理</A></TD>
                </TR>
              </TBODY>
          </TABLE>
         </TD>
        </TR>
        
        <TR>
          <TD><TABLE id=submenu1 cellSpacing=0 cellPadding=0 width="100%" border=0>
              <TBODY>
                <TR>
                  <TD width="2%"><IMG src="../Images/closed.gif"></TD>
                  <TD height=23><A href="admin/teacher_list.jsp"  target=main>教师管理</A></TD>
                </TR>
              </TBODY>
          </TABLE>
         </TD>
        </TR>
        
        <TR>
          <TD><TABLE id=submenu1 cellSpacing=0 cellPadding=0 width="100%" border=0>
              <TBODY>
                <TR>
                  <TD width="2%"><IMG src="../Images/closed.gif"></TD>
                  <TD height=23><A href="admin/student_list.jsp"  target=main>学生管理</A></TD>
                </TR>
              </TBODY>
          </TABLE>
         </TD>
        </TR>
               
         <TR>
          <TD><TABLE id=submenu1 cellSpacing=0 cellPadding=0 width="100%" border=0>
              <TBODY>
                <TR>
                  <TD width="2%"><IMG src="../Images/closed.gif"></TD>
                  <TD height=23><A href="admin/room_list.jsp"  target=main>教室管理</A></TD>
                </TR>
              </TBODY>
          </TABLE>
         </TD>
        </TR>      
        
        <TR>
          <TD><TABLE id=submenu1 cellSpacing=0 cellPadding=0 width="100%" border=0>
              <TBODY>
                <TR>
                  <TD width="2%"><IMG src="../Images/closed.gif"></TD>
                  <TD height=23><A href="admin/class_list.jsp"  target=main>班级管理</A></TD>
                </TR>
              </TBODY>
          </TABLE>
         </TD>
        </TR>
        
      </TBODY>
    </TABLE>
    </td>
  </tr>
  <% } %>
</table>
</body></html>
