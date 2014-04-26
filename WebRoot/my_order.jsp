<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<base href="<%=basePath%>">
<title>7天连锁酒店</title>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta http-equiv="Cache-control" content="private">
<meta http-equiv="pragma" content="no-cache">
<title>７天连锁酒店官网——我的７天</title>
<meta content="7天酒店入口，7天酒店登陆，7天酒店注册" name="Keywords">
<meta content="免费注册7天连锁酒店会员，可及时、轻松、快捷预订酒店客房，更可以享受会员优惠服务。" name="Description">
<link href="images/main.css" rel="stylesheet" type="text/css">
<script type="text/javascript">pic_domain_url = 'http://img1.7daysinn.cn//upload/webpic/';ad_arr = new Array();ad_arr[0] = new Array('www_club_left_3','1','c888db250c95bf37286efc5a07b8e303.jpg','http://www.7daysinn.cn/cent2000.html','212','80');ad_arr[1] = new Array('www_about_left_2','1','bf62a7e63c2d2a86ebb145d4f283370e.gif','http://www.7daysinn.cn/about_join.html','212','80');ad_arr[2] = new Array('www_gift_centre','1','0738c81a85248d7b292480e08d4cc8ff.jpg','http://www.7daysinn.cn/jifen.php','212','80');ad_arr[3] = new Array('www_gift_centre_banner_top','1','c9f9d9762305d57a43175488ee70a921.jpg','http://www.7daysinn.cn/my_gifts.php','555','129');ad_arr[4] = new Array('www_gift_centre_banner_top','1','e8e1d16ca50f6c50614bb9e246fab7b3.jpg','http://www.7daysinn.cn/gifts.php?qt1=49&gtp=10','555','129');ad_arr[5] = new Array('www_gift_centre_banner_top','1','312251c27e60ef7665eb61684df210d2.jpg','http://www.7daysinn.cn/activity.php?action=exchange','555','129');ad_arr[6] = new Array('www_index_new','1','b6099e9ae70764e62a2a0e030fcd9661.jpg','http://www.7daysinn.cn/activity.php?action=gjh114','200','150');ad_arr[7] = new Array('www_index_new','1','8812985fed7ab2bf7a30029c7d6c3faf.jpg','http://www.7daysinn.cn/activity.php?action=mbsale','200','150');ad_arr[8] = new Array('www_index_new','1','afb12806b2b9c48a22ae71f4a7d1833a.jpg','http://www.7daysinn.cn/wish2014.php','200','150');ad_arr[9] = new Array('www_index_new','1','124036fed19f1b27dedf23a13cd36719.jpg','http://www.7daysinn.cn/guanhuai.php','200','150');ad_arr[10] = new Array('www_index_new','1','811da1939372233b5d9edcbfa8514764.jpg','http://www.7daysinn.cn/huanlesong.php','200','150');ad_arr[11] = new Array('www_index_new','1','8cadc6db7e82e062fe2a475efe636f32.jpg','http://www.7daysinn.cn/goodmind9.php','200','150');ad_arr[12] = new Array('www_index_new','1','6b01379b551f233c8f8d864979b33a07.jpg','http://www.7daysinn.cn/sprgift.php','200','150');ad_arr[13] = new Array('www_index_new','1','295e348771aa4042cd30d3fe72ed86bd.jpg','http://www.7daysinn.cn/jifen.php','200','150');ad_arr[14] = new Array('www_index_new','1','b96d1cc2f0816116a1b8e34a5ab74f34.jpg','http://www.7daysinn.cn/activity_email_bind.php','200','150');ad_arr[15] = new Array('www_index_new','1','7064a560a4ab9587d888ac11746d75ca.jpg','http://www.7daysinn.cn/activity.php?action=cashback','200','150');ad_arr[16] = new Array('www_index_new','1','9b2ac4595a9576ca27263bf3a3f8c03d.jpg','http://www.7daysinn.cn/activity_lucky.php','200','150');ad_arr[17] = new Array('www_index_new','1','a63989984ee970f9a9a8d852e351763a.jpg','http://cps.hicdma.com//Transfer.do?from=100350&sfrom=&target=http://www.hicdma.com/zt/1304/7t/index.jsp?WT.mc_id=130523-YueHuiQT-SY_lunbo','200','150');ad_arr[18] = new Array('www_index_new','1','cbb0e5bd525d1a64b5670bd5b9498983.jpg','activity.php?action=99','200','150');ad_arr[19] = new Array('www_index_new','1','b029f2f8ef0d08c43f0468c6fd625c64.jpg','http://www.7daysinn.cn/activity.php?action=xly','200','150');ad_arr[20] = new Array('www_index_new','1','d91eed9a1476311a8e13614aa874e6af.jpg','http://www.7daysinn.cn/goodmind10.php','200','150');ad_arr[21] = new Array('www_index_new','1','9fe8c4b8d54cb1efcb408f053065ef3e.jpg','http://www1.poco.cn/topic/portofino','200','150');ad_arr[22] = new Array('www_index_new','1','b17827f557fd4f0b10a462aa49aa8b1c.jpg','http://www.7daysinn.cn/goodmind11.php','200','150');ad_arr[23] = new Array('www_index_new','1','fb528dacaf777e4c70686cb1558dc096.jpg','http://www.7daysinn.cn/activity.php?action=alipay','200','150');ad_arr[24] = new Array('www_index_new','1','8bf4eebe0fd07501e325d16bee8ab85f.jpg','http://www.7daysinn.cn/activity.php?action=1212','200','150');ad_arr[25] = new Array('www_index_new','1','696c098b80fea7843878e1b3679daad8.jpg','http://www.jjcoffetel.cc/ptbook','200','150');ad_arr[26] = new Array('www_index_new','1','9c87f9181c34116dd5d013e8a56f70d3.jpg','http://www.7daysinn.cn/activity.php?action=weixin_newyear','200','150');ad_arr[27] = new Array('www_index_new','1','31dbaf46a4ba282cb7a06b0d48ba121a.jpg','http://www.7daysinn.cn/activity.php?action=gjh2014','200','150');ad_arr[28] = new Array('www_index_new','1','9dfab9976a757c41af84f2ed798060d4.jpg','http://ww','200','150');ad_arr[29] = new Array('new_www_index_right_1','1','4d5848a8af58affd1340461308719a31.gif','http://www.7daysinn.cn/qadd.php','200','200');ad_arr[30] = new Array('new_www_index_right_2','1','7dd9e1bfa1039dd608c9836bb202fc55.gif','http://www.7daysinn.cn/about_partner.html','200','200');ad_arr[31] = new Array('www_coo_banner','1','c1766ebd8290968a364b52cbfbff1b51.jpg','http://www.7daysinn.cn/cooperate_58.html','460','120');ad_arr[32] = new Array('www_coo_right_2','1','3f60043458a14e9e76fd0f7a5716c56b.jpg','http://www.7daysinn.cn/cooperate_126.html','160','80');ad_arr[33] = new Array('www_coo_right_2','1','50f432411ef6614462c4c5ac5a87fe30.jpg','http://www.7daysinn.cn/cooperate_102.html','160','80');ad_arr[34] = new Array('www_index_left_bottom','1','624fcb57c7bce06e197e60a8015a25f4.jpg','http://www.7daysinn.cn/about_join.html#youpin','300','211');ad_arr[35] = new Array('book_left','1','4b6de15ebd56a2d1478bd189624d1b3c.jpg','http://www.7daysinn.cn/activity.php?action=weixin','218','118');ad_arr[36] = new Array('book_left','1','df40cf2fedb570c146f233aa7e1621ab.jpg','http://www.7daysinn.cn/wish2014.php','218','118');ad_arr[37] = new Array('book_left','1','2f1ed268f493f2d2d1b5485cab19d7f3.jpg','http://www.7daysinn.cn/activity_lucky.php','218','118');ad_arr[38] = new Array('new_index_center','1','24b1ba620e2dc95993fdf45bce8abfeb.jpg','http://www.7daysinn.cn/gift77.php','279','46');ad_arr[39] = new Array('new_index_center','1','2d0ff0ec9fa3d2f40734b30f5420dab8.jpg','http://www.7daysinn.cn/activity.php?action=88','279','46');ad_arr[40] = new Array('new_index_right_bottom','1','ab979baa932670c412613a73bfc3ed14.gif','http://www.7daysinn.cn/qadd.php','190','118');ad_arr[41] = new Array('new_index_right_bottom','1','831eabb4117869cc3c9bf3939a46ea72.gif','http://www.7daysinn.cn/about_partner.html','190','118');</script><script language="javascript" type="text/javascript" src="images/jquery.js"></script>
<script language="javascript" type="text/javascript" src="images/common.js"></script>
<script language="javascript" type="text/javascript">
      			<!--	

