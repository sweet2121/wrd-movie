<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="css/index3.css"/>
<script type="text/javascript" src="js/jquery-1.8.3.js"></script>
<script type="text/javascript" src="My97DatePicker/WdatePicker.js"></script>
</head>
<body>
<form:form action="add.do" method="post" modelAttribute="movie">
	<table>
		<tr>
			<td>电影名称：</td>
			<td>
				<form:input path="name"/>
			</td>
		</tr>
		<tr>
			<td>导演：</td>
			<td>
				<form:input path="actor"/>
			</td>
		</tr>
		<tr>
			<td>价格：</td>
			<td>
				<form:input path="price"/>
			</td>
		</tr>
		<tr>
			<td>上映日期：</td>
			<td>
				<form:input path="uptime"/>
			</td>
		</tr>
		<tr>
			<td>电影时长：</td>
			<td>
				<form:input path="longtime"/>
			</td>
		</tr>
		<tr>
			<td>类型：</td>
			<td>
				<form:input path="type"/>
			</td>
		</tr>
		<tr>
			<td>年代：</td>
			<td>
				<form:input path="years"/>
			</td>
		</tr>
		<tr>
			<td>区域：</td>
			<td>
				<form:input path="area"/>
			</td>
		</tr>
		<tr>
			<td>状态：</td>
			<td>
				<form:input path="status"/>
			</td>
		</tr>
		<tr>
			<td></td>
			<td>
				<form:button>提交</form:button>
			</td>
		</tr>
	</table>
</form:form>
</body>
</html>