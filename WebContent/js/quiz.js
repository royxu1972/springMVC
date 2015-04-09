$().ready(function() {	

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
		
		validUserRedirect();
});

//验证用户id是否存在 不存在则重定向到用户基本信息填写页面
function validUserRedirect(){
	if($("#user_id").val() == ""){
		alert("用户不存在,请先填写基本信息");
		window.location.replace(contextPath+'/reg.jsp');
	}
}