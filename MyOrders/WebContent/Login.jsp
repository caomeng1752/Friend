<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script type="text/javascript" src="<%=request.getContextPath() %>/easyUi/jquery-1.8.2.min.js"></script>
</head>
<script type="text/javascript">
	function Login(){
		var uName=$("#uName").val();
		var pwd=$("#pwd").val();
		 $.ajax({
			type:"post",
			url:"goods/Login.action",
			data:{
				uName:uName,
		 		password:pwd,
			},
			dataType:"text",
			success:function(obj){
				if(obj=="success"){
					alert("登陆成功");
					location.href="goods/main.action";
				}else{
					alert("登陆失败");
				}
			}
		}) 
	}
</script>
<body>
	<center>
		<table>
			<tr>
				<td>用户名</td>
				<td><input type="text" name="uName" id="uName"/></td>
			</tr>
			<tr>
				<td>密码</td>
				<td><input type="password" name="password" id="pwd"/></td>
			</tr>
			<tr>
				<td><input type="button" value="登陆" onclick="Login()"/></td>
			</tr>
		</table>
	</center>
</body>
</html>