<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<base href="${basePath }" />
<link rel="shortcut icon" type="image/x-icon" href="<%=basePath %>favicon.ico">
<script type='text/javascript' src='<%=basePath %>dwr/engine.js'></script>
<script type='text/javascript' src='<%=basePath %>dwr/util.js'></script>
<script type='text/javascript' src='<%=basePath %>dwr/interface/SendPushService.js'></script>
<script type="text/javascript">
	function helloworld() {
		SendPushService.send("第一个dwr推程序");
	}
	/**由dwr在后台调用这个方法**/
	function dwrtest(data) {
		alert(data);
	}
</script>
<title>第一个dwr推程序</title>
</head>
<body onload="dwr.engine.setActiveReverseAjax(true);">
	<input type="button" value="点击我" onclick="helloworld();" />
	<%=basePath %>
</body>
</html>
