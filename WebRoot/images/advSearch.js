function checkFrom(obj){

//	alert(jQuery("#starttime").val());
	var city = $("#city").val();
	

	$("input[type=radio]").each(function(i){
			if($(this).attr("checked")) is_sel =true;
			//alert($(this).attr("checked")); 
		})
	if(!city && !is_sel){
		alert('请先选择城市');
		$("#city").focus();
	//	jQuery("#city").onclick();
		return false;
	}

	var is_sel = false;
	var starttime = $("#dtStart").val();
	if(!starttime){
		alert('请输入开始时间');
		$("#dtStart").focus();
		$("#dtStart").val('');
		return false;
	}	

	var endtime = $("#dtEnd").val();
	if(!endtime){
		alert('请输入结束时间');
		$("#dtEnd").focus();
		$("#dtEnd").val('');
		return false;
	}		
//				alert(city);
//	return false;
	if(Validator.Validate(this,2))	return true;
	else return false;
}

function checkcity(){
	if($("#city").val()){
		$("#city").val('');
	}
	
}
function selCity(obj){
	//alert('d');
	$("input[type=radio]").each(function(i){
			if($(this).attr("checked")) $(this).attr("checked",false)
			//alert($(this).attr("checked")); 
		})
	GetCityList(obj);
}
