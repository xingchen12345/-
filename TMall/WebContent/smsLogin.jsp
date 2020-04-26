<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>登录页面</title>
		<style>
			body{
				margin:0px;
			}
			#p1{
				margin-left:125px;
				font-size:21px;
				font-family: 'book antiqua';
				color: #FF0000;
			}
			.div{
				width:100%;
				background-color: pink;
			}
			#div1{
				width:1024px;
				height:768px;
				background: url(img/login.jpg);
				margin: 0 auto;
				position: relative;
			}
			form{
				width:300px;
				height: 320px;
				background-color: white;
				position: absolute;
				top:60px;
				right:40px;
				padding-left: 20px;
			}
			#a1{
				text-decoration:unset;
				color: black;
			}
			#a1:hover{
				color: blue;
				text-decoration: underline;
			}
			img{
				vertical-align: bottom;
			}
			#p2{
				width:275px;
				border:1px solid lightgray;
			}
			#p2,input{
				border:1px solid white;
				background-color:whitesmoke;
				padding:4px;
			}
			#p3{
				background-color:red;
				padding:5px;
				width:267px;
				text-align:center;
			}
			#p3>input{
				background-color:red;
				border:red;
				color: #D3D3D3;
				font-weight: bolder;
				text-align:center;
			}
		</style>
	</head>
	<body>
		<p id="p1">鸽优SHOP</p>
		<div class="div">
			<div id="div1">
				<form action="" method="post">
					<br/>
					<a href="pwdLogin.jsp" id="a1">密码登录</a>&nbsp;&nbsp;&nbsp;&nbsp;<a href="smsLogin.jsp" id="a1">短信登录</a>
					<p id="p2"><img alt="" src="img/user.jpg" width=30 height=30 />
					<input type="tel" size=30 placeholder="手机号"/></p>
					<p id="p2"><img alt="" src="img/pw.JPG" width=30 height=30/>
						<input type="tel" size=30 placeholder="请输入验证码"/></p>
					<p><a href="">获取验证码</a>&nbsp;&nbsp;&nbsp;&nbsp;<a href="注册页面.jsp">点击注册</a></p>
					<p id="p3">
						<input type="submit" value="登录"/>
					</p>
				</form>
			</div>
		</div>
	</body>
</html>
