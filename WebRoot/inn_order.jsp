<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c" %>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<base href="<%=basePath%>">
<title>7天连锁酒店</title>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta http-equiv="Cache-control" content="private">
<meta http-equiv="pragma" content="no-cache">
<title>７天连锁酒店官网——分店预订</title>
<meta content="酒店预订，7天酒店预订，7天酒店分店预订" name="Keywords">
<meta content="7天连锁酒店集团已建立覆盖全国360多家分店,完善的酒店预订系统，让您预订酒店客房更加轻松快捷，是您出差、旅游好选择。" name="Description">
<link href="images/main.css" rel="stylesheet" type="text/css">
<script type="text/javascript">pic_domain_url = 'http://img1.7daysinn.cn//upload/webpic/';ad_arr = new Array();ad_arr[0] = new Array('www_club_left_3','1','c888db250c95bf37286efc5a07b8e303.jpg','http://www.7daysinn.cn/cent2000.html','212','80');ad_arr[1] = new Array('www_about_left_2','1','bf62a7e63c2d2a86ebb145d4f283370e.gif','http://www.7daysinn.cn/about_join.html','212','80');ad_arr[2] = new Array('www_gift_centre','1','0738c81a85248d7b292480e08d4cc8ff.jpg','http://www.7daysinn.cn/jifen.php','212','80');ad_arr[3] = new Array('www_gift_centre_banner_top','1','c9f9d9762305d57a43175488ee70a921.jpg','http://www.7daysinn.cn/my_gifts.php','555','129');ad_arr[4] = new Array('www_gift_centre_banner_top','1','e8e1d16ca50f6c50614bb9e246fab7b3.jpg','http://www.7daysinn.cn/gifts.php?qt1=49&gtp=10','555','129');ad_arr[5] = new Array('www_gift_centre_banner_top','1','312251c27e60ef7665eb61684df210d2.jpg','http://www.7daysinn.cn/activity.php?action=exchange','555','129');ad_arr[6] = new Array('www_index_new','1','b6099e9ae70764e62a2a0e030fcd9661.jpg','http://www.7daysinn.cn/activity.php?action=gjh114','200','150');ad_arr[7] = new Array('www_index_new','1','8812985fed7ab2bf7a30029c7d6c3faf.jpg','http://www.7daysinn.cn/activity.php?action=mbsale','200','150');ad_arr[8] = new Array('www_index_new','1','afb12806b2b9c48a22ae71f4a7d1833a.jpg','http://www.7daysinn.cn/wish2014.php','200','150');ad_arr[9] = new Array('www_index_new','1','124036fed19f1b27dedf23a13cd36719.jpg','http://www.7daysinn.cn/guanhuai.php','200','150');ad_arr[10] = new Array('www_index_new','1','811da1939372233b5d9edcbfa8514764.jpg','http://www.7daysinn.cn/huanlesong.php','200','150');ad_arr[11] = new Array('www_index_new','1','8cadc6db7e82e062fe2a475efe636f32.jpg','http://www.7daysinn.cn/goodmind9.php','200','150');ad_arr[12] = new Array('www_index_new','1','6b01379b551f233c8f8d864979b33a07.jpg','http://www.7daysinn.cn/sprgift.php','200','150');ad_arr[13] = new Array('www_index_new','1','295e348771aa4042cd30d3fe72ed86bd.jpg','http://www.7daysinn.cn/jifen.php','200','150');ad_arr[14] = new Array('www_index_new','1','b96d1cc2f0816116a1b8e34a5ab74f34.jpg','http://www.7daysinn.cn/activity_email_bind.php','200','150');ad_arr[15] = new Array('www_index_new','1','7064a560a4ab9587d888ac11746d75ca.jpg','http://www.7daysinn.cn/activity.php?action=cashback','200','150');ad_arr[16] = new Array('www_index_new','1','9b2ac4595a9576ca27263bf3a3f8c03d.jpg','http://www.7daysinn.cn/activity_lucky.php','200','150');ad_arr[17] = new Array('www_index_new','1','a63989984ee970f9a9a8d852e351763a.jpg','http://cps.hicdma.com//Transfer.do?from=100350&sfrom=&target=http://www.hicdma.com/zt/1304/7t/index.jsp?WT.mc_id=130523-YueHuiQT-SY_lunbo','200','150');ad_arr[18] = new Array('www_index_new','1','cbb0e5bd525d1a64b5670bd5b9498983.jpg','activity.php?action=99','200','150');ad_arr[19] = new Array('www_index_new','1','b029f2f8ef0d08c43f0468c6fd625c64.jpg','http://www.7daysinn.cn/activity.php?action=xly','200','150');ad_arr[20] = new Array('www_index_new','1','d91eed9a1476311a8e13614aa874e6af.jpg','http://www.7daysinn.cn/goodmind10.php','200','150');ad_arr[21] = new Array('www_index_new','1','9fe8c4b8d54cb1efcb408f053065ef3e.jpg','http://www1.poco.cn/topic/portofino','200','150');ad_arr[22] = new Array('www_index_new','1','b17827f557fd4f0b10a462aa49aa8b1c.jpg','http://www.7daysinn.cn/goodmind11.php','200','150');ad_arr[23] = new Array('www_index_new','1','fb528dacaf777e4c70686cb1558dc096.jpg','http://www.7daysinn.cn/activity.php?action=alipay','200','150');ad_arr[24] = new Array('www_index_new','1','8bf4eebe0fd07501e325d16bee8ab85f.jpg','http://www.7daysinn.cn/activity.php?action=1212','200','150');ad_arr[25] = new Array('www_index_new','1','696c098b80fea7843878e1b3679daad8.jpg','http://www.jjcoffetel.cc/ptbook','200','150');ad_arr[26] = new Array('www_index_new','1','9c87f9181c34116dd5d013e8a56f70d3.jpg','http://www.7daysinn.cn/activity.php?action=weixin_newyear','200','150');ad_arr[27] = new Array('www_index_new','1','31dbaf46a4ba282cb7a06b0d48ba121a.jpg','http://www.7daysinn.cn/activity.php?action=gjh2014','200','150');ad_arr[28] = new Array('www_index_new','1','9dfab9976a757c41af84f2ed798060d4.jpg','http://ww','200','150');ad_arr[29] = new Array('new_www_index_right_1','1','4d5848a8af58affd1340461308719a31.gif','http://www.7daysinn.cn/qadd.php','200','200');ad_arr[30] = new Array('new_www_index_right_2','1','7dd9e1bfa1039dd608c9836bb202fc55.gif','http://www.7daysinn.cn/about_partner.html','200','200');ad_arr[31] = new Array('www_coo_banner','1','c1766ebd8290968a364b52cbfbff1b51.jpg','http://www.7daysinn.cn/cooperate_58.html','460','120');ad_arr[32] = new Array('www_coo_right_2','1','3f60043458a14e9e76fd0f7a5716c56b.jpg','http://www.7daysinn.cn/cooperate_126.html','160','80');ad_arr[33] = new Array('www_coo_right_2','1','50f432411ef6614462c4c5ac5a87fe30.jpg','http://www.7daysinn.cn/cooperate_102.html','160','80');ad_arr[34] = new Array('www_index_left_bottom','1','624fcb57c7bce06e197e60a8015a25f4.jpg','http://www.7daysinn.cn/about_join.html#youpin','300','211');ad_arr[35] = new Array('book_left','1','4b6de15ebd56a2d1478bd189624d1b3c.jpg','http://www.7daysinn.cn/activity.php?action=weixin','218','118');ad_arr[36] = new Array('book_left','1','df40cf2fedb570c146f233aa7e1621ab.jpg','http://www.7daysinn.cn/wish2014.php','218','118');ad_arr[37] = new Array('book_left','1','2f1ed268f493f2d2d1b5485cab19d7f3.jpg','http://www.7daysinn.cn/activity_lucky.php','218','118');ad_arr[38] = new Array('new_index_center','1','24b1ba620e2dc95993fdf45bce8abfeb.jpg','http://www.7daysinn.cn/gift77.php','279','46');ad_arr[39] = new Array('new_index_center','1','2d0ff0ec9fa3d2f40734b30f5420dab8.jpg','http://www.7daysinn.cn/activity.php?action=88','279','46');ad_arr[40] = new Array('new_index_right_bottom','1','ab979baa932670c412613a73bfc3ed14.gif','http://www.7daysinn.cn/qadd.php','190','118');ad_arr[41] = new Array('new_index_right_bottom','1','831eabb4117869cc3c9bf3939a46ea72.gif','http://www.7daysinn.cn/about_partner.html','190','118');</script>
<script language="javascript" type="text/javascript" src="images/jquery-1.js"></script>
<script language="javascript" type="text/javascript" src="images/common.js"></script>
<script language="javascript" type="text/javascript">
		function ch_room_num_sel(){
			
		}
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
			var url = '/inn_order.php';
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
				gQueryString[0] = new paramItem("hotel_id", "983");
				gQueryString[1] = new paramItem("room_id", "223");
				gQueryString[2] = new paramItem("dtStart", "2014-04-04");
				gQueryString[3] = new paramItem("dtEnd", "2014-04-05");
				-->