function selectFilter(obj, name)
{
	var value = obj.options[obj.options.selectedIndex].value;
	setParamValue("page", 1);
	setParamValue(name, value);
	gotoURL();
}

function gotoURL()
{
	var args = gotoURL.arguments;
	var url = '/my_order.php';
	if(args[0] && args[0].length > 0) url = args[0];
	if(args.length == 3) setParamValue(args[1], args[2]);
	var q_array = new Array();
	for(var i = 0; i < gQueryString.length; i ++){
		q_array[i] = gQueryString[i].name + "=" + gQueryString[i].value;
	}
	url += "?" + q_array.join("&");
	location.href = url;
}

function paramItem(name, value)
{
	this.name = name;
	this.value = encodeURIComponent(value);
}

function setParamValue(name, value)
{
	var found = false;
	for(var i = 0; i < gQueryString.length; i ++){
		if(gQueryString[i].name == name){
			found = true;
			gQueryString[i].value = value;
			break;
		}
	}
	if(!found){
		gQueryString[gQueryString.length] = new paramItem(name, value);
	}
}

function execFilter()
{
    var args = execFilter.arguments;
    var ele = args[0];
    var name = args[1];
    var resetParams = args[2];
    var dstURL = "";
    if(args.length > 3) dstURL = args[3];
    var old_val = ele.innerHTML;
    ele.style.display = "none";
    var ele_id = "";
    if(!ele.id){
        ele_id = "OID"+getRandomID();
        ele.setAttribute("id", ele_id);
    }else{
        ele_id = ele.id;
    }
    var p_ele = ele.parentNode;
    var new_ele_id = "RID"+getRandomID();
    var new_ele = document.createElement("INPUT");
    p_ele.appendChild(new_ele);
    new_ele.setAttribute("type", "text");
    new_ele.setAttribute("size", "8");
    new_ele.setAttribute("id", new_ele_id);
    if(getBrowser() == "MSIE"){
         //new_ele.onblur = "resetFilter('"+new_ele_id+"','"+ele_id+"')";
        new_ele["onblur"] = new Function("resetFilter('"+new_ele_id+"','"+ele_id+"')");
        new_ele["onkeypress"] = new Function("return submitFilter(this, '"+name+"', event,"+resetParams+", '"+dstURL+"')");
    }else{
        new_ele.setAttribute("onblur", "resetFilter('"+new_ele_id+"','"+ele_id+"')");
        new_ele.setAttribute("onkeypress", "return submitFilter(this, '"+name+"', event,"+resetParams+", '"+dstURL+"')");
    }
    new_ele.focus();
}

