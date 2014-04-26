$(function(){
	
	alert("test");
	//给密码注册失去焦点的时间
	$("#adminPw").blur(validatePw);
	//用户名不能为空
	$("#adminName").blur(validateName);
	
	
});

function validatePw(){
	if($("#adminPw").val()==""){
		$("#showMsg").html("密码不能为空");
		return;
	}
	if($("#adminPw").val().length>8){
		$("#showMsg").html("密码长度不能超过8位");
	}
	
}

function validateName(){
	if($("#adminName").val()==""){
		$("#showMsg").html("用户名不能为空");
	}
}