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
<script type="text/javascript" src="${pageContext.request.contextPath}/js/admin_en/userENlist.js"></script>
</head>
<body class="easyui-layout" fit="true" border="false">
	<div region="north" border="false">
		<div class="datagrid-toolbar">
			<table cellpadding="0" cellspacing="0" style="width: 100%">
				<tr>
					<td>
						<a href="#" class="easyui-linkbutton" iconCls="icon-add" plain="true">Add</a>
						<a href="#" class="easyui-linkbutton" iconCls="icon-edit" plain="true">Edit</a> 
						<a href="#" class="easyui-linkbutton" iconCls="icon-remove" plain="true">Delete</a>
					</td>
					<td style="text-align: right"><input id="q" menu="#menu"
						class="easyui-searchbox" prompt="" searcher=""
						style="width: 200px"></input>
						<div id="menu" style="width:150px">  
    						<div name="user_id">Search by user_id</div>  
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
		modal="true" buttons="#dlg-buttons">
		<form id="fm" method="post" novalidate class="ui-form">
			<fieldset>
				<div class="ui-form-item fn-left">
					<label for="user_id" class="ui-label"><em class="ui-form-required fn-hide">*</em>user_id</label>
					<input name="user_id" class="easyui-validatebox ui-input" >
				</div>
				<div class="ui-form-item fn-left">
					<label for="birthYear" class="ui-label"><em class="ui-form-required fn-hide">*</em>birthYear</label>
					<input name="birthYear" class="easyui-validatebox ui-input" >
				</div>
				<div class="ui-form-item fn-left">
					<label for="gender" class="ui-label"><em class="ui-form-required fn-hide">*</em>gender</label>
					<input name="gender" class="easyui-validatebox ui-input" >
				</div>
				<div class="ui-form-item fn-left">
					<label for="speciality" class="ui-label"><em class="ui-form-required fn-hide">*</em>speciality</label>
					<input name="speciality" class="easyui-validatebox ui-input" >
				</div>
				<div class="ui-form-item fn-left">
					<label for="gradeId" class="ui-label"><em class="ui-form-required fn-hide">*</em>gradeId</label>
					<input name="gradeId" class="easyui-validatebox ui-input" >
				</div>
				<div class="ui-form-item fn-left">
					<label for="subject" class="ui-label"><em class="ui-form-required fn-hide">*</em>subject</label>
					<input name="subject" class="easyui-validatebox ui-input" >
				</div>
				<div class="ui-form-item fn-left">
					<label for="isTheOne" class="ui-label"><em class="ui-form-required fn-hide">*</em>isTheOne</label>
					<input name="isTheOne" class="easyui-validatebox ui-input" >
				</div>
				<div class="ui-form-item fn-left">
					<label for="isTheOne" class="ui-label"><em class="ui-form-required fn-hide">*</em>isTheOne</label>
					<input name="isTheOne" class="easyui-validatebox ui-input" >
				</div>
				<div class="ui-form-item fn-left">
					<label for="maritalStatus" class="ui-label"><em class="ui-form-required fn-hide">*</em>maritalStatus</label>
					<input name="maritalStatus" class="easyui-validatebox ui-input" >
				</div>
				<div class="ui-form-item fn-left">
					<label for="ethnicity" class="ui-label"><em class="ui-form-required fn-hide">*</em>ethnicity</label>
					<input name="ethnicity" class="easyui-validatebox ui-input" >
				</div>
				<div class="ui-form-item fn-left">
					<label for="religiousBeliefs" class="ui-label"><em class="ui-form-required fn-hide">*</em>religiousBeliefs</label>
					<input name="religiousBeliefs" class="easyui-validatebox ui-input" >
				</div>
				<div class="ui-form-item fn-left">
					<label for="study" class="ui-label"><em class="ui-form-required fn-hide">*</em>study</label>
					<input name="study" class="easyui-validatebox ui-input" >
				</div>
				<div class="ui-form-item fn-left">
					<label for="homeAddress" class="ui-label"><em class="ui-form-required fn-hide">*</em>homeAddress</label>
					<input name="homeAddress" class="easyui-validatebox ui-input" >
				</div>
				<div class="ui-form-item fn-left">
					<label for="parentalEducation" class="ui-label"><em class="ui-form-required fn-hide">*</em>parentalEducation</label>
					<input name="parentalEducation" class="easyui-validatebox ui-input" >
				</div>
				<div class="ui-form-item fn-left">
					<label for="familyIncome" class="ui-label"><em class="ui-form-required fn-hide">*</em>familyIncome</label>
					<input name="familyIncome" class="easyui-validatebox ui-input" >
				</div>
				<div class="ui-form-item fn-left">
					<label for="socialClass" class="ui-label"><em class="ui-form-required fn-hide">*</em>socialClass</label>
					<input name="socialClass" class="easyui-validatebox ui-input" >
				</div>
				<div class="ui-form-item fn-left">
					<label for="parentsRelationship" class="ui-label"><em class="ui-form-required fn-hide">*</em>parentsRelationship</label>
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
		<a href="#" class="easyui-linkbutton" id="submit" iconCls="icon-ok">Ok</a> 
		<a href="#" class="easyui-linkbutton" id="cancel" iconCls="icon-cancel" onclick="javascript:$('#dlg').dialog('close')">Cancel</a>
	   
	</div>
</div>
</body>
</html>