</script>

<script language="javascript" type="text/javascript" src="images/ad_js.js"></script>
<script language="javascript" type="text/javascript">$(document).ready(function() { 
	//取用户登录后名字积分
	$.getJSON("js_common.php", function(data){
		if(data['is_login']){
			$("#myinfo").html(data['MebType']+'：'+data['meb_nickname']+'&nbsp;&nbsp;&nbsp;'+data['MebCent']+'积分');
			$("#index-tips").html('<a href="logout.php" id="login_yes">退出</a><span class="spanString"></span>|<span class="spanString"></span>');
		}else{
			$("#index-tips").html('<a href="login.php">登录</a><span class="spanString"></span><a href="reg.php">注册</a><span class="spanString"></span>|<span class="spanString"></span>');
		}
	});
	
	var s = "<a href='my_order.php' >订单管理</a>&nbsp;<span class=nalsecimg> </span>&nbsp;<a href='my_gifts.php' target='_blank'>7天商城</a>&nbsp;<span class=nalsecimg> </span>&nbsp;<a href='manual.php?fid=2' target='_blank'>帮助中心</a>";
	if(s){
		$("#tool").html(s);
	}
});
-->
</script>
</head>

<body>
<div style="display: none;" id="headet_info" class="headet_info"></div>
<div class="content">
  <div class="robotScroll"> <a href="http://www.7daysinn.cn/sec_robot.php"><img
				src="images/7robot.gif" border="0"> </a> </div>
  <!--top start-->
  <div class="header">
    <div class="logo"> <a href="index.jsp"><img
					src="images/logo.gif" title="返回首页"> </a> </div>
    <div class="toptent">
      <div class="listcode">
        <ul>
          <li style="margin-right: 8px;margin-top:18px;"><span
							id="index-tips" style=" display:inline;"><a
								href="mylogin.jsp" id="login_yes">退出</a><span
								class="spanString"></span>|<span class="spanString"></span> </span><a href="http://m.7daysinn.cn/m" target="_blank">手机版</a><span
							class="spanString"></span><a
							href="http://verified.weibo.com/group/7daysinn?o=1"
							target="_blank">7天官博</a><span class="spanString"></span>|<span
							class="spanString"></span><a href="http://www.7daysinn.cn/">7天首页</a> </li>
        </ul>
      </div>
      <div class="topnavcont">
        <div class="navlis">
          <ul>
            <li><a href="guest.action?method=showOrderList">我的7天</a> </li>
            <li class="on"><a href="hotellist.action?method=queryallRoomTypeVolList&jumpPage=1">分店预订</a> </li>
            <li><a href="http://www.7daysinn.cn/youpin.html">7天优品</a> </li>
            <li><a href="http://www.7daysinn.cn/product.php">7天酒店</a> </li>
            <li><a href="http://www.7daysinn.cn/activity.html">特惠专区</a> </li>
            <li><a href="http://bbs.7daysinn.cn/">7天会</a> </li>
            <li><a href="http://www.7daysinn.cn/car_rent.php">租车</a> </li>
          </ul>
        </div>
      </div>
      <div class="userinfotent">
        <div class="user_info" id="myinfo">会员:${session .guestname}&nbsp;&nbsp;&nbsp;</div>
        <div class="sub_menu">
          <ul>
            <div id="tool" class="tool"> <a href="http://www.7daysinn.cn/my_order.php">订单管理</a>&nbsp;<span
									class="nalsecimg"> </span>&nbsp;<a
									href="http://www.7daysinn.cn/my_gifts.php" target="_blank">7天商城</a>&nbsp;<span
									class="nalsecimg"> </span>&nbsp;<a
									href="http://www.7daysinn.cn/manual.php?fid=2" target="_blank">帮助中心</a> </div>
          </ul>
        </div>
      </div>
    </div>
  </div>
  <!--top end--> 
  <script language="javascript" type="text/javascript" src="images/Validator.js"></script> 
  <script language="javascript" type="text/javascript" src="images/order.js"></script> 
  <!--<script language="javascript" type="text/javascript" src="js/jquery.firstebox.pack.js"></script>--> 
  <!--<script language="javascript" type="text/javascript" src="js/jquery.blockUI.js"></script>--> 
  <script language="javascript" type="text/javascript"
			src="images/calprice.js"></script>
  <link rel="stylesheet" href="images/tipswindown.css" type="text/css"
			media="all">
  <script type="text/javascript" src="images/tipswindown.js"></script> 
  <script type="text/javascript" src="images/package.js"></script> 
  <script language="javascript" type="text/javascript">
