<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8"
	language="java"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!-- 
  --@页面描述:提供用户问卷选择信息；
  --@创建人:wxz
  --@创建时间：2013-9-25
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
<script type="text/javascript" src="${pageContext.request.contextPath}/js/admin/selectedlist.js"></script>
</head>
<body class="easyui-layout" fit="true" border="false">
	<div region="north" border="false">
		<div class="datagrid-toolbar">
			<table cellpadding="0" cellspacing="0" style="width: 100%">
				<tr>
					<td>
						<a href="#" class="easyui-linkbutton" iconCls="icon-remove" plain="true">删除</a>
					</td>
					<td style="text-align: right"><input id="q" menu="#menu"
						class="easyui-searchbox" prompt="" searcher=""
						style="width: 200px"></input>
						<div id="menu" style="width:150px">  
    						<div name="quiz_id">根据quiz_id查询</div>  
						</div>  
					</td>
				</tr>
			</table>
		</div>
	</div>

	<div region="center" border="false" style="overflow: hidden;">
		<table id="quizs"></table>
	</div>
		<div id="dlg" class="easyui-dialog"
		style="width: 200px; height: 100px;" closed="true"
		modal="true" buttons="#dlg-buttons">
		<form id="fm" method="post" novalidate class="ui-form">
			
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
