<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<title>城市区域4级下拉框</title>
<script>
	function f1(v){
		//alert(v);
		//清除后面的项
		document.getElementById("object2").options.length=0;
		document.getElementById("object3").options.length=0;
		document.getElementById("object2").style.display="none";
		document.getElementById("object3").style.display="none";
		
		
		var s  =  document.getElementById("object1");   
		if(v=="北京"){
			var option0  =   new  Option("东城区","a1");
			var option1  =   new  Option("西城区","a2");
			var option2  =   new  Option("朝阳区","a3");
			s.options[0] = option0;
			s.options[1] = option1;
			s.options[2] = option2;
		}else if(v=="上海"){
			var option0  =   new  Option("浦东新区","b1");
			var option1  =   new  Option("闵行区","b2");
			var option2  =   new  Option("徐汇区","b3");
			s.options[0] = option0;
			s.options[1] = option1;
			s.options[2] = option2;
			s.options[2].selected = true;
			
		}else if(v=="广州"){
			var option0  =   new  Option("天河区","c1");
			var option1  =   new  Option("越秀区","c2");
			var option2  =   new  Option("海珠区","c3");
			s.options[0] = option0;
			s.options[1] = option1;
			s.options[2] = option2;
		}
		//显示出来
		document.getElementById("object1").style.display="";
	}
	
	function f2(v){
		//alert(v);
		//清除后面的项
		document.getElementById("object3").options.length=0;
		document.getElementById("object3").style.display="none";
		
		var s  =  document.getElementById("object2");   
		if(v=="b1"){
			var option0  =   new  Option("陆家嘴","a1");
			var option1  =   new  Option("东方明珠","a2");
			s.options[0] = option0;
			s.options[1] = option1;
		}else if(v=="b2"){
			var option0  =   new  Option("浦江镇","b1");
			var option1  =   new  Option("梅陇镇","b2");
			s.options[0] = option0;
			s.options[1] = option1;
		}else if(v=="b3"){
			var option0  =   new  Option("田林镇","c1");
			var option1  =   new  Option("徐家汇","c2");
			s.options[0] = option0;
			s.options[1] = option1;
		}
		//显示出来
		document.getElementById("object2").style.display="";
	}
	
	function f3(v){
		//alert(v);
		var s  =  document.getElementById("object3");   
		if(v=="c1"){
			var option0  =   new  Option("田林路","a1");
			var option1  =   new  Option("漕宝路","a2");
			s.options[0] = option0;
			s.options[1] = option1;
		}else if(v=="c2"){
			var option0  =   new  Option("肇嘉浜路","b1");
			var option1  =   new  Option("华山路","b2");
			s.options[0] = option0;
			s.options[1] = option1;
		}
		//显示出来
		document.getElementById("object3").style.display="";
	}
</script>
</head>

<body>
<select name="select1" onChange="f1(this.value);">
<option value="北京">北京</option>
<option value="上海">上海</option>
<option value="广州">广州</option>
</select>
<select id="object1" name="select2" onChange="f2(this.value);" style="display:none ">
</select>
<select id="object2" name="select3" onChange="f3(this.value);" style="display:none ">
</select>
<select id="object3" name="select4" style="display:none ">
</select>
</body>
</html>