var mebid = '107157881';
var bShowTips = '';
var ShowAllTipsFlag = '0'
	
function calcTotal () {
	$("#present_total").val(0);
	$("#present_save").val($("#freeamount").text());
	$("#goods_total").val($("#WebRate_amount").text());
	$("#goods_save").val($("#conserve_amount").text());
};

//清除记录
function clearUpperJson() {
	var date = new Date();
	date.setTime(date.getTime() - 10000); 
	document.cookie = "ckUpperJson=''; expires=" + date.toUTCString();	
}

$().ready(function(){
	//通过COOKIE设置页面的值
	var ckUpperJson = eval("(" + getCookie('ckUpperJson') + ")");
	
	if(ckUpperJson != null) {
		var curtime = Math.round(new Date().getTime()/1000);
		if(curtime - ckUpperJson.created > 1800) {
			clearUpperJson();
			return false;
		}

		for(var i=1; i<7; i++) {
			$('#name_'+ i).val('');
		}

		//var room_num_sel = ckUpperJson.contact.room_num;
		//联系人信息
		//$('#room_num_sel').val(room_num_sel);//房间数
		$('#contact_name').val(ckUpperJson.contact.contact_name);//联系人
		$('#mobile').val(ckUpperJson.contact.mobile);//联系电话
		$('#email').val(ckUpperJson.contact.email);//邮件
		if(ckUpperJson.contact.sendmobile == 1) {//是否发送短讯
			$('#sendmobile').attr('checked', true);	
		} else {
			$('#sendmobile').attr('checked', false);	
		}
		
		//ch_room_num_sel();
		
		//入住人姓名勾选
		var  index_0 = 0;
		for(var i=0; i<ckUpperJson.contact.friend_input.length; i++) {
			for(var j=0; j< document.getElementsByName('my_friend_name_sel[]').length; j++) {
				if(ckUpperJson.contact.friend_input[i] == document.getElementsByName('my_friend_name_sel[]')[j].value) {
					document.getElementsByName('my_friend_name_sel[]')[j].checked = true;
					break;
				} 
			}
			if(ckUpperJson.contact.friend_input[i] == document.getElementsByName('my_friend_name_sel[]')[0].value) {
				index_0 += 1;
			}
		}

		arr_sel = ckUpperJson.contact.friend_input;//Global

		//处理第一个复选框
		if(index_0 == 0) {
			 document.getElementsByName('my_friend_name_sel[]')[0].checked = false;
		}
				
		//入住人姓名文本框
		var inputnum = parseInt(room_num_sel)+1;
		for(var i=1; i<inputnum; i++) {
			$('#name_'+ i).css('display', '');
		}
		var inputarr = new Array();
		
		for(var i=0; i<ckUpperJson.contact.friend_input.length; i++) {
			inputarr.push(ckUpperJson.contact.friend_input[i]);	
		}
		for(var i=1; i<= inputarr.length; i++) {
			$('#name' + i).val(inputarr[i-1]);	
		}
		
		//选择生活用品
		if(ckUpperJson.goods.radiobutton == null) {
			ckUpperJson.goods.radiobutton = 0;
		}
		if(ckUpperJson.goods.radiobutton == 0) {
			$("#radiobutton2").attr('checked', true);
			$("#packageinfo").show(); 
			$("#noshow_price").hide();
			$("#packagePrice").show();
			for(var i=0; i<ckUpperJson.goods.select.length; i++) {
				if(ckUpperJson.goods.select[i].key == 'sub1_number') {
					$("#" + ckUpperJson.goods.select[i].key + " option").eq(1).attr("value",$("input[name='my_friend_name[]'][value!='']").length*$("#bookdays").val());
				}
				$('#' + ckUpperJson.goods.select[i].key).val(ckUpperJson.goods.select[i].value);
			}
		} else {
			$("#radiobutton").attr('checked', true);
			$("#packageinfo").hide();
			$("#packagePrice").hide();
			$("#noshow_price").show();
		}	
		
		//设置价格显示
		$("#freeamount").text(ckUpperJson.price.present_save);
		$("#WebRate_amount").text(ckUpperJson.price.goods_total);
		$("#conserve_amount").text(ckUpperJson.price.goods_save);
		
		//礼包
		$('#happypackage').val(ckUpperJson.package.happypackage);
		$('#happypackage_backup').val(ckUpperJson.package.happypackage);
		$('#fivepackage').val(ckUpperJson.package.fivepackage);
		$('#teneightpackage').val(ckUpperJson.package.teneightpackage);
	}	
});

