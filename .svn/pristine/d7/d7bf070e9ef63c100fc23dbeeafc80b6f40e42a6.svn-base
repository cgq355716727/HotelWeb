function select_this_2(id){
    $("#selul2 >li").each(function(){
        $(this).removeClass('here');
    });
    $("#selul2 >li").eq(id).addClass('here');
    $(".div_h2").each(function(){
        $(this).hide();
    });
    $("#tab2_" + id).show();
}

function select_this(id){
    $("#selul >li").each(function(){
        $(this).removeClass('here');
    });
    $("#selul >li").eq(id).addClass('here');
    $(".div_h").each(function(){
        $(this).hide();
    });
    $("#tab_" + id).show();
}

function showDetail(idx){
    //	$("#"+tri).hide();
    //$.blockUI.defaults.css.cursor = "hand";
    //$.blockUI({ message: $("#innerbox") });
    //	$("#innerbox").show();
    $("#i_room_name").html(roomObjectItems[idx]['room_name']);
    $("#i_default_price").html(roomObjectItems[idx]['default_price']);
    $("#i_room_price").html(roomObjectItems[idx]['room_price']);
    $("#i_breakfast").html(roomObjectItems[idx]['breakfast']);
    $("#h_hotel_id").val(hotel_id);
    $("#h_room_id").val(roomObjectItems[idx]['room_id']);
    $("#h_hotel_name").html(hotel_name);
    return;
}

function checkFrom(obj){
    //	alert(jQuery("#starttime").val());
    
    var starttime = $("#starttime").val();
    if (starttime == 'yyyy-mm-dd') {
        $("#starttime").focus();
        $("#starttime").val('');
        return false;
    }
    
    var endtime = $("#endtime").val();
    if (endtime == 'yyyy-mm-dd') {
        $("#endtime").focus();
        $("#endtime").val('');
        return false;
    }
    return true;
}

var dt_start;
var dt_end;
function getInfo(){
    var str;
    if ($("#starttime").length > 0 && $("#endtime").length > 0) {
        dt_start = $("#starttime").val();
        dt_end = $("#endtime").val();
        if (compareDate(dt_start, dt_end) == false) {
            alert('入住日期不能大于等于离店日期,请返回重新选择！');
            return;
        }
        $("#innp").block({
            message: " <img src='indicator.gif'><div class='showMsg'>正在读取房态，请稍等...</div> "
        });
        $.ajax({
            type: "GET",
            url: "json_innpage.php",
            data: str = 'id=' + hotel_id + '&dtStart=' + dt_start + '&dtEnd=' + dt_end,
            dataType: "json",
            success: function(json){
                if (json.code == 1) {
					if(json.gjh2013discount != null){
						if($("#gjh2013iscount").length > 0){
							$("#gjh2013iscount").html('<a href="activity.php?action=88discount" target="_blank"><font color="#ff4200"><b>广交会提前预付88折</b></font></a>');
						}
					}else{
						if($("#gjh2013iscount").length > 0){
							$("#gjh2013iscount").html(' ');
						}
					}
					if(json.data == null){
						$("#innp").unblock();
						$("#innp").html(' ');
						alert('抱歉：在查询的日期范围内，该店暂无房态。');
						return false;
					}
                    var jd = json.data;
                    var il = jd.length;

                    var ht = '<table width="600" cellpadding="0" cellspacing="1" bgcolor="#CFE7FE" align="center" ><tr height="24"><td width="125" bgcolor="#F7FBFF" class="fontb" align="center"><strong>房型</strong></td><td width="65" bgcolor="#F7FBFF" class="fontb" align="center"><strong>门市价</strong></td><td width="65" bgcolor="#F7FBFF" class="fontb" align="center"><strong>';
					ht += '会员价';
					ht += '</strong></td><td width="65" bgcolor="#F7FBFF" class="fontb" align="center"><strong>';
					ht += '会员促销';
					ht += '</strong></td><td bgcolor="#F7FBFF" class="fontb" align="center"><strong>预订</strong></td><td width="135" bgcolor="#F7FBFF" class="fontb" align="center"><strong>';
					if (rMebType == cMebType) {
						ht += '备注';
					}
					else {
						ht += '积分兑换';
					}
					ht += '</strong></td></tr>';
					isPayPriorityAlign="center";
                    for (var i = 0; i < il; i++) {
						if(jd[i]['isPayPriority']==1){
							isPayPriorityAlign="left";
						}
                    }					
                    for (var i = 0; i < il; i++) {
                        ht += makeHtml(jd[i],isPayPriorityAlign);
                    }
                    ht += '</table>';
                    $("#innp").unblock();
                    $("#innp").html('<table>' + ht + '</table>');
                    $("#dtStart").val(dt_start);
                    $("#dtEnd").val(dt_end);
                }
                else {
                    $("#innp").unblock();
                    alert('数据读取错误！' + json.msg);
                }
            }
        });
    }
}

