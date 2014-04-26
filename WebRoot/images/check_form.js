//订单核对提交检验
function nextSub(type){//1:稍后支付，并下订单；3：现在支付
	var payment = $('input[@name=pay_methord][@checked]').val();
	var normalTxt = "<div style='float:left; margin:34px 0px 0px 100px ; '><img src='indicator.gif'></div><div style='float:left;margin:35px 0px 0px 10px;'>订单确认中，请稍候......</div>";
	var autoPayTxt = "<div style='float:left; margin:34px 0px 0px 100px ; '><img src='indicator.gif'></div><div style='float:left;margin:35px 0px 0px 10px;'>递交支付中，请稍候......</div>";  
	if(payment ==1 && type ==3) payment = 3;
	if(payment != undefined ){
		if(payment==1){
			tipsWindown('提示','text:'+normalTxt,420,100,'false','','true','');
			$("#payment3").val(1);
			$("#payment_type3").val('3');
			$("#form").submit();
			$("#btnpaynext").hide();			
		}else if(payment== 2){
			var pm = $("#payment_front_tb input:checked").val();
			if(!pm){
				alert('请先选择积分数量！');
				return;
			}				
			tipsWindown('提示','text:'+normalTxt,420,100,'false','','true',''); 
			$("#payment3").val(pm);
			$("#payment_type3").val('3');
			$("#form").submit();
			$("#btnpaynext").hide();					
		}else if(payment==3){
			$("#form").attr('action','inn_order_pay.php?mkey='+mkey);
			$("#form").submit();
		}else if(payment==4){
			tipsWindown('提示','text:'+normalTxt,420,100,'false','','true','');
			$("#payment3").val(1);
			$("#payment_type3").val('4');
			$("#form").submit();
			$("#btnpaynext").hide();
		}else if(payment==5){
			$("#form").attr('action','inn_order_pay.php?mkey='+mkey);
			$("#form").submit();
		}else if(payment==6){
			$("#form").attr('action','inn_order_pay.php?mkey='+mkey);
			$("#form").submit();
		}else if(payment==111){
			closeWindown();
			//抵用券
			if ($("#esed").length > 0) {
				var esed = $("#eList").val();
			}else{
				var esed = ',';
			}
			//礼金
			if($("#GiftCash").length>0){
				var GiftCash = $("#GiftCash").val();
			}else{
				var GiftCash  = 0;
			}
			//现金
			if($("#Cash").length >0){
				var Cash = $("#Cash").val();
			}else{
				var Cash = 0;
			}
			
			//Vpos
			var vpos_money = $("#vpos_money").val();
			
			if(Cash < 0 || GiftCash < 0 || vpos_money < 0){
				alert('储值现金/储值礼金/信用卡金额不能为负数！');
				return false;
			}
			//mkey
			var akey = $("#akey").val();
			var str = "do=verify&mkey="+akey+"&elist="+esed+"&giftcash="+GiftCash+"&cash="+Cash+"&vpos="+vpos_money;
			$.ajax({
				type: "GET",
				data:str,
				url: "getPayInfo.php",
				dataType: "json",
				success: function(json){
						tipsWindown('提示','text:'+autoPayTxt,420,100,'false','','true','');
						$("#payment3").val(1);
						$("#payment_type3").val('112');	
						$("#form").submit();
						$("#btnpaynext").hide();
				}
			});
		}
	}else{
		alert('请先选择支付方式！');
		return;
	}	
}

