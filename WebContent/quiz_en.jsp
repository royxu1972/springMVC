<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

<!-- 让IE以兼容性视图模式打开网页 注意前面不能有任何css或者js否则会影响浏览器解析模式 -->
 	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<meta http-equiv="X-UA-Compatible" content="IE=EmulateIE7" >
	

<script type="text/javascript">
	var contextPath = "${pageContext.request.contextPath}";
</script>

<title>Basic Information--Questionnaire System</title>

	<link rel="stylesheet" href="${pageContext.request.contextPath}/css/quiz_en.css" type="text/css"/>
    <link rel="stylesheet"	href="${pageContext.request.contextPath}/css/style_validation.css"  type="text/css" />
    <!-- easyui 需要的css -->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/easyui/themes/default/easyui.css" type="text/css"/>
	<link rel="stylesheet" href="${pageContext.request.contextPath}/easyui/themes/icon.css" type="text/css"/> 
	
	<!-- jquery.validate的css样式 -->
	<link rel="stylesheet"  href="${pageContext.request.contextPath}/css/validation.css"  type="text/css" />

    <script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery-1.7.2.min.js"></script>
  	<!-- jquery.validate以及自定义扩展的js -->
	<script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery.validate.js"></script>
	<script type="text/javascript" src="${pageContext.request.contextPath}/js/validate-ex.js">	</script>
	<script type="text/javascript" src="${pageContext.request.contextPath}/js/message_en.js">	</script>
	
  	<!-- easyui的js库 -->
  	<script type="text/javascript" src="${pageContext.request.contextPath}/easyui/jquery.easyui.min.js"></script> 
	<script type="text/javascript" src="${pageContext.request.contextPath}/easyui/locale/easyui-lang-zh_CN.js"></script>   
    
    <script type="text/javascript" src="${pageContext.request.contextPath}/js/quiz_en.js"></script>

