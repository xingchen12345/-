<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path;
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>注册界面</title>
</head>
<style type="text/css">
			.div{
				width:100%;
				background-color: pink;
			}
#div1 {
	width: 1024px;
	height: 768px;
	background: url(img/zhuce.jpg);
	margin: 0 auto;
	position: absolute;
}

#form1 {
	position: relative;
	bottom: 600px;
	left: 500px;
	font-size: 25px;
	color: yellow;
	font-style: bloder;
}

.s1 {
	font-size: 12px;
	color: blue;
}

#p1 {
	position: relative;
	color: paleturquoise;
	font-weight: bolder;
	font-size: 35px;
	bottom: 600px;
	left: 580px;
}

#pwd1 {
	width: 150px;
}

#pwd2 {
	width: 150px;
}
</style>
<body>
	<div class="div">
		<div id="div1">
			<p id="p1">用户注册</p>
			<form action="login.jsp" id="form1">
				<tr>
					<td>用&nbsp;&nbsp;&nbsp;户&nbsp;&nbsp;&nbsp;名：<input type="text"
						placeholder="请输入您的用户名" maxlength="8" /></td>
				</tr>
				<span class="s1">不能超过8个字符</span><br />
				<tr>
					<td>密&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;码：<input
						type="password" id="pwd1" placeholder="请输入您的密码" maxlength="17"
						onkeyup="value=this.value.replace(/\D+/g,”)" /></td>
				</tr>
				<span class="s1">不能超过17个字符,且只能是字母或数字</span><br />
				<tr>
					<td>再次&nbsp;&nbsp;确认：<input type="password" id="pwd2"
						placeholder="再次输入您的密码" onblur="f()" maxlength="17"
						onkeyup="value=this.value.replace(/\D+/g,”)" /></td>
				</tr>
				<br />
				<tr>
					<td>性&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;别：<input
						type="radio" value="男" name="sex" />男&nbsp;&nbsp;&nbsp;<input
						type="radio" value="女" name="sex" />女
					</td>
				</tr>
				<br />
				<tr>
					<td>出生&nbsp;&nbsp;日期：<input type="text" /></td>
				</tr>
				<br />
				<tr>
					<td>地&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;址：<input
						type="text" /></td>
				</tr>
				<br />
				<tr>
					<td>手&nbsp;&nbsp;&nbsp;机&nbsp;&nbsp;&nbsp;号：<input type="text"
						placeholder="请输入您的手机号码" maxlength="11" /></td>
				</tr>
				<br />
				<tr>
					<td>验&nbsp;&nbsp;&nbsp;证&nbsp;&nbsp;&nbsp;码：<input
						name="verifyCode">&nbsp;
						<button type="button" class="sendVerifyCode" style="width: 120px">获取短信验证码</button></td>
				</tr>
				<br />
				<tr>
					<td><button type="button"
							style="position: relative; left: 100px; top: 10px"
							class="sub-btn">提交</button>
						<input type="reset"
						style="position: relative; left: 150px; top: 10px" /></td>
				</tr>
			</form>
			<script>
			function f() {
			     //1.取出两个密码框的值
			    //document它是这个页面所有标记的集合
			    //变量 是存储数据的
			    //= 是赋值的作用
			 var p1 = document.getElementById("pwd1").value;
			 var p2 = document.getElementById("pwd2").value;
			
			     //2.判断两个密码的值是否一致
			    // 相等判断 ==
			 if(p1 == p2)
			 {
			     alert("两次密码输入一致");
			 }
			 else
			 {
			  alert("两次密码输入不一致,请重新输入");
			 }
			}
		
		</script>
		</div>
	</div>
</body>
</html>