function makeHtml(data,isPayPriorityAlign){
    var html = '<tr height="24">';
	if(data['RoomTypeID'] == 223){
		html += '<td bgcolor="#FFFFFF" align="center"><span id="#a'+data['ChainNum']+'_'+data['RoomTypeID']+'" title="房间具有比较小等不足，更经济实惠。">'+data['RoomTypeName']+'</span></td>';
	}else if(data['RoomTypeID'] == 220 || data['RoomTypeID'] == 221){
		html += '<td bgcolor="#FFFFFF" align="center"><span id="#a'+data['ChainNum']+'_'+data['RoomTypeID']+'" title="房价中不含生活用品，请自带或预订时自选，经济又环保。">'+data['RoomTypeName']+'</span></td>';
	}else if(data['RoomTypeID'] == 228 || data['RoomTypeID'] == 229){
		html += '<td bgcolor="#FFFFFF" align="center"><span id="#a'+data['ChainNum']+'_'+data['RoomTypeID']+'" title="已为您配好生活用品包，房价中已包含，简单快捷。">'+data['RoomTypeName']+'</span></td>';
	}else if(data['RoomTypeID'] == 194){
		html += '<td bgcolor="#FFFFFF" align="center"><span id="#a'+data['ChainNum']+'_'+data['RoomTypeID']+'" title="是店内最好的房间，有全新的装修，房间配置齐全，配洗漱用品及电吹风。">'+data['RoomTypeName']+'</span>';
		html += '<img src="new1.gif" style="margin-left:3px; vertical-align:middle;"  title="是店内最好的房间，有全新的装修，房间配置齐全，配洗漱用品及电吹风。" />';
		html += '</td>';
	}else if(data['RoomTypeID'] == 230 || data['RoomTypeID'] == 231){
		html += '<td bgcolor="#FFFFFF" align="center"><span id="#a'+data['ChainNum']+'_'+data['RoomTypeID']+'">'+data['RoomTypeName']+'</span>';
		if(rMebType != cMebType){
			html += '<img src="rcg.gif" style="margin-left:3px;"  title="预订商务房型，可获得实付房费10%的现金返还，还免费提供生活用品包、营养早餐、瓶装水，2人入住可领取2份。房型更好！" />';
		}
		html += '</td>';
	}else{
		html += '<td bgcolor="#FFFFFF" align="center">'+data['RoomTypeName']+'</td>';
	}
    
    if (data['RoomTypeID'] != 220 && data['RoomTypeID'] != 221 && data['RoomTypeID'] !=22) 
        html += '<td bgcolor="#FFFFFF"  align="center">' + data['NorRoomRate'] +'</td>';
    else 
        html += '<td bgcolor="#FFFFFF"  align="center">--</td>';
    var price=data['MebRoomRate'];
    var showprice=data['ShowMebRoomRate'];
    if(showprice != price){
    	html += '<td bgcolor="#FFFFFF" align="center" style="color:#999999;text-decoration:line-through;">' + showprice + '</td>';
        html += '<td bgcolor="#FFFFFF" align="center" style="color:red;">';
		if (rMebType == cMebType) {
			if (data['RoomTypeID'] == 230 || data['RoomTypeID'] == 231) {
				html += price;
			}
			else {
				html += '&nbsp;';
			}
		}
		else {
			html += price;
		}
		html += '</td>';
    }else{
    	html += '<td bgcolor="#FFFFFF" align="center">' + price + '</td>';
        html += '<td bgcolor="#FFFFFF" align="center">--</td>';
    }
    
    if ((data['hotelType'] == 1 && data['IsOpen'] == 1) || (data['hotelType'] == 4 && data['IsOpen'] == 0)) {
        if (data['PracticeDateStatus'] == 1) {
            if (data['unbooking'] == true) {
				html += '<td bgcolor="#FFFFFF"  align="center"><input name="Submit" type="submit" class="btn_inp3" value="已 满" /></td>';
			}
			else {
				if (data['AllowBKing'] == 1 && data['IsOpen'] == 0) {
					html += '<td bgcolor="#FFFFFF"  align="center"><input name="Submit23" type="submit" onClick="gotourl(' + hotel_id + ',' + data['RoomTypeID'] + ',\'\',\'\',\'' + data["dtOpenDate"] + '\')" class="btn_inp1" value="预 订" /></td>';
				}
				else {
					if (rMebType == cMebType) {
						if (data['RoomTypeID'] == 230 || data['RoomTypeID'] == 231) {
							html += '<td bgcolor="#FFFFFF"  align="' + isPayPriorityAlign + '" style="padding-left:10px; padding-right:10px;"><input name="Submit23" type="submit" onClick="gotourl(' + hotel_id + ',' + data['RoomTypeID'] + ')" class="btn_inp1" value="预 订" />';
						}else{
							html += '<td bgcolor="#FFFFFF"  align="' + isPayPriorityAlign + '" style="padding-left:10px; padding-right:10px;"><input name="Submit" type="submit" class="btn_inp3" value="预订" title="不可预订" />';
						}
					}
					else {
						//html += '<td bgcolor="#FFFFFF"  align="' + isPayPriorityAlign + '" style="padding-left:10px; padding-right:10px;">&nbsp;';
						html += '<td bgcolor="#FFFFFF"  align="' + isPayPriorityAlign + '" style="padding-left:10px; padding-right:10px;"><input name="Submit23" type="submit" onClick="gotourl(' + hotel_id + ',' + data['RoomTypeID'] + ')" class="btn_inp1" value="预 订" />';
					}
					if (data['isPayPriority'] == 1) {
						html += '<img src="paypriority.gif" title="该房型房间紧张，预付可立即有房(整晚保留)并可得2倍积分，未预付不能立即有房，需排队等候。"  style="vertical-align:middle;">';
					}
					html += '</td>';
				}
			}
			if(data['days'] == 1){
				if (rMebType != cMebType) {
					html += '<td bgcolor="#FFFFFF"  align="center">' + data['buttons'] + '</td>';
				}else{
					if (data['RoomTypeID'] == 230 || data['RoomTypeID'] == 231) {
						html += '<td bgcolor="#FFFFFF"  align="center">公司尊享价</td>';
					}else{
						html += '<td bgcolor="#FFFFFF"  align="center">&nbsp;</td>';
					}
				}
			}else{
				if (rMebType == cMebType) {
					if (data['RoomTypeID'] == 230 || data['RoomTypeID'] == 231) {
						html += '<td bgcolor="#FFFFFF"  align="center">公司尊享价</td>';
					}
					else {
						html += '<td bgcolor="#FFFFFF"  align="center">&nbsp;</td>';
					}
				}
				else {
					html += '<td bgcolor="#FFFFFF"  align="center">&nbsp;</td>';
				}
			}
        }
        else {
            html += '<td bgcolor="#FFFFFF"  align="center">&nbsp;</td><td bgcolor="#FFFFFF"  align="center">&nbsp;</td>';
        }
    }
    else {
        html += '<td bgcolor="#FFFFFF"  align="center">&nbsp;</td><td bgcolor="#FFFFFF"  align="center">&nbsp;</td>';
    }
    
    html += '</tr>';
    return html;
}

