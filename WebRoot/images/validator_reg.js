function RegInit() {
//    //notice(document.getElementById("s_MebName"));
    notice(document.getElementById("sMobile"));
    notice(document.getElementById("sEmail"));

//    $('#safecode').focus(function () {
//        if (this.value = '请点击输入') {
//            
//        }        
////        if ($('#lbl_verify').html() == '') {
////            //$('#lbl_verify').html('<img src="./captcha.php" id="imgverify" class="verify left" onclick="refreshCaptcha(\'imgverify\');">');
////        }
//    });    
}



function ajaxGenerateSafeCode(o, type) {    
    $.ajax({
        type: "POST",
        url: "ajax/ajax_safecode.php?type=" + type,
        dataType: "json",
        success: function (json) {
            $("#lbl_verify").html(json.data + "&nbsp;<a href=\"javascript:imgchange('imgcode1');\">看不清,换一张</a>");
        }
    });
}
function ajaxCheckSafeCode(safecode) {
    var type = 2;
    var Result = $.ajax({
        type: "POST",
        async: false,
        url: "ajax/ajax_safecode.php",
        data: { 'type': type, 'at': 1, 'safecode': safecode },
        dataType: "json",
        success: function (json) {
            //$("#lbl_verify").html(json.data);
        }
    }).responseText;

    //alert(Result);
    if (Result == "FALSE") {
        ajaxGenerateSafeCode(this, type); //验证码错误，刷新
        return false;
    }
    return true;
}


function cleanLeaveMsg(th, w) {
    mmsg = "请点击输入";
    if (th.value == mmsg) {
        $("#" + th.id).attr("value", "");
        $("#" + th.id).removeClass('colorgray');
        if ($('#lbl_verify').html() == '') {
            ajaxGenerateSafeCode(th, 2);
        }        
        //th.style.marginTop = "4px";
    } else {
        $("#" + th.id).removeClass('colorgray');
    }
}
function setLeaveMsg(th, w) {
    mmsg = "请点击输入";
    value = $.trim(th.value);
    if (value == "" || value == mmsg) {
        $("#" + th.id).attr("value", mmsg);
        $("#" + th.id).addClass('colorgray');
        //$("#lbl_verify").html("");
        //th.style.marginTop = "0px";
    } else {
        $("#" + th.id).removeClass('colorgray');
    }
}



function ShowMsg(Val) {
    $('#lbl_error').html(Val);
    if (Val != "")
        $('#lbl_error').show();
    else
        $('#lbl_error').hide();    
}

function setBirDays()
{
	year = parseInt($('#bir_year').val(),10);
	month = parseInt($('#bir_month').val(),10);
	if(year == 0 || month == 0)
		return;
	var isdeep = false;
	if(((year%4 == 0)&&(year%100 != 0))||(year%400 == 0))
		isdeep = true;
	var daysarr = new Array(0,31,28,31,30,31,30,31,31,30,31,30,31);
	var days = daysarr[month];
	if(isdeep && month == 2)
		days++;
	var l = $('#bir_day>option').length-1;
	if(l == days)
		return;
	var n = (l - days);
	if(n>0){
		for(i=days+1;i<=l;i++)
		{
			$("#bir_day>option:last").remove();
		}
	}else{
		for(i=l+1;i<=days;i++)
		{
			$('<option value='+i+'>'+i+'</option>').appendTo("#bir_day");
		}
	
	}
}
//防止重复提交
function rtnValidator(obj, s) {

    ShowMsg('');

//	if(Validator.Validate(obj, s)) {
//		$("#subm").attr("disabled", true);
//		return true;
	//	}

    if (checkreg()) {
    	//$("#subm").attr("disabled", true);
    	return true;
    }

    $("#subm").val('立即注册');
	$("#subm").attr("disabled", false);
	return false;
}

function testclick() {
    
    $("#subm2").attr("disabled", true);
    $("#subm2").val('aaa');
}