//住一晚 送一晚
$().ready(function(){
	if (ShowAllTipsFlag==1){
		var TipsBoxWidth=700;
		var TipsBoxHeight=80;
		showTipsWindown("温馨提示", 'AllTipsBox', TipsBoxWidth, TipsBoxHeight);
	}	
});

function chooseNormal() {
	$('#allMsgBoxShow').val("2");
	closeWindown();
}
//去除下拉框鼠标滑动效果
$().ready(function(){$("select").bind("mousewheel", function(){return false;});	});

</script>
  <link href="images/hotel.css" rel="stylesheet" type="text/css">
  <div class="blank10"></div>
  <div class="main">
    <div class="main_top"></div>
    <div class="left218"> 
      <script src="images/calendar.js" type="text/javascript"></script> 
      <script language="javascript" type="text/javascript" src="images/city_data.js"></script> 
      <script language="javascript" type="text/javascript" src="images/city_date2.js"> </script>
      <style type="text/css">
#divAddressMenu {
	position: absolute;
	dispaly: none;
	z-index: 10000;
	overflow: hidden;
	width: 156px;
	background-color: #faf7e7;
	border: solid #666 1px;
	font-size: 12px;
}

#divAddressMenu h4 {
	text-align: left;
	border-bottom: solid #666 1px;
	color: #999999;
	font-size: 12px;
	line-height: 20px;
	font-weight: 100;
	padding: 2px 3px;
	margin: 0;
	color: #70bd20;
}

#divAddressMenu div {
	padding: 3px 0;
}

#divAddressMenu a {
	display: block;
	width: 156px !important;
	width: 100%;
	padding: 1px 2px 2px 2px;
	cursor: default;
	text-decoration: none;
	color: #333;
	border: solid #ffffff 1px;
	background-color: none;
	text-align: left;
}

#divAddressMenu a span {
	float: right;
}

#divAddressMenu a:hover {
	background-color: #eee5b4;
	color: #990000;
}

#divAddressMenu p {
	margin: 3px;
	padding: 0;
	font-size: 12px;
	line-height: 20px;
}
</style>
      <style type="text/css">
.DateListBox {
	float: left;
	border: solid #FC7A7D 1px;
	width: 147px !important;
	width: 142px;
	height: 168px !important;
	height: 186px;
	font-size: 12px;
	text-align: center;
}