//世博订单核对提交前弹出检验
function beforeSub(){
	var payment = $('input[@name=pay_methord][@checked]').val();
	var payTimeType = $('#payTimeType').val();
	if(payment==1 && payTimeType>0){
		if(payTimeType==1 ){
			showTipsWindown('重要提示','msgPrePayBox24',620,200);
		}else{
			showTipsWindown('重要提示','msgPrePayBox18',620,200);	
		}	
	 }else if (payment ==1 && isPayPriority == 1){
		showTipsWindown('重要提示','msgPrePayBox88',620,220);
	 }
	 else if (payment==111){
		nextSub(111);
	 }
	else{
	 	nextSub(1);	
	}
}
//世博订单核对提交前确认检验
function beforeSubZhongjie(){

	var payment = $("#zpm input:checked").val();
	var payTimeType = $('#payTimeType').val();
	if(payment==1 && payTimeType>0){
		if(payTimeType==1 ){
			showTipsWindown('重要提示','msgPrePayBox24zj',620,200);
			//$.blockUI({ message: $('#msgPrePayBox24zj'), css: { width: '595px', left:(window.screen.width-595)/2, border: '3px solid #B1D3E1'  } });
		}else{
			showTipsWindown('重要提示','msgPrePayBox18zj',620,200);
			//$.blockUI({ message: $('#msgPrePayBox18zj'), css: { width: '595px', left:(window.screen.width-595)/2, border: '3px solid #B1D3E1'  } });		
		}	
	}else{
	 	GoSub();
	}
}
/**
*中介订单支付验证
*/
function GoSub()
{
	var payment = $("#zpm input:checked").val();
	if(payment != undefined ){
		if(payment==3){
			$("#form").attr('action','inn_order_pay.php?mkey='+mkey);
			$("#form").submit();			
		}
		else {
			$("#form").submit();		
		}
	}else{
		alert('请选择支付方式！');
		return;
	}	
}


//查询酒店输入框验证
function checkSearchForm(type,formName){
	if(type =='inn'){//酒店查询输入验证
		var vu = $("#city").val();
		//var vp = $("#dtStart").val();
		//var vc = $("#dtEnd").val();
		if(!vu){
			hotvu = $("input:checked[name='hotcity']").val();
			if(!hotvu)
			{
				alert('请选择城市!');
				$("#city").focus();
				return false;
			}
		}
//		if(!(/^[1-9][0-9]{3,3}-[0-9]{1,2}-[0-9]{1,2}$/.test(vp))){
//			alert('请输入入住日期，格式：YYYY-MM-DD');
//			$("#dtStart").focus();	
//			return false;
//		}
//		if(!(/^[1-9][0-9]{3,3}-[0-9]{1,2}-[0-9]{1,2}$/.test(vc))){
//			alert('请输入离店日期，格式：YYYY-MM-DD');
//			$("#dtEnd").focus();	
//			return false;
//		}

//		var fr = $("input:checked").val();		
//		if(fr==2){
//		$("#inn_form").attr('action','http://www.innutd.cn/hotel_list.php');
//		$("#inn_form").submit();
//		}
		return true;
	}
}
function flightRadioChecked(num){
	if(num == 1 ) $("#back_time").hide();
	else $("#back_time").show();
}