function beforeGotoUrl(){
    var hotel_id = arguments[0];
    var room_id = arguments[1];
    var exchange_type = arguments[2];
    var bk_type = arguments[3];
    var city = arguments[4];
    var is2010GuangzhouTradeFairAutumn = arguments[5];
    var PayAlertMsg = arguments[6];
    var setParamStr = hotel_id + "|" + room_id;
    if (exchange_type != "") 
        setParamStr += "|" + exchange_type;
    if (bk_type != "") 
        setParamStr += "|" + bk_type;
    $('#InnIdRoomTypeIdClk').val(setParamStr);
    if (city != '上海') 
        $('#shExpo').hide();
    //	if($('#is2010GuangzhouTradeFairAutumn').val()==1  || is2010GuangzhouTradeFairAutumn==1)
    //		$('#paymentTipsBoxText').html('由于广交会（10月14日-10月18日，10月22日-10月26日，10月30日-11月3日）房源紧张，请先支付，如预订时没有支付成功，订单将会自动取消。');
    
    //	if($('#is2010GuangzhouTradeFairAutumn').val()==2  || is2010GuangzhouTradeFairAutumn==2)
    //		$('#paymentTipsBoxText').html('由于济南糖酒会（10月4日-10月10日）房源紧张，请先支付，如预订时没有支付成功，订单将会自动取消。');
    
    if ($('#is2010GuangzhouTradeFairAutumn').val() == 3) {
        $('#paymentTipsBoxText').html($('#payRequireMessageContent').val());//分店列表页
    }
    if (is2010GuangzhouTradeFairAutumn == 3) {//分店信息页
        $('#paymentTipsBoxText').html(PayAlertMsg);
    }
    
    showTipsWindown('重要提示', 'msgPrePayBoxId', 620, 200);
    return false;
}