.DateListBox h1 {
	width: 100%;
	background-color: #FFF4F4;
	color: #B42929;
	font-size: 12px;
	height: 20px;
	font-weight: bold;
	line-height: 20px;
	vertical-align: middle;
	margin: 0px;
}

.DateListBox div {
	float: left;
	border: solid #EB696C 1px;
	background-color: #EB696C;
	color: #FFFFFF;
	width: 19px !important;
	width: 17px;
	height: 20px;
	font-size: 12px;
	font-weight: bold;
	line-height: 20px;
	vertical-align: middle;
}

.DateListBox a {
	float: left;
	color: #990000;
	border: solid #ffffff 1px;
	background-color: #ffffff;
	width: 19px !important;
	width: 17px;
	height: 19px !important;
	height: 22px;
	font-size: 12px;
	line-height: 20px;
	vertical-align: middle;
}

.DateListBox a:hover {
	border: solid #F2C2BD 1px;
	background-color: #FBEDEC;
}

.DateListBox .aSelect {
	cursor: pointer;
	border: solid #DEB4B4 1px;
	background-color: #FAE0CF;
	color: #FF0000;
}

.PyzyDateBox {
	position: absolute;
	z-index: 10000;
	dispaly: none;
	background-color: #FFFFFF;
	border: solid #EBcccC 1px;
	height: 170px;
	width: 298px !important;
	width: 290px;
}
</style>
      <script type="text/javascript" src="images/hotel.js"></script> 
      <script type="text/javascript" src="images/zone_sel.js"></script> 
      <script type="text/javascript" src="images/check_form.js"></script> 
      <script language="javascript" type="text/javascript">
var hotel_name_text="请输入关键词";

function cleanWord(value){
	if(value==hotel_name_text){
		$("#hotel_name").attr("value","");
		$("#hotel_name").css({ color: "#333333" }); 
	}
}

function setText(value){
	var hotel_name_text2=$("#hotel_name").val();
	hotel_name_text2=$.trim(hotel_name_text2);
	if(hotel_name_text2=="" || hotel_name_text2==hotel_name_text){
		$("#hotel_name").attr("value",hotel_name_text);
		$("#hotel_name").css({ color: "#999999" }); 
	}
}

function pgInit()
{
	var dtStart=document.getElementById('dtStart');	
	if(dtStart.value.trim()=='')
	{
		var dtEnd=document.getElementById('dtEnd');
		var today = new Date();
		var endday = new Date();
		endday.setDate(endday.getDate() + 1);
		dtStart.value = today.getFullYear() + "-" + (today.getMonth() + 1)+ "-" + today.getDate();
		dtEnd.value = endday.getFullYear() + "-" + (endday.getMonth() + 1)+ "-" + endday.getDate();
	}	
}
</script>
            <script type="text/javascript">

  $(document).ready(function(){
	  chk_city = 1;
	  BuildZone('city','hotcity','zone','');
	  pgInit();
  });

</script>
      <div class="left_con">
        <div class="blank10"></div>
        <div class="lf_b1"></div>
        <div class="lf_b2">
          <div class="left_map_con">
            <p class="line"> <a href="http://www.7daysinn.cn/map.php?city=%E5%8C%97%E4%BA%AC">北京</a><span
									style="width:16px; display:inline-block"></span><a
									href="http://www.7daysinn.cn/map.php?city=%E5%B9%BF%E5%B7%9E">广州</a><span
									style="width:16px; display:inline-block"></span><a
									href="http://www.7daysinn.cn/map.php?city=%E4%B8%8A%E6%B5%B7">上海</a><span
									style="width:16px; display:inline-block"></span><a
									href="http://www.7daysinn.cn/map.php?city=%E6%B7%B1%E5%9C%B3">深圳</a> </p>
            <p> <a href="http://www.7daysinn.cn/map.php?city=%E6%88%90%E9%83%BD">成都</a><span
									style="width:16px; display:inline-block"></span><a
									href="http://www.7daysinn.cn/map.php?city=%E9%87%8D%E5%BA%86">重庆</a><span
									style="width:16px; display:inline-block"></span><a
									href="http://www.7daysinn.cn/map.php?city=%E6%AD%A6%E6%B1%89">武汉</a><span
									style="width:16px; display:inline-block"></span><a
									href="http://www.7daysinn.cn/map.php?city=%E9%95%BF%E6%B2%99">长沙</a> </p>
            <p style="height:30px;overflow:hidden;">
              <input name="mapcity" id="mapcity" class="inp"
									style="color:#666666;" value="其他城市" onclick="this.value='';"
									maxlength="9" type="text">
              <input name="" class="btn"
									onclick="return citymap();" type="button">
            </p>
          </div>
        </div>
        <div class="lf_b3"></div>
        <div class="blank10"></div>
        <div class="blank10"></div>
        <a href="http://www.7daysinn.cn/wish2014.php"><img
						src="images/2f1ed268f493f2d2d1b5485cab19d7f3.jpg" border="0"
						height="118" width="218"> </a>
                  <div class="blank10"></div>
        <a href="http://www.7daysinn.cn/wish2014.php"><img
						src="images/df40cf2fedb570c146f233aa7e1621ab.jpg" border="0"
						height="118" width="218"> </a>
        <div class="blank10"></div>
        <div> 
        </div>
        <!-- 铂涛会好兑好睡 --> 
        <!-- End --> 
        <div class="blank10"></div>
      </div>
      <script language="javascript" type="text/javascript">
