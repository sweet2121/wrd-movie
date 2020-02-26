<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>电影列表</title>
<link rel="stylesheet" href="css/index3.css"/>
<script type="text/javascript" src="js/jquery-1.8.3.js"></script>
<script type="text/javascript" src="My97DatePicker/WdatePicker.js"></script>

<script type="text/javascript">
	function morder(orderName) {
		var orderMethod='${movieVo.orderMethod}';
		orderMethod= orderMethod=='desc'?'asc':'desc';
		location.href="/selects?orderName="+orderName+"&orderMethod="+orderMethod;
	}
	//分页
	function fenye(pageNum) {
		//给表单中隐藏标签赋值
		$("[name=pageNum]").val(pageNum);
		//表单提交
		$("form").submit();
	}
	//全选、全不选
	function choose(own) {
		$("[name=check]").attr("checked",own.checked);
	}
	//添加跳转
	function add() {
		location="toAdd.do";
	}
	//批量删除
	function deleteBatch() {
		var size=$("[name=check]:checked").size();
		if(size>1){
			var ids = $("[name=check]:checked").map(function(){
				return this.value;
			}).get().join();
			
			$.post("delete.do",{ids:ids},function(flag){
				if(flag){
					alert("删除成功！");
					location="selects.do";
				}else{
					alert("删除失败！");
				}
			},"json")
		}else{
			if(size=0){
				alert("请选择要删除得记录！");
			}else{
				alert("批删至少删除2条记录！");
			}
		}
	}
	function del(id){
		$.post("delete.do",{ids:id},function(flag){
			if(flag){
				alert("删除成功！");
				location="selects.do";
			}else{
				alert("删除失败！");
			}
		},"json")
	}
</script>
</head>
<body>
<form action="selects" method="post">
	<input type="hidden" name="pageNum">
	影片名称：<input type="text" name="name" value="${movieVo.name }">&nbsp;
	上映时间：<input type="text" name="t1" value="${movieVo.t1 }">--<input type="text" name="t2" value="${movieVo.t2 }"><br>
	导演：<input type="text" name="actor" value="${movieVo.actor }">&nbsp;
	价格：<input type="text" name="p1" value="${movieVo.p1 }">--<input type="text" name="p2" value="${movieVo.p2 }"><br>
	年代：<input type="text" name="years" value="${movieVo.years }">&nbsp;
	电影时长：<input type="text" name="l1" value="${movieVo.l1 }">--<input type="text" name="l2" value="${movieVo.l2 }"><br>
	<button>查询</button>
	<input type="button" value="添加" onclick="add()">
</form>
<table>
		<tr>
			<td>
				<input type="checkbox" onclick="choose(this)">
			</td>
			<td>序号</td>
			<td>电影名称</td>
			<td>导演</td>
			<td>上映日期</td>
			<td><a href="javascript:morder('longtime')">电影时长</a></td>
			<td><a href="javascript:morder('price')">价格</a></td>
			<td><a href="javascript:morder('years')">年代</a></td>
			<td>类型</td>
			<td>区域</td>
			<td>状态</td>
			<td>操作</td>
		</tr>
		<c:forEach items="${movies }" var="movie" varStatus="count">

			<tr>
				<td>
					<input type="checkbox" name="check" value="${movie.id }">
				</td>
				<td>${count.count+page.startRow-1 }</td>
				<td>${movie.name }</td>
				<td>${movie.actor }</td>
				<td>${movie.uptime }</td>
				<td>${movie.longtime }</td>
				<td>${movie.price }</td>
				<td>${movie.years }</td>
				<td>${movie.type }</td>
				<td>${movie.area }</td>
				<td>${movie.status==1?"即将上映":movie.status==2?"正在热映":"已经下线" }</td>
				<td>
					<button onclick="del(${movie.id})">删除</button>
				</td>
			</tr>
		</c:forEach>
		<tr>
			<td colspan="20">
				<button onclick="fenye(1)">首页</button>
				<button onclick="fenye(${page.prePage==0?1:page.prePage})">上一页</button>
				<button onclick="fenye(${page.nextPage==0?page.pages:page.nextPage})">下一页</button>
				<button onclick="fenye(${page.pages})">尾页</button>
				&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
				当前${page.pageNum}/${page.pages}页,共${page.total}条
				<button onclick="deleteBatch()">批量删除</button>
			</td>
		</tr>
	</table>
</body>
</html>