function submitFilter(obj, fname, evt,resetParams,dstURL)
{
    evt = (evt) ? evt : event;
    var charCode = (evt.charCode) ? evt.charCode : ((evt.which) ? evt.which : evt.keyCode);
    if(resetParams){
        for(var i = 0; i < gQueryString.length; i++) 
        if(gQueryString[i].name != "pagesize")gQueryString[i].value="";
    }
    if(charCode == 13 || charCode == 3){
        setParamValue("page", 1);
        setParamValue(fname, obj.value.trim());
        gotoURL(dstURL);
    }
    return true;
}

function getRandomID()
{
    var d = new Date();
    return d.getTime();
}

function resetFilter(new_ele_id, ele_id)
{
    var old_ele = document.getElementById(ele_id);
    var new_ele = document.getElementById(new_ele_id);
    old_ele.parentNode.removeChild(new_ele);
    old_ele.style.display = "";
    
}

var gQueryString = new Array();
var resetPage = false;
	-->
    					</script><script type="text/javascript"> <!-- 广告列表 -->

	document.write("\<script language=\"javascript\" type=\"text/javascript\" src=\"cache/ad_js/ad_js.js?"+Math.random()+"\"><\/script\>");  

</script><script language="javascript" type="text/javascript" src="images/ad_js.js"></script><script language="javascript" type="text/javascript">
<!--
$(document).ready(function() { 
	//取用户登录后名字积分
	$.getJSON("js_common.php", function(data){
		if(data['is_login']){
			$("#myinfo").html(data['MebType']+'：'+data['meb_nickname']+'&nbsp;&nbsp;&nbsp;'+data['MebCent']+'积分');
			$("#index-tips").html('<a href="logout.php" id="login_yes">退出</a><span class="spanString"></span>|<span class="spanString"></span>');
		}else{
			$("#index-tips").html('<a href="login.php">登录</a><span class="spanString"></span><a href="reg.php">注册</a><span class="spanString"></span>|<span class="spanString"></span>');
		}
	});
	
	var s = "<a href='my_order.php' ><font color='#F6FF00'>订单管理</font></a>&nbsp;<span class=nalsecimg> </span>&nbsp;<a href='my_gifts.php' target='_blank'>7天商城</a>&nbsp;<span class=nalsecimg> </span>&nbsp;<a href='manual.php?fid=2' target='_blank'>帮助中心</a>";
	if(s){
		$("#tool").html(s);
	}
});
-->
</script>
</head>

