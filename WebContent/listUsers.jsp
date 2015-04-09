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
<jsp:include page="/include/euInc.jsp"></jsp:include>
<script type="text/javascript" src="${pageContext.request.contextPath}/js/userlist.js"></script>
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

	<div id="dlg" class="easyui-dialog"
		style="width: 200px; height: 100px;" closed="true"
		modal="true" buttons="#dlg-buttons">
		<form id="fm" method="post" novalidate class="ui-form">
			<fieldset>
				<div class="ui-form-item fn-left">
					<label for="user_id" class="ui-label"><em class="ui-form-required fn-hide">*</em>用户id</label>
					<input name="user_id" class="easyui-validatebox ui-input" required="true">
				</div>
				<div class="ui-form-item fn-left">
					<label for="phoneNumber" class="ui-label"><em class="ui-form-required fn-hide">*</em>手机号码</label>
					<input name="phoneNumber" class="easyui-validatebox ui-input" required="true">
				</div>
			</fieldset>
			<div id="ids"></div>
            <input type="hidden" name="_method" value="post"/>
         
		</form>
	
	<div id="dlg-buttons">
		<a href="#" class="easyui-linkbutton" id="submit" iconCls="icon-ok">确定</a> 
		<a href="#" class="easyui-linkbutton" id="cancel" iconCls="icon-cancel" onclick="javascript:$('#dlg').dialog('close')">取消</a>
	   
	</div>
</div>
</body>
</html>