setText();
</script> 
    </div>
    <form id="form1" name="form1" method="post"
				action="inn_order_confirm.php" onsubmit="return checkFrom(this)">
      <div class="right626">
        <div class="titlebox">
          <div class="left"> <img src="images/bar_gray_left.gif" alt=""> </div>
          <div class="middle">
            <h3 class="icon_round1">填写预订项</h3>
            <div class="progress"> <a href="javascript:;">查询</a><a href="javascript:;">选择</a><a
									class="on" href="javascript:;">预订</a><a href="javascript:;">核对</a><a
									href="javascript:;">支付</a><a class="nobg" href="javascript:;">成功</a> </div>
          </div>
          <div class="right"> <img src="images/bar_gray_right.gif" alt=""> </div>
          <div class="clear"></div>
        </div>
        <div class="blank15"></div>
        <div class="contbox">
          <div class="intitle">
            <div class="left"> <img src="images/bar2_left.gif" alt=""> </div>
            <h4 class="icon_round13">联系人信息</h4>
            <div class="right"> <img src="images/bar2_right.gif" alt=""> </div>
          </div>
          <table class="tb8" cellpadding="0" cellspacing="0">
            <tbody>
            <tr>
                <td class="ar bggray">房间类型</td>
                <td><p style="border:none;"><input type="hidden" value="${hotelId}" name="hotelId"  id="hotelid"/>
                    <select name="room_type" id="room_type" onchange="ch_room_num_sel()">
                      <option value="0" selected="selected">请选择房间类型</option>
                       <c:forEach var="RoomTypevo" items="${RoomTypeList}">
                       		<option value="${RoomTypevo.roomTypeid}" ${RoomTypevo.roomTypeid == innroomTypeid ? 'selected="selected"':}>
                            ${RoomTypevo.roomTypename}</option>
                       </c:forEach>
                    </select>
                    <font style="color:#F37800; padding-left:20px;">请所有进入酒店的住客和访客携带身份证到前台登记</font> </p></td>
              </tr>
              	<tr>
                <td class="ar bggray">房间数量</td>
                <td><p style="border:none;">
                    <select name="room_num_sel" id="room_num_sel" onchange="ch_room_num_sel()">
                      <option value="1" selected="selected">1</option>
                      <option value="2">2</option>
                      <option value="3">3</option>
                    </select>
                    间</p></td>
              </tr>
              <tr>
                <td class="ar bggray">入住人姓名</td>
                <td style="padding: 4px;"><span id="myFn"
										class="choose_contact">
                  
                  </span>
                  <div id="names" style="padding-left:0px;marging-left:0px">
                    <table cellpadding="0" cellspacing="0" width="100%">
                      <tbody>
                        <tr>
                          <td style="padding-left:0px;marging-left:0px; border:0px;" align="left">
                          <div id="name_1">
                              <input class="blueinput" name="my_friend_name[]" value="${guestinfo .guestName}" id="name1"
								onchange="javascript:inputonchange(1,this.value)"type="text">
                            </div></td>
                        </tr>
                        <tr>
                          <td style="padding-left:0px;marging-left:0px; border:0px;"
															align="left"><div id="name_2" style="display:none">
                              <input class="blueinput" name="my_friend_name[]"
																	id="name3"
																	onchange="javascript:inputonchange(3,this.value)"
																	type="text">
                              <input name="my_friend_name[]"
																	id="name4" class="inp2"
																	onchange="javascript:inputonchange(4,this.value)"
																	type="text">
                            </div></td>
                        </tr>
                        <tr>
                          <td style="padding-left:0px;marging-left:0px; border:0px;"><div
																id="name_3" style="display:none">
                              <input class="blueinput" name="my_friend_name[]"
																	id="name5"
																	onchange="javascript:inputonchange(5,this.value)"
																	type="text">
                              <input name="my_friend_name[]"
																	id="name6" class="inp2"
																	onchange="javascript:inputonchange(6,this.value)"
																	type="text">
                            </div></td>
                        </tr>
                        <tr>
                          <td style="padding-left:0px;marging-left:0px; border:0px;"><div
																id="name_4" style="display:none">
                              <input class="blueinput" name="my_friend_name[]"
																	id="name7"
																	onchange="javascript:inputonchange(7,this.value)"
																	type="text">
                              <input name="my_friend_name[]"
																	id="name8" class="inp2"
																	onchange="javascript:inputonchange(8,this.value)"
																	type="text">
                            </div></td>
                        </tr>
                        <tr>
                          <td style="padding-left:0px;marging-left:0px; border:0px;"><div
																id="name_5" style="display:none">
                              <input name="my_friend_name[]" id="name9" class="inp2"
																	type="text">
                              <input name="my_friend_name[]"
																	id="name10" class="blueinput" type="text">
                            </div></td>
                        </tr>
                        <tr>
                          <td style="padding-left:0px;marging-left:0px; border:0px;"><div
																id="name_6" style="display:none">
                              <input name="my_friend_name[]" id="name11"
																	class="blueinput" type="text">
                              <input
																	name="my_friend_name[]" id="name12" class="blueinput"
																	type="text">
                            </div></td>
                        </tr>
                        <tr>
                          <td style="padding-left:0px;marging-left:0px; border:0px;"><div
																id="name_7" style="display:none">
                              <input name="my_friend_name[]" id="name13"
																	class="blueinput" type="text">
                              <input
																	name="my_friend_name[]" id="name14" class="blueinput"
																	type="text">
                            </div></td>
                        </tr>
                        <tr>
                          <td style="padding-left:0px;marging-left:0px; border:0px;"><div
																id="name_8" style="display:none">
                              <input name="my_friend_name[]" id="name15"
																	class="blueinput" type="text">
                              <input
																	name="my_friend_name[]" id="name16" class="blueinput"
																	type="text">
                            </div></td>
                        </tr>
                      </tbody>
                    </table>
                  </div>
                  <span id="gustnote1"></span><span
										id="ctl00_Content_right_gustnote"></span></td>
              </tr>
                          <tr>
                <td class="ar bggray">入住日期</td>
                <td><p style="border:none;">
                    <input id="dtStart" style="width:100px;" name="dtStart" onclick="opendtStart();event.cancelBubble=true;" type="text" value="2014-03-31">
                    <a href="javascript:opendtStart();" onclick="event.cancelBubble=true;"><img id="a" src="images/lf_ic_01.jpg" width="19" height="19" border="0"></a> </p></td>
              </tr>
                          <tr>
                <td class="ar bggray">离开日期</td>
                <td><p style="border:none;">
