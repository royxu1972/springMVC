/**
 * Datagrid初始化；
 */
$(function() {
	var $url;
	var $method = "POST";
	$('#users').datagrid({
		url : contextPath + '/userEN/list.do',
		method : $method,
		iconCls : 'icon-save',
		pagination : true,
		pageSize : 10,
		pageList : [ 10, 20, 30, 40 ],
		fit : true,
		fitColumns : false, // 横向滚动条
		nowrap : false, // 自动折行
		border : false, // 边框
		idField : 'id', //
		striped : false,

		rownumbers : true,
		columns : [ [ {
			field : 'ck',
			checkbox : true
		}, {
			field : 'user_id',
			title : 'User ID',
			width : 100
		}, {
			field : 'birthYear',
			title : 'Year of birth',
			width : 100
		}, {
			field : 'gender',
			title : 'Gender',
			width : 100
		}, {
			field : 'speciality',
			title : 'Faculty',
			width : 100
		}, {
			field : 'gradeId',
			title : 'Grade',
			width : 100
		}, {
			field : 'subject',
			title : 'Subject',
			width : 100
		}, {
			field : 'isTheOne',
			title : 'Only child or not',
			width : 100
		}, {
			field : 'maritalStatus',
			title : 'Marital status',
			width : 100
		}, {
			field : 'ethnicity',
			title : 'Ethnicity',
			width : 100
		}, {
			field : 'religiousBeliefs',
			title : 'Religion',
			width : 100
		}, {
			field : 'study',
			title : 'Grade achieved',
			width : 100
		}, {
			field : 'homeAddress',
			title : 'Family location',
			width : 100
		}, {
			field : 'parentalEducation',
			title : 'Parental Education',
			width : 100
		}, {
			field : 'familyIncome',
			title : 'Household Annual Income',
			width : 100
		}, {
			field : 'socialClass',
			title : "Family's social class",
			width : 100
		}, {
			field : 'parentsRelationship',
			title : "Parentens' reationship",
			width : 100
		}, {
			field : 'email',
			title : 'email',
			width : 100
		} ] ],
		onLoadSuccess : function() {
			$('#users').datagrid('clearSelections'); // 一定要加上这一句，要不然datagrid会记住之前的选择状态，删除时会出问题
		}
	});

	/* 给linkbutton绑定操作； */
	$(".easyui-linkbutton").each(function() {
		$(this).unbind('click').bind('click', function() {
			var currIcon = $(this).attr("iconCls");
			if (currIcon == "icon-add") {
				create();
			} else if (currIcon == "icon-edit") {
				edit();
			} else if (currIcon == "icon-remove") {
				remove();
			}
		});

	});

	/**
	 * 点击按钮操作后提示消息
	 */
	$('#submit').click(
			function() {
				$.ajax({
					type : $method,
					data : $("#fm").serialize(),
					url : $url,
					beforeSend : function() {
						return $("#fm").form('validate');
					},
					success : function(result) {
						try {
							// var result = eval('('+result+')');
							if (result.success) {
								$('#dlg').dialog('close');
								$('#users').datagrid('reload');
							} else {
								$.messager.show({
									title : '提示信息：',
									msg : result.msg
								});
							}
						} catch (e) {
							$.messager.show({
								title : '提示信息：',
								msg : "操作失败！" + e
							});
						}
					},
					error : function(result) {
						$.messager.show({
							title : '提示信息：',
							msg : result.msg + ";[type:" + $method + ";data:"
									+ $("#fm").serialize() + ";url:" + $url
									+ "]"
						});
					}
				});
			});

	/* 创建用户 */
	function create() {
		$('#dlg').dialog('open').dialog('setTitle', '用户管理-新增');
		$('#fm').form('clear');
		$url = contextPath + "/log";
		$method = "POST";
	}

	/* 修改用户 */
	function edit() {
		var row = $('#users').datagrid('getSelected');

		if (row) {
			$('#dlg').dialog('open').dialog('setTitle', '用户管理-编辑');
			$('#fm').form('load', row);
		} else {
			$.messager.alert('提示信息：', '请选择修改用户！', 'warning');
		}

		$url = contextPath + "/userEN";
		$method = "POST";
		fm._method.value = "PUT";

	}

	/* 删除用户 */
	function remove() {
		var row = $('#users').datagrid('getSelected');
		if (row) {
			$.messager.confirm('Confirm', '确定要删除用户?', function(r) {
				if (r) {
					$url = contextPath + "/userEN/delUsers.do";
					$method = "POST";
					fm._method.value = "DELETE";
					getSelections();
					$('#fm').form('load', row);
					$('#submit').click();
				}
			});
		} else {
			$.messager.alert('提示信息：', '请选择用户!', 'warning');
		}
	}

	/* 获得gride中checkbox选中的行 */
	function getSelections() {
		var rows = $('#users').datagrid('getSelections');
		for ( var i = 0; i < rows.length; i++) {
			$("#ids").append(
					"<input type=\"hidden\" name=\"ids\" value=\"" + rows[i].id
							+ "\">");
		}
	}
});