function trialOpeningHotelTips(){
    var hotel_id = arguments[0];
    var room_id = arguments[1];
    var exchange_type = arguments[2];
    var bk_type = arguments[3];
    var city = arguments[4];
    var dtOpenDate = arguments[5];
    $("#dtOpenDataInsert").html(dtOpenDate);
    ;
    var setParamStr = hotel_id + "|" + room_id;
    if (exchange_type != "") 
        setParamStr += "|" + exchange_type;
    if (bk_type != "") 
        setParamStr += "|" + bk_type;
    $('#InnIdRoomTypeIdClk').val(setParamStr);
    showTipsWindown('重要提示', 'trialOpeningHotelInfos', 620, 200);
    return false;
}

function gotourl(){
    var hotel_id = arguments[0];
    var room_id = arguments[1];
    var exchange_type = arguments[2];
    var bk_type = arguments[3];
    var dtOpenDate = arguments[4];
    var dt_start;
    var dt_end;
    dt_start = $("#dtStart").val();
    if (dt_start == undefined) {
        dt_start = $("#starttime").val();
    }
    dt_end = $("#dtEnd").val();
    if (dt_end == undefined) {
        dt_end = $("#endtime").val();
    }
    if (compareDate(dt_start, dt_end) == false) {
        alert('入住日期不能大于等于离店日期,请返回重新选择！');
        return;
    }
    
    var hintContent = "";
    
    var boolHint = false;
    var existIndex = -1;
    var hint_InnArr = new Array();
    var hint_InnText = new Array();
    for (i = 0; i < hint_InnArr.length; i++) {
        if (hint_InnArr[i].indexOf("|" + arguments[0].toString() + "|") >= 0) {
            boolHint = true;
            existIndex = i;
        }
    }
    if (existIndex != -1) {
        hintContent += hint_InnText[existIndex];
    }
    if (boolHint) {
        if (!confirm(hintContent + "\t\r\t\r继续请点击确认按钮 返回请点击取消 ")) 
            return false;
    }
    
    var gourl = 'inn_order.php?';
    var str;
    str = "hotel_id=" + hotel_id + "&room_id=" + room_id;
    if (dt_start != undefined && dt_end != undefined) 
        str = str + '&dtStart=' + dt_start + '&dtEnd=' + dt_end;
    if (dtOpenDate != undefined) {
        str = str + '&dtOpenDate=' + dtOpenDate;
    }
    else {
        if (exchange_type != undefined && bk_type != 'Mart99' && bk_type != 'Mart88' && bk_type != 'Mart77' && bk_type != 'Mart99Festival' && bk_type != 'MartHotelBooking99') {
            gourl = 'inn_order_exchange.php?';
            str += "&exchange_type=" + exchange_type;
            if (bk_type != undefined) 
                str += "&BkType=" + bk_type;
        }
        else 
            if (bk_type == 'Mart99' || bk_type == 'Mart88' || bk_type == 'Mart77' || bk_type == 'Mart99Festival' || bk_type == 'MartHotelBooking99') {
                if (bk_type != undefined) 
                    str += "&BkType=" + bk_type;
            }
    }
    //	alert(gourl+str);
    location.href = gourl + str;
}

