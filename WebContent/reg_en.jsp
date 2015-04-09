<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

<!-- 让IE以兼容性视图模式打开网页 注意前面不能有任何css或者js否则会影响浏览器解析模式 -->
 	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<meta http-equiv="X-UA-Compatible" content="IE=EmulateIE7" >
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	
<script type="text/javascript">
	var contextPath = "${pageContext.request.contextPath}";
</script>
    
  <title>基本信息填写--问卷系统</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/reg_en.css" type="text/css"/>
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
    
    <script type="text/javascript" src="${pageContext.request.contextPath}/js/reg_en.js"></script>
</head>
<body>
	<div id="information"  style="position:relative;top:10px;font-size:12px;font-weight:normal;"> 

	<p style="text-decoration:underline;font-weight:bold;">What is the research about?</p>
	<p>This online study is interested in your views and decision making concerning two social scenarios.</p>  
	
	<p style="text-decoration:underline;font-weight:bold;">Who is doing this research?</p>
	<p>The research will be conducted by Dr. Jing Zhang and Professor Lixian Jin at the Centre for 
	Communication and Learning (CIRCL). Dr. Mei I Cheng and Dr. Barbara Lopes both Psychology Lecturers at De Montfort University.
	</p>
	<p style="text-decoration:underline;font-weight:bold;">Why have I been invited to participate?</p> 
	<p>You have voluntarily decided to take part in this study by following the link distributed by the researchers via various contacts. It is important to note that there are no correct or incorrect answers to any of the questions asked of you in the study. Rather, your honest opinions and views are of interest. Please also note that there is no time limit for completion of the online survey component of the study.</p> 
	
	<p style="text-decoration:underline;font-weight:bold;">Do I have to Participate?</p>
	<p>Your participation is completely voluntary. During the completion of the study, you can withdraw from this study at any time and for any reason without any adverse consequences. If you would like to withdraw, you can do so by clicking the EXIT button. If you simply close the web browser or exit the survey, your previous data may still be included in the final data set. Once you have submitted your online survey data (i.e. clicked the final SUBMIT button), it will be completely anonymous and we will not be able to trace it back to you. You will not be able to withdraw after you have submitted your online survey.</p> 
	
	<p style="text-decoration:underline;font-weight:bold;">What are you asking of me?</p>
	<p>You will be asked to fill out a questionnaire that will take you roughly 15--20 minutes to complete.</p>
	
	<p style="text-decoration:underline;font-weight:bold;">What are the possible disadvantages and risks of taking part?</p>
	<p>There are no known risks to take part in the research and we do not anticipate any explicit disadvantages to you participating in this research.</p> 
	
	<p style="text-decoration:underline;font-weight:bold;">What if I want to drop out?</p>
	<p>If you wish to drop out at any point you can do so without any impending consequences. If you withdraw your participation you will automatically receive a debriefing form after clicking the EXIT button, you will not be able to withdraw your data after submitting your questionnaire. Once you have pressed ‘SUBMIT’, your anonymous data will be added to the final data set and we will not be able to trace it back to you.</p> 
	
	<p style="text-decoration:underline;font-weight:bold;">What if I am upset by anything during the course of the study?</p>
	<p>If this happens, you might like to take a break, or if you prefer, you can decide to end your participation and withdraw from the study at that point.  If you decide to withdraw you will automatically receive the debriefing sheet online. The sheet contains information about appropriate sources of support which you can access if there is anything about your own life experiences you wish to talk about in confidence.</p>
	
	<p style="text-decoration:underline;font-weight:bold;">Will the information I give you be kept confidential?</p>
	<p>All of your answers will be confidential and anonymous. All materials will be anonymous. Your IP address will not be recorded. Participant’s named DMU email address will not be attached to anything. Please note that by submitting the completed questionnaires online, you are giving your full and informed consent to your data being added to the overall pool of data for analyses.</p> 
	
	<p style="text-decoration:underline;font-weight:bold;">Who will have access to the raw and aggregated data?</p>
	<p>Only the researchers will have access to the data.</p> 
	
	<p style="text-decoration:underline;font-weight:bold;">What will happen to my responses to the study?</p> 
	<p>The information you give will be pooled with data from other participants and analyzed at the group level. Your individual data will not be identifiable. All data will be kept securely on a password protected computer only accessible to the researchers and any Student Research Field Officers who will be contributing to the study as part of the DMU Research Experience Scheme. All data will be destroyed 5 years from the date of publication. If it is not published, the data is likely to be destroyed after 5 years of non-used.</p>  
	
	<p style="text-decoration:underline;font-weight:bold;">Who has given approval for this study?</p>
	<p>Approval for this study has been granted by the De Montfort University, Faculty of Health and Life Sciences, Ethics Management Committee.</p>
	
	<p style="text-decoration:underline;font-weight:bold;">I know a friend who may be interested; can s/he participate in your study?</p>
	<p>Yes certainly. As long as your friend is a DMU student, your friend should contact the researchers through  e-mail and they will give instructions of how to do the study online.</p>
	
	<p style="text-decoration:underline;font-weight:bold;">Further information and contact details</p>
	<p>If you have any questions, please do not hesitate to contact either:</p> 

	<table align="center" style="width:800px;">
	<tr align="center" >
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
	<td><em>Hawthorn Building Room No. 0.23</em>  </td>
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
	<td><em>Leicester LE1 9BH</em> </td>
	<td><em>Leicester LE1 9BH</em> </td>
	</tr>
	</table>
	
	<div id="information_tip" align="center">Please click <span style="font-weight:bold;color:red;">YES</span> below to indicate that you have read and understood the participant information and that you wish to proceed with completing the study.
	</div>
	<br />
	<div align="center"><a  href="#" id="information_ok_btn" iconCls="icon-ok"></a></div> 
	<br/>