<body>
<div id="headet_info" class="headet_info"></div>
<div class="content">
  <div class="robotScroll"><a href="http://www.7daysinn.cn/sec_robot.php"><img src="images/7robot.gif" border="0"></a></div>
  <!--top start-->
  <div class="header">
    <div class="logo"><a href="index.jsp"><img src="images/logo.gif" title="返回首页"></a></div>
    <div class="toptent">
      <div class="listcode">
        <ul>
          <li style="margin-right: 8px;margin-top:18px;"> <span id="index-tips" style=" display:inline;"><a href="mylogin.jsp" id="login_yes">退出</a><span class="spanString"></span>|<span class="spanString"></span></span><a href="http://m.7daysinn.cn/m" target="_blank">手机版</a><span class="spanString"></span><a href="http://verified.weibo.com/group/7daysinn?o=1" target="_blank">7天官博</a><span class="spanString"></span>|<span class="spanString"></span><a href="http://www.7daysinn.cn/">7天首页</a> </li>
        </ul>
      </div>
      <div class="topnavcont">
        <div class="navlis">
          <ul>
            <li class="on"><a href="guest.action?method=showOrderList">我的7天</a></li>
            <li><a href="hotellist.action?method=queryallRoomTypeVolList&jumpPage=1">分店预订</a></li>
            <li><a href="http://www.7daysinn.cn/youpin.html">7天优品</a></li>
            <li><a href="http://www.7daysinn.cn/product.php">7天酒店</a></li>
            <li><a href="http://www.7daysinn.cn/activity.html">特惠专区</a></li>
            <li><a href="http://bbs.7daysinn.cn/">7天会</a></li>
            <li><a href="http://www.7daysinn.cn/car_rent.php">租车</a></li>
          </ul>
        </div>
      </div>
      <div class="userinfotent">
        <div class="user_info" id="myinfo">注册会员：${guestinfo .guestName}&nbsp;&nbsp;&nbsp;</div>
        <div class="sub_menu">
          <ul>
            <div id="tool" class="tool"><a href="http://www.7daysinn.cn/my_order.php"><font color="#F6FF00">订单管理</font></a>&nbsp;<span class="nalsecimg"> </span>&nbsp;<a href="http://www.7daysinn.cn/my_gifts.php" target="_blank">7天商城</a>&nbsp;<span class="nalsecimg"> </span>&nbsp;<a href="http://www.7daysinn.cn/manual.php?fid=2" target="_blank">帮助中心</a></div>
          </ul>
        </div>
      </div>
    </div>
  </div>
  <!--top end--><script language="javascript" type="text/javascript" src="images/tipswindown.js"></script> 
  <script language="javascript" type="text/javascript" src="images/inn_order_finish.js"></script> 
  <script language="javascript" type="text/javascript">
var popWindowHeight = '';
var autoPayStautsFlag = '0';
var isAttachedCard = '0';
var oid = '';
var fid = '';

