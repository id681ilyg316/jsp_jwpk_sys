<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>教务排课管理系统</title>
<link href="../Images/css1/top_css.css" rel="stylesheet" type="text/css">
</head>
<body bgcolor="#03A8F6">
<table width="100%" border="0" cellpadding="0" cellspacing="0">
  <tr>
    <td width="194" height="60" align="center" background="../Images/top_logo.jpg"></td>
    <td align="center" style="background:url(../Images/top_bg.jpg) no-repeat"><table cellspacing="0" cellpadding="0" border="0" width="100%" height="33">
      <tbody>
        <tr>
         <td width="30" align="left"><!-- <img onClick="switchBar(this)" height="15" alt="关闭左边管理菜单" src="../Images/on-of.gif" width="15" border="0" /> --></td>
          <td width="320" align="left">
          <td width="80" align="right" nowrap="nowrap" class="topbar">公告：</td>
          <td class="topbar"><a href="" 
            target="_blank"><img title="返回首页" height="23" 
            src="../Images/home.gif" width="33" 
        border="0" align="left" /></a><div id="date" align="right">
	   今天是：<script language=JavaScript>today=new Date();function initArray(){this.length=initArray.arguments.length;for(var 
i=0;i<this.length;i++) this[i+1]=initArray.arguments[i]};var d=new initArray("星期日", 
"星期一","星期二", "星期三","星期四","星期五","星期六");document.write("<font class=date>",today.getFullYear(),"年",today.getMonth()+1,"月", 
today.getDate(),"日 ", d[today.getDay()+1],"</font>");</script>&nbsp;&nbsp;
    </div></td>
        </tr>
      </tbody>
    </table>
    <table height="26" border="0" align="left" cellpadding="0" cellspacing="0" class="subbg" NAME=t1>
      <tbody>
        <tr align="middle">
          
           <td width="71" height="26" align="center" valign="middle" background="../Images/top_tt_bg.gif"><a          
            href="#" onClick="switchBar(this)">全屏切换</a></td>
          
          <td width="71" height="26" align="center" valign="middle" background="../Images/top_tt_bg.gif"><a          
          target="main" class=class="top_link" 
            href="changePwd.jsp" >修改密码</a></td>
            
          <td align="center" class="topbar"><span class="STYLE2"> </span></td>
          <td width="71" align="center" valign="middle" background="../Images/top_tt_bg.gif"><a  href="../ext.jsp" target="_top" class="STYLE2">退出登录</a></td>
        </tr>
      </tbody>
    </table></td>
  </tr>
  <tr height="6">
    <td bgcolor="#1F3A65" background="../Images/top_bg.jpg"></td>
  </tr>
</table>
<script language="javascript">
<!--
var displayBar=true;
function switchBar(obj){
	if (displayBar)
	{
		parent.frame.cols="0,*";
		displayBar=false;
		obj.title="打开左边管理菜单";
	}
	else{
		parent.frame.cols="195,*";
		displayBar=true;
		obj.title="关闭左边管理菜单";
	}
}
//-->
</script></body>
</html>

