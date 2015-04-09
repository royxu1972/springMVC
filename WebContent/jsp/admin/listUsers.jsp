<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8"
	language="java"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!-- 
  --@页面描述:提供用户信息的添加，修改，删除功能；
  --@创建人:wxz
  --@创建时间：2012-6-10
  --@最后修改时间：2012-7-9
  --修改记录--/*修改人|修改时间|修改内容*/
  --wxz|2012-7-9|添加字段隶属组织，并进行页面标准化定义；
  --
 -->
<html>
<head>
<script type="text/javascript">
	var contextPath = "${pageContext.request.contextPath}";
</script>
<jsp:include page="../../include/euInc.jsp"></jsp:include>
<script type="text/javascript" src="${pageContext.request.contextPath}/js/admin/userlist.js"></script>
</head>
<body class="easyui-layout" fit="true" border="false">
	<div region="north" border="false">
		<div class="datagrid-toolbar">
			<table cellpadding="0" cellspacing="0" style="width: 100%">
				<tr>
					<td>
						<a href="#" class="easyui-linkbutton" iconCls="icon-add" plain="true">增加</a>
						<a href="#" class="easyui-linkbutton" iconCls="icon-edit" plain="true">编辑</a> 
						<a href="#" class="easyui-linkbutton" iconCls="icon-remove" plain="true">删除</a>
					</td>
					<td style="text-align: right"><input id="q" menu="#menu"
						class="easyui-searchbox" prompt="" searcher=""
						style="width: 200px"></input>
						<div id="menu" style="width:150px">  
    						<div name="user_id">根据user_id查询</div>  
						</div>  
					</td>
				</tr>
			</table>
		</div>
	</div>

	<div region="center" border="false" style="overflow: hidden;">
		<table id="users"></table>
	</div>

	<div id="dlg" class="easyui-dialog" closed="true"
	style="width:400px;"
		modal="true" buttons="#dlg-buttons">
		<form id="fm" method="post" novalidate class="ui-form">
			<fieldset>
				<div class="ui-form-item fn-left">
					<label for="user_id" class="ui-label"><em class="ui-form-required fn-hide">*</em>用户ID</label>
					<input name="user_id" class="easyui-validatebox ui-input" >
				</div>
				<div class="ui-form-item fn-left">
					<label for="surname" class="ui-label"><em class="ui-form-required fn-hide">*</em>姓</label>
					<input name="surname" class="easyui-validatebox ui-input" >
				</div>
				<div class="ui-form-item fn-left">
					<label for="gender" class="ui-label"><em class="ui-form-required fn-hide">*</em>性别</label>
					<input name="gender" class="easyui-validatebox ui-input" >
				</div>
				<div class="ui-form-item fn-left">
					<label for="birthYear" class="ui-label"><em class="ui-form-required fn-hide">*</em>出生年份</label>
					<input name="birthYear" class="easyui-validatebox ui-input" >
				</div>
				<div class="ui-form-item fn-left">
					<label for="phoneNumber" class="ui-label"><em class="ui-form-required fn-hide">*</em>手机号码</label>
					<input name="phoneNumber" class="easyui-validatebox ui-input" >
				</div>
				<div class="ui-form-item fn-left">
					<label for="isTheOne" class="ui-label"><em class="ui-form-required fn-hide">*</em>是否独生子女</label>
					<input name="isTheOne" class="easyui-validatebox ui-input" >
				</div>
				<div class="ui-form-item fn-left">
					<label for="homeAddress" class="ui-label"><em class="ui-form-required fn-hide">*</em>家庭住址</label>
					<input name="homeAddress" class="easyui-validatebox ui-input" >
				</div>
				<div class="ui-form-item fn-left">
					<label for="school_name" class="ui-label"><em class="ui-form-required fn-hide">*</em>学校</label>
					<input name="school_name" class="easyui-validatebox ui-input" >
				</div>
				<div class="ui-form-item fn-left">
					<label for="grade_name" class="ui-label"><em class="ui-form-required fn-hide">*</em>年级</label>
					<input name="grade_name" class="easyui-validatebox ui-input" >
				</div>
				<div class="ui-form-item fn-left">
					<label for="speciality_name" class="ui-label"><em class="ui-form-required fn-hide">*</em>专业</label>
					<input name="speciality_name" class="easyui-validatebox ui-input" >
				</div>
				<div class="ui-form-item fn-left">
					<label for="study" class="ui-label"><em class="ui-form-required fn-hide">*</em>学习成绩</label>
					<input name="study" class="easyui-validatebox ui-input" >
				</div>
				<div class="ui-form-item fn-left">
					<label for="politicalPosition" class="ui-label"><em class="ui-form-required fn-hide">*</em>政治面貌</label>
					<input name="politicalPosition" class="easyui-validatebox ui-input" >
				</div>
				<div class="ui-form-item fn-left">
					<label for="religiousBeliefs" class="ui-label"><em class="ui-form-required fn-hide">*</em>宗教信仰</label>
					<input name="religiousBeliefs" class="easyui-validatebox ui-input" >
				</div>
				<div class="ui-form-item fn-left">
					<label for="maritalStatus" class="ui-label"><em class="ui-form-required fn-hide">*</em>婚姻状况</label>
					<input name="maritalStatus" class="easyui-validatebox ui-input" >
				</div>
				<div class="ui-form-item fn-left">
					<label for="parentalEducation" class="ui-label"><em class="ui-form-required fn-hide">*</em>父母教育</label>
					<input name="parentalEducation" class="easyui-validatebox ui-input" >
				</div>
				<div class="ui-form-item fn-left">
					<label for="parentsWork" class="ui-label"><em class="ui-form-required fn-hide">*</em>父母工作</label>
					<input name="parentsWork" class="easyui-validatebox ui-input" >
				</div>
				<div class="ui-form-item fn-left">
					<label for="familyIncome" class="ui-label"><em class="ui-form-required fn-hide">*</em>家庭收入</label>
					<input name="familyIncome" class="easyui-validatebox ui-input" >
				</div>
				<div class="ui-form-item fn-left">
					<label for="parentsRelationship" class="ui-label"><em class="ui-form-required fn-hide">*</em>父母关系</label>
					<input name="parentsRelationship" class="easyui-validatebox ui-input" >
				</div>
				<div class="ui-form-item fn-left">
					<label for="email" class="ui-label"><em class="ui-form-required fn-hide">*</em>email</label>
					<input name="email" class="easyui-validatebox ui-input" >
				</div>
			</fieldset>
			<div id="ids"></div>
			<input name="id" value="0" readonly="readonly" type="hidden">
            <input type="hidden" name="_method" value="post"/>
         
		</form>
	
	<div id="dlg-buttons">
		<a href="#" class="easyui-linkbutton" id="submit" iconCls="icon-ok">确定</a> 
		<a href="#" class="easyui-linkbutton" id="cancel" iconCls="icon-cancel" onclick="javascript:$('#dlg').dialog('close')">取消</a>
	   
	</div>
</div>
</body>
</html>