//获取字符串长度
function CheckStrlen(str){  
	var len = 0;
	for (var i=0; i<str.length; i++) {
		var c = str.charCodeAt(i);
		//单字节加1
		if ((c >= 0x0001 && c <= 0x007e) || (0xff60<=c && c<=0xff9f)) {
			len++;
		}else {
			len+=2;
		}
	}
	return len;
}  

//判断全角字母
function chkHalf(str){
	var flag = 0;
	for(var i=0;i<str.length;i++){
		strCode=str.charCodeAt(i);
		if((strCode>65248)||(strCode==12288)){
			flag = 1;
		}
	}
	return flag;    
}

function checkreg() {
	var DoctType = $('#nDoctType').val();
	
	if (DoctType != 13) {
		if (!ValidatorHelper.ChineseValidator("s_MebName", "姓名只允许中文")) {
			ShowMsg('姓名只允许中文');
			return false;
		}
	}else{
		if(CheckStrlen($("#s_MebName").val()) > 100 || chkHalf($("#s_MebName").val()) == true){
			ShowMsg('外籍护照的姓名长度不能超过100个字符且不能使用全角字符。');
			return false;
		}
	}
	
	if($("#sPassWord").val() != ''){
		if($("#sPassWord").val() !=  $("#sVerifyPassWord").val()){
			ShowMsg('密码和确认密码必须一致！');
			return false;
		}
	}
	
    if (!ValidatorHelper.MobileValidator("sMobile", "请输入正确的手机号码")) {
        ShowMsg('请输入正确的手机号码');
        return false;
    }
    if (!ValidatorHelper.EmailValidator("sEmail", "请输入正确的电子邮箱")) {
        ShowMsg('请输入正确的电子邮箱');
        return false;
    }
    var o = $("#sDocNo");
    var idcard = jQuery.trim(o.val());
    if (idcard == "") {
        o.focus();
        ShowMsg('请填写证件号码');
        return false;
    }

    if (idcard.length < 6) {
        o.focus();
        ShowMsg('证件号不能小于6位');
        return false;
    }

    if (DoctType == 10) {
        CardMsg = checkCardId(idcard);
        if (CardMsg != "") {
            o.focus();
            ShowMsg(CardMsg);
            return false;
        }
    }

    o = $("#safecode");
    var safecode = jQuery.trim(o.val());
    if (safecode == '请点击输入') {
        ShowMsg('请输入验证码');
        o.focus();
        return false;
    }

    if (!ajaxCheckSafeCode(safecode)) {
        ShowMsg('验证码填写错误');
        //o.focus();
        o.select();
        return false;
    }
    if (!checkIsRead()) return false;

    $("#subm").val('数据提交中...');
    $("#subm").attr("disabled", true);	

    var Val = jQuery.trim($("#sMobile").val());
    if (!AjaxCheckVal('t=mobile&u=' + Val + '&r=' + Math.random())) {
        ShowMsg("该手机号码已被注册，请用此号码<a href='login.php' style='color:#ff0000;text-decoration:underline;'>登录</a>，如忘记密码请<a href='forgetpwd.php' style='color:#ff0000;text-decoration:underline;'>重置密码</a>");
        return false;
    }

    Val = jQuery.trim($("#sEmail").val());
    if (!AjaxCheckVal('t=email&u=' + Val + '&r=' + Math.random())) {
        ShowMsg("该电子邮箱已被注册，<span style='text-decoration:underline;cursor: pointer;' id='cMail'><a onclick='changeMail()'>验证邮箱</a></span>可重新注册</span>");
        return false;
    }

    Val = jQuery.trim($("#sDocNo").val());
    if (!AjaxCheckVal('t=papers&u=' + idcard + '&sType=' + DoctType + '&r=' + Math.random())) {
        ShowMsg("该证件已被注册，请用此证件号码<a href='login.php' style='text-decoration:underline;color:red;'>登录</a>！如有疑问，请致电客服4008740087处理");
        return false;
    }


    return true;
}

