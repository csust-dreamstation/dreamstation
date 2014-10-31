<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<%@page import="com.jspsmart.upload.*"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<base href="<%=basePath%>">
<link rel="shortcut icon" href="image/news_title_pic.png">
<title>上传图片</title>
<link rel="stylesheet" type="text/css" href="css/back_manage.css">
<style type="text/css">
body,html {
	width: 1004px;
	padding: 0px;
	margin: 0px auto; /*设置居中  */
	text-align: center; /*兼容性更好  */
}
</style>
</head>

<body>
	<div class="body">
		<div class="top">
			<img alt="" src="image/manager_top.jpg" />
		</div>
		<div class="left">
			<jsp:include page="managerPage/left.jsp"></jsp:include>
		</div>
		<div class="right">
			<center>
				<h1>添加成员</h1>
			</center>


			<form action="upload_member_pic.jsp" method="post"
				enctype="multipart/form-data">
				<center>
					<table cellspacing="0" align=center border="1" style="border-color: #EFF2FF">
<colgroup>
		<col class="odd" />
		<col class="even" />
		
</colgroup>
						<tr>
							<td>名字：</td>
							<td><input type="text" name="name"></td>
						</tr>
						
						<tr>
							<td>介绍：</td>
							<td><input type="text" name="introduction">
							</td>
						</tr>
					
						<tr>
							<td>年纪专业：</td>
							<td><input type="text" name="grade_major">
							</td>
						</tr>
						<tr>
							<td>部门：</td>
							<td>
							<select name="category">
							<option value="#" selected="selected">请选择</option>
  									<option value ="teacher">导师</option>
 									 <option value ="programmer">程序组</option>
 									 <option value="painting">美工组</option>
  									
							</select>
							
							</td>
						</tr>
								<tr>
							<td>小图片：</td>
							<td><input type="file" name="image_small" />
							</td>
						</tr>
							<tr>
							<td>大图片：</td>
							<td><input type="file" name="image_big" />
							</td>
						</tr>

					
						<tr>
							<td><input type="submit" name="上传">
							</td>
							<td><input type="reset" name="重置">
							</td>
						</tr>
					</table>
				</center>

			</form>




		</div>

	</div>
</body>
</html>
