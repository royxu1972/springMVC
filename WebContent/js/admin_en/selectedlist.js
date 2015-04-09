/**
 * Datagrid初始化；
 */
$(function() {
	var $url;
	var $method = "POST";
	$('#quizs').datagrid({
		url : contextPath+'/quiz/list_en.do',
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
		

		columns : [ [
		{field:'ck',checkbox:true},
		{
			field : 'user_id',
			title : 'user_id',
			width : 50
		},{
			field : 'w_DEC',
			title : 'W_DEC',
			width : 50
		},{
			field : 'w_P_1',
			title : 'W_P_1',
			width : 50
		},{
			field : 'w_P_4',
			title : 'W_P_4',
			width : 50
		},{
			field : 'w_P_3',
			title : 'W_P_3',
			width : 50
		},{
			field : 'w_P_6',
			title : 'W_P_6',
			width : 50
		},{
			field : 'w_P_2',
			title : 'W_P_2',
			width : 50
		},{
			field : 'w_P_5',
			title : 'W_P_5',
			width : 50
		},{
			field : 'w_C_4',
			title : 'W_C_4',
			width : 50
		},{
			field : 'w_C_6',
			title : 'W_C_6',
			width : 50
		},{
			field : 'w_C_2',
			title : 'W_C_2',
			width : 50
		},{
			field : 'w_C_5',
			title : 'W_C_5',
			width : 50
		},{
			field : 'w_C_3',
			title : 'W_C_3',
			width : 50
		},{
			field : 'w_C_1',
			title : 'W_C_1',
			width : 50
		},{
			field : 'd_DEC',
			title : 'D_DEC',
			width : 50
		},{
			field : 'd_P_6',
			title : 'D_P_6',
			width : 50
		},{
			field : 'd_P_5',
			title : 'D_P_5',
			width : 50
		},{
			field : 'd_P_1',
			title : 'D_P_1',
			width : 50
		},{
			field : 'd_P_2',
			title : 'D_P_2',
			width : 50
		},{
			field : 'd_P_4',
			title : 'D_P_4',
			width : 50
		},{
			field : 'd_P_3',
			title : 'D_P_3',
			width : 50
		},{
			field : 'd_C_3',
			title : 'D_C_3',
			width : 50
		},{
			field : 'd_C_5',
			title : 'D_C_5',
			width : 50
		},{
			field : 'd_C_6',
			title : 'D_C_6',
			width : 50
		},{
			field : 'd_C_1',
			title : 'D_C_1',
			width : 50
		},{
			field : 'd_C_2',
			title : 'D_C_2',
			width : 50
		},{
			field : 'd_C_4',
			title : 'D_C_4',
			width : 50
		},{
			field : 'difficulty',
			title : 'Survey Difficulty',
			width : 50
		},{
			field : 'time',
			title : 'Time Spent',
			width : 50
		}						
		] ],
		onLoadSuccess : function() {
			$('#quizs').datagrid('clearSelections'); // 一定要加上这一句，要不然datagrid会记住之前的选择状态，删除时会出问题
		}
	});

	/* 给linkbutton绑定操作； */
	$(".easyui-linkbutton").each(function(){
		$(this).unbind('click').bind('click', function(){
			var currIcon=$(this).attr("iconCls");
			if(currIcon=="icon-add"){
				create();
			}else if(currIcon=="icon-edit"){
				edit();
			}else if(currIcon=="icon-remove"){
				remove();
			}
		});  
		
	});

	/**
	 * 点击按钮操作后提示消息
	 */
	$('#submit').click(function() {
		$.ajax({
			type : $method,
			data : $("#fm").serialize(),
			url : $url,
			beforeSend:function(){   
		        return $("#fm").form('validate');   
		    },
			success : function(result) {
				try {
					// var result = eval('('+result+')');
					if (result.success) {
						$('#dlg').dialog('close');
						$('#quizs').datagrid('reload');
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
					msg : result.msg+";[type:"+$method+";data:"+$("#fm").serialize()+";url:"+$url+"]"
				});
			}
		});
	});
	
	/* 删除调查数据记录 */
	function remove() {
		var row = $('#quizs').datagrid('getSelected');
		if (row) {
			$.messager.confirm('Confirm', '确定要删除数据?', function(r) {
				if (r) {
					$url = contextPath + "/quiz/delQuizs.do";
					$method = "POST";
					fm._method.value = "DELETE";
					getSelections();
					$('#fm').form('load', row);
					$('#submit').click();
				}
			});
		} else {
			$.messager.alert('提示信息：', '请选择数据记录!', 'warning');
		}
	}
	
	/* 获得gride中checkbox选中的行 */
	function getSelections() {
	var rows = $('#quizs').datagrid('getSelections');
	for ( var i = 0; i < rows.length; i++) {
		$("#ids").append(
				"<input type=\"hidden\" name=\"ids\" value=\"" + rows[i].id
						+ "\">");
		}
	}
	
});
 