//flight 查询输入框验证
function flightQuerySubmit() {
	
	var temp = $("input:checked[name='line_radio']").val();//1为单程，2为往返程
	var fromcity = $("#hddSingleFromCity").val();//出发城市
	var tocity = $("#hddSingleToCity").val();//到达城市
	var date = $("#flight_dtStart").val(); //document.getElementById("txtSingleDate").value;//出发日期
	var backdate = $("#flight_dtEnd").val();;//返回日期(单程传空)
	var printcity = $("#hddSinglePrintCity").val();//送票城市
	var timespan = ''; //document.getElementById("ddlSingleTimeSpan");//出发时间（是个下拉框，可参数照正式环境)
	var btimespan = '';//返回时间
	var ac='';//航空公司，无传空
	var ct = ''; //舱位等级,无传空
	//var rurl = "http://testflight.7daysinn.cn:6002/Searching.aspx?";//调用地址
	//var midUrl = "flight_itour.php?rurl=";//中间跳转URL
	var midUrl = "flight_itour.php?";
	var rurl="";
	if(!fromcity){
			alert('请选择出发城市!');
			$("#txtSingleFromCity").focus();
			return false;
		}
		if(!tocity){
			alert('请选择到达城市!');
			$("#txtSingleToCity").focus();
			return false;
		}
		if(!(/^[1-9][0-9]{3,3}-[0-9]{1,2}-[0-9]{1,2}$/.test(date))){
			alert('请输入出发日期，格式：YYYY-MM-DD');
			$("#flight_dtStart").focus();	
			return false;
		}
	
	if (temp == 1) {    
		var urlparams = "a=0";//单程传0
		
		urlparams += "&f=" + escape(fromcity);
		urlparams += "&t=" + escape(tocity);
		urlparams += "&d=" + date;
		urlparams += "&b=" + backdate;
		urlparams += "&p=" + escape(printcity);
		urlparams += "&s=" + ''; //timespan.options[timespan.selectedIndex].value;
		urlparams += "&ac=" + ac;
		urlparams += "&ct=" + ct;
		//var testUrl = rurl + urlparams;		
		//var backUrl = testUrl.UrlEncode();//UrlEncode();	
		window.location.href = midUrl + urlparams+"&action=search";
	}
	else if (temp==2) {
		
		if(!(/^[1-9][0-9]{3,3}-[0-9]{1,2}-[0-9]{1,2}$/.test(backdate))){
			alert('请输入返程日期，格式：YYYY-MM-DD');
			$("#flight_dtEnd").focus();	
			return false;
		}
		CompareDate(date,backdate,'您输入的返程日期不能小于出发日期');//时间验证
		
		urlparams = "a=1";//往返传1
		
		urlparams += "&step=1";
		urlparams += "&f=" + escape(fromcity);
		urlparams += "&t=" + escape(tocity);
		urlparams += "&d=" + date;
		urlparams += "&b=" + backdate;
		urlparams += "&p=" + escape(printcity);
		urlparams += "&s=" + ''; //timespan.options[timespan.selectedIndex].value;
		urlparams += "&bs=" + ''; //btimespan.options[btimespan.selectedIndex].value;
		urlparams += "&ac=" + ac;
		urlparams += "&ct=" + ct;
		//var testUrl = rurl + urlparams;
		//var backUrl = testUrl.UrlEncode();		
		window.location.href = midUrl + urlparams+"&action=search";	
	}
}

//时间对比
function CompareDate(v1,v2,mes){  
	if(v1==""||v2==""){  
	   return 'empty';  
	}else{
		/*大小判断，转成日期变量，然后比较符判断即可...*/  
		var v1Ary = v1.split('-');  
		var v2Ary = v2.split('-');  
		var d1 = new Date(v1Ary[1] + '/' + v1Ary[2] + '/' + v1Ary[0]);  
		var d2 = new Date(v2Ary[1] + '/' + v2Ary[2] + '/' + v2Ary[0]);  
		if(d1 > d2){  
		   alert(mes);
		   return false;
		}else{  
			 return true;  
		}  
	}  
} 

//js URL编码
String.prototype.UrlEncode = function() 
{ 
var str = this; 
str = str.replace(/./g,function(sHex) 
{ 
window.EnCodeStr = ""; 
window.sHex = sHex; 
if(window.execScript){
	window.execScript('window.EnCodeStr=Hex(Asc(window.sHex))',"vbscript");
}
else{
	eval('window.EnCodeStr=Hex(Asc(window.sHex))',"vbscript");
}

return window.EnCodeStr.replace(/../g,"%$&"); 
}); 
return str; 
}

/*
*世博inn_order_confirm 支付类型选择验证js
*/
function searchPayTypeSub(id){
	if(id == 'payLaterBtn' || id == 'payLaterBtn2'){
		closeWindown();
		nextSub(1);
	}
	if(id == 'payNowBtn' || id == 'payNowBtn2'){
		//alert("222");
		nextSub(3);
	}
	if(id == 'payNowZj' || id == 'payNowBtn2zj'){
		$('#pay_methord3').attr('checked',true);
		GoSub();
	}
	if(id == 'payLaterBtn2zj' || id == 'payLaterBtnZj'){
		GoSub();
	}
}