<input id="dtEnd" style="width:100px;" name="dtEnd" type="text" onclick="opendtEnd();event.cancelBubble=true;" value="2014-04-01">
                    <a href="javascript:opendtEnd();" onclick="event.cancelBubble=true;"><img id="b" src="images/lf_ic_01.jpg" width="19" height="19" border="0"></a> </p></td>
              </tr>

            </tbody>
          </table>
        </div>
        <div class="bottom"></div>
        <div class="blank15"></div>
        <!-- 如果不是第一次登录购买 --> 
        
        <!-- 如果是第一次登录购买 -->
        
        <div id="package" style="display:none"></div>
        <div id="noSelectGoodsTips" style="display:none">
          <table cellpadding="0" cellspacing="5" align="center"
							bgcolor="#E9F3FD" border="0" height="197" width="480">
            <tbody>
              <tr>
                <td align="center" bgcolor="#FFFFFF" valign="top"><table
											cellpadding="0" cellspacing="1" bgcolor="#A6C9E1" border="0"
											width="100%">
                    <tbody>
                      <tr>
                        <td background="images/bg.jpg" bgcolor="#FFFFFF"
														height="31"><table cellpadding="0" cellspacing="0"
															align="center" border="0" width="96%">
                            <tbody>
                              <tr>
                                <td align="left"><span class="STYLE1">温馨提示：请确认您选择的用品</span></td>
                                <td align="right"><img src="images/cl.jpg"
																		onclick="js:$.unblockUI();" border="0" height="9"
																		width="9"></td>
                              </tr>
                            </tbody>
                          </table></td>
                      </tr>
                      <tr>
                        <td bgcolor="#FFFFFF" height="158"><table
															cellpadding="0" cellspacing="1" align="center"
															bgcolor="#CCCCCC" border="0" width="400">
                            <tbody>
                              <tr>
                                <td align="center" bgcolor="#FFFFFF" height="25">生活用品</td>
                                <td bgcolor="#FFFFFF">无</td>
                                <td align="center" bgcolor="#FFFFFF">总价：<font
																		color="red">0</font>元</td>
                              </tr>
                            </tbody>
                          </table>
                          <br>
                          <br>
                          <table align="center" border="0" width="400">
                            <tbody>
                              <tr>
                                <td><input name="button" id="button"
																		value="确定无误，继续" class="btn_bg_icon_07"
																		onclick="gotoUrl();" type="button">
                                  &nbsp;&nbsp;&nbsp;
                                  <input name="button2" id="button2"
																		value="返回重新选择" class="btn_bg_icon_06"
																		onclick="js:$.unblockUI();" style="cursor:pointer"
																		type="button"></td>
                              </tr>
                            </tbody>
                          </table></td>
                      </tr>
                    </tbody>
                  </table></td>
              </tr>
            </tbody>
          </table>
        </div>
        <div id="haveSelectGoodsTips" style="display:none"></div>
        <input name="order_amount" id="order_amount" value="157" type="hidden">
        <input name="uniqi" id="uniqi" value="785391156" type="hidden">
        <input name="new_room_num" id="new_room_num" value="" type="hidden">
        <input name="present_total" id="present_total" value="0" type="hidden">
        <input name="present_save" id="present_save" value="0" type="hidden">
        <input name="goods_total" id="goods_total" value="0" type="hidden">
        <input name="goods_save" id="goods_save" value="0" type="hidden">
        <input name="bookdays" id="bookdays" value="1" type="hidden">
        <div class="blank15"></div>
        <div class="top"></div>
        <div class="contbox icon">
          <input class="prev" onclick="history.go(-1);" type="button"
							value="返回上步">
          <input class="next" value="提交" onclick="calcTotal();" type="submit">
        </div>
        <div class="bottom"></div>
      </div>
      <div class="clear"></div>
      <div class="main_bottom"></div>
      <input name="allMsgBoxShow" id="allMsgBoxShow" value="0"
					type="hidden">
    </form>
  </div>
  <div class="blank10"></div>
  
  <!--整合提示 start-->
  <div id="AllTipsBox"
			style="display:none; cursor: default;padding:0px;">
    <table cellpadding="0" cellspacing="3" border="0" width="97%">
      <tbody>
        <tr>
          <td style="width:110px;" align="center" valign="top"><img
							src="images/02.jpg" height="124" width="104"></td>
          <td style="padding-top:15px;" align="left"><div
								style="margin-top:30px; margin-bottom:10px;" align="center">
              <input class="btn_bg_icon_07" value="继续预订" name="Submit2"
									id="confirmBookingBtn" onclick="chooseNormal();" type="button">
              &nbsp;&nbsp;&nbsp;
              <input class="btn_bg_icon_06" value="返回"
									name="Submit2"
									onclick="location.href='http://www.7daysinn.cn/inn_list.php?hotcity=%E9%95%BF%E6%B2%99&amp;city=&amp;zone=0&amp;dtStart=2014-4-4&amp;dtEnd=2014-4-5&amp;hotel_name='"
									type="button">
            </div></td>
          <td style="width:20px;">&nbsp;</td>
        </tr>
      </tbody>
    </table>
  </div>
  
  <!--整合提示 end--> 
  
  <script>	calprice();
	jQuery(document).ready(function() {
		jQuery("#myFn").find("td").each(function(i) {
        	changeFnImage(this);
    	});
	});
