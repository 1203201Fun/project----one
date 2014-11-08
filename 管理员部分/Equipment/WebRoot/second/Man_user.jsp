<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>用户管理</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="用户管理,用户,管理">
	<meta http-equiv="description" content="用户管理">
    
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
    <link href="image/CSS/top.css" rel="stylesheet" type="text/css">
    <%@ taglib prefix="s" uri="/struts-tags" %>
  </head>
  <body bgcolor="#2F2F2F">
 
    <div id="menu" align="center">
  	<ul>
  		<li><a href="mangerShow.action?order=1"><b>简介</b></a></li>
        <li><a href="mangerShow.action?order=2"><b>用户管理</b></a></li>
        <li><a href="mangerShow.action?order=3"><b>设备登记</b></a></li>
        <li><a href="mangerShow.action?order=4"><b>设备情况</b></a></li>
        <li><a href="mangerShow.action?order=5"><b>信息补充</b></a></li>
         <div style="height:35px; line-height:40px"><a href="mangerShow.action?order=6" style="text-decoration:none; font-size:13px;color:#E6E6E6"><b>返回</b></a></div>
  	</ul>
  </div>
  <div id="admin" style="overflow:scroll">
  <div style="height:10px"></div>
  <div style="height:25px; margin-left:auto; margin-right:auto; width:80%">
  <font face="楷体" size="+1">
  当前页面：主页 > 用户管理
  </font>
  </div>
  <div style="margin-top:20px"></div>
  <table id="adm_user" border="2px">
    <tr align="center" height="40px">
      <td width="167px">用户名</td>
      <td width="167px">实名</td>
      <td width="167px">手机号</td>
      <td width="167px">邮箱</td>
      <td width="167px">单位</td>
      <td width="167px">操作</td>
    </tr>
    <s:iterator value="list" status="st">
    <tr align="center" height="40px">
      <td width="167px"><s:property value="username"/></td>
      <td width="167px"><s:property value="realname"/></td>
      <td width="167px"><s:property value="phone"/></td>
      <td width="167px"><s:property value="email"/></td>
      <td width="167px"><s:property value="adress"/></td>
      <td width="167px">
      <div style="width:90px; float:inherit;height:28px">
      <s:form action="userdelete">
       <input type="hidden" name="phone_tp" value="${ phone }">
      <input type="submit" value="删除">
      </s:form>
      </div>
      </td>
      </tr>
    </s:iterator>
  </table>
  </div>
  </body>
</html>