function gotourlExchange(){
    var hotel_id = arguments[0];
    var room_id = arguments[1];
    var exchange_type = arguments[2];
    var bk_type = arguments[3];
    var dt_start;
    var dt_end;
    dt_start = $("#dtStart2000").val();
    if (dt_start == undefined) {
        dt_start = $("#starttime").val();
    }
    dt_end = $("#dtEnd2000").val();
    if (dt_end == undefined) {
        dt_end = $("#endtime").val();
    }
    if (compareDate(dt_start, dt_end) == false) {
        alert('入住日期不能大于等于离店日期,请返回重新选择！');
        return;
    }
    
    var hintContent = "";
    
    var boolHint = false;
    var existIndex = -1;
    var hint_InnArr = new Array();
    var hint_InnText = new Array();
    for (i = 0; i < hint_InnArr.length; i++) {
        if (hint_InnArr[i].indexOf("|" + arguments[0].toString() + "|") >= 0) {
            boolHint = true;
            existIndex = i;
        }
    }
    if (existIndex != -1) {
        hintContent += hint_InnText[existIndex];
    }
    if (boolHint) {
        if (!confirm(hintContent + "\t\r\t\r继续请点击确认按钮 返回请点击取消 ")) 
            return false;
    }
    
    var gourl = 'inn_order.php?';
    var str;
    str = "hotel_id=" + hotel_id + "&room_id=" + room_id;
    if (dt_start != undefined && dt_end != undefined) 
        str = str + '&dtStart=' + dt_start + '&dtEnd=' + dt_end;
    ;
    if (exchange_type != undefined && bk_type != 'Mart99' && bk_type != 'Mart88' && bk_type != 'Mart99Festival' && bk_type != 'MartHotelBooking99') {
        gourl = 'inn_order_exchange.php?';
        str += "&exchange_type=" + exchange_type;
        if (bk_type != undefined) 
            str += "&BkType=" + bk_type;
    }
    else 
        if (bk_type == 'Mart99' || bk_type == 'Mart88' || bk_type == 'Mart99Festival' || bk_type == 'MartHotelBooking99') {
            if (bk_type != undefined) 
                str += "&BkType=" + bk_type;
        }
    //	alert(gourl+str);
    location.href = gourl + str;
}

function showBtn(){
    $("#dtd").show();
}

function unb(idx, k1, k2, k3){
    if (idx != 1) {
        alert('积分兑换房间每次只能兑换一天，请分次兑换，谢谢！');
        return;
    }
    else 
        gotourl(k1, k2, k3);
}

function calpeople(){
    var n = 0;
    for (a = 1; a <= 2; a++) {
        if ($('#name' + a).val() != '') {
            n++;
        }
    }
    return n;
}