function DoctTypeChange() {
    var Style="none";
    if (this.value == 10)
        Style = "none";
    else
        Style="";        

    document.getElementById("trBir").style.display = Style;
    document.getElementById("trSex").style.display = Style;
}

function AjaxCheckVal(Data) {
    var Result=$.ajax({
        type: 'POST',
        async: false,
        url: './ajax/reg_check.php',
        data: Data,
        success: function (msg) {}
    }).responseText;

    if (Result != 1) {
        if ($("#is_coo_label").val() != "1") { //合作卡不提示重复
            return false;
        }
    }
    return true;
}

function allowbirth()
{	
	var docType = document.getElementById("nDoctType");
	var biryear = document.getElementById("bir_year");
	var birmonth = document.getElementById("bir_month");
	var birday = document.getElementById("bir_day");
	 if(docType.options[docType.selectedIndex].value == "10")
	 {
	 	biryear.disabled = true;
	 	birmonth.disabled = true;
	 	birday.disabled = true;
	 }
	 else
	 {
	 	biryear.disabled = false;
	 	birmonth.disabled = false;
	 	birday.disabled = false;
	 }
}

function checkIsRead()
{
	if($("#bir_year").val() == '' || $("#bir_month").val() == '' || $("#bir_day").val() == '') {
	    //$("#bir_label").html("● 出生日期必填");
	    ShowMsg('出生日期必填');
	    return false;
	} else {
    //$("#bir_label").html("");
        ShowMsg("");
	}
    var isread = document.getElementById("isread");
	var subm = document.getElementById("subm");	
	if(!isread.checked)
	{
	    //alert('阅读并同意7天连锁酒店服务条款后您才可以进行下面操作！');
	    ShowMsg("阅读并同意7天连锁酒店服务条款后您才可以进行下面操作！");
		return false;
    }
    return true;
}

function imgchange(imgid)
      {
          var img =document.getElementById(imgid);
          img.src=img.src+'?';
      }

function confirmTerm(s) {
	parent.closeWindown();
	if(s == 1) {
		parent.document.getElementById("isread").checked = true;
	}
}


function popTips(){
	showTipsWindown("7天连锁酒店服务条款", 'simTestContent', 600, 400);
	$("#isread").attr("checked", false);
}

function setBir()  {
	if($('#nDoctType').val() == 10){
		var idcard = $("#sDocNo").val();
		//checkCardId(idcard);
		var year,month,day,sex;
		if(idcard.length == 15)   { 
			year = idcard.charAt(6)+idcard.charAt(7);
			if(parseInt(year)<10)    {     
				year = '20'+ year;    
			}else{
				year = '19'+ year;    
			}
			month = idcard.charAt(8) + idcard.charAt(9);
			day   = idcard.charAt(10)+ idcard.charAt(11);
			if (parseInt(idcard.charAt(14) / 2) * 2 != idcard.charAt(14)) {
				sex = 1;
			}
			else {
				sex = 0;
			}
		}
		if(idcard.length == 18){
			year  = idcard.charAt(6) + idcard.charAt(7) + idcard.charAt(8) + idcard.charAt(9);
			month = idcard.charAt(10)+ idcard.charAt(11);
			day   = idcard.charAt(12)+ idcard.charAt(13);
			if(parseInt(idcard.charAt(16)/2)*2 != idcard.charAt(16)){
				sex = 1;
			}else{
				sex = 0;
			} 
		}
		if(month < 10){
			month = month.substr(1,1);
		}
		if(day < 10){
			day = day.substr(1,1);
		}
		$("#bir_year").val(year);
		$("#bir_month").val(month);
		$("#bir_day").val(day); 
		if(sex == 1) {
			$(":radio[name='sSex'][value='男']").attr("checked", true);
		} else {
			$(":radio[name='sSex'][value='女']").attr("checked", true);
		}
	}
}

