/**
 * Datagrid初始化；
 */
$(function() {
	var $url;
	var $method = "POST";
	$('#quizs').datagrid({
		url : contextPath+'/quiz/count_en.do',
		method : $method,
		iconCls : 'icon-save',
		pagination : true,
		pageSize:10,
		pageList :[10,20,30,40],	
		fit : true,
		nowrap : false,
		striped : true,
		fitColumns : true,	//横向滚动条
		nowrap : false, 	//自动折行
		border : false,		//边框
		idField : 'id',		//
		
		columns : [ [
		{field:'ck',checkbox:true},
		{
			field : 'user_id',
			title : 'user_id',
			width : 20
		}
		,{
			field : 'c_Score_W',
			title : 'Workers C_Score_D',
			width : 20
		},{
			field : 'c_Score_D',
			title : 'Doctor C_Score_D',
			width : 20 
		},{
			field : 'c_Score_A',
			title : 'Whole C_Score_A',
			width : 20
		}		
		] ],
		pagination : true,
		rownumbers : true,
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
 
