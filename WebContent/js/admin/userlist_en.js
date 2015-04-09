/**
 * Datagrid初始化；
 */
$(function() {
	var $url;
	var $method = "POST";
	$('#users').datagrid({
		url : contextPath + '/user/listusers_en.do',
		method : $method,
		iconCls : 'icon-save',
		pagination : true,
		pageSize:10,
		pageList :[10,20,30,40],
		fit : true,
		fitColumns : false, //横向滚动条
		nowrap : false, 	//自动折行
		border : false,		//边框
		idField : 'id',		//
		striped : false,
		rownumbers : true,
		
		columns : [ [ {
			field : 'ck',
			checkbox : true
		}, {
			field : 'user_id',
			title : '用户id',
			width : 100
		}, {
			field : 'surname',
			title : '姓',
			width : 30
		}, {
			field : 'gender',
			title : '性别',
			width : 50
		}, {
			field : 'birthYear',
			title : '出生年份',
			width : 30
		}, {
			field : 'phoneNumber',
			title : '手机号码',
			width : 100
		}, {
			field : 'isTheOne',
			title : '是否独生子女',
			width : 60
		}, {
			field : 'homeAddress',
			title : '家庭住址',
			width : 100
		}, {
			field : 'school',
			title : '学校',
			width : 100,
			formatter: function(value,row,index){ 
				return new Object(row["school"]).school_name;
			}
		}, {
			field : 'grade',
			title : '年级',
			width : 100,
			formatter: function(value,row,index){ 
				return new Object(row["grade"]).grade_name;
			}
		}, {
			field : 'speciality',
			title : '专业',
			width : 100,
			formatter: function(value,row,index){ 
				return new Object(row["speciality"]).speciality_name;
			}
		}, {
			field : 'study',
			title : '奖学金',
			width : 50
		}, {
			field : 'politicalPosition',
			title : '政治面貌',
			width : 50
		}, {
			field : 'religiousBeliefs',
			title : '宗教信仰',
			width : 60
		}, {
			field : 'maritalStatus',
			title : '婚姻状况',
			width : 30
		}, {
			field : 'parentsEducation',
			title : '父母教育程度',
			width : 50
		}, {
			field : 'parentsWork',
			title : '父母工作',
			width : 100
		}, {
			field : 'familyIncome',
			title : '家庭收入',
			width : 100
		}, {
			field : 'parentsRelationship',
			title : '父母关系',
			width : 100
		}, {
			field : 'email',
			title : '邮箱',
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

		$url = contextPath + "/user";
		$method = "POST";
		fm._method.value = "PUT";

	}

	/* 删除用户 */
	function remove() {
		var row = $('#users').datagrid('getSelected');
		if (row) {
			$.messager.confirm('Confirm', '确定要删除用户?', function(r) {
				if (r) {
					$url = contextPath + "/user/delUsers.do";
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
