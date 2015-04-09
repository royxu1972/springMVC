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

    <link type="text/css" rel="stylesheet" href="${pageContext.request.contextPath}/css/quiz.css">
<link rel="stylesheet"	href="${pageContext.request.contextPath}/css/style_validation.css"  type="text/css" />
<link rel="stylesheet"  href="${pageContext.request.contextPath}/css/validation.css"  type="text/css" />

<!-- easyui 需要的css -->
<link rel="stylesheet" href="${pageContext.request.contextPath}/easyui/themes/default/easyui.css" type="text/css"/>
<link rel="stylesheet" href="${pageContext.request.contextPath}/easyui/themes/icon.css" type="text/css"/>
        
<script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery-1.7.2.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery.validate.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/js/validate-ex.js">	</script>
<script type="text/javascript" src="${pageContext.request.contextPath}/js/message_cn.js">	</script>
   
<!-- easyui的js库 -->
<script type="text/javascript" src="${pageContext.request.contextPath}/easyui/jquery.easyui.min.js"></script> 
<script type="text/javascript" src="${pageContext.request.contextPath}/easyui/locale/easyui-lang-zh_CN.js"></script> 
    
<script type="text/javascript" src="${pageContext.request.contextPath}/js/quiz.js">	</script>
</head>
<body>
 <div class="formwrapper" id="quiz_formwrapper">
        <h3 align="center" style="font-size:35px;">问卷部分</h3>
        <div class="head">	
					<p>&nbsp;&nbsp;&nbsp;&nbsp;为确保您的问卷的有效性，请先仔细阅读以下注意事项:</p>
					<p style="font-family:楷体;">
						&nbsp;&nbsp;&nbsp;&nbsp;该问卷共有2个小故事，每个故事需要您首先做出自己的判断，
					</p>
					<p style="font-family:楷体;">
						&nbsp;&nbsp;&nbsp;&nbsp;接着需要您对支持或反对Alice和Bob的观点的原因进行不同程度的选择。
					</p>
					<p style="font-family:楷体;">
						&nbsp;&nbsp;&nbsp;&nbsp;请在提交前检查是否有遗漏之处。
					</p>
					<p style="font-family:楷体;">
						&nbsp;&nbsp;&nbsp;&nbsp;最后请用比喻的手法描述“道德”和“有道德的人”。
					</p>
					
					<br/>
					<br/>
			</div>
        <form action="<%=request.getContextPath()%>/quiz.do" name="quizform" id="quizform">
            <fieldset>
             <legend id="legend_gongchang" align="center"><span>工厂风波</span>
                <br/>
              		<div class="legend_content">
					某个工厂里的一些工人被解雇了，但是他们都觉着原因不明不白。工人们怀疑经理用摄像机非法监视他们的活动。
					<br/>但是经理坚决否认。只有在证据确凿的情况下，工会才可以采取有效措施对付经理的不法行为。
					<br/>于是两个工人撬开经理的办公室，偷走了作为证据的录像带。
					</div>
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
					<li>您认为这两个工人做得对吗？
						<font size="2" color="#D80000" face="楷体">(-3表示绝对错误，3表示绝对正确)</font>
						<select name="W_Dec" id="W_Dec" onChange="validateSelect()">
							<option value="">-请选择-</option>
							<option value="-3">-3</option>
							<option value="-2">-2</option>
							<option value="-1">-1</option>
							<option value="0">0</option> 
							<option value="1">1</option>
							<option value="2">2</option>
							<option value="3">3</option>
						</select></li>
						<br/>
					<b><font size="3"color="#D80000"face="楷体">假设“Alice”认为这两个工人做得对，您在多大程度上同意她以下的看法？</font>
					<font size="2"color="#D80000">(-4表示绝对不同意，4表示绝对同意)</font></b>
					<li>因为他们没有为工厂带来多少损失。
						<select name="W_P_1" id="W_P_1" onChange="validateSelect()">
							<option value="">-请选择-</option>
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
					<li>因为工厂经理漠视法律为了维护法律的尊严，这两个工人可以这么做。
						<select name="W_P_4" id="W_P_4">
							<option value="">-请选择-</option>
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
					
					<li>因为大多数工人支持他们的行为，而且许多人会很高兴他们这么做。
						<select name="W_P_3" id="W_P_3">
							<option value="">-请选择-</option>
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
					<li>因为在工厂经理先违法情况下，两个工人破门而入的行为是正当的。
						<select name="W_P_6" id="W_P_6">
							<option value="">-请选择-</option>
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
					<li>因为人与人之间的相互信赖，以及员工的个人尊严比工厂的法规更重要。
						<select name="W_P_2" id="W_P_2">
							<option value="">-请选择-</option>
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
					<li>因为这两个工人找不到揭露工厂经理不法行为的合法途径，因而选择了他们认为不是太坏的做法。
						<select name="W_P_5" id="W_P_5">
							<option value="">-请选择-</option>
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
					
					<br/>
					<b><font size="3"color="#D80000"face="楷体">假设“Bob”认为这两个工人做得不对，您在多大程度上同意他以下的看法？</font> 
					<font size="2"color="#D80000">(-4表示绝对不同意，4表示绝对同意)</font></b>
					<li>因为如果每个人都像这两个工人这么做，法律的尊严和社会的秩序将受到威胁。
						<select name="W_C_4" id="W_C_4">
							<option value="">-请选择-</option>
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
					
					<li>因为财产所有权是人的最基本的权力之一，任何人都不能把法律玩弄于股掌之间随意践踏，除非有更普遍的道德原则的允许。
						<select name="W_C_6" id="W_C_6">
							<option value="">-请选择-</option>
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
						
						
					<li>因为由于他人的缘故，而冒被公司解雇的，风险是不明智的。
						<select name="W_C_2" id="W_C_2">
							<option value="">-请选择-</option>
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
					
					
					<li>因为如果想被看作是一个诚实正派的人，他就不能偷窃。
						<select name="W_C_5" id="W_C_5">
							<option value="">-请选择-</option>
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
					
					
					<li>因为这两个工人应该寻找合法的途径，而不应该做这么严重违反法律的事情。
						<select name="W_C_3" id="W_C_3">
							<option value="">-请选择-</option>
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
					
					
					<li>因为解雇别人与自己无关，他们没有理由去偷录像带。
						<select name="W_C_1" id="W_C_1">
							<option value="">-请选择-</option>
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
					
				</ol>
               </div>
            </fieldset>
            
            <fieldset>
                <legend id="legend_yisheng" align="center"><span>医生的困境</span>
                <br/>
              		<div class="legend_content">
					一个妇女得了癌症，没有任何治愈的希望。她浑身疼痛。她已经非常虚弱，一剂大量的止痛药就可以致她死亡。
					<br/>当她稍微有点力气的时候，她恳求医生给她足够多的可以致命的止痛药。她说她再也忍受不了病痛的折磨了，
					<br/>无论如何都会死的。于是医生就满足了她的要求。
					</div>
				</legend>
               <div>
               <ol>
					<li value="14">您认为医生做得对吗？
						<font size="2" color="#D80000" face="楷体">(-3表示绝对错误，3表示绝对正确)</font>
						<select name="D_DEC" id="D_DEC">
							<option value="">-请选择-</option>
							<option value="-3">-3</option>
							<option value="-2">-2</option>
							<option value="-1">-1</option>
							<option value="0">0</option>
							<option value="1">1</option>
							<option value="2">2</option>
							<option value="3">3</option>
						</select></li>
						<br/>
					<b><font size="3"color="#D80000"face="楷体">假设“Alice”认为医生做得对，您在多大程度上同意她以下的看法？</font>
					<font size="2" color="#D80000">(-4表示绝对不同意，4表示绝对同意)</font></b>
					<li>因为这个医生是按照自己的良心做事的，这个妇女的特殊情况并不违背医生有延长病人生命的义务。
					<select name="D_P_6" id="D_P_6">
							<option value="">-请选择-</option>
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
					
					
					<li>因为只有医生才能完成这个妇女的心愿，这个医生是为了满足她的心愿才这样做的。
						<select name="D_P_5" id="D_P_5">
							<option value="">-请选择-</option>
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

					
					<li>因为医生只是做了这个妇女让她做的事，他不必担心有什么令人不快的后果。
						<select name="D_P_1" id="D_P_1">
							<option value="">-请选择-</option>
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
					<li>因为这个妇女的病无论如何都不能治愈，多给她开些止痛药也费不了什么事。
					
					<select name="D_P_2" id="D_P_2">
							<option value="">-请选择-</option>
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
					<li>因为这个医生没有真正地违反法律，没有人可以挽救她的生命，他只是想缩短她痛苦的时间。
					<select name="D_P_4" id="D_P_4">
							<option value="">-请选择-</option>
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
					
					
					<li>因为大多数医生，在这种情况下也会这样做的。
						<select name="D_P_3" id="D_P_3">
							<option value="">-请选择-</option>
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
					
					<br/>
					<b><font size="3"color="#D80000"face="楷体">假设“Bob”认为这医生做得不对，您在多大程度上同意他以下的看法？</font>
					<font size="2" color="#D80000">(-4表示绝对不同意，分表示绝对同意)</font></b>
					<li>因为他这样做和同事们的意见相左，如果同事们反对安乐死，他就不应该这样做。
						<select name="D_C_3" id="D_C_3">
							<option value="">-请选择-</option>
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
					
					<li>因为救死扶伤延长病人的生命是医生的天职，病人病痛缠身病入膏肓不是免责的理由。
						<select name="D_C_5" id="D_C_5">
							<option value="">-请选择-</option>
							<option value="-4">-4</option>
							<option value="-3">-3</option>
							<option value="-2">-2</option>
							<option value="-1">-1</option>
							<option value="0">0</option>
							<option value="1">1</option>
							<option value="2">2</option>
							<option value="3">3</option>
							<option value="4">4</option>
						</select><span class="errinfo" id="quiz22_errinfo"> * </span></li>
					
					<li>因为保护生命是每一个人的最高道德义务，我们没有明确的道德标准来区分是安乐死还是谋杀。
						<select name="D_C_6" id="D_C_6">
							<option value="">-请选择-</option>
							<option value="-4">-4</option>
							<option value="-3">-3</option>
							<option value="-2">-2</option>
							<option value="-1">-1</option>
							<option value="0">0</option>
							<option value="1">1</option>
							<option value="2">2</option>
							<option value="3">3</option>
							<option value="4">4</option>
						</select><span class="errinfo" id="quiz23_errinfo"> * </span></li>
					
					<li>因为这个医生会因此而惹上麻烦，有的医生因为这样做已经受到了处罚。
						<select name="D_C_1" id="D_C_1">
							<option value="">-请选择-</option>
							<option value="-4">-4</option>
							<option value="-3">-3</option>
							<option value="-2">-2</option>
							<option value="-1">-1</option>
							<option value="0">0</option>
							<option value="1">1</option>
							<option value="2">2</option>
							<option value="3">3</option>
							<option value="4">4</option>
						</select><span class="errinfo" id="quiz24_errinfo"> * </span></li>
					
					
					<li>因为如果他等着而不去干涉这个妇女的死亡过程，这件事对他来讲就容易多了。
						<select name="D_C_2" id="D_C_2">
							<option value="">-请选择-</option>
							<option value="-4">-4</option>
							<option value="-3">-3</option>
							<option value="-2">-2</option>
							<option value="-1">-1</option>
							<option value="0">0</option>
							<option value="1">1</option>
							<option value="2">2</option>
							<option value="3">3</option>
							<option value="4">4</option>
						</select><span class="errinfo" id="quiz25_errinfo"> * </span></li>
					
					
					<li>因为这个医生违反了法律如果他认为安乐死是不合法的，他就不应该答应病人的要求。
						<select name="D_C_4" id="D_C_4">
							<option value="">-请选择-</option>
							<option value="-4">-4</option>
							<option value="-3">-3</option>
							<option value="-2">-2</option>
							<option value="-1">-1</option>
							<option value="0">0</option>
							<option value="1">1</option>
							<option value="2">2</option>
							<option value="3">3</option>
							<option value="4">4</option>
						</select><span class="errinfo" id="quiz26_errinfo"> * </span></li>
				</ol>
				
               </div>
            </fieldset>
            <fieldset>
            	<ol>
            	<li value="27">您在完成以上选项的难易度。
						<select name="difficulty" id="difficulty">
							<option value="">-请选择-</option>
							<option value="0">0</option>
							<option value="1">1</option>
							<option value="2">2</option>
							<option value="3">3</option>
							<option value="4">4</option>
							<option value="5">5</option>
							<option value="6">6</option>
							<option value="7">7</option>
							<option value="8">8</option>
							<option value="9">9</option>
						</select>
						<b><font size="2" color="#D80000">(0表示一点也不难，9表示非常困难)</font></b>
					</li>
					
					<li>您大概花了多长时间。&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
						 <input type="text" id="time" name="time" maxlength="5" size="5" onChange="validateTime(this.value);" />分钟
						 
					</li>
            	</ol>
            	
            </fieldset>
            <fieldset>
            	<ol>
            		<div id="quiz_example">
            		<span>请用比喻的手法描述“道德”和“有道德的人”。例如：</span>
	            		<br/><br/>
	            		老师就像_________________， 因为_____________________。
	            		<br/>
	            		老师就像<span class="quiz_input">&nbsp;&nbsp;&nbsp;一座灯塔&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span>，
	            		因为<span class="quiz_input">&nbsp;&nbsp;他在黑暗中指引我前行&nbsp;&nbsp;</span>。
	            		<br/><br/>
            		</div>
            		<li value="29">
            			道德就像<input class="quiz_input" name="T29_1" type="text" size="25" />,&nbsp;&nbsp;因为<input class="quiz_input" name="T29_2" type="text" size="25" />。
            		</li>
            		
            		<li>
            			有道德的人就像<input class="quiz_input" name="T30_1" type="text" size="25" />,&nbsp;因为<input class="quiz_input" name="T30_2" type="text" size="25" />。
            		</li>	
            	</ol>
            </fieldset>
         
         <br/>
            <div class="enter">
            <font face="楷体" size="4">谢谢配合！</font>
            	<input type="hidden" name="method"	value="submitquiz" /> 
						<br/>
				<input type="submit" name="submit_button" class="button" value="提   交">
            </div>
          
        </form>
        
        <fieldset>
	        <legend id="legend_copyright" align="center"><span>Copyright Information</span></legend>
	        <center>
	        	<div id="copyright_content">
	        	Moral Judgement Test MJT / MUT. International Copyright © 1977-2013 by Georg Lind. 
	        	<br/>No copying allowed without written permission. Free for use in institutions of public education and basic research.
	        	<br/>Contact:&nbsp;<a href="mailto:Georg.Lind@uni-konstanz.de">Georg.Lind@uni-konstanz.de</a>
	        	<br/>More information:<a href="http://www.uni-konstanz.de/ag-moral/"> http://www.uni-konstanz.de/ag-moral/ </a>.
	       		</div>
	        </center>
        </fieldset>     
    </div>
</body>
</body>
</html>