-->

</script>
  <div class="footer">
    <p class="ab7dyas_n1"> <a href="http://www.7daysinn.cn/"><span style="color:#ffffff">官网预订：www.7daysinn.cn</span> </a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;客服热线：4008740087 +8620
      89224488&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a
					href="http://www.7daysinn.cn/activity.php?action=weixin">微信预订
      （搜“7天会”）</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a
					href="http://m.7daysinn.cn/m">手机版：m.7daysinn.cn&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;手机客户端</a> </p>
    <div class="footer_sec_1">
      <div class="footer_sec_1_c">
        <p class="ab7dyas_n2"> <a href="http://www.plateno.cc/" target="_blank">铂涛酒店集团 </a>| <a
							href="http://www.7daysinn.cn/about.php">关于7天</a> | <a
							href="http://www.7daysinn.cn/job.php" target="_blank">诚聘英才</a> | <a href="http://www.7daysinn.cn/about_join.html">合作加盟</a> | <a
							href="http://www.7daysinn.cn/xzzs.html">县镇招商</a> |<a
							href="http://www.7daysinn.cn/about_contact.html">联系我们</a> | <a
							href="http://www.7daysinn.cn/about_link.html">友情链接</a> | <a
							href="http://www.7daysinn.cn/sitemap.php">网站地图</a> </p>
        <p class="ab7dyas_n3"> <a href="http://beijing.7daysinn.cn/">北京7天</a> | <a
							href="http://shenzhen.7daysinn.cn/">深圳7天</a> | <a
							href="http://guangzhou.7daysinn.cn/">广州7天</a> | <a
							href="http://shanghai.7daysinn.cn/">上海7天</a> </p>
        <p class="ab7dyas_n4"> 铂涛酒店集团7天连锁酒店版权所有 ©2005-2013 <a href="http://www.miitbeian.gov.cn/"
							traget="_blank" class="ab7dyas_n4">粤ICP备 05069521号</a> <font
							color="#FFFFFF">(115)</font> </p>
      </div>
    </div>
    <div class="footer_sec_2"> <a target="_blank"
					href="http://guangzhou.cyberpolice.cn/netalarm/netalarm/Welcome.jsp?bano=4401050100071"><img
					galleryimg="no" title="点此查看备案情况" src="images/waicon.gif" border="0"
					height="53" width="40"> </a> </div>
  </div>
  
  <!--footer end--> 
  
</div>
<input name="et_MebID" id="et_MebID" value="107157881" type="hidden">
<div id="footet_info"
		style="overflow:hidden;margin:0 auto;text-align:left;width:880px;"> </div>
<script language="javascript" src="images/hf.js"></script> 
<script>hf();</script>
<iframe id="CalFrame" name="CalFrame" src="images/datecom.htm"
		style="display:none;position:absolute;z-index:110;" frameborder="0"
		height="190" scrolling="no" width="452"></iframe>
<iframe style="position: absolute; z-index: 1; display: none;"
		id="ifmdivAddressMenu"></iframe>
<div style="display: none;" id="divAddressMenu"></div>
</body>
</html>