//积分兑换
function exchange(p1){
	if(p1 == 79 || p1 == 81 || p1 == 82 ) {//免费房
		if($("input[name=pay_methord]:checked").val() == undefined) {
			alert('请选择支付方式');
			return false;
		}
	}
    var int_time = 0;
    var int_gp = 0;
    var i_order_id;
	var mkey = $("#uniqi").val();
    
    var name1 = $("#name1").val();
    if (!name1) {
        alert('请检查入住人姓名是否输入正确。');
        $("#name1").focus();
        return;
    }
    
    var name2 = $("#name2").val();
    var contact_name = $("#contact_name").val();
    if (!contact_name) {
        alert('请检查联系人是否输入正确。');
        $("#contact_name").focus();
        return;
    }
    
    var mobile = $("#mobile").val();
    var t = /^(13\d{9})|(15\d{9})|(18\d{9})|(14\d{9})|(0\d{10,11})$/;
    if (!t.test(mobile)) {
        alert('请检查联系手机是否输入正确。');
        $("#mobile").focus();
        return false;
    }
    
    var sp3 = $("#happypackage").val();
	//重新生成happypackage
	var sp3Back = '';
	var sp3Array = sp3.slice(0,-1).split("|");
	for(var i=0; i<sp3Array.length; i++) {
		var sp3ConcreteArray = sp3Array[i].split("@");
		if(sp3ConcreteArray[0] == 1) {//拖鞋
			sp3ConcreteArray[1] = $("#bookdays").val()*$("input[name='my_friend_name[]'][value!='']").length;
		}
		sp3Back += sp3ConcreteArray.join("@")+'|';
	}
	sp3 = sp3Back;
    var sp3_id = $("#userdefine").val();
    
    var str, payment;
    if (int_gp > 0) 
        return;
    
    var people = calpeople();
    if (people > 2) {
        people = 2;
    }
    
    var gotourl = p1 == 77 ? 'pay.php' : 'pay_ex.php';
    str = 'payment_type=' + p1 + '&mkey=' + mkey;
    var breakfast_num = -1;
    if ($("#breakfastChoice1").attr("checked")) 
        breakfast_num = -1;
    else 
        if ($("#breakfastChoice2").attr("checked")) 
            breakfast_num = $('#breakfastChoice2').val();
        else 
            if ($("#breakfastChoice3").attr("checked")) 
                breakfast_num = $("#breakfastnum").val();
    var sendmobile = $("#sendmobile").attr("checked") ? "1" : "";
    str += '&contact_name=' + contact_name + '&mobile=' + mobile + '&name1=' + name1 + '&breakfast_num=' + breakfast_num + '&people=' + people + '&sendmobile=' + sendmobile;
    
    if (sp3) 
        str += '&sp3=' + sp3;
    if (name2) 
        str += '&name2=' + name2;
    if (p1 == 77) {
        //todo 判断联系人信息是否改动。如果没改动。直接进入下一步。不需要进入inn_order_77.php	
        gotourl = "inn_order_77.php";
        
    }
    if(p1 == 79 || p1 == 81 || p1 == 82) {
    	gotourl = "pay_fabao.php";
    }
    
    var userSpecial = $("#userSpecial").val();
    if (p1 != 77) {
        $.blockUI({
            message: "<div class='showMsg'>正在生成订单，请稍候...</div> "
        });
    }
    $.ajax({
        type: "GET",
        url: gotourl,
        data: encodeURI(str),
        dataType: "json",
        success: function(json){
            if (json.code == 1) {
                var arr_j = json.data;
                var pay_methord = $("input[name='pay_methord']:checked").val();
                if (p1 == 77) {
                    if (pay_methord == 3) {
                        location.href = "inn_order_pay.php?mkey=" + mkey + "&payment_type=77&hotel_id=" + arr_j.hotel_id + "&room_id=" + arr_j.room_id;
                        return;
                    }
                    else {
						var total_amount = arr_j.total_amount;
						var payed = 0;
						if($("#GiftCash").length > 0 ){
							payed += parseFloat($("#GiftCash").val());
						}
						if($("#Cash").length > 0){
							payed += parseFloat($("#Cash").val());
						}
						payed += parseFloat($("#vpos_money").val());
						if(payed < total_amount){
							//alert('提示：您支付的金额是：'+payed+'元，而需要支付的金额：'+total_amount+'元。\r\n请点击“确定”按钮，程序将重新计算价格！');
							callshowPayInfo(mkey);
							return;
						}
						
                        $("#form1").attr('action', 'pay.php?mkey=' + mkey);
                        $("#payment3").val(1);
                        $("#payment_type3").val('112');
                        $("#form1").submit();
                    }
                }
                else {
                    location.href = "inn_order_finish.php?bid=" + arr_j.bid + "&pid=" + arr_j.pid;
                }
            }
            else {
                $.blockUI({
                    message: "<img src='error.gif'><div class='showMsg'>" + json.msg + "</div>"
                });
                setTimeout($.unblockUI, 2000);
            }
        }
    });
}


