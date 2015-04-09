$().ready(function() {

	initbirthYear();
	loadGrade();

	//调用jquery.validate插件的validate方法，使用方法请查阅jquery.validate的API文档
	$("#regform").validate({
		ignore: "", // 开启hidden验证， 1.9版本后默认关闭
			rules : {
				surname : {
					required : true,
					isSurname:true
				},
				gender:{
					required:true
				},
				birthYear:{
					required:true
				},
				phoneNumber:{
					isTel:true
				},
				isTheOne:{
					required:true
				},
				homeAddress:{
					required:true
				},
				"school.id":{
					required:true
				},
				"grade.id":{
					required:true
				},
				study:{
					required:true
				},
				politicalPosition:{
					required:true
				},
				religiousBeliefs:{
					required:true
				},
				maritalStatus:{
					required:true
				},
				parentsEducation:{
					required:true
				},
				parentsWork:{
					required:true
				},
				familyIncome:{
					required:true
				},
				parentsRelationship:{
					required:true
				},
				email : {
					required : true,
					email : true,
					remote: {
						url : contextPath+'/user/js_existEmail.do',     
                        type: "post",  //数据发送方式   
                        dataType: "json",       //接受数据格式       
                        data: {                     //要传递的数据   
                            email: function () {
                            	var val = $("#email").val(); 
                                return val;
                            }
                        }
                    }
				}
			},
			messages : {
				surname : {
					required: "请输入姓氏"	
				},
				gender : {
					required: "请选择性别"	
				},
				email : {
					required : "请输入Email地址",
					email : "Email地址格式不正确",
					remote: "邮箱已经被注册"
				}
			},
			
			validClass:"checked", 
			errorClass : "error",
			errorElement : "span",
			errorPlacement : function(error, element) {
				if ( element.is("#school-id") ){
					error.appendTo( element.parent());
				}
			    else
			        error.appendTo( element.parent());

			},
			success: function(label) {
	               label.html("<span style=\"color:#2380D5\">&nbsp;</span>").addClass("checked");
	           }
		});
	
	//当"#school-name"失去焦点的时候触发，用来实现通过弹出层选择学校之后能立即够验证学校和专业两个字段是否满足rules条件
	$("#school-name").blur(function(){
		setTimeout(schoolValid,400);
		setTimeout("$('#school-id').valid();",500);	
	});
});

//验证学校和专业是否选择 如果没有选择学校则移除专业验证 如果已经选择学校则添加专业验证
function schoolValid(){
	
	if($("#school-name").val() !="点击选择大学"){
		$("#speciality_id").rules("add", { required: true, messages: { required: "请选择专业"} });
		setTimeout("$('#speciality_id').valid();",100);
	}else{
		
		$("#speciality_id").rules("remove");	
		setTimeout("$('#speciality_id').valid();",100);
	}
}

//初始化出生年
function initbirthYear() {
	for ( var i = 1997; i >= 1960; i--) {
		$("#birthYear").append("<option value='" +i+ "'>" +i+ "</option>");
	}
}

//从数据库加载年级
function loadGrade(){
	$.ajax({ 
		type : "POST", 
		contentType : "application/json",  
		url : contextPath+'/grade/list.do',
		dataType : 'json', 
		async: false, 
		success : function(result) { 
			//循环遍历所有rows项
			$.each(result.rows,function(idx,item){   
				if(idx==0){   
				return true;//同countinue，返回false同break   
				}   
				jQuery("#grade_id").append("<option value='" +item.id+ "'>"+item.grade_name+"</option>");
				});   
		}
	});
}

//从数据库加载专业
function loadSpeciality(school_id)
{
	// 清除后面的项
	document.getElementById("speciality_span").length = 0;
	document.getElementById("speciality_id").options.length = 0;
	document.getElementById("speciality_span").style.display = "none";
	document.getElementById("speciality_id").style.display = "none";
	
	var s = document.getElementById("speciality_id");
		$.ajax({ 
			type : 'POST', 
			url : contextPath+'/speciality/list.do?school_id='+school_id,
			//data: school_id,
			//dataType : 'text', 
			contentType: "application/json", 
			success : function(result) { 
				//循环遍历所有rows项
				$.each(result.rows,function(idx,item){   
					//if(idx==0){   
					//return true;//同countinue，返回false同break   
					//}   
					jQuery("#speciality_id").append("<option value='" +item.id+ "'>"+item.speciality_name+"</option>");
					});   
			}
		});
		// 显示出来
		s.style.display = "";
		//document.getElementById("speciality_span").style.display = "";
		$("#speciality_span").css("display","");
}