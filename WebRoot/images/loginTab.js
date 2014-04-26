$(document).ready(function(){
	if($("#cardType").val() == '' || $("#cardType").val() == '请点击选择'){
		$("#cardType").css('color', '#999');
		$("#cardType").val('请点击选择');
	}
	
	$("#loginTab1").click(function(){
		$("#loginTab1").removeClass();
		$("#loginTab1").addClass('lg_member_nocurrent lg_member_current');
		$("#loginTab2").removeClass();
		$("#loginTab2").addClass('lg_card_nocurrent');
		$("#memberlogin").show();
		$("#commonlogin").hide();
		$("#cooperDiv").hide();
		$("#pages").val(1);

	});
	$("#loginTab2").click(function(){
		$("#loginTab2").removeClass();
		$("#loginTab2").addClass('lg_card_nocurrent lg_card_current');
		$("#loginTab1").removeClass();
		$("#loginTab1").addClass('lg_member_nocurrent');
		$("#memberlogin").hide();
		$("#commonlogin").show();
		$("#cooperDiv").hide();
		$("#pages").val(2);
		if($("#cardType").val() == ''){
			$("#cardType").css('color', '#999');
			$("#cardType").val('请点击选择');
		}
	});
	$('#cardType').click(function(){
		$("#cooperDiv").show();
		if ($("#cardType").val() == '请点击选择') {
			$("#cardType").val('');
		}
	});
	
	//绑定回车键
	$('html').bind('keydown',function(e){
    	if(e.keyCode==13){
			if ($("#pages").val() == 1) {
				$("#btnLogin").click();
			}else{
				$("#btnCLogin").click();
			}
		}
	});
	
	$("#btnLogin").click(function(){	
				
		var postAction = true;
		var msg = '';
		if($("#username").val() == '' || $("#username").val() == '7天会员卡号/手机号码/证件号'){
			postAction = false;
			msg = '会员号不能为空，可以用7天会员卡号/手机号码/证件号登录。';
		}else if($("#password").val() == ''){
			postAction = false;
			msg = '密码不能为空，请输入。';
		}else if($("#safecode").val() == ''){
			postAction = false;
			msg = '验证码不能为空，请输入。'
		}
		if(postAction == false){
			$("#errorInfo").html(msg);
			$("#errorInfo").show();	
		}
		var siteFrom=$("#siteFrom").val();
		if(postAction == true){
			//siteFrom.sub();
			document.forms.item(0).submit()
		}
	});
	$("#btnCLogin-----").click(function(){
		
		var postAction = true;
		var msg = '';
		if($("#username2").val() == '' || $("#username2").val() == '合作卡号'){
			postAction = false;
			msg = '合作卡号不能为空。';
		}else if($("#password2").val() == ''){
			postAction = false;
			msg = '密码不能为空，请输入。';
		}else if($("#safecode2").val() == ''){
			postAction = false;
			msg = '验证码不能为空，请输入。'
		}
		if(postAction == false){
			$("#errorInfos").html(msg);
			$("#errorInfos").show();	
		}
		if(postAction == true){
			$.ajax({
				type: "POST",
        		url:"guest.action/method=login",
        		dataType: "json",
				data:'username='+ $("#username2").val() + '&password=' + $("#password2").val() + '&safecode=' + $("#safecode2").val() +'&CooID='+$("#CooID").val()+ '&returnURL='+returnURL,
        		beforeSend:function(){
					$("#btnCLogin").attr("disabled","disabled");
				},
				success: function(json) {
				 	if(json.flag == 0){
						ajaxGenerateSafeCode(2);
						$("#btnCLogin").attr("disabled",false);
				 		$("#errorInfos").html(json.msg);
						$("#errorInfos").show();
				 	}
				 	if(json.flag == 1){
						$("#errorInfos").html('登录成功，跳转中，请稍等...');
						$("#errorInfos").show();
						window.location.href = json.msg;
				 	}			 	
				}
			});						
		}
	});
});

function cardTabChange(id){
	$("[id^='cards']").removeClass();
	$("[id^='cards']").addClass('tabnormal');
	$("[id='cards"+id+"']").addClass('tabactive');
	$("[id^='subCard']").hide();
	$("[id='subCard"+id+"']").show();
}

function setCoolID(id,name,isJump){
	if (isJump == 0) {
		$("#CooID").val(id);
		$("#cardType").css('color','#333');
		$("#cardType").val(name);
		$("#cooperDiv").hide();
	}else{
		$("#cooperDiv").hide();
		var url = 'cooperate_'+id+'.html';
		 window.location.href = url;
		 return false;
	}
}

function closeDiv(){
	$("#cooperDiv").hide();
	if($("#cardType").val() == ''){
		$("#cardType").val('请点击选择');
	}
}

function gotocoo(){
	if (/MSIE (\d+\.\d+);/.test(navigator.userAgent)){
	    var referLink = document.createElement('a');
	    referLink.href = cooURL;
	    document.body.appendChild(referLink);
	    referLink.click();
	} else {
	    window.location.href = cooURL;
	}
	return false;
}

function gotowww(){
	window.location.href='index.html';
	return false;
}

function imgchange(imgid) {
    var img = document.getElementById(imgid);
    img.src = img.src + '?';
}

function ajaxGenerateSafeCode(type) {
    $.ajax({
        type: "POST",
        url: "ajax/ajax_safecode.php?type=" + type,
        dataType: "json",
        success: function (json) {
            $("#safecode_" + type).html(json.data);
        }
    });
}

function clearSafeCode(type) {
    $("#safecode_" + type).html('');
}

function postBBS(params){
		
	var f= document.getElementById("form2");
	var names={hidN:'N',hidP:'P',hidT:'T',hidA:'A'};
	if(f)
	{
		
		for(var key in names)
		{
			var o = document.createElement("input");
			o.type="hidden";
			o.name = key;
			o.id = key;
			o.value=params[names[key]];
			//alert(o.value);
			f.appendChild(o);
		}		
		f.method = "post";
		f.action = params['siteURL']+"/aLogin";
		f.submit();
	}
}