</div> 
    <div class="formwrapper" id="reg_formwrapper">
    	<h3 align="center" style="font-size:35px;">Questionnaire</h3>
        <h3>Dear students:</h3>
        <p><strong>&nbsp;&nbsp;&nbsp;&nbsp;We would very much appreciate if you could agree to fill in some basic information before answering the questionnaire. Your personal information and identity will be kept confidential and anonymous. 
        	<br/>&nbsp;&nbsp;&nbsp;&nbsp;By agreeing to fill in this questionnaire, you are giving us the permission to use the data anonymously for research, education and publication purposes.
			<br/>&nbsp;&nbsp;&nbsp;&nbsp;Please email zhjing6969@gmail.com if you have any questions and suggestions.
			<br/>&nbsp;&nbsp;&nbsp;&nbsp;Thanks for your participation!
			</strong></p><br/>
        <form action="userEN.do" method="post" name="regform" id="regform">
            <fieldset>
                <legend id="legend_geren" align="center"><span>Basic information</span></legend>
                <br/>
                
                <div>
                    <label>Year of birth</label>
                    <select name="birthYear" id="birthYear">
                    	<option value="">-select-</option>
                    	<opiton value="18-25">18-25</opiton>
                    	<opiton value="25-30">25-30</opiton>
                    	<opiton value="30-35">30-35</opiton>
                    	<opiton value="over 35 years of age">over 35 years of age</opiton>
                    </select>
                 </div>
                
                <div>
                    <label>Gender </label>
                    <input type="radio" name="gender" value="MAN" />Male&nbsp;&nbsp;&nbsp;
                    <input type="radio" name="gender" value="WOMAN" />Female&nbsp;&nbsp;&nbsp;
                </div>
                
                <div>
                    <label>Faculty </label>
                     <select name="speciality" id="speciality" size="1">
                    	<option value="">-select-</option>
	                    <option value="Health and Life Sciences">Health and Life Sciences</option>
	                    <option value="Business & Law">Business & Law </option>
	                    <option value="Design & Arts ">Design & Arts </option>
	                    <option value="Technology">Technology</option>
                    </select>
                </div>
                
                <div>
                    <label>Which year are you in</label>
                     <select name="gradeId" id="gradeId" size="1">
                    	<option value="">-select-</option>
	                    <option value="year1">year1</option>
	                    <option value="year2">year2</option>
	                    <option value="year3">year3</option>
	                    <option value="postgraduate">postgraduate</option>
                    </select>
                </div>
                
                <div>
                    <label>Subject</label>
                    <input type="text" id="subject" name="subject" maxlength="20" size="20" onChange="" />
                </div>
                
                <div>
                    <label>Are you the only child of the family</label>
                    <input type="radio" name="isTheOne" value="Yes" />Yes&nbsp;&nbsp;&nbsp;
                    <input type="radio" name="isTheOne" value="No" />No&nbsp;&nbsp;&nbsp;
                </div>
                
                <div>
                <label>Marital status</label>
                    <select name="maritalStatus" id="maritalStatus" size="1">
                    	<option value="">-select-</option>
	                    <option value="Unmarried">Unmarried</option>
	                    <option value="Married">Married</option>
	                    <option value="Divorced">Divorced</option>
	                    <option value="Widowed">Widowed</option>
                    </select>
                </div>
                
                <div>
                <label>Ethnicity</label>
                    <select name="ethnicity" id="ethnicity" size="1">
                    	<option value="">-select-</option>
	                    <option value="Black">Black</option>
	                    <option value="White">White</option>
	                    <option value="Asian">Asian</option>
	                    <option value="Chinese">Chinese</option>
	                    <option value="Mixed">Mixed</option>
	                    <option value="Other">Other</option>
                    </select>
                </div>
                
                <div>
                <label>Nationality</label>
                    <select name="nationality" id="nationality" size="1">
                    	<option value="">-select-</option>
	                    <option value="Black">British</option>
	                    <option value="White">Non-British</option>
                    </select>
                </div>
                
                <div>
                <label>Religion</label>
                    <select name="religiousBeliefs" id="religiousBeliefs" size="1">
                    	<option value="">-select-</option>
	                    <option value="Protestant">Protestant</option>
	                    <option value="Catholic">Catholic</option>
	                    <option value="Muslim">Muslim</option>
	                    <option value="Jewish">Jewish</option>
	                    <option value="Buddhism">Buddhism</option>
	                    <option value="Hindu">Hindu</option>
	                    <option value="Sikh">Sikh</option>
	                    <option value="Other">Other</option>
	                    <option value="None">None</option>
                    </select>
                </div>
                
                 <div>
                	<label>Which grade do you normally achieve in University?</label>
                	<select name="study" id="study" size="1">
                    	<option value="">-select-</option>
	                    <option value="Fail">Fail</option>
	                    <option value="E grade or Pass">E grade or Pass</option>
	                    <option value="D grade (3rd class)">D grade (3rd class)</option>
	                    <option value="C grade (lower second class)">C grade (lower second class)</option>
	                    <option value="B grade (upper second class)">B grade (upper second class) </option>
	                    <option value="A grade (first class)">A grade (first class)</option>
	                    </select>
                </div>
                
                <div>
                	<label>Family location</label>
                	<select name="homeAddress" id="homeAddress" size="1">
                    	<option value="">-select-</option>
	                    <option value="City">City</option>
	                    <option value="Town">Town</option>
	                    <option value="Village">Village</option>
                    </select>
                </div>
                
                <div>
                	<label>Parental Education</label>
                	<select name="parentalEducation" id="parentalEducation" size="1">
                    	<option value="">-select-</option>
	                    <option value="Below high school">Below high school</option>
	                    <option value="Finished high school">Finished high school</option>
	                    <option value="Further education">Further education</option>
	                    <option value="University educated">University educated</option>
                    </select>
                </div>
                
                
                <div>
                <label>Household Annual Income (Pound)</label>
                    <select name= "familyIncome" id= "familyIncome" size="1">
	                    <option value="">-select-</option>
	                    <option value="less than £5,200">less than £5,200</option>
	                    <option value="£5,200 to £10,399">£5,200 to £10,399</option>
	                    <option value="£10,400 to £15,599">£10,400 to £15,599</option>
	                    <option value="£15,600 to £25,999">£15,600 to £25,999</option>
	                    <option value="£26,000 to £36,399">£26,000 to £36,399</option>
	                    <option value="£36,400 to £49,399">£36,400 to £49,399</option>
	                    <option value="£49,400 to £62,399">£49,400 to £62,399</option>
	                    <option value="£62,400 to £77,999">£62,400 to £77,999</option>
	                    <option value="£78,000 or more">£78,000 or more</option>
                    </select>
                </div>
                
                 <div>
                <label>The social class of the family you grew up</label>
                    <select name= "socialClass" id= "socialClass" size="1">
	                    <option value="">-select-</option>
	                    <option value="Working class">Working class</option>
	                    <option value="Middle class">Middle class</option>
	                    <option value="Upper class">Upper class</option>
                    </select>
                </div>
                
                 <div>
                <label>Relationship between parents</label>
                    <select name="parentsRelationship" id="parentsRelationship" size="1">
                    	<option value="">-select-</option>
	                    <option value="Close">Close</option>
	                    <option value="Average">Average</option>
	                    <option value="Poor">Poor</option>
	                    <option value="Divorced/Separated">Divorced/Separated</option>
                    </select>
                </div>
                
                <div>
                    <label>Email</label>
                    <input type="text" name="email" id="email" size="18" maxlength="30" onChange="existEmail(this.value);"/>
                </div>
            
                <div id="email_tip">
                	<font color="#D80000">ps:</font>
                	<font size="0.5px" color="#D80000">Please provide your named DMU e-mail address in order to access the questionnaire parts.
                	<br /><u>How to find out your own name-version of DMU student email address:</u>
                	<br />Log into myDMU, click on the ‘personal’ tab and then click on the ‘contact’ tab
                	<br />inside this location will show you both versions of your DMU email address.</font>
                </div>
                
                
               
                <div >
                    <input type="hidden" name="permission" value="0"/>
                    <input type="hidden" name="captcha" value="0"/>
                    <input type="hidden" name="method"	value="reg" />
                </div>
                <div class="enter">
                	<center>
                	<input style="font-weight:bold;" name="reg" type="submit" class="button" value="Submit" />
                	</center>
                </div>
            </fieldset>
        </form>
        <fieldset>
	        <legend id="legend_copyright" align="center"><span>Copyright Information</span></legend>
	        <br />
	        <center>Email:&nbsp; 
	            <a href="mailto:xz_wang@163.com"><font color="black">xz_wang@163.com</font></a>
	            <br/>
	            <font size="2px" face="楷体" >Copyright (c) 江苏微软晓庄技术中心-南京晓庄数学与信息技术学院</font>
	            <br/>
	            <font size="2px" face="楷体" >All Rights Reserved MIT_XZ 版权所有</font>
	        </center>
        </fieldset>     
    </div>
</body>
</html>