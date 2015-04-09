//以下为自定义方法，validate方法中没有的
//判断两个值是否相等
jQuery.validator.addMethod("notEqualTo", function(value, element, param) {
    return value != $(param).val();
}, $.validator.format("两次输入不能相同!"));
   
//只能输入数字
jQuery.validator.addMethod("isNum", function(value, element) {
	var RegExp = /^\d+$/;
    return RegExp.test(value);
}, $.validator.format("只能为数字!"));
   
//电话号码验证
jQuery.validator.addMethod("isTell", function(value, element) {
	var RegExp = /^(\d{3}-(\d{8})|(\d{7}))$|^(\d+)$|^(\d{4}-(\d{7})|(\d{8}))$|^(\d{7,8})$/;
    return RegExp.test(value);
   }, $.validator.format("电话号码输入不正确!"));


//页面加载时调用
   $(function() {
       $('#register_form').validate({
    	   debug:true,
    	   rules: {
               txtUserName: {
                   required: true,
                   maxlength: 18,
                   minlength: 4,
                   remote: {
                       type: "post",
                       url: "validator.asmx/CheckUserAvailable",
                       data: {
                           username: function() {
                               return $("#txtUserName").val()
                           }
                       },
                       dataType: "xml",
                       dataFilter: function(dataXML) {
                           var result = $(dataXML).find("boolean").text();
                           if (result == "false")
                               return false;
                           else
                               return true;
                       }
                   }
               },
               txtUserPwd: {
                   required: true,
                   maxlength: 18,
                   minlength: 6,
                   notEqualTo:"#txtUserPwd"
               },
               txtRUserPwd: {
                   required: true,
                   equalTo: "#txtUserPwd"
               },
               txtAddress: {
                   required: true,
                   maxlength: 50
               },
               txtUrl: {
                   required: true,
                   url: true
               },
               txtPhone: {
                   required: true,
                   minlength: 7,
                   maxlength: 13,
                   isTell: true
               },
               txtZipCode: {
                   required: true,
                   minlength: 6,
                   maxlength: 6,
                   isNum: true
               },
               txtEmail: {
                   required: true,
                   email: true,
                   maxlength: 40
               }
           },
           messages: {
               txtUserName: {
                   required: "用户名不能为空！",
                   maxlength: "最长为18个字符！",
                   minlength: "最短为4个字符！",
                   remote: "该用户名已被占用！"
               },
               txtUserPwd: {
                   required: "密码不能为空！",
                   maxlength: "最长为18个字符！",
                   minlength: "最短为6个字符！",
                   notEqualTo: "用户名和密码不能相同！"
               },
               txtRUserPwd: {
                   required: "密码不能为空！",
                   equalTo: "两次输入密码不相同！"
               },
               txtAddress: {
                   required: "地址不能为空！",
                   maxlength: "最长50个字符！"
               },
               txtUrl: {
                   required: "网址不能为空！",
                   url: "请填写正确的网址！"
               },
               txtPhone: {
                   required: "电话不能为空！",
                   minlength: "最少7个数字！",
                   maxlength: "最长13个数字！",
                   isTell: "电话格式不正确！"
               },
               txtZipCode: {
                   required: "邮编不能为空！",
                   minlength: "邮编为6个数字！",
                   maxlength: "邮编为6个数字！",
                   isNum: "请输入数字！"
               },
               txtEmail: {
                   required: "邮箱不能为空！",
                   email: "邮箱格式不正确！",
                   maxlength: "最长40个字符！"
               }
           },
           errorPlacement: function(error, element) {
               error.appendTo(element.parent());
           },
           submitHandler: function(form) {
               form.submit();
           },
           errorClass: "error",
//           focusCleanup: true, //被验证的元素获得焦点时移除错误信息
           success:"checked"
       });


//所有使用“.ipt_txt”样式的文本框加上效果，获得焦点文本框变成淡黄色
       $(".ipt_txt").focus(function() {
           $(this).css("background-color", "#FFFFCC").blur(function() {
               $(this).css("background-color", "#FBFBFB");
           });
       });
   });