function gotourl_rewrite(){
	    var hotel_id = arguments[0];
	    var room_id = arguments[1];
	    var exchange_type = arguments[2];
	    var bk_type = arguments[3];
	    var dtOpenDate = arguments[4];
	    var dt_start;
	    var dt_end;
	    dt_start = $("#dtStart").val();
	    if (dt_start == undefined) {
	        dt_start = $("#starttime").val();
	    }
	    dt_end = $("#dtEnd").val();
	    if (dt_end == undefined) {
	        dt_end = $("#endtime").val();
	    }
	    if (compareDate(dt_start, dt_end) == false) {
	        alert('入住日期不能大于等于离店日期,请返回重新选择！');
	        return;
	    }
	    
	    var hintContent = "";
	    
	    var boolHint = false;
	    var existIndex = -1;
	    var hint_InnArr = new Array();
	    var hint_InnText = new Array();
	    for (i = 0; i < hint_InnArr.length; i++) {
	        if (hint_InnArr[i].indexOf("|" + arguments[0].toString() + "|") >= 0) {
	            boolHint = true;
	            existIndex = i;
	        }
	    }
	    if (existIndex != -1) {
	        hintContent += hint_InnText[existIndex];
	    }
	    if (boolHint) {
	        if (!confirm(hintContent + "\t\r\t\r继续请点击确认按钮 返回请点击取消 ")) 
	            return false;
	    }
	    
		if(typeof hasLogin == 'undefined' || hasLogin == 0){
			var tempUrl = 'inn_login.php?hotel_id='+hotel_id+'&room_id='+room_id+'&exchange_type='+exchange_type+'&bk_type='+bk_type+'&dtOpenDate='+dtOpenDate;
			tipsWindown("快速登录&nbsp;/&nbsp;注册","url:get?"+tempUrl,"440","350","true","","true",'');
		}else{	    
			
		    var gourl = 'inn_order.php?';
		    if(exchange_type != undefined && (exchange_type == 2000 || exchange_type == 5000 || exchange_type == 7000)){
		    	gourl = 'inn_order_exchange.php?';
		    }
		    var str;
		    str = "hotel_id=" + hotel_id + "&room_id=" + room_id;
		    if (dt_start != undefined && dt_end != undefined) 
		        str = str + '&dtStart=' + dt_start + '&dtEnd=' + dt_end;
		    if (dtOpenDate != undefined) {
		        str = str + '&dtOpenDate=' + dtOpenDate;
		    }
		    if (bk_type == 'Mart99' || bk_type == 'Mart88' || bk_type == 'Mart77') {
		    	str += "&BkType=" + bk_type;
		    }
		    if(exchange_type != undefined && (exchange_type == 2000 || exchange_type == 5000 || exchange_type == 7000)){
		    	str = str + '&exchange_type='+exchange_type;
		    }
		    location.href = gourl + str;
	    
		}
}