function makePayInfo(folioId,innId){
	var pla = 0;
	oid = innId;
	fid = folioId;
	$.ajax({
		type: "get",
		dataType: "json",
		url: "ajax/getPopWindowsHeight.php?folioId="+folioId+"&innId="+innId,
		success: function(json){
			if(json.isAuditing == 0){
				location.href='pay_after.php?fid='+folioId+'&innid='+innId;
				return false;
			}else{
				$("#autoPayFlag").show();
				if(json.isUsedCashCoupons == 1){
					autoPayStautsFlag = 0;
					$("#autoPayFlag").hide();
				}
				$.ajax({
					type: "get",
					dataType: "json",
					url: "ajax/makePayInfo.php?folioId="+folioId+"&innId="+innId,
					success: function(json){
						$("#CompanyStored").css('display','none');
						if(json.data == 1){
							popWindowHeight = 240;
							popWindowHeight = popWindowHeight + 10;
							if(autoPayStautsFlag == 1){
								popWindowHeight = popWindowHeight + 30;
							}
							if(isAttachedCard == 1 && json.marketActId == 0){
								popWindowHeight = popWindowHeight + 30;
								$("#CompanyStored").css('display','block');
							}
							$("#hasBeenPaid").css('display','block');
							$("#noPaid").css('display','none');
							showTipsWindown("<span style=font-size:14px>提示</SPAN>",'msgPay',620,popWindowHeight);
						}else{
							if(autoPayStautsFlag == 1 || isAttachedCard == 1){
								var popWindowHeight = 200;
								if(autoPayStautsFlag == 1){
									popWindowHeight = popWindowHeight + 10;
								}
								if(isAttachedCard == 1 && json.marketActId == 0){
									popWindowHeight = popWindowHeight + 10;
									$("#CompanyStored").css('display','block');
								}				
								$("#hasBeenPaid").css('display','none');
								$("#noPaid").css('display','block');
								showTipsWindown("<span style=font-size:14px>提示</SPAN>",'msgPay',620,popWindowHeight);
							}else{
								location.href='pay_after.php?fid='+folioId+'&innid='+innId;
							}
						}
					}
				});
			}
		}
	});
}

function paygo(){
	if($("#selectPayType1").length>0 || $("#CompanyStored").length > 0){
		var selectPayType = $('#windown-box').find("input[name='selectPayType'][type='radio']:checked").val();
		if($("#payNowBtn2zj").length > 0){
		 	$('#windown-box').find("#payNowBtn2zj").hide();
		}		
		if(selectPayType == 1 && autoPayStautsFlag == 1){
			$("#o_innid").val(oid);
			$("#o_fid").val(fid);
			$("#isp").val('t');
			$("#payment_type").val('111');
			$("#payType").submit();
		}else if(selectPayType == 2){
			location.href='pay_after.php?innid='+oid+'&fid='+fid;
		}
		else if(selectPayType == 3){
			location.href='pay_after.php?innid='+oid+'&fid='+fid+'&q=1';
		}	
	}
	else{
		location.href='pay_after.php?fid='+fid+'&innid='+oid;
	}
}