function checkCardId(socialNo) {
    var msg1 = "请输入正确的身份证号码!";
    if (socialNo == "") {
        //alert("输入身份证号码不能为空!");
        return "输入身份证号码不能为空!";
    }
    
    if (socialNo.length != 15 && socialNo.length != 18) {
        //alert("输入身份证号码格式不正确!");
        return msg1;
    }
    
    var area = {
        11: "北京",
        12: "天津",
        13: "河北",
        14: "山西",
        15: "内蒙古",
        21: "辽宁",
        22: "吉林",
        23: "黑龙江",
        31: "上海",
        32: "江苏",
        33: "浙江",
        34: "安徽",
        35: "福建",
        36: "江西",
        37: "山东",
        41: "河南",
        42: "湖北",
        43: "湖南",
        44: "广东",
        45: "广西",
        46: "海南",
        50: "重庆",
        51: "四川",
        52: "贵州",
        53: "云南",
        54: "西藏",
        61: "陕西",
        62: "甘肃",
        63: "青海",
        64: "宁夏",
        65: "新疆",
        71: "台湾",
        81: "香港",
        82: "澳门",
        91: "国外"
    };
    
    if (area[parseInt(socialNo.substr(0, 2))] == null) {
        //alert("身份证号码不正确(地区非法)!");
        return "身份证号码不正确(地区非法)!";
    }
    
    if (socialNo.length == 15) {
        pattern = /^\d{15}$/;
        if (pattern.exec(socialNo) == null) {
            //alert("15位身份证号码必须为数字！");
            return "15位身份证号码必须为数字！";
        }
        var birth = parseInt("19" + socialNo.substr(6, 2));
        var month = socialNo.substr(8, 2);
        var day = parseInt(socialNo.substr(10, 2));
        switch (month) {
            case '01':
            case '03':
            case '05':
            case '07':
            case '08':
            case '10':
            case '12':
                if (day > 31) {
                    //alert('输入身份证号码不格式正确!');
                    return msg1;
                }
                break;
            case '04':
            case '06':
            case '09':
            case '11':
                if (day > 30) {
                    //alert('输入身份证号码不格式正确!');
                    return msg1;
                }
                break;
            case '02':
                if ((birth % 4 == 0 && birth % 100 != 0) || birth % 400 == 0) {
                    if (day > 29) {
                        //alert('输入身份证号码不格式正确!');
                        return msg1;
                    }
                }
                else {
                    if (day > 28) {
                        //alert('输入身份证号码不格式正确!');
                        return msg1;
                    }
                }
                break;
            default:
                //alert('输入身份证号码不格式正确!');
                return msg1;
        }
        var nowYear = new Date().getYear();
        if (nowYear - parseInt(birth) < 15 || nowYear - parseInt(birth) > 100) {
            //alert('输入身份证号码不格式正确!');
            return msg1;
        }
        return (true);
    }
    
    var Wi = new Array(7, 9, 10, 5, 8, 4, 2, 1, 6, 3, 7, 9, 10, 5, 8, 4, 2, 1);
    var lSum = 0;
    var nNum = 0;
    var nCheckSum = 0;
    
    for (i = 0; i < 17; ++i) {
    
    
        if (socialNo.charAt(i) < '0' || socialNo.charAt(i) > '9') {
            //alert("输入身份证号码格式不正确!");
            return msg1;
        }
        else {
            nNum = socialNo.charAt(i) - '0';
        }
        lSum += nNum * Wi[i];
    }
    
    
    if (socialNo.charAt(17) == 'X' || socialNo.charAt(17) == 'x') {
        lSum += 10 * Wi[17];
    }
    else 
        if (socialNo.charAt(17) < '0' || socialNo.charAt(17) > '9') {
            //alert("输入身份证号码格式不正确!");
            return msg1;
        }
        else {
            lSum += (socialNo.charAt(17) - '0') * Wi[17];
        }    
    
    
    if ((lSum % 11) == 1) {
        //return true;
        return "";
    }
    else {
        return msg1;
    }

    return "";
}