function getRoomStatusByInn(){
	if($("#starttime").length > 0 && $("#endtime").length > 0) {
		dt_start = $("#starttime").val();
		dt_end = $("#endtime").val();
        if (compareDate(dt_start, dt_end) == false) {
            alert('入住日期不能大于等于离店日期,请返回重新选择！');
            return;
        }
        $("#innp").block({
            message: " <img src='indicator.gif'><div class='showMsg'>正在读取房态，请稍等...</div> "
        });
        $.ajax({
            type: "GET",
            url: "json_innpage.php",
            data: str = 'id=' + hotel_id + '&dtStart=' + dt_start + '&dtEnd=' + dt_end,
            dataType: "json",
            success: function(json){
                if (json.code == 1) {
					if(json.data == null){
						$("#innp").unblock();
						$("#innp").html(' ');
						alert('抱歉：在查询的日期范围内，该店暂无房态。');
						return false;
					}
                    var jd = json.data;
					jd = jd.lstRoomStatusItem.CurrentRoomStatusItem;
					if(jd == null){
						$("#innp").unblock();
						$("#innp").html(' ');
						alert('抱歉：在查询的日期范围内，该店暂无房态。');
						return false;
					}
                    var il = jd.length;

                    var ht = '<table width="600" cellpadding="0" cellspacing="1" bgcolor="#CFE7FE" align="center" ><tr height="24"><td width="125" bgcolor="#F7FBFF" class="fontb" align="center"><strong>房型</strong></td><td width="65" bgcolor="#F7FBFF" class="fontb" align="center"><strong>门市价</strong></td><td width="65" bgcolor="#F7FBFF" class="fontb" align="center"><strong>';
					ht += '会员价';
					ht += '</strong></td><td width="65" bgcolor="#F7FBFF" class="fontb" align="center"><strong>';
					ht += '会员促销';
					ht += '</strong></td><td bgcolor="#F7FBFF" class="fontb" align="center"><strong>预订</strong></td><td width="135" bgcolor="#F7FBFF" class="fontb" align="center"><strong>';
					if (rMebType == cMebType) {
						ht += '备注';
					}
					else {
						ht += '积分兑换';
					}
					ht += '</strong></td></tr>';
					var roomTypeHit = '';
                    for (var i = 0; i < il; i++) {
						if(jd[i].nRoomTypeID == 220 || jd[i].nRoomTypeID == 221){
							roomTypeHit = '<span title="房价中不含生活用品，请自带或预订时自选，经济又环保。"></span>';
						}
						else if(jd[i].nRoomTypeID == 223){
							roomTypeHit = '<span title="房间具有比较小等不足，更经济实惠。"></span>';
						}
						else if(jd[i].nRoomTypeID == 228 || jd[i].nRoomTypeID == 229){
							roomTypeHit = '<span title="已为您配好生活用品包，房价中已包含，简单快捷。"></span>';
						}
						else if(jd[i].nRoomTypeID == 194 || jd[i].nRoomTypeID == 196){
							roomTypeHit = '<img src="http://img1.7daysinn.cn//images/gjf_tips.gif" style="margin-left:3px; vertical-align:middle;" title="是店内最好的房间，有全新的装修，房间配置齐全，配洗漱用品及电吹风。">';
						}
						else if(jd[i].nRoomTypeID == 230 || jd[i].nRoomTypeID == 231){
							if (rMebType != cMebType) {
								roomTypeHit = '<img src="http://img1.7daysinn.cn//images/fxj_tips.gif" style="margin-left:3px;" title="预订商务房型，可获得实付房费10%的现金返还，还免费提供生活用品包、营养早餐、瓶装水，2人入住可领取2份。房型更好！">';
							}
						}else{
							roomTypeHit = '';
						}
                        ht += '<tr height="24">';
						
						if(jd[i].nRoomTypeID == 194 || jd[i].nRoomTypeID == 196 || jd[i].nRoomTypeID == 230 || jd[i].nRoomTypeID == 231){
							ht += '<td bgcolor="#FFFFFF" align="center">' + jd[i].sRoomTypeName + roomTypeHit+ '</td>';
						}else{
							ht += '<td bgcolor="#FFFFFF" align="center">'+roomTypeHit + jd[i].sRoomTypeName + '</td>';
						}
						ht += '<td bgcolor="#FFFFFF" align="center">'+ jd[i].mRoomRate + '</td>';
						if(jd[i].mMebRoomRate != '--' && jd[i].mMebRoomRate != jd[i].mShowMebRoomRate){
								ht += '<td bgcolor="#FFFFFF" align="center"><span style="color:#777777;text-decoration:line-through;">'+ jd[i].mShowMebRoomRate + '</span></td>';
						}else{
								ht += '<td bgcolor="#FFFFFF" align="center">'+ jd[i].mShowMebRoomRate + '</td>';
						}
						if(jd[i].mMebRoomRate != '--' && jd[i].mMebRoomRate != jd[i].mShowMebRoomRate){
								ht += '<td bgcolor="#FFFFFF" align="center"><font color=red>'+ jd[i].mMebRoomRate + '</font></td>';
						}else{
								ht += '<td bgcolor="#FFFFFF" align="center">'+ jd[i].mMebRoomRate + '</td>';
						}
						ht += '<td bgcolor="#FFFFFF" align="center">'+ jd[i].bookBtn + '</td>';
						ht += '<td bgcolor="#FFFFFF" align="center">'+ jd[i].centBtn + '</td>';
						ht += '</tr>';
                    }
                    ht += '</table>';
                    $("#innp").unblock();
                    $("#innp").html('<table>' + ht + '</table>');
                    $("#dtStart").val(dt_start);
                    $("#dtEnd").val(dt_end);
                }
                else {
                    $("#innp").unblock();
                    alert('数据读取错误！' + json.msg);
                }
            }
        });
    }
}