</script>
  <link href="images/box.css" rel="stylesheet" type="text/css">
  <link href="images/tipswindown.css" rel="stylesheet" type="text/css">
  <link href="images/hotel.css" rel="stylesheet" type="text/css">
  <link href="images/my7day.css" rel="stylesheet" type="text/css">
  <div class="blank10"></div>
  <div class="my7day-main">
    <div class="my7day-left">
      <div class="my7day-left">
        <div class="my7day-left-nav">
          <div class="left"><img src="images/bar_nav_left.gif" alt=""></div>
          <div class="mid">
            <h4><a href="http://www.7daysinn.cn/my_7daysinn.php">个人信息</a></h4>
          </div>
          <div class="right"><img src="images/bar_nav_right.gif" alt=""></div>
        </div>
        <div class="my7day-left-con">
          <div class="blank15"></div>
          <div class="titnav">
            <h4 class="ic01">订单管理</h4>
          </div>
          <div class="my7day-list02" style="padding-bottom: 3px;">
            <ul>
              <li><a href="guest.action?method=showOrderList">我的订单</a></li>
            </ul>
          </div>
          <div class="titnav">
            <h4 class="ic03"><a href="http://www.7daysinn.cn/my_7daysinn.php">信息管理</a></h4>
          </div>
          <div class="my7day-list02">
            <ul>
              <li><a href="modify.jsp">个人资料管理</a></li>
            </ul>
          </div>
          <div class="titnav">
            <h4 class="ic05">社区信息</h4>
          </div>
          <div class="my7day-list02">
            <ul>
              <!-- <li><a href="my_club_info.php">社区资料</a></li> -->
              <li><a href="guestbook.jsp">我要留言</a></li>
              <li><a href="guestbook.jsp">我的留言</a></li>
            </ul>
          </div>
        </div>
        <div class="my7day-left_bottom"></div>
      </div>
    </div>
    <div class="my7day-right"> 
      <script src="images/calendar.js" type="text/javascript"></script>
      <div class="contbox">
        <div class="intitle2">
          <div class="left"><img src="images/bar_nav_left1.gif" alt=""></div>
          <div class="mid">
            <form name="order_form" method="get" action="my_order.php">
              <div> 订单号
                <input name="input_order_id" class="input00" style="width:66px;" type="text">
                &nbsp;
                <select name="order_status" id="order_status">
                  <option selected="selected" label="全部订单" value="all">全部订单</option>
                  <option label="预订有效" value="1">预订有效</option>
                  <option label="取消" value="25">取消</option>
                  <option label="预订未到" value="26">预订未到</option>
                  <option label="入住" value="49">入住</option>
                  <option label="离店" value="50">离店</option>
                </select>
                &nbsp;入店日期
                <input id="dtStart" style="width:66px;" class="input00" name="dtStart" onclick="opendtStart1();event.cancelBubble=true;" type="text">
                <a href="javascript:opendtStart1();" onclick="event.cancelBubble=true;"> <img id="a" src="images/lf_ic_01.jpg" border="0" height="19" width="19"></a> &nbsp;到
                <input id="dtEnd" style="width:66px;" class="input00" name="dtEnd" onclick="opendtEnd1();event.cancelBubble=true;" type="text">
                <a href="javascript:opendtEnd1();" onclick="event.cancelBubble=true;"> <img id="b" src="images/lf_ic_01.jpg" border="0" height="19" width="19"></a>
                <input name="Submit" value="查询" class="bn01" type="submit">
              </div>
            </form>
          </div>
          <div class="right"><img src="images/bar_nav_right1.gif" alt=""></div>
          <div class="clear"></div>
        </div>
      </div>
      <div class="blank15"></div>
      <div class="contbox">
        <div class="intitle">
          <div class="left"> <img src="images/bar2_left.gif" alt=""></div>
          <h4 class="icon_round25"> 酒店订单<!-- |<a href="http://www.7daysinn.cn/my_history_order.php"> 历史酒店订单</a> --> </h4>
          <div class="right"> <img src="images/bar2_right.gif" alt=""> </div>
        </div>
        <div class="tabcon">
        
          <table class="tablist08" id="ejiaA1" cellpadding="0" cellspacing="0">
            <tbody>
              <tr>
                <th class="bggray" valign="middle" width="66">订单号</th>
                <th width="138" class="bggray">分店</th>
                <th class="bggray" width="109">房型</th>
                <th class="bggray" width="66">总价</th>
                <th class="bggray" width="80">入店日期</th>
                <th class="bggray" width="80">离店日期</th>
                <th class="bggray" width="66">状态</th>
                <!--<th class="bggray" width="80">操作</th>-->
              </tr>
              <c:forEach var="orderlin" items="${orderList}">
              	 <tr>
                    <th valign="middle" width="66">${orderlin .orderId}</th>
                    <th>${orderlin .hotelName}</th>
                    <th width="109">${orderlin .roomTypeName}</th>
                    <th width="66">${orderlin .cost}</th><!--总价-->
                    <th width="80">${orderlin .checkIn}</th><!--入店日期-->
                    <th width="80">${orderlin .checkOut}</th><!--离店日期-->
                    <th width="66">
                    <c:choose>
                           <c:when test="${orderlin .state=='1'}">
                                  预订
                           </c:when>
                           <c:when test="${orderlin .state=='2'}">
                                  入住
                           </c:when>
                           <c:when test="${orderlin .state=='3'}">
                                  退房
                           </c:when>
                           <c:otherwise>
                                  其他
                           </c:otherwise>
                    </c:choose>
                    </th><!--状态-->
                    <!--<th width="80">操作</th>-->
              	</tr>
              </c:forEach>
              <c:if test="${!empty list}">
              <!--list集合不为空判断,TODO...-->
              <tr>
                <td colspan="8" align="left" bgcolor="#FFFFFF">暂无记录</td>
              </tr>
              </c:if><!--非空-->  

              
              <tr>
                <td colspan="8" height="40"><div>
                    <div align="center">
                    		 共<span class="tstrong">${page.maxCount }</span> 条记录 &nbsp; 每页显示 <span
						class="tstrong"> ${page.rowsPrePage }行 </span> 条 &nbsp; <span class="comment"><a href="guest.action?method=showOrderList&jumpPage=1">第一页</a></span>&nbsp;&nbsp; <span class="comment"><a href="guest.action?method=showOrderList&jumpPage=${page.curPage-1 }">上一页</a></span>&nbsp;&nbsp; <span class="comment"><a href="guest.action?method=showOrderList&jumpPage=${page.curPage+1 }">下一页</a></span>&nbsp;&nbsp; <span class="comment"><a href="guest.action?method=showOrderList&jumpPage=${page.maxPage }">最后页</a></span>&nbsp; 
                    </div>
                    <table class="pagenum01" style="width:98%;" cellpadding="0" cellspacing="0" align="left">
                      <tbody>
                      </tbody>
                    </table>
                  </div></td>
              </tr>
            </tbody>
          </table>
          
        </div>
        <div class="mana_tip">
          <table>
            <tbody>
              <tr>
                <td style="clear:both;margin-top:30px;" valign="top" width="74"><span class="cOrange">*</span> <span class="cGray">温馨提示：</span></td>
                <td><div class="cGray" style="line-height:18px;">可以查询最近一年的订单信息。 <br>
                    酒店订单是指过去二个月内离店、取消、预订未到的订单，和所有预订有效的订单。 <br>
                    历史酒店订单是指二个月前及一年内的离店、取消和预订未到的订单。 <br>
                    离店后7天内，入住人可以对入住分店进行点评。点击订单后方的点评链接进入，非入住人不可点评。 <br>
                    如需取消已支付的订单（积分兑换房、特价房、其它有限制不能取消的除外），请在入住当天18点前取消，房费全部退回储值（礼金和抵用券按规则返还）。 </div></td>
              </tr>
            </tbody>
          </table>
        </div>
      </div>
      <div class="my7day-right-bottom"></div>
      <div class="blank15"></div>
      <div class="contbox">
        <div class="my7day-right-top"></div>
        <div>
          <div class="mana_tit">图标所代表的含义：</div>
          <div class="mana_pic_tip">
            <ul>
              <li class="tp05"><span>订单为积分兑换房</span>积分兑换</li>
              <li class="tp01"><span>点击修改订单</span>修改订单</li>
              <li class="tp02"><span>点击取消订单</span>取消订单</li>
              <li class="tp06"><span>订单已支付</span>已付款</li>
              <li class="tp03"><span>点击进行订单支付</span>立即支付</li>
              <li class="tp08"><span>点击永久删除订单</span>删除</li>
            </ul>
            <div class="clear"></div>
          </div>
        </div>
      </div>
      <div class="my7day-right-bottom"></div>
    </div>
    <div class="clear"></div>
  </div>
  <div class="blank10"></div>
  <!--支付提示Start-->
  <div id="msgPay" style="display:none;">
    <form id="payType" method="get" action="pay_after.php">
      <table cellpadding="0" cellspacing="1" border="0" width="100%">
        <tbody>
          <tr>
            <td width="2%">&nbsp;</td>
            <td align="left" valign="middle" width="14%"><img src="images/02.jpg" width="104"></td>
            <td align="left" width="83%"><div style="margin-top:20px;line-height:24px; font-size:14px;">
                <div id="hasBeenPaid" style="display:none;"> 
                  <!--如果已支付过Start-->
                  <p style="margin-left:30px;padding-top:5px;line-height:20px;font-size:14px;"><b>您已提交过此笔订单的支付要求！</b></p>
                  <p style="margin-left:30px;padding-top:10px;line-height:20px;font-size:14px;">目前还未收到银行的结果通知，如您确认已成功完成支付，请不要再次尝试。我们将在收到银行通知后 立即修改订单状态，请耐心等待。</p>
                  <p style="margin-left:30px;padding-top:10px;line-height:20px;font-size:14px;color:red;">如果您确认前次没有完成支付，请继续进行。</p>
                  <!--如果已支付过End--> 
                </div>
                <div id="noPaid" style="display:none"> 
                  <!--未支付过Start-->
                  <p style="margin-left:30px;padding-top:5px;line-height:20px;font-size:14px;"><b>您还未提交过支付，请选择下列的支付方式</b></p>
                  <!--未支付过End--> 
                </div>
              </div>
              <div style="margin-top:30px;margin-left:30px;">
                <input value="支付" class="bn_02" name="Submit2" id="payNowBtn2zj" onclick="paygo()" type="button">
                &nbsp;
                <input value="关闭" class="bn_02" name="Submit3" id="payLaterBtn2zj" onclick="closeWindown()" type="button">
              </div></td>
            <td width="3%">&nbsp;</td>
          </tr>
        </tbody>
      </table>
    </form>
  </div>
  <!--支付提示End--> 
  
  <!--取消订单 start-->
  <div id="msgCancelOrder" style="display:none;">
    <table cellpadding="0" cellspacing="1" border="0" width="100%">
      <tbody>
        <tr>
          <td width="2%">&nbsp;</td>
          <td align="left" valign="middle" width="14%"><img src="images/02.jpg" width="104"></td>
          <td align="left" width="83%"><div style="margin-top:20px;line-height:24px; font-size:14px;" id="msg"></div>
            <div style="margin-top:35px;">
              <input value="确定取消" class="bn_02" name="Submit2" id="payNowBtn2zj" onclick="cancel()" type="button">
              &nbsp;
              <input value="关闭" class="bn_02" name="Submit3" id="payLaterBtn2zj" onclick="closeWindown()" type="button">
            </div></td>
          <td width="3%">&nbsp;</td>
        </tr>
      </tbody>
    </table>
  </div>
  <div id="msgDelOrder" style="display:none;">
    <table cellpadding="0" cellspacing="1" border="0" width="100%">
      <tbody>
        <tr>
          <td width="2%">&nbsp;</td>
          <td align="left" valign="middle" width="18%"><img src="images/02.jpg" width="104"></td>
          <td align="left" width="77%"><div style="margin-top:20px;line-height:24px; font-size:14px;" id="deleteOrderMsg"></div>
            <div style="margin-top:35px;">
              <input value="确定" class="bn_02" name="Submit2" id="payNowBtn2zjs" onclick="del()" type="button">
              &nbsp;
              <input value="取消" class="bn_02" name="Submit3" id="payLaterBtn2zjs" onclick="closeWindown()" type="button">
            </div></td>
          <td width="3%">&nbsp;</td>
        </tr>
      </tbody>
    </table>
  </div>
  <div class="footer">
    <p class="ab7dyas_n1"><a href="http://www.7daysinn.cn/"><span style="color:#ffffff">官网预订：www.7daysinn.cn</span></a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;客服热线：4008740087 +8620 89224488&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="http://www.7daysinn.cn/activity.php?action=weixin">微信预订 （搜“7天会”）</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="http://m.7daysinn.cn/m">手机版：m.7daysinn.cn&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;手机客户端</a></p>
    <div class="footer_sec_1">
      <div class="footer_sec_1_c">
        <p class="ab7dyas_n2"><a href="http://www.plateno.cc/" target="_blank">铂涛酒店集团 </a>| <a href="http://www.7daysinn.cn/about.php">关于7天</a> | <a href="http://www.7daysinn.cn/job.php" target="_blank">诚聘英才</a> | <a href="http://www.7daysinn.cn/about_join.html">合作加盟</a> | <a href="http://www.7daysinn.cn/xzzs.html">县镇招商</a> |<a href="http://www.7daysinn.cn/about_contact.html">联系我们</a> | <a href="http://www.7daysinn.cn/about_link.html">友情链接</a> | <a href="http://www.7daysinn.cn/sitemap.php">网站地图</a></p>
        <p class="ab7dyas_n3"><a href="http://beijing.7daysinn.cn/">北京7天</a> | <a href="http://shenzhen.7daysinn.cn/">深圳7天</a> | <a href="http://guangzhou.7daysinn.cn/">广州7天</a> | <a href="http://shanghai.7daysinn.cn/">上海7天</a></p>
        <p class="ab7dyas_n4">铂涛酒店集团7天连锁酒店版权所有 ©2005-2013 <a href="http://www.miitbeian.gov.cn/" traget="_blank" class="ab7dyas_n4">粤ICP备 05069521号</a> <font color="#FFFFFF">(115)</font></p>
      </div>
    </div>
    <div class="footer_sec_2"><a target="_blank" href="http://guangzhou.cyberpolice.cn/netalarm/netalarm/Welcome.jsp?bano=4401050100071"><img galleryimg="no" title="点此查看备案情况" src="images/waicon.gif" border="0" height="53" width="40"></a> </div>
  </div>
  
  <!--footer end--> 
  
</div>
<input name="et_MebID" id="et_MebID" value="107157881" type="hidden">
<div id="footet_info" style="overflow:hidden;margin:0 auto;text-align:left;width:880px;"> </div>
<script language="javascript" src="images/hf.js"></script> 
<script>hf();</script>
<iframe id="CalFrame" name="CalFrame" src="images/datecom.htm" style="display:none;position:absolute;z-index:110;" frameborder="0" height="190" scrolling="no" width="452"></iframe>
</body>
</html>   