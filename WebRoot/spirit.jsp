<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html>
<html lang="en">
<head>
<!-- Site Title -->
<title>团队精神</title>

<!-- Meta Data -->
<meta charset="UTF-8" />


<!-- Site Theme Styling -->
<link rel="stylesheet" href="css/spirit.css" />
<link rel="shortcut icon" href="image/news_title_pic.png">


<style type="text/css">
body,html {
	width:1004px;
		padding:0px;
		margin: 0px auto;          /*设置居中  */
		text-align:center;         /*兼容性更好  */
}
a img
	{ 
				border:none;
	}
</style>
</head>

<body>

	<!-- jQuery and Nivo Slider -->
	<script type="text/javascript" src="javascript/jQuery-1.4.2.min.js"></script>
	<script type="text/javascript" src="javascript/Nivo-Slider.min.js"></script>
	<div id="background">
		<div class="nav">
			  <a href="list_info_to_index.action"><img src="image/border_11.gif"></a>
			<a href="list_front_image.action" target="_blank"><img src="image/border_12.gif"></a>
			<a href="listFrontNews.action" target="_blank"><img src="image/border_13.gif"></a>
			<a href="list_first_four.action" target="_blank"><img src="image/border_14.gif"></a>
		</div>
		<div class="content2">
			<center>
				<font face="楷体">梦之站精神</font>
			</center>
		</div>
		<div class="content1">
			<s:iterator value="#request.list" id="spirit" status="status">
				<font size="3px" face=微软雅黑> <s:property value="#spirit.spirit"
						escape="false" /> </font>
			</s:iterator>

		</div>
 <div class="copyright">
		<font face=微软雅黑 size=2px>Copyright@梦之站 | 湖南省长沙市(雨花区)万家丽南路2段960号
			电话：0731-2309047 邮箱：dreamstationx.@sina.com
			</font>
		</div> 
	</div>
</body>
</html>