<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

<!-- 让IE以兼容性视图模式打开网页 注意前面不能有任何css或者js否则会影响浏览器解析模式 -->
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta http-equiv="X-UA-Compatible" content="IE=EmulateIE7">

<script type="text/javascript">
	var contextPath = "${pageContext.request.contextPath}";
</script>

<title>基本信息填写--问卷系统</title>
<link rel="stylesheet"	href="${pageContext.request.contextPath}/css/reg.css" type="text/css" />
<link rel="stylesheet"	href="${pageContext.request.contextPath}/css/style_validation.css"  type="text/css" />
<!-- jquery.validate的css样式 -->
<link rel="stylesheet"  href="${pageContext.request.contextPath}/css/validation.css"  type="text/css" />


<link rel="stylesheet" href="${pageContext.request.contextPath}/css/selectCollege.css" type="text/css" />


<script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery-1.7.2.min.js"></script>
<!-- jquery.validate以及自定义扩展的js -->
<script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery.validate.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/js/validate-ex.js">	</script>
<script type="text/javascript" src="${pageContext.request.contextPath}/js/message_cn.js">	</script>

<script type="text/javascript" src="${pageContext.request.contextPath}/js/selectCollege.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/js/college_info.js"></script>

<script type="text/javascript" src="${pageContext.request.contextPath}/js/reg.js">	</script>
</head>
<body>
	<div class="formwrapper" id="reg_formwrapper">
		<h3 align="center" style="font-size: 35px;">
			问卷调查
			</h2>
			<h2 style="font-size: 16px;">
				<font color="#2380D5">亲爱的同学： &nbsp;&nbsp;&nbsp;&nbsp;</font>
		</h3>
		<p>
			<strong>&nbsp;&nbsp;&nbsp;&nbsp;您好！衷心感谢您参与本次问卷调查。</strong>
		</p>
		<p>
			<strong>&nbsp;&nbsp;&nbsp;&nbsp;在回答问卷前，请您填写一些个人基本信息，此次问卷调查的资料将供一项青少年教育的研究之用,采取的是匿名方式，课题组将根据有关法规对您的个人信息和隐私进行严格保密，希望您在填写时不要有任何顾虑。
				<br />&nbsp;&nbsp;&nbsp;&nbsp;若有问题及建议，请与课题组联系。张静：zhjing6969@gmail.com
				<br />&nbsp;&nbsp;&nbsp;&nbsp;谢谢您的支持与合作！
			</strong>
		</p>
		<br />
		<form action="user.do" method="post" name="regform" id="regform">
			<fieldset>
				<legend id="legend_geren" align="center">
					<span>个人信息</span>
				</legend>
				<br />
				<div>
					<label>您的姓</label> <input type="text" id="surname" name="surname" size="4" />

				</div>
				<div>
					<label>性别</label> <input type="radio" name="gender" value="MAN" />男&nbsp;&nbsp;&nbsp;
					<input type="radio" name="gender" value="WOMAN" />女&nbsp;&nbsp;&nbsp;
				</div>

				<div>
					<label>出生年</label> <select name="birthYear" id="birthYear">
						<option value="">-请选择-</option>
					</select>年

				</div>

				<div>
					<label>手机号码(选填项)</label> <input type="text" name="phoneNumber"
						id="phoneNumber" size="18" maxlength="11" />

				</div>
				<div>
					<label>是否独生子女</label> <input type="radio" name="isTheOne" value="是" />是&nbsp;&nbsp;&nbsp;
					<input type="radio" name="isTheOne" value="否" />否&nbsp;&nbsp;&nbsp;
				</div>
				<div>
					<label>家庭住址</label> <select name="homeAddress" id="homeAddress"
						size="1">
						<option value="">-请选择-</option>
						<option value="省会、直辖市">省会、直辖市</option>
						<option value="地、县级市">地、县级市</option>
						<option value="乡镇">乡镇</option>
						<option value="农村">农村</option>
					</select>

				</div>


				<div>
					<label>学校</label> <input type="text" id="school-name" value="点击选择大学"
						onclick="pop()"> <input type="hidden" id="school-id"
						name="school.id">

					<div id="choose-box-wrapper">
						<div id="choose-box">
							<div id="choose-box-title">
								<span>选择学校</span>
							</div>
							<div id="choose-a-province"></div>
							<div id="choose-a-school"></div>
							<div id="choose-box-bottom">
								<input type="button" onclick="hide()" value="关闭" />
							</div>
						</div>
					</div>
				</div>
				<div>
					<label style="display: none" id="speciality_span">专业</label> <select
						name="speciality.id" id="speciality_id" style="display: none">
					</select>
				</div>

				<div>
					<label>年级</label> <select name="grade.id" id="grade_id">
						<option value="">-请选择-</option>
					</select>

				</div>

				<div>
					<label>在校期间获得奖学金次数</label> <select name="study" id="study" size="1">
						<option value="">-请选择-</option>
						<option value="0次">0次</option>
						<option value="1次">1次</option>
						<option value="2次">2次</option>
						<option value="3次">3次</option>
						<option value="4次">4次</option>
						<option value="5次及以上">5次及以上</option>
					</select>

				</div>

				<div>
					<label>政治面貌</label> <select name="politicalPosition"
						id="politicalPosition" size="1">
						<option value="">-请选择-</option>
						<option value="团员">团员</option>
						<option value="党员">党员</option>
						<option value="其它">民主党派</option>
						<option value="其它">群众</option>
					</select>

				</div>

				<div>
					<label>宗教信仰</label> <select name="religiousBeliefs"
						id="religiousBeliefs" size="1">
						<option value="">-请选择-</option>
						<option value="基督教">基督教</option>
						<option value="伊斯兰教">伊斯兰教</option>
						<option value="佛教">佛教</option>
						<option value="天主教">天主教</option>
						<option value="其它">其它</option>
						<option value="无">无</option>
					</select>

				</div>

				<div>
					<label>婚姻状况</label> <select name="maritalStatus" id="maritalStatus"
						size="1">
						<option value="">-请选择-</option>
						<option value="未婚">未婚</option>
						<option value="已婚">已婚</option>
						<option value="离异">离异</option>
					</select>

				</div>

				<div>
					<label>父亲或母亲的最高文化程度</label> <select name="parentsEducation"
						id="parentsEducation" size="1">
						<option value="">-请选择-</option>
						<option value="初中及以下">初中及以下</option>
						<option value="高中">高中</option>
						<option value="大学及以上">大学及以上</option>
					</select>

				</div>
				<div>
					<label>父亲或母亲的工作单位</label> <select name="parentsWork"
						id="parentsWork" size="1">
						<option value="">-请选择-</option>
						<option value="政府机关">政府机关</option>
						<option value="事业单位">事业单位</option>
						<option value="企业">企业</option>
						<option value="经商">经商</option>
						<option value="农村">农村</option>
						<option value="其它">其它</option>
					</select>

				</div>

				<div>
					<label>家庭月收入</label> <select name="familyIncome" id="familyIncome"
						size="1">
						<option value="">-请选择-</option>
						<option value="2千以下">2千以下</option>
						<option value="2-5千">2-5千</option>
						<option value="5千-1万">5千-1万</option>
						<option value="1-2万">1-2万</option>
						<option value="2-5万">2-5万</option>
						<option value="5万以上">5万以上</option>
					</select>元

				</div>

				<div>
					<label>父母关系</label> <select name="parentsRelationship"
						id="parentsRelationship" size="1">
						<option value="">-请选择-</option>
						<option value="和谐">和谐</option>
						<option value="一般">一般</option>
						<option value="紧张">紧张</option>
						<option value="离异">离异</option>
					</select>

				</div>
				<div>
					<label>Email</label> <input type="text" name="email" id="email"
						size="18" maxlength="30" onChange="existEmail(this.value);" />


				</div>

				<div id="email_tip">
					<font color="#D80000">ps:</font> <font size="0.5px" color="#D80000">请填写您有效的邮箱进行注册，以进入问卷部分</font>
				</div>

				<div>
					<input type="hidden" name="permission" value="0" /> <input
						type="hidden" name="captcha" value="0" /> <input type="hidden"
						name="method" value="reg" />
				</div>
				<div class="enter">
					<input name="reg" type="submit" class="button" value="注册" />
				</div>
			</fieldset>
		</form>
		<fieldset>
			<legend id="legend_copyright" align="center">
				<span>Copyright Information</span>
			</legend>
			<br />
			<center>
				Email:&nbsp; <a href="mailto:xz_wang@163.com"><font
					color="black">xz_wang@163.com</font></a> <br /> <font size="2px"
					face="楷体">Copyright (c) 江苏微软晓庄技术中心-南京晓庄数学与信息技术学院</font> <br /> <font
					size="2px" face="楷体">All Rights Reserved MIT_XZ 版权所有</font>
			</center>
		</fieldset>
	</div>
</body>
</html>