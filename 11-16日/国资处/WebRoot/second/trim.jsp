<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'modify.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	<%@ taglib prefix="s" uri="/struts-tags" %>
  </head>
  
  <body bgcolor="#F5F5F5">
    <div style="margin-top:20px"></div>
    
    <center><h3>设备报修表</h3></center>
  <font face="楷体" size="+1">
  <div style="width:50%;margin-left:auto;margin-right:auto;height:45px"><div style="float:left">信息查询:</div>
  <s:form action="tasearch">
  <div style="float:left;margin-left:35px; margin-top:-4px; width:80px">
  <select name="seckind" style="width:100px">
  <option value="device">设备名称</option>
  <option value="model">型号</option>
  <option value="id">编号</option>
  <option value="department">部门</option>
  <option value="recipienter">领用人</option>
  <option value="date">报修日期</option>
  <option value="signature">审批人</option>
  <option value="flag">审批结果</option>
  <option value="time">审批时间</option>
  </select>
  </div>
  <div style="float:left;width:300px;margin-top:-6px" align="center">
  <input style="background:white;border:0px" type="text" name="tabletp">
  <input style="margin-left:10px" type="image" src="1120.png" height="20" width="20">
  </div>
  </s:form>
  </div>
  </font>
  <font face="楷体" size="4">
  <s:iterator value="listdev" status="st">
  <table  border="2px" id="adm_user" cellspacing="0" align="center">
  <tr align="center" height="40px">
  <td width="120px">设备名称</td>
  <td width="120px">型号</td>
  <td width="120px">编号</td>
  <td width="120px">所属部门</td>
  <td width="120px">领用人</td>
  <td width="120px">报修日期</td>
  </tr>
  <tr align="center" height="40px">
  <td width="120px"><s:property value="device"/></td>
  <td width="120px"><s:property value="model"/></td>
  <td width="120px"><s:property value="id"/></td>
  <td width="120px"><s:property value="department"/></td>
  <td width="120px"><s:property value="recipienter"/></td>
  <td width="120px"><s:property value="date"/></td>
  </tr>
  <tr align="center" height="40px">
  <td width="120px">申报金额</td>
  <td width="240px" colspan="2">报修原因</td>
  <td width="120px">审批结果</td>
  <td width="120px">审批时间</td>
  <td width="120px">审批人</td>
  </tr>
  <tr align="center" height="40px">
  <td width="120px"><s:property value="price"/></td>
  <td width="240px" colspan="2"><s:property value="reason"/></td>
  <td width="120px"><s:property value="flag"/></td>
  <td width="120px"><s:property value="time"/></td>
  <td width="120px"><s:property value="signature"/></td>
  </tr>
  </table>
  <div style="margin-top:10px"></div>
  </s:iterator>
  </font>
  </body>
</html>