</head>
<body>
	<div id="information"
		style="position: relative; top: 10px; font-size: 12px; font-weight: normal;">
		<p style="text-decoration: underline; font-weight: bold;">What is
			the research about?</p>
		<p>This online study is interested in your views and decision
			making concerning two social scenarios.</p>

		<p style="text-decoration: underline; font-weight: bold;">Who is
			doing this research?</p>
		<p>The research will be conducted by Dr. Jing Zhang and Professor
			Lixian Jin at the Centre for Communication and Learning (CIRCL). Dr.
			Mei I Cheng and Dr. Barbara Lopes both Psychology Lecturers at De
			Montfort University.</p>
		<p style="text-decoration: underline; font-weight: bold;">Why have
			I been invited to participate?</p>
		<p>You have voluntarily decided to take part in this study by
			following the link distributed by the researchers via various
			contacts. It is important to note that there are no correct or
			incorrect answers to any of the questions asked of you in the study.
			Rather, your honest opinions and views are of interest. Please also
			note that there is no time limit for completion of the online survey
			component of the study.</p>

		<p style="text-decoration: underline; font-weight: bold;">Do I
			have to Participate?</p>
		<p>Your participation is completely voluntary. During the
			completion of the study, you can withdraw from this study at any time
			and for any reason without any adverse consequences. If you would
			like to withdraw, you can do so by clicking the EXIT button. If you
			simply close the web browser or exit the survey, your previous data
			may still be included in the final data set. Once you have submitted
			your online survey data (i.e. clicked the final SUBMIT button), it
			will be completely anonymous and we will not be able to trace it back
			to you. You will not be able to withdraw after you have submitted
			your online survey.</p>

		<p style="text-decoration: underline; font-weight: bold;">What are
			you asking of me?</p>
		<p>You will be asked to fill out a questionnaire that will take
			you roughly 15--20 minutes to complete.</p>

		<p style="text-decoration: underline; font-weight: bold;">What are
			the possible disadvantages and risks of taking part?</p>
		<p>There are no known risks to take part in the research and we do
			not anticipate any explicit disadvantages to you participating in
			this research.</p>

		<p style="text-decoration: underline; font-weight: bold;">What if
			I want to drop out?</p>
		<p>If you wish to drop out at any point you can do so without any
			impending consequences. If you withdraw your participation you will
			automatically receive a debriefing form after clicking the EXIT
			button, you will not be able to withdraw your data after submitting
			your questionnaire. Once you have pressed ‘SUBMIT’, your anonymous
			data will be added to the final data set and we will not be able to
			trace it back to you.</p>

		<p style="text-decoration: underline; font-weight: bold;">What if
			I am upset by anything during the course of the study?</p>
		<p>If this happens, you might like to take a break, or if you
			prefer, you can decide to end your participation and withdraw from
			the study at that point. If you decide to withdraw you will
			automatically receive the debriefing sheet online. The sheet contains
			information about appropriate sources of support which you can access
			if there is anything about your own life experiences you wish to talk
			about in confidence.</p>

		<p style="text-decoration: underline; font-weight: bold;">Will the
			information I give you be kept confidential?</p>
		<p>All of your answers will be confidential and anonymous. All
			materials will be anonymous. Your IP address will not be recorded.
			Participant’s named DMU email address will not be attached to
			anything. Please note that by submitting the completed questionnaires
			online, you are giving your full and informed consent to your data
			being added to the overall pool of data for analyses.</p>

		<p style="text-decoration: underline; font-weight: bold;">Who will
			have access to the raw and aggregated data?</p>
		<p>Only the researchers will have access to the data.</p>

		<p style="text-decoration: underline; font-weight: bold;">What
			will happen to my responses to the study?</p>
		<p>The information you give will be pooled with data from other
			participants and analyzed at the group level. Your individual data
			will not be identifiable. All data will be kept securely on a
			password protected computer only accessible to the researchers and
			any Student Research Field Officers who will be contributing to the
			study as part of the DMU Research Experience Scheme. All data will be
			destroyed 5 years from the date of publication. If it is not
			published, the data is likely to be destroyed after 5 years of
			non-used.</p>

		<p style="text-decoration: underline; font-weight: bold;">Who has
			given approval for this study?</p>
		<p>Approval for this study has been granted by the De Montfort
			University, Faculty of Health and Life Sciences, Ethics Management
			Committee.</p>

		<p style="text-decoration: underline; font-weight: bold;">I know a
			friend who may be interested; can s/he participate in your study?</p>
		<p>Yes certainly. As long as your friend is a DMU student, your
			friend should contact the researchers through e-mail and they will
			give instructions of how to do the study online.</p>

		<p style="text-decoration: underline; font-weight: bold;">Further
			information and contact details</p>
		<p>If you have any questions, please do not hesitate to contact
			either:</p>

		<table align="center" style="width: 800px;">
			<tr align="center">
				<th><em>Dr. Jing Zhang</em></th>
				<th><em>Dr. Mei I Cheng</em></th>
			</tr>
			<tr align="center">
				<td><em>Email:zhjing6969@gmail.com</em></td>
				<td><em>Email: mcheng@dmu.ac.uk </em></td>
			</tr>
			<tr align="center">
				<td><em>De Montfort University</em></td>
				<td><em>De Montfort University</em></td>
			</tr>
			<tr align="center">
				<td><em>Hawthorn Building Room No. 0.23</em></td>
				<td><em>Division of Psychology </em></td>
			</tr>
			<tr align="center">
				<td></td>
				<td><em>Hawthorn Building Room No. 0.20a</em></td>
			</tr>
			<tr align="center">
				<td><em>The Gateway</em></td>
				<td><em>The Gateway</em></td>
			</tr>
			<tr align="center">
				<td><em>Leicester LE1 9BH</em></td>
				<td><em>Leicester LE1 9BH</em></td>
			</tr>
		</table>

		<div id="information_tip" align="center">
			Please click <span style="font-weight: bold; color: red;">YES</span>
			below to indicate that you have read and understood the participant
			information and that you wish to proceed with completing the study.
		</div>
		<br />
		<div align="center">
			<a href="#" id="information_ok_btn" iconCls="icon-ok"></a>
		</div>
		<br />
	</div>

	<div class="formwrapper" id="quiz_formwrapper">
		<h3 align="center" style="font-size: 35px;">Questionnaire</h3>
		<div class="head">
			<p>&nbsp;&nbsp;&nbsp;&nbsp;In order to ensure the validity of
				the questionnaire results，please read the following questions
				attentively.</p>
			</p>
			<p>&nbsp;&nbsp;&nbsp;&nbsp;The questionnaire has two short
				scenarios, each scenario needs you to make a decision first, and
				then give the reasons for your agreement or disagreement.</p>
			<p>&nbsp;&nbsp;&nbsp;&nbsp;At the end of the questionnaire, you
				are asked to provide some metaphors to describe your views on
				"morality” and “a moral person”.</p>
			<p>&nbsp;&nbsp;&nbsp;&nbsp;We would very much appreciate if you
				could check your answers to the questionnaire before you submit it.</p>

			<br /> <br />
		</div>
		<form action="<%=request.getContextPath()%>/quiz.do" name="quizform"
			id="quizform">
			<fieldset>
				<legend id="legend_gongchang" align="center">
					<span>Workers</span> <br />
					<div class="legend_content">Recently a company fired some people for unknown reasons. Some workers think that their bosses are listening in on their private conversations through cameras and microphones in the building and using the information against them. The bosses say that they are not listening in.The workers cannot legally do anything until they can prove that their bosses are listening in on their conversations.Two workers then break into the main office and take the tapes that prove their bosses were listening in.</div>
				</legend>
				<div>
					<input type="hidden" id="user_id" name="user_id" 
					value="<%
								/*通过jsp代码段方式从url传值中获取user_id并插入到隐藏的html文本框*/
								String user_id = request.getParameter("user_id");
								if(user_id == null){
									user_id="";
								}
								out.write(user_id);
							%>"/>
					<ol>
						<li>Would you agree or disagree with the workers’ action ...
							<font size="2" color="#D80000" face="楷体"></font> <select
							name="W_Dec" id="W_Dec" onChange="validateSelect()">
								<option value="">-select-</option>
								<option value="-3">-3</option>
								<option value="-2">-2</option>
								<option value="-1">-1</option>
								<option value="0">0</option>
								<option value="1">1</option>
								<option value="2">2</option>
								<option value="3">3</option>
						</select>
						</li>
						<br />
						<b><font size="3" color="#D80000" face="楷体">How
								acceptable do you find the following arguments in favor of the
								two workers’ action? Suppose someone argued they were right for
								breaking in . . .</font> <font size="2" color="#D80000"></font></b>
						<li>because they didn’t cause much damage to the company. <select
							name="W_P_1" id="W_P_1" onChange="validateSelect()">
								<option value="">-select-</option>
								<option value="-4">-4</option>
								<option value="-3">-3</option>
								<option value="-2">-2</option>
								<option value="-1">-1</option>
								<option value="0">0</option>
								<option value="1">1</option>
								<option value="2">2</option>
								<option value="3">3</option>
								<option value="4">4</option>
						</select></li>
						<li>because the company did not follow the law that says that
							they should not bug workers, the actions of the two workers were
							allowed to restore law and order. <select name="W_P_4" id="W_P_4">
								<option value="">-select-</option>
								<option value="-4">-4</option>
								<option value="-3">-3</option>
								<option value="-2">-2</option>
								<option value="-1">-1</option>
								<option value="0">0</option>
								<option value="1">1</option>
								<option value="2">2</option>
								<option value="3">3</option>
								<option value="4">4</option>
						</select>
						</li>

						<li>because most of the workers would support their action
							and many would be happy about it. <select name="W_P_3" id="W_P_3">
								<option value="">-select-</option>
								<option value="-4">-4</option>
								<option value="-3">-3</option>
								<option value="-2">-2</option>
								<option value="-1">-1</option>
								<option value="0">0</option>
								<option value="1">1</option>
								<option value="2">2</option>
								<option value="3">3</option>
								<option value="4">4</option>
						</select>
						</li>
						<li>because trust between people and individual dignity count
							more than the company’s rules. <select name="W_P_2" id="W_P_2">
								<option value="">-select-</option>
								<option value="-4">-4</option>
								<option value="-3">-3</option>
								<option value="-2">-2</option>
								<option value="-1">-1</option>
								<option value="0">0</option>
								<option value="1">1</option>
								<option value="2">2</option>
								<option value="3">3</option>
								<option value="4">4</option>
						</select>
						</li>
						<li>because the company had done something wrong first , the
							two workers were right in breaking into the boss’s office. <select
							name="W_P_6" id="W_P_6">
								<option value="">-select-</option>
								<option value="-4">-4</option>
								<option value="-3">-3</option>
								<option value="-2">-2</option>
								<option value="-1">-1</option>
								<option value="0">0</option>
								<option value="1">1</option>
								<option value="2">2</option>
								<option value="3">3</option>
								<option value="4">4</option>
						</select>
						</li>

						<li>because the two workers saw no legal ways of proving the
							company abused their trust , and therefore chose what they
							considered the lesser of two wrong actions. <select name="W_P_5"
							id="W_P_5">
								<option value="">-select-</option>
								<option value="-4">-4</option>
								<option value="-3">-3</option>
								<option value="-2">-2</option>
								<option value="-1">-1</option>
								<option value="0">0</option>
								<option value="1">1</option>
								<option value="2">2</option>
								<option value="3">3</option>
								<option value="4">4</option>
						</select>
						</li>

						<br />
						<b><font size="3" color="#D80000" face="楷体">How
								acceptable do you find the following arguments against the two
								workers´ conduct actions? Suppose someone argued they were wrong
								for breaking in . . .</font> <font size="2" color="#D80000"></font></b>
						<li>because if everyone acted as the two workers did, we
							would act against the law and order in our society. <select
							name="W_C_4" id="W_C_4">
								<option value="">-select-</option>
								<option value="-4">-4</option>
								<option value="-3">-3</option>
								<option value="-2">-2</option>
								<option value="-1">-1</option>
								<option value="0">0</option>
								<option value="1">1</option>
								<option value="2">2</option>
								<option value="3">3</option>
								<option value="4">4</option>
						</select>
						</li>

						<li>because a person must not break such a basic right as the
							right to protection of property and take the law into one's own
							hands, unless there is a universal moral principle that says it
							is o.k. to do so. <select name="W_C_6" id="W_C_6">
								<option value="">-select-</option>
								<option value="-4">-4</option>
								<option value="-3">-3</option>
								<option value="-2">-2</option>
								<option value="-1">-1</option>
								<option value="0">0</option>
								<option value="1">1</option>
								<option value="2">2</option>
								<option value="3">3</option>
								<option value="4">4</option>
						</select>
						</li>


						<li>because risking getting fired from the company in order
							to help other workers is not very smart. <select name="W_C_2"
							id="W_C_2">
								<option value="">-select-</option>
								<option value="-4">-4</option>
								<option value="-3">-3</option>
								<option value="-2">-2</option>
								<option value="-1">-1</option>
								<option value="0">0</option>
								<option value="1">1</option>
								<option value="2">2</option>
								<option value="3">3</option>
								<option value="4">4</option>
						</select>
						</li>
						<li>because the two workers should have used all the legal
							ways available to them without breaking a law. <select
							name="W_C_3" id="W_C_3">
								<option value="">-select-</option>
								<option value="-4">-4</option>
								<option value="-3">-3</option>
								<option value="-2">-2</option>
								<option value="-1">-1</option>
								<option value="0">0</option>
								<option value="1">1</option>
								<option value="2">2</option>
								<option value="3">3</option>
								<option value="4">4</option>
						</select>
						</li>

						<li>because a person doesn't steal if he wants to be
							considered decent and honest. <select name="W_C_5" id="W_C_5">
								<option value="">-select-</option>
								<option value="-4">-4</option>
								<option value="-3">-3</option>
								<option value="-2">-2</option>
								<option value="-1">-1</option>
								<option value="0">0</option>
								<option value="1">1</option>
								<option value="2">2</option>
								<option value="3">3</option>
								<option value="4">4</option>
						</select>
						</li>

						<li>because the firing of other workers had nothing to do
							with them, the two workers had no reason to steal the tapes. <select
							name="W_C_1" id="W_C_1">
								<option value="">-select-</option>
								<option value="-4">-4</option>
								<option value="-3">-3</option>
								<option value="-2">-2</option>
								<option value="-1">-1</option>
								<option value="0">0</option>
								<option value="1">1</option>
								<option value="2">2</option>
								<option value="3">3</option>
								<option value="4">4</option>
						</select>
						</li>

					</ol>
				</div>
			</fieldset>

			<fieldset>
				<legend id="legend_yisheng" align="center">
					<span>Doctor</span> <br />
					<div class="legend_content">A woman had cancer and she had no hope of being saved. She was in terrible pain and was so weak that a large dose of a painkiller such as morphine would have caused her to die. During a brief period of improvement, she begged the doctor to give her enough morphine to kill her. She said she could no longer stand the pain and would be dead in a few weeks anyway. After some thinking, the doctor decided to give her an overdose of morphine.</div>
				</legend>
				<div>
					<ol>
						<li value="14">Do you agree or disagree with the doctor’s
							action? <font size="2" color="#D80000" face="楷体"></font> <select
							name="D_DEC" id="D_DEC">
								<option value="">-select-</option>
								<option value="-3">-3</option>
								<option value="-2">-2</option>
								<option value="-1">-1</option>
								<option value="0">0</option>
								<option value="1">1</option>
								<option value="2">2</option>
								<option value="3">3</option>
						</select>
						</li>
						<br />
						<b><font size="3" color="#D80000" face="楷体">How
								acceptable do you find the following arguments in favor of the
								doctor’s actions? Suppose someone said he acted in a right way .
								. .</font> <font size="2" color="#D80000"></font></b>
						<li>because the doctor had to act according to his conscience
							and what he believed was right. The woman's pain justified making
							an exception to the moral obligation for the doctor to preserve
							life. <select name="D_P_6" id="D_P_6">
								<option value="">-select-</option>
								<option value="-4">-4</option>
								<option value="-3">-3</option>
								<option value="-2">-2</option>
								<option value="-1">-1</option>
								<option value="0">0</option>
								<option value="1">1</option>
								<option value="2">2</option>
								<option value="3">3</option>
								<option value="4">4</option>
						</select>
						</li>


						<li>because the doctor was the only one who could do what the
							woman asked; respect for her wish led him to act the way he did.
							<select name="D_P_5" id="D_P_5">
								<option value="">-select-</option>
								<option value="-4">-4</option>
								<option value="-3">-3</option>
								<option value="-2">-2</option>
								<option value="-1">-1</option>
								<option value="0">0</option>
								<option value="1">1</option>
								<option value="2">2</option>
								<option value="3">3</option>
								<option value="4">4</option>
						</select>
						</li>


						<li>because the doctor only did what the woman persuaded him
							to do . He does not need to worry about negative consequences. <select
							name="D_P_1" id="D_P_1">
								<option value="">-select-</option>
								<option value="-4">-4</option>
								<option value="-3">-3</option>
								<option value="-2">-2</option>
								<option value="-1">-1</option>
								<option value="0">0</option>
								<option value="1">1</option>
								<option value="2">2</option>
								<option value="3">3</option>
								<option value="4">4</option>
						</select>
						</li>
						<li>because the woman would have died anyway and it didn't
							take much effort for him to give her an overdose of a painkiller.

							<select name="D_P_2" id="D_P_2">
								<option value="">-select-</option>
								<option value="-4">-4</option>
								<option value="-3">-3</option>
								<option value="-2">-2</option>
								<option value="-1">-1</option>
								<option value="0">0</option>
								<option value="1">1</option>
								<option value="2">2</option>
								<option value="3">3</option>
								<option value="4">4</option>
						</select>
						</li>
						<li>because the doctor didn't really break the law. Nobody
							could have saved the woman and he only wanted to shorten her
							suffering. <select name="D_P_4" id="D_P_4">
								<option value="">-select-</option>
								<option value="-4">-4</option>
								<option value="-3">-3</option>
								<option value="-2">-2</option>
								<option value="-1">-1</option>
								<option value="0">0</option>
								<option value="1">1</option>
								<option value="2">2</option>
								<option value="3">3</option>
								<option value="4">4</option>
						</select>
						</li>


						<li>because most of his fellow doctors would most probably
							have done the same thing in a similar situation. <select
							name="D_P_3" id="D_P_3">
								<option value="">-select-</option>
								<option value="-4">-4</option>
								<option value="-3">-3</option>
								<option value="-2">-2</option>
								<option value="-1">-1</option>
								<option value="0">0</option>
								<option value="1">1</option>
								<option value="2">2</option>
								<option value="3">3</option>
								<option value="4">4</option>
						</select>
						</li>

						<br />
						<b><font size="3" color="#D80000" face="楷体">How
								acceptable do you find the arguments presented against the
								doctor’s action? Suppose someone said that he acted in a wrong
								way. . .</font> <font size="2" color="#D80000"></font></b>
						<li>because he acted against other doctors’ convictions . If
							the rest of them are against mercy-killing, then no doctor should
							carry it out. <select name="D_C_3" id="D_C_3">
								<option value="">-select-</option>
								<option value="-4">-4</option>
								<option value="-3">-3</option>
								<option value="-2">-2</option>
								<option value="-1">-1</option>
								<option value="0">0</option>
								<option value="1">1</option>
								<option value="2">2</option>
								<option value="3">3</option>
								<option value="4">4</option>
						</select>
						</li>

						<li>because as patients we should be able to have complete
							faith in a doctor's commitment to save every life, even if
							someone in great pain would rather die. <select name="D_C_5"
							id="D_C_5">
								<option value="">-select-</option>
								<option value="-4">-4</option>
								<option value="-3">-3</option>
								<option value="-2">-2</option>
								<option value="-1">-1</option>
								<option value="0">0</option>
								<option value="1">1</option>
								<option value="2">2</option>
								<option value="3">3</option>
								<option value="4">4</option>
						</select>
						</li>

						<li>because protection of life is everyone's highest moral
							duty. We have no clear moral way of telling the difference
							between mercy-killing and plain murder. <select name="D_C_6"
							id="D_C_6">
								<option value="">-select-</option>
								<option value="-4">-4</option>
								<option value="-3">-3</option>
								<option value="-2">-2</option>
								<option value="-1">-1</option>
								<option value="0">0</option>
								<option value="1">1</option>
								<option value="2">2</option>
								<option value="3">3</option>
								<option value="4">4</option>
						</select>
						</li>

						<li>because the doctor could get himself into a lot of
							trouble. Other doctors were punished before for doing the same
							thing. <select name="D_C_1" id="D_C_1">
								<option value="">-select-</option>
								<option value="-4">-4</option>
								<option value="-3">-3</option>
								<option value="-2">-2</option>
								<option value="-1">-1</option>
								<option value="0">0</option>
								<option value="1">1</option>
								<option value="2">2</option>
								<option value="3">3</option>
								<option value="4">4</option>
						</select>
						</li>


						<li>because he could have had it much easier if he had waited
							and not interfered with the woman's dying. <select name="D_C_2"
							id="D_C_2">
								<option value="">-select-</option>
								<option value="-4">-4</option>
								<option value="-3">-3</option>
								<option value="-2">-2</option>
								<option value="-1">-1</option>
								<option value="0">0</option>
								<option value="1">1</option>
								<option value="2">2</option>
								<option value="3">3</option>
								<option value="4">4</option>
						</select>
						</li>


						<li>because the doctor broke the law. If a person thinks that
							mercy-killing is illegal, then one should refuse such requests
							from the patient. <select name="D_C_4" id="D_C_4">
								<option value="">-select-</option>
								<option value="-4">-4</option>
								<option value="-3">-3</option>
								<option value="-2">-2</option>
								<option value="-1">-1</option>
								<option value="0">0</option>
								<option value="1">1</option>
								<option value="2">2</option>
								<option value="3">3</option>
								<option value="4">4</option>
						</select>
						</li>
					</ol>

				</div>
			</fieldset>
			<fieldset>
				<ol>
					<li value="27">How difficult was it for you to fill out this
						questionnaire? <select name="difficulty" id="difficulty">
							<option value="">-select-</option>
							<option value="0">0(very easy)</option>
							<option value="1">1</option>
							<option value="2">2</option>
							<option value="3">3</option>
							<option value="4">4</option>
							<option value="5">5</option>
							<option value="6">6</option>
							<option value="7">7</option>
							<option value="8">8</option>
							<option value="9">9(extremely difficulty)</option>
					</select>
					</li>

					<li>Roughly how much time did it take you to fill it out?
						&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <input
						type="text" id="time" name="time" maxlength="5" size="5" />minutes.
					</li>
				</ol>

			</fieldset>
			<fieldset>
				<ol>
					<div id="quiz_example">
						<span>Please use metaphors to describe your views on
							"morality” and “a moral person”.</span> <br />
						<br /> Sample question: A Teacher is like______________, because
						___________________. <br /> Sample answer: A Teacher is like<span
							class="quiz_input">&nbsp;&nbsp;&nbsp;a
							lighthouse&nbsp;&nbsp;&nbsp;</span>， because<span class="quiz_input">&nbsp;&nbsp;he
							guides me to travel in the dark</span>. <br />
						<br />
					</div>
					<li value="29">Morality is like<input class="quiz_input"
						name="T29_1" type="text" size="25" />,&nbsp;&nbsp;because<input
						class="quiz_input" name="T29_2" type="text" size="25" />.
					</li>

					<li>A moral person is like<input class="quiz_input"
						name="T30_1" type="text" size="25" />,&nbsp;because<input
						class="quiz_input" name="T30_2" type="text" size="25" />.
					</li>
				</ol>
			</fieldset>
			<br />
			<div id="enter">
				Thank you! <input type="hidden" name="method" value="submitquiz" />
			</div>
			<div id="left_submit">
				<div class="submit_btn">
					<input style="text-align: center;" id="quiz_btn" type="submit"
						name="submit_button" class="button" value="Submit">
				</div>
				<div id="information_exit_btn" class="exit_btn">
					<span style="margin-left: 40%; font-size: 17px; font-weight: bold; color: black;">Exit</span><br />
					<span style="color: red; margin-left: 37px; font-size: 12px;">(wintdraw your partication)</span>
				</div>
		</form>
		<div id="copyright">
			<fieldset>
				<legend class="legend_copyright" align="center">
					<span> Copyright Information </span>
				</legend>
				<center>
					<div class="copyright_content">
						<br />Moral Judgement Test MJT / MUT. International Copyright ©
						1977-2013 by Georg Lind. <br />No copying allowed without written
						permission. Free for use in institutions of public education and
						basic research. <br />Contact:&nbsp;<a
							href="mailto:Georg.Lind@uni-konstanz.de">Georg.Lind@uni-konstanz.de</a>
						<br />More information:<a
							href="http://www.uni-konstanz.de/ag-moral/">
							http://www.uni-konstanz.de/ag-moral/ </a>.
					</div>
				</center>
			</fieldset>
		</div>
	</div>
</body>
</body>
</html>