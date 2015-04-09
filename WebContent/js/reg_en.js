$().ready(function() {
	
	informationPop();
	initbirthYear();

	$("#regform").validate({
		ignore: "", // 开启hidden验证， 1.9版本后默认关闭
		rules : {
				birthYear:{
					required:true
				},
				gender:{
					required:true
				},
				speciality:{
					required:true
				},
				gradeId:{
					required:true
				},
				subject:{
					
				},
				isTheOne:{
					required:true
				},
				maritalStatus:{
					required:true
				},
				ethnicity:{
					required:true
				},
				nationality:{
					required:true
				},
				religiousBeliefs:{
					required:true
				},
				study:{
					required:true
				},
				homeAddress:{
					required:true
				},
				parentalEducation:{
					required:true
				},
				familyIncome:{
					required:true
				},
				socialClass:{
					required:true
				},
				parentsRelationship:{
					required:true
				},
				email : {
					required:true,
					myemail : true,
					remote: {
						url : contextPath+'/userEN/js_existEmail.do',     
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
				email : {
					required : "Required field.",
					myemail : "Please enter the correct Email format.",
					remote: "E-mail has been registered."
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
});

function informationPop(){
	$('#information').window({  
		width:900,  
	    fit:false,
	    modal:true,
	    title:"<br/>Please read the following information carefully and click <span style='color:red;'>YES</span> below to confirm that you have read and understood the information.<br />",
	    inline:true,
	    minimizable:false,
	    maximizable:false,
	    closable:false
	});  
	$('#information_ok_btn').linkbutton({  
	    plain:true,
	    text:"--YES--"
	}); 
	
	$('#information_ok_btn').bind("click",function(){
		$('#information').window('close');  
	});
	
	$('.panel-tool-collapse').focus();
}

//验证学校和专业是否选择 如果没有选择学校则移除专业验证 如果已经选择学校则添加专业验证
function schoolValid(){
	
	if($("#school-name").val() !="请选择大学"){
		$("#speciality_id").rules("add", { required: true, messages: { required: "请选择专业"} });
		setTimeout("$('#speciality_id').valid();",100);
	}else{
		
		$("#speciality_id").rules("remove");	
		setTimeout("$('#speciality_id').valid();",100);
	}
}

function initbirthYear() {
	for ( var i = 1997; i >= 1960; i--) {
		$("#birthYear").append("<option value='" +i+ "'>" +i+ "</option>");
	}
}

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