<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<script type="text/javascript">
	var contextPath = "${pageContext.request.contextPath}";
</script>

	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery-1.7.2.min.js"></script>
<title>Insert title here</title>
</head>
<body>
	<h1>${user.user_id }注册成功！<br>系统已经将验证码发送到你的邮箱 ${user.email}，<br>请从邮箱获取验证码进行下一步操作（注意不要关闭本页面）。</h1>
	<div id='captcha_div'>
	请输入邮箱中的验证码:<input type="text" id='captcha_text' style='font-size:20px;' size='5'> 
	<span id='captcha_errinfo' style='color:red;display:none;'>请输入正确验证码</span>

	<br>
	<input id='captcha_btn' type='button' onclick='pseudoValidate(captcha_text.value)' style='height:50px;font-size:20px;' value='获取问卷'>
	</div>
	<script type="text/javascript">
		function pseudoValidate(val){
			if(val == null ||val == ''){
				$("#captcha_errinfo").css("display","block");
			}else{
				$("#captcha_div").css("display","none");
				$("#captcha_url").css("display","block");
			}
		}
	</script>
	<a id='captcha_url' style="font-size:25px;position:relative;left:20%;display:none;" href="quiz.jsp?user_id=${user.user_id}">点击链接进入下一步填写问卷</a>
</body>
</html>