$().ready(function() {	

	informationPop();
	
	$("#quizform").validate({
		ignore: "", // 开启hidden验证， 1.9版本后默认关闭
			rules : {
				W_Dec:{
					required : true
				},
				W_P_1 : {
					required : true	
				},
				W_P_2 : {
					required : true	
				},
				W_P_3 : {
					required : true	
				},
				W_P_4 : {
					required : true	
				},
				W_P_5 : {
					required : true	
				},
				W_P_6 : {
					required : true	
				},
				W_C_1 : {
					required : true	
				},
				W_C_2 : {
					required : true	
				},
				W_C_3 : {
					required : true	
				},
				W_C_4 : {
					required : true	
				},
				W_C_5 : {
					required : true	
				},
				W_C_6 : {
					required : true	
				},
				D_DEC : {
					required : true	
				},
				D_P_1 : {
					required : true	
				},
				D_P_2 : {
					required : true	
				},
				D_P_3 : {
					required : true	
				},
				D_P_4 : {
					required : true	
				},
				D_P_5 : {
					required : true	
				},
				D_P_6 : {
					required : true	
				},
				D_C_1 : {
					required : true	
				},
				D_C_2 : {
					required : true	
				},
				D_C_3 : {
					required : true	
				},
				D_C_4 : {
					required : true	
				},
				D_C_5 : {
					required : true	
				},
				D_C_6 : {
					required : true	
				},
				difficulty:{
					required:true
				},
				time:{
					required:true,
					digits:true
				},
				T29_1:{
					required:true
				},
				T29_2:{
					required:true
				},
				T30_1:{
					required:true
				},
				T30_2:{
					required:true
				},
				user_id:{
					required:true
				}
			},
			messages : {
			},
			
			validClass:"checked",
			errorClass : "error",
			errorElement : "span",
			errorPlacement : function(error, element) {
				if ( element.is("#user_id") ){
					
				}else{
			        error.appendTo( element.parent());
				}
			},
			success: function(label) {
	               label.html("<span style=\"color:#2380D5\">&nbsp;</span>").addClass("checked");
	        },
	        submitHandler:function(form) { 
	        	$(form).ajaxSubmit(); 
	        },
	        invalidHandler:function(form){  
	            //在Submit之前，且驗證失敗。  
	        	validUserRedirect();
	        }
		});
	//绑定'#information_exit_btn'按钮的click事件
	$('#information_exit_btn').bind("click",function() {
		$('#information').window("open");
		//通过把焦点定位到easyui的window插件的默认title来实现弹出window的时候定位到window最前
		//easyui的window插件的title默认class是panel-tool-collapse
		$('.panel-tool-collapse').focus();
	});
	validUserRedirect();
});

function validUserRedirect(){
	if($("#user_id").val() == ""){
		alert("user_id不存在,请先填写基本信息");
		window.location.replace(contextPath+'/reg_en.jsp');
	}
}

//加载弹出框的函数
function informationPop(){
		$('#information')
				.window(
						{
							width : 900,
							fit:false,
							modal : true,
							title : "<br/>Please read the following information carefully and click <span style='color:red;'>YES</span> below to confirm that you have read and understood the information.<br />",
							inline : false,
							minimizable : false,
							maximizable : false,
							closable : false,
						});
		$('#information_ok_btn').linkbutton({
			plain : true,
			text : "--YES--"
		});
		$('#information_ok_btn').bind("click",function(){
			$('#information').window('close');  
		});
		//弹出框加载完成后立即关闭(默认不弹出)
		$('#information').window('close');  
}