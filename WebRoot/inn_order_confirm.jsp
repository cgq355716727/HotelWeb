<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c" %>
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
<title>７天连锁酒店官网——分店预订</title>
<meta content="酒店预订，7天酒店预订，7天酒店分店预订" name="Keywords">
<meta content="7天连锁酒店集团已建立覆盖全国360多家分店,完善的酒店预订系统，让您预订酒店客房更加轻松快捷，是您出差、旅游好选择。" name="Description">
<link href="images/main.css" rel="stylesheet" type="text/css">
<script type="text/javascript">pic_domain_url = 'http://img1.7daysinn.cn//upload/webpic/';ad_arr = new Array();ad_arr[0] = new Array('www_club_left_3','1','c888db250c95bf37286efc5a07b8e303.jpg','http://www.7daysinn.cn/cent2000.html','212','80');ad_arr[1] = new Array('www_about_left_2','1','bf62a7e63c2d2a86ebb145d4f283370e.gif','http://www.7daysinn.cn/about_join.html','212','80');ad_arr[2] = new Array('www_gift_centre','1','0738c81a85248d7b292480e08d4cc8ff.jpg','http://www.7daysinn.cn/jifen.php','212','80');ad_arr[3] = new Array('www_gift_centre_banner_top','1','c9f9d9762305d57a43175488ee70a921.jpg','http://www.7daysinn.cn/my_gifts.php','555','129');ad_arr[4] = new Array('www_gift_centre_banner_top','1','e8e1d16ca50f6c50614bb9e246fab7b3.jpg','http://www.7daysinn.cn/gifts.php?qt1=49&gtp=10','555','129');ad_arr[5] = new Array('www_gift_centre_banner_top','1','312251c27e60ef7665eb61684df210d2.jpg','http://www.7daysinn.cn/activity.php?action=exchange','555','129');ad_arr[6] = new Array('www_index_new','1','b6099e9ae70764e62a2a0e030fcd9661.jpg','http://www.7daysinn.cn/activity.php?action=gjh114','200','150');ad_arr[7] = new Array('www_index_new','1','8812985fed7ab2bf7a30029c7d6c3faf.jpg','http://www.7daysinn.cn/activity.php?action=mbsale','200','150');ad_arr[8] = new Array('www_index_new','1','afb12806b2b9c48a22ae71f4a7d1833a.jpg','http://www.7daysinn.cn/wish2014.php','200','150');ad_arr[9] = new Array('www_index_new','1','124036fed19f1b27dedf23a13cd36719.jpg','http://www.7daysinn.cn/guanhuai.php','200','150');ad_arr[10] = new Array('www_index_new','1','811da1939372233b5d9edcbfa8514764.jpg','http://www.7daysinn.cn/huanlesong.php','200','150');ad_arr[11] = new Array('www_index_new','1','8cadc6db7e82e062fe2a475efe636f32.jpg','http://www.7daysinn.cn/goodmind9.php','200','150');ad_arr[12] = new Array('www_index_new','1','6b01379b551f233c8f8d864979b33a07.jpg','http://www.7daysinn.cn/sprgift.php','200','150');ad_arr[13] = new Array('www_index_new','1','295e348771aa4042cd30d3fe72ed86bd.jpg','http://www.7daysinn.cn/jifen.php','200','150');ad_arr[14] = new Array('www_index_new','1','b96d1cc2f0816116a1b8e34a5ab74f34.jpg','http://www.7daysinn.cn/activity_email_bind.php','200','150');ad_arr[15] = new Array('www_index_new','1','7064a560a4ab9587d888ac11746d75ca.jpg','http://www.7daysinn.cn/activity.php?action=cashback','200','150');ad_arr[16] = new Array('www_index_new','1','9b2ac4595a9576ca27263bf3a3f8c03d.jpg','http://www.7daysinn.cn/activity_lucky.php','200','150');ad_arr[17] = new Array('www_index_new','1','a63989984ee970f9a9a8d852e351763a.jpg','http://cps.hicdma.com//Transfer.do?from=100350&sfrom=&target=http://www.hicdma.com/zt/1304/7t/index.jsp?WT.mc_id=130523-YueHuiQT-SY_lunbo','200','150');ad_arr[18] = new Array('www_index_new','1','cbb0e5bd525d1a64b5670bd5b9498983.jpg','activity.php?action=99','200','150');ad_arr[19] = new Array('www_index_new','1','b029f2f8ef0d08c43f0468c6fd625c64.jpg','http://www.7daysinn.cn/activity.php?action=xly','200','150');ad_arr[20] = new Array('www_index_new','1','d91eed9a1476311a8e13614aa874e6af.jpg','http://www.7daysinn.cn/goodmind10.php','200','150');ad_arr[21] = new Array('www_index_new','1','9fe8c4b8d54cb1efcb408f053065ef3e.jpg','http://www1.poco.cn/topic/portofino','200','150');ad_arr[22] = new Array('www_index_new','1','b17827f557fd4f0b10a462aa49aa8b1c.jpg','http://www.7daysinn.cn/goodmind11.php','200','150');ad_arr[23] = new Array('www_index_new','1','fb528dacaf777e4c70686cb1558dc096.jpg','http://www.7daysinn.cn/activity.php?action=alipay','200','150');ad_arr[24] = new Array('www_index_new','1','8bf4eebe0fd07501e325d16bee8ab85f.jpg','http://www.7daysinn.cn/activity.php?action=1212','200','150');ad_arr[25] = new Array('www_index_new','1','696c098b80fea7843878e1b3679daad8.jpg','http://www.jjcoffetel.cc/ptbook','200','150');ad_arr[26] = new Array('www_index_new','1','9c87f9181c34116dd5d013e8a56f70d3.jpg','http://www.7daysinn.cn/activity.php?action=weixin_newyear','200','150');ad_arr[27] = new Array('www_index_new','1','31dbaf46a4ba282cb7a06b0d48ba121a.jpg','http://www.7daysinn.cn/activity.php?action=gjh2014','200','150');ad_arr[28] = new Array('www_index_new','1','9dfab9976a757c41af84f2ed798060d4.jpg','http://ww','200','150');ad_arr[29] = new Array('new_www_index_right_1','1','4d5848a8af58affd1340461308719a31.gif','http://www.7daysinn.cn/qadd.php','200','200');ad_arr[30] = new Array('new_www_index_right_2','1','7dd9e1bfa1039dd608c9836bb202fc55.gif','http://www.7daysinn.cn/about_partner.html','200','200');ad_arr[31] = new Array('www_coo_banner','1','c1766ebd8290968a364b52cbfbff1b51.jpg','http://www.7daysinn.cn/cooperate_58.html','460','120');ad_arr[32] = new Array('www_coo_right_2','1','3f60043458a14e9e76fd0f7a5716c56b.jpg','http://www.7daysinn.cn/cooperate_126.html','160','80');ad_arr[33] = new Array('www_coo_right_2','1','50f432411ef6614462c4c5ac5a87fe30.jpg','http://www.7daysinn.cn/cooperate_102.html','160','80');ad_arr[34] = new Array('www_index_left_bottom','1','624fcb57c7bce06e197e60a8015a25f4.jpg','http://www.7daysinn.cn/about_join.html#youpin','300','211');ad_arr[35] = new Array('book_left','1','4b6de15ebd56a2d1478bd189624d1b3c.jpg','http://www.7daysinn.cn/activity.php?action=weixin','218','118');ad_arr[36] = new Array('book_left','1','df40cf2fedb570c146f233aa7e1621ab.jpg','http://www.7daysinn.cn/wish2014.php','218','118');ad_arr[37] = new Array('book_left','1','2f1ed268f493f2d2d1b5485cab19d7f3.jpg','http://www.7daysinn.cn/activity_lucky.php','218','118');ad_arr[38] = new Array('new_index_center','1','24b1ba620e2dc95993fdf45bce8abfeb.jpg','http://www.7daysinn.cn/gift77.php','279','46');ad_arr[39] = new Array('new_index_center','1','2d0ff0ec9fa3d2f40734b30f5420dab8.jpg','http://www.7daysinn.cn/activity.php?action=88','279','46');ad_arr[40] = new Array('new_index_right_bottom','1','ab979baa932670c412613a73bfc3ed14.gif','http://www.7daysinn.cn/qadd.php','190','118');ad_arr[41] = new Array('new_index_right_bottom','1','831eabb4117869cc3c9bf3939a46ea72.gif','http://www.7daysinn.cn/about_partner.html','190','118');</script><script language="javascript" type="text/javascript" src="images/jquery_002.js"></script>
<script language="javascript" type="text/javascript" src="images/common.js"></script>
<script type="text/javascript"> <!-- 广告列表 -->

//document.write("\<script language=\"javascript\" type=\"text/javascript\" src=\"cache/ad_js/ad_js.js?"+Math.random()+"\"><\/script\>");  

</script><script language="javascript" type="text/javascript" src="images/ad_js.js"></script>
<script language="javascript" type="text/javascript">
<!--
		function ch_room_num_sel(){
		
			$(document).ready(function(){
				//alert($("#room_Price").attr("value"));
				//alert($("#page_room_Price").val());
				$("#room_Price").val($('#page_room_Price').val())
				var room_num = $('#room_num_sel option:selected').val(); //间数
				var	room_Price = $('#page_room_Price').val(); //房价
				var	deposit = $('#deposit').val();  //押金
				
				//$('#allroom_Price').val($('#room_num_sel option:selected').val()*$('#room_Price').val()-1+$('#deposit').val());
				var all_room_Price = (room_num*room_Price)+parseInt(deposit);
				var room_Price = room_num*room_Price;
				//$('#room_Price').val(room_num*room_Price);
				$('#page_room_Price').val(room_Price);
				
				// alert($('#allroom_Price').html());
				//测试 alert(all_room_Price);
			});
		}

$(document).ready(function() { 
	//取用户登录后名字积分
//	$.getJSON("js_common.php", function(data){
//		if(data['is_login']){
//			$("#myinfo").html(data['MebType']+'：'+data['meb_nickname']+'&nbsp;&nbsp;&nbsp;'+data['MebCent']+'积分');
//			$("#index-tips").html('<a href="logout.php" id="login_yes">退出</a><span class="spanString"></span>|<span class="spanString"></span>');
//		}else{
//			$("#index-tips").html('<a href="login.php">登录</a><span class="spanString"></span><a href="reg.php">注册</a><span class="spanString"></span>|<span class="spanString"></span>');
//		}
//	});
//	
//	var s = "<a href='my_order.php' >订单管理</a>&nbsp;<span class=nalsecimg> </span>&nbsp;<a href='my_gifts.php' target='_blank'>7天商城</a>&nbsp;<span class=nalsecimg> </span>&nbsp;<a href='manual.php?fid=2' target='_blank'>帮助中心</a>";
//	if(s){
//		$("#tool").html(s);
//	}
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
            <li><a href="guest.action?method=showOrderList">我的7天</a></li>
            <li class="on"><a href="hotellist.action?method=queryallRoomTypeVolList&jumpPage=1">分店预订</a></li>
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
            <div id="tool" class="tool"><a href="http://www.7daysinn.cn/my_order.php">订单管理</a>&nbsp;<span class="nalsecimg"> </span>&nbsp;<a href="http://www.7daysinn.cn/my_gifts.php" target="_blank">7天商城</a>&nbsp;<span class="nalsecimg"> </span>&nbsp;<a href="http://www.7daysinn.cn/manual.php?fid=2" target="_blank">帮助中心</a></div>
          </ul>
        </div>
      </div>
    </div>
  </div>
  <!--top end-->
  <link href="images/hotel.css" rel="stylesheet" type="text/css">
  <link href="images/box.css" rel="stylesheet" type="text/css">
  <script language="javascript" type="text/javascript" src="images/check_form.js"></script> 
  <script language="javascript" type="text/javascript" src="images/Validator.js"></script> 
  <script language="javascript" type="text/javascript" src="images/jquery.js"></script> 
  <script language="javascript" type="text/javascript" src="images/inn_order_pay.js"></script> 
  <script language="javascript" type="text/javascript" src="images/jquery_003.js"></script> 
  <script language="javascript" type="text/javascript" src="images/special.js"></script> 
  <script type="text/javascript" src="images/tipswindown.js"></script> 
  <script type="text/javascript" src="images/jquery_004.js"></script> 
  <script type="text/javascript" src="images/package.js"></script> 
  <script type="text/javascript" src="images/getPayInfo.js"></script> 
  <script type="text/javascript" src="images/getCashCoupons.js"></script>
  <link rel="stylesheet" href="images/tipsy.css" type="text/css">
  <script language="javascript" type="text/javascript">
<!--
var mkey='505051886';
var days ='1';
var isPayPriority = '';
var mebid = '107157881';
var isFriDay = '1';
var isHolidays = '1';
var isFreezeAccount = '';
var orderPrice = '157';
var isCanUseCashCoupons = '';
var isEnjoy88Discount = ''

if(isCanUseCashCoupons == '1'){
	var isFriDay = 0;
}
var payment_type=1;
function checkPayMethord(type){
	if(type != 2) {
		$("#pay_by_points").hide();
	}	
	if(type == 2 || type == 1 || type == 111) {
		if (type == 2) {
			$("#pay_by_points").show();
		}else if(type == 111){
			callshowPayInfo(mkey);
		}
		$("#btnpaynext")[0].className = "submit";
	}
	else{
		$("#btnpaynext")[0].className = "next";
	} 
}

function select_this(id){
	$("#selul >li").each(function(){
		$(this).removeClass('here');
	});
	$("#selul >li").eq((id-1)).addClass('here');
	$(".div_h").each(function(){
		$(this).hide();
	});	
	$("#tab_"+id).show();
	payment_type=id;
}

function setTab(name,cursel,n){
 for(i=1;i<=n;i++){
  var menu=document.getElementById(name+i);
  var con=document.getElementById("con_"+name+"_"+i);
  menu.className=i==cursel?"hover":"";
  con.style.display=i==cursel?"block":"none";
 }
}
jQuery(document).ready(function() {
	//设置cookie
	var ckUpperJson = '{"contact":{"room_num":"1","days":null,"friend_checked":["\u9648\u56fd\u5e86"],"friend_input":["\u9648\u56fd\u5e86"],"contact_name":"\u9648\u56fd\u5e86","mobile":"15116095367","email":null,"sendmobile":"1"},"goods":{"radiobutton":null,"select":[{"key":"sub9_number","value":"0"},{"key":"sub10_number","value":"0"},{"key":"sub6_number","value":"0"},{"key":"sub17_number","value":"0"},{"key":"sub24_number","value":"0"},{"key":"sub25_number","value":"0"}]},"present":{"select":[]},"price":{"present_total":"0","present_save":"","goods_total":"0","goods_save":"0"},"package":{"fivepackage":"","teneightpackage":"","happypackage":""},"created":1396765889}';
	setCookie('ckUpperJson', ckUpperJson, 600);
	showPackage(1);
	//当重载页面调用js清除返现券信息
	if(isCanUseCashCoupons == 1){
		$.ajax({
			type: 'get',
			dataType: 'json',
			url: "ajax/getCashCoupons_ajax.php?action=clearCashCoupons&mkey="+mkey,
			success: function(json){
				if($("#selectCashCoupons").length > 0){
					if(isEnjoy88Discount == 1){
						$("#selectCashCoupons").val('使用返现券订单不参与88折活动');
					}else{
						$("#selectCashCoupons").val(' 请点击选择');
					}
					$("#cashCouponsString").val('');
				}
			}
		});
	}
});

-->
</script> 
  <script language="javascript" type="text/javascript">
<!--
var talisman_json={"0":{"id":"1","pic":"fabao_01.gif","name":"77\u5143\u6cd5\u5b9d","tips":"\u53ef\u4ee577\u5143\u5165\u4f4f\u6307\u5b9a\u5206\u5e97\u81ea\u4e3b\u5927\u5e8a\u623f\u4e00\u95f4\u3002","type":"","link":""},"1":{"id":"2","pic":"fabao_02.gif","name":"\u7761\u524d\u725b\u5976","tips":"\u4f1a\u5458\u53ef\u4e8e\u5165\u4f4f\u671f\u95f4\u6bcf\u65e519\u70b9-\u6b21\u65e5\u51cc\u66682\u70b9\u6301\u4e8c\u4ee3\u8eab\u4efd\u8bc1\u6216\u6709\u82af\u4f1a\u5458\u5361\u5230\u5206\u5e97\u524d\u53f0\u8bfb\u5361\u9886\u53d6\u3002","type":"order","link":""},"2":{"id":"3","pic":"fabao_03.gif","name":"\u79ef\u5206\u653e\u5927\u955c","tips":"\u901a\u8fc7\u7f51\u7ad9\u548c\u624b\u673a(\u77ed\u4fe1\/WAP)\u9884\u8ba2\u5e76\u6210\u529f\u5165\u4f4f\uff0c\u53ef\u83b7\u76f8\u5f53\u4e8e\u8fc7\u591c\u623f\u8d39%s\u500d\u7684\u79ef\u5206\uff0c\u4e3a\u4ed6\u4eba\u4ee3\u8ba2\u51cf\u534a\u3002","type":"order","limit":"..."},"3":{"id":"4","pic":"fabao_04.gif","name":"\u8ba2\u5355\u52a0\u65f6\u5668","tips":"\u53ef\u4ee5\u5ef6\u957f\u8ba2\u5355\u4fdd\u7559\u65f6\u95f41\u5c0f\u65f6\u3002","type":"order","limit":"..."},"4":{"id":"5","pic":"fabao_05.gif","name":"\u9000\u623f\u52a0\u65f6\u5668","tips":"\u53ef\u4ee5\u5ef6\u8fdf\u9000\u623f\u65f6\u95f41\u5c0f\u65f6\u3002","type":"order","limit":"..."},"5":{"id":"6","pic":"fabao_06.gif","name":"NO SHOW\u8c41\u514d","tips":"\u53ef\u4ee5\u6d88\u9664\u66fe\u7ecf\u7684NOSHOW\u8bb0\u5f55\uff0c\u4f46\u5df2\u7ecf\u6263\u9664\u7684\u79ef\u5206\u4e0d\u518d\u8fd4\u8fd8\u3002"},"6":{"id":"7","pic":"fabao_07.gif","name":"\u9b54\u6cd5\u68d2","tips":"\u5728\u6ee1\u623f\u7684\u60c5\u51b5\u4e0b\uff0c\u60a8\u4ecd\u53ef\u4ee5\u9884\u8ba2\u623f\u95f4\uff0c\u4e00\u65e6\u6709\u623f\u95f4\u7a7a\u51fa\uff0c\u60a8\u5c06\u83b7\u5f97\u4f18\u5148\u5b89\u6392\u5165\u4f4f\u3002"},"7":{"id":"8","pic":"fabao_08.gif","name":"\u4f18\u5148\u9884\u8ba2","tips":"\u5bf9\u7d27\u5f20\u65f6\u671f(\u5982\u5e7f\u4ea4\u4f1a\uff09\u7684\u623f\u6e90\uff0c\u4eab\u6709\u901a\u8fc7\u7f51\u7ad9\u7684\u4f18\u5148\u9884\u8ba2\u6743\u3002<br>\u53ef\u4ee5\u901a\u8fc7\u6b64\u6cd5\u5b9d\u5165\u53e3\u63d0\u65e9\u7f51\u4e0a\u9884\u8ba2\u7d27\u5f20\u623f\u6e90\uff08\u6cd5\u5b9d\u4f1a\u63d0\u793a\u5f00\u901a\u65f6\u95f4\uff09\uff0c\u65e0\u6b64\u6cd5\u5b9d\u7684\u4f1a\u5458\u9700\u66f4\u8fdf\u624d\u80fd\u9884\u8ba2\u3002"},"8":{"id":"9","pic":"fabao_09.gif","name":"\u751f\u65e5\u5f69\u86cb","tips":"\u4eb2\u7231\u7684\u4f1a\u5458\uff0c\u60a8\u7684\u751f\u65e5\u5728\u672c\u6708\uff0c\u5982\u60a8\u5728\u751f\u65e5\u5f53\u5929\u5728\u4f4f\u5e97\u5e76\u8fc7\u591c\uff0c\u7f51\u7ad9\u4f1a\u6709\u795e\u79d8\u793c\u7269\u9001\u7ed9\u60a8\u54e6\uff01\u731c\u731c\u770b\u4f1a\u662f\u4ec0\u4e48\uff1f","limit":"\u4e00\u5e74\u4e00\u6b21\u673a\u4f1a,\u6709\u6548\u671f\u81f32010\u5e7412\u670831\u65e5","type":"order"},"9":{"id":"10","pic":"fabao_10.gif","name":"\u79ef\u5206\u53d8\u538b\u5668","tips":"\u53ef\u4f7f\u672c\u5f20\u8ba2\u5355\u7684\u8fc7\u591c\u5165\u4f4f\u79ef\u5206\u5728\u539f\u83b7\u79ef\u5206\u57fa\u7840\u4e0a\u589e\u52a05%-100%\u4e0d\u7b49\u300209\u5e742\u670819\u65e5\u81f309\u5e7412\u670831\u65e5\u671f\u95f4\uff0c\u9009\u62e9\u201c\u652f\u4ed8\u65b9\u5f0f\u201d\u4e3a\u201c\u4f7f\u7528\u5728\u7ebf\u9884\u4ed8\u6574\u665a\u4fdd\u7559\u623f\u95f4\u201d\u5373\u53ef\u83b7\u8d60\u3002\u652f\u4ed8\u6210\u529f\u540e\uff0c\u8bf7\u5230\u201c\u6211\u76847\u5929\u201d-\u201c\u6211\u7684\u767e\u5b9d\u7bb1\u201d\u4e2d\u67e5\u770b\u6cd5\u5b9d\u8be6\u60c5\u3002","type":"order","limit":"..."},"10":{"id":"11","pic":"fabao_11.gif","name":"\u8ba2\u5355\u52a0\u65f6\u5668","limit":"\u6709\u6548\u671f\u9650\uff1a2010\u5e748\u670831\u65e5\u4e4b\u524d","tips":"\u4f7f\u7528\u65b9\u6cd5\uff1a\u7f51\u4e0a\u9884\u8ba2\u65f6\u4f7f\u7528\uff0c\u53ef\u4ee5\u5ef6\u957f\u7f51\u4e0a\u8ba2\u5355\u4fdd\u7559\u65f6\u95f4\u4e00\u5c0f\u65f6\uff0c\u6bcf\u5f20\u8ba2\u5355\u4f7f\u7528\u4e0d\u8d85\u8fc72\u4e2a"},"11":{"id":"12","pic":"fabao_12.gif","name":"\u514d\u62bc\u91d1","tips":"\u91d1\u5361\u4f1a\u5458\u3001\u767d\u91d1\u4f1a\u5458\u5165\u4f4f\u65f6\u514d\u6536\u62bc\u91d1\u3002","type":"order","limit":"..."},"12":{"id":"13","pic":"fabao_13.gif","name":"\u514d\u67e5\u623f","tips":"\u91d1\u5361\u4f1a\u5458\u3001\u767d\u91d1\u4f1a\u5458\u9000\u623f\u65f6\u53ef\u514d\u67e5\u623f\u3002","type":"order","limit":"..."},"13":{"id":"14","pic":"fabao_14.gif","name":"\u751f\u65e5\u5f69\u86cb","tips":"\u795d\u60a8\u751f\u65e5\u5feb\u4e50\uff01\u8d60\u9001\u60a888\u65b0\u5e97\u4f53\u9a8c\uff01<br\/>\u8bf7\u5230\u5de5\u5177\u76d2\u4e2d\u67e5\u770b","limit":"...."},"14":{"id":"15","pic":"fabao_15.gif","name":"\u79ef\u5206\u53d8\u538b\u5668%s","tips":"\u53ef\u4f7f\u672c\u5f20\u8ba2\u5355\u7684\u8fc7\u591c\u5165\u4f4f\u79ef\u5206\u5728\u539f\u83b7\u79ef\u5206\u57fa\u7840\u4e0a\u589e\u52a0%s -%s \u4e0d\u7b49\uff0c\u6210\u529f\u5165\u4f4f\u540e\uff0c\u67e5\u770b\u767e\u5b9d\u7bb1\u4e2d\u672c\u6cd5\u5b9d\u540d\u79f0\u5373\u53ef\u83b7\u77e5\u83b7\u8d60\u6cd5\u5b9d\u6bd4\u4f8b\u3002\u8ba2\u5355\u53f7\uff1a%s\u3002","limit":"..."},"15":{"id":"16","pic":"fabao_16.gif","name":"99\u5143\u7279\u60e0\u623f\u6cd5\u5b9d","limit":"","tips":"\u53ef\u4ee599\u5143\u5165\u4f4f\u6307\u5b9a\u5206\u5e97\u5927\u5e8a\u623f\u4e00\u665a","type":"","link":""},"16":{"id":"17","pic":"ticketa.gif","name":"2010\u5e74A\u5957\u7968","tips":"2010\u5e74A\u5957\u7968\uff0c\u5305\u62ec\u4f4f\u623f\u3001\u673a\u7968\u3001\u79df\u8f66\u7b49\u5404\u65b9\u9762\u4f18\u60e0\uff0c\u70b9\u51fb\u67e5\u770b\u8be6\u60c5","limit":"...","link":"ticketa.php?TicketID=%d"},"17":{"id":"18","pic":"fabao_88.jpg","name":"88\u65b0\u5e97\u4f53\u9a8c","limit":"","tips":"\u53ef\u4ee588\u5143\u4f53\u9a8c\u4ef7\u9884\u8ba2\u65b0\u5f00\u5206\u5e97\u5927\u5e8a\u623f1\u665a\u3002","type":"","link":""},"19":{"id":"20","pic":"ticketa.gif","name":"2010\u5e74B\u5957\u7968","tips":"2010\u5e74B\u5957\u7968\uff0c\u5305\u62ec\u4f4f\u623f\u3001\u673a\u7968\u3001\u79df\u8f66\u7b49\u5404\u65b9\u9762\u4f18\u60e0\uff0c\u70b9\u51fb\u67e5\u770b\u8be6\u60c5","limit":"...","link":"ticketb.php?TicketID=%d"},"20":{"id":"21","pic":"fabao_10.gif","name":"100\uff05\u79ef\u5206\u53d8\u538b\u5668","tips":"\u751f\u65e5\u8d3a\u793c\uff01\u53ef\u5728\u4e0b\u4e00\u6b217\u5929\u5b98\u7f51\/\u624b\u673a\u5ba2\u6237\u7aef\/WAP\u9884\u8ba2\u65f6\u4ea7\u751f\u7684\u8fc7\u591c\u5165\u4f4f\u79ef\u5206\u57fa\u7840\u4e0a\u589e\u52a0100\uff05\u3002","limit":"..."},"50":{"id":"51","pic":"fabao_03x1.gif","name":"\u79ef\u5206\u653e\u5927\u955c\uff081\u500d\uff09","tips":"\u901a\u8fc7\u5b98\u7f51\/\u5ba2\u6237\u7aef\/\u624b\u673a\u89e6\u5c4f\u7248\u9884\u8ba2\u5165\u4f4f\uff0c\u79bb\u5e97\u540e\u53ef\u83b7\u5f97\u8fc7\u591c\u623f\u8d39\u76841\u500d\u79ef\u5206\uff0c\u4e3a\u4ed6\u4eba\u4ee3\u8ba2\u51cf\u534a\u3002","type":"order","limit":"..."},"51":{"id":"52","pic":"fabao_03x2.gif","name":"\u79ef\u5206\u653e\u5927\u955c\uff082\u500d\uff09","tips":"\u901a\u8fc7\u5b98\u7f51\/\u5ba2\u6237\u7aef\/\u624b\u673a\u89e6\u5c4f\u7248\u9884\u8ba2\u5165\u4f4f\u5e76\u5728\u7ebf\u9884\u4ed8\uff0c\u79bb\u5e97\u540e\u53ef\u83b7\u5f97\u8fc7\u591c\u623f\u8d39\u76842\u500d\u79ef\u5206\uff0c\u4e3a\u4ed6\u4eba\u4ee3\u8ba2\u51cf\u534a\u3002","type":"order","limit":"..."}};

function showPoptip(i,b){
    	if(i==0 || i==5){
    		$("#"+i+b).tipsy({gravity: 'e'});
    	}else if(i==4 || i==9){
    		$("#"+i+b).tipsy({gravity: 'w'});
    	}else if(i==1|| i==2|| i==3){
    		$("#"+i+b).tipsy({gravity: 's'});
    	}else{
    		$("#"+i+b).tipsy({gravity: 'n'});
    	}	
}

-->
</script>
  <link rel="stylesheet" href="images/tipswindown.css" type="text/css" media="all">
  <div class="blank10"></div>
  <div class="main">
    <div class="main_top"></div>
    <div class="left218"> 
      <script src="images/calendar.js" type="text/javascript"></script> 
      <script language="javascript" type="text/javascript" src="images/city_data.js"></script> 
      <script language="javascript" type="text/javascript" src="images/city_date2.js"></script>
      <style type="text/css">		
#divAddressMenu {position:absolute;dispaly:none;z-index:10000;overflow:hidden;width:156px;background-color:#faf7e7;border:solid #666 1px;font-size:12px;}		#divAddressMenu h4{text-align:left;border-bottom:solid #666 1px;color:#999999;font-size:12px;line-height:20px; font-weight:100; padding:2px 3px; margin:0;color:#70bd20;}		#divAddressMenu div{padding:3px 0;}		#divAddressMenu a {display:block;width:156px!important;width:100%;padding:1px 2px 2px 2px;cursor:default;text-decoration:none;color:#333;border:solid #ffffff 1px;background-color:none;text-align:left;}		#divAddressMenu a span{float:right;}		#divAddressMenu a:hover {background-color:#eee5b4;color:#990000;}		#divAddressMenu p{margin:3px; padding:0;font-size:12px;line-height:20px;}	
</style>
      <style type="text/css">		
.DateListBox{float:left;border:solid #FC7A7D 1px;width:147px !important;width:142px;height:168px !important;height:186px;font-size:12px;text-align:center;}		.DateListBox h1{width:100%;background-color:#FFF4F4;color:#B42929;font-size:12px;height:20px;font-weight:bold;line-height:20px;vertical-align:middle;margin:0px;}		.DateListBox div{float:left;border:solid #EB696C 1px;background-color:#EB696C;color:#FFFFFF;width:19px !important;width:17px;height:20px;font-size:12px;font-weight:bold;line-height:20px;vertical-align:middle;}		.DateListBox a{float:left;color:#990000;border:solid #ffffff 1px;background-color:#ffffff;width:19px !important;width:17px;height:19px !important;height:22px;font-size:12px;line-height:20px;vertical-align:middle;}		.DateListBox a:hover{border:solid #F2C2BD 1px;background-color:#FBEDEC;}		.DateListBox .aSelect{cursor:pointer;border:solid #DEB4B4 1px;background-color:#FAE0CF;color:#FF0000;}		.PyzyDateBox{position:absolute;z-index:10000;dispaly:none;background-color:#FFFFFF;border:solid #EBcccC 1px;height:170px;width:298px !important;width:290px;}	
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
      <div class="left_con">
        <div class="lf_b1"></div>
        <div class="lf_b2">
          <div class="left_map_con">
            <p class="line"><a href="http://www.7daysinn.cn/map.php?city=%E5%8C%97%E4%BA%AC">北京</a><span style="width:16px; display:inline-block"></span><a href="http://www.7daysinn.cn/map.php?city=%E5%B9%BF%E5%B7%9E">广州</a><span style="width:16px; display:inline-block"></span><a href="http://www.7daysinn.cn/map.php?city=%E4%B8%8A%E6%B5%B7">上海</a><span style="width:16px; display:inline-block"></span><a href="http://www.7daysinn.cn/map.php?city=%E6%B7%B1%E5%9C%B3">深圳</a></p>
            <p><a href="http://www.7daysinn.cn/map.php?city=%E6%88%90%E9%83%BD">成都</a><span style="width:16px; display:inline-block"></span><a href="http://www.7daysinn.cn/map.php?city=%E9%87%8D%E5%BA%86">重庆</a><span style="width:16px; display:inline-block"></span><a href="http://www.7daysinn.cn/map.php?city=%E6%AD%A6%E6%B1%89">武汉</a><span style="width:16px; display:inline-block"></span><a href="http://www.7daysinn.cn/map.php?city=%E9%95%BF%E6%B2%99">长沙</a></p>
            <p style="height:30px;overflow:hidden;">
              <input name="mapcity" id="mapcity" class="inp" style="color:#666666;" value="其他城市" onclick="this.value='';" maxlength="9" type="text">
              <input name="" class="btn" onclick="return citymap();" type="button">
            </p>
          </div>
        </div>
        <div class="lf_b3"></div>
        <div class="blank10"></div>
        <div class="blank10"></div>
        <img src="images/df40cf2fedb570c146f233aa7e1621ab.jpg" border="0" height="118" width="218">
        <div class="blank10"></div>
        <div> 
          <a href="http://www.7daysinn.cn/wish2014.php"><img
						src="images/2f1ed268f493f2d2d1b5485cab19d7f3.jpg" border="0"
						height="118" width="218">
        </div>
        <!-- 铂涛会好兑好睡 --> 
        <!-- End --> 
        
        <script language="javascript" type="text/javascript">
									<!--
									ShowAdPic('www_product_left_1',1,212,80);
									-->
						   </script>
        <div class="blank10"></div>
      </div>
      <script language="javascript" type="text/javascript">
		setText();
		</script> 
    </div>
    <div class="right626">
      <div class="blank10"></div>
      <div class="titlebox">
        <div class="left"><img src="images/bar_gray_left.gif" alt=""></div>
        <div class="middle">
          <h3 class="icon_round1">${HotelVo .hotelName}</h3>
          <div class="progress"><a href="javascript:;">查询</a><a href="javascript:;">选择</a><a href="javascript:;">预订</a><a class="on" href="javascript:;">核对</a><a href="javascript:;">支付</a><a class="nobg" href="javascript:;">成功</a></div>
        </div>
        <div class="right"><img src="images/bar_gray_right.gif" alt=""></div>
        <div class="clear"></div>
      </div>
      <div class="blank15"></div>
      <form id="form" name="form" method="post" action="innorder.action">
      <input type="hidden" name="method" value="InnOrder" />
      <input type="hidden" value="${HotelVo.hotelId}" name="hotelid"  id="hotelid"/>
      <input type="hidden" name="guestId" value="${guestinfo .guestId}"><!--${sessionScope .guestId}-->
      <div class="contbox">
        <div class="intitle">
          <div class="left"><img src="images/bar2_left.gif" alt=""></div>
          <h4 class="icon_round12">订单确认</h4>
          <div class="right"><img src="images/bar2_right.gif" alt=""></div>
        </div>
        <table class="tb10" cellpadding="0" cellspacing="0">
          <tbody>
            <tr>
              <td class="bggray ar" width="73" height="25">入住日期</td>
              <td width="191">
              <input id="dtStart" style="width:100px;" name="dtStart" onclick="opendtStart();event.cancelBubble=true;" value="" type="text">&nbsp;<a href="javascript:opendtStart();" onclick="event.cancelBubble=true;">
                <img id="a" src="images/lf_ic_01.jpg" border="0" height="19" width="19"></a></td>
              <td class="bggray ar" width="64">入住房型</td>
              <td width="181">${RoomTypeVo.roomTypename}<input value="${RoomTypeVo.roomTypeid}" name="roomTypeid" type="hidden" />
              </td>
            </tr>
            <tr>
              <td class="bggray ar">离店日期</td>
              <td><input id="dtEnd" style="width:100px;" name="dtEnd" onclick="opendtEnd();event.cancelBubble=true;" value="" type="text">
                &nbsp;<a href="javascript:opendtEnd();" onclick="event.cancelBubble=true;"><img id="b" src="images/lf_ic_01.jpg" border="0" height="19" width="19"></a></td>
              <td class="bggray ar">房间数量</td>
              <td><span class="cOrange">
                <select name="room_num_sel" id="room_num_sel" onchange="ch_room_num_sel()">
                  <option value="1" selected="selected">1</option>
                  <option value="2">2</option>
                  <option value="3">3</option>
                  </select>
                </span>间</td>
            </tr>
            <tr>
              <td class="bggray ar" height="30">入住人信息</td>
              <td>&nbsp;姓名：
                <input class="blueinput" name="guestname" value="${guestinfo .guestName}" id="guestName" type="text">
                </td>

                 <td colspan="2"><font style="color:#F37800;">请所有进入酒店的住客和访客携带身份证到前台登记</font></td>
              </tr>
              </tr>
            
            <tr>
              <td class="bggray ar" height="30">房费信息</td>
              <td colspan="3"> 基础房价: &nbsp;
                <input disabled="disabled"  class="room_Price"  id="page_room_Price" value="${RoomTypeVo.roomPrice}" size="5" maxlength="5"/>
                 <input type="hidden" name="roomPrice" id="roomPrice"  value="${RoomTypeVo.roomPrice}"/>
                &nbsp;元 押金：<input disabled="disabled"  id="deposit" value="200" size="5" maxlength="5"/>　<br>
              </td>
            </tr>
          </tbody>
        </table>
      </div>
      <div class="bottom"></div>
      
        <div class="blank15"></div>
        <div class="contbox">
          <div class="intitle">
            <div class="left"><img src="images/bar2_left.gif" alt=""></div>
            <h4 class="icon_round16">支付方式&nbsp;&nbsp;&nbsp;</h4>
            <div class="right"><img src="images/bar2_right.gif" alt=""></div>
            <div class="order_info3" id="specialinfo" style="display: none;"><a href="javascript:checkSpecial('1');"><font color="#FE8E0A"><u>选择普通支付方式多步支付</u></font></a></div>
            <div class="order_info3" id="specialinfo2" style="display: none;"><a href="javascript:checkSpecial('2');"><font color="#FE8E0A"><u>选择直通车支付方式一步支付</u></font></a></div>
          </div>
          <div class="blank5"></div>
          <div id="special" style="display:none"> 
            <!--不是中介会员，选择支付入口开始-->
            <table class="tb12" cellpadding="0" cellspacing="5">
              <tbody>
                <tr>
                  <td class="int"><input id="pay_methord111" onclick="checkPayMethord(111)" value="111" name="pay_methord" type="radio"></td>
                  <td class="td1"><label for="pay_methord111">支付直通车一步支付成功</label></td>
                  <td> 网上预付房费，房间整晚保留。 </td>
                </tr>
                <tr style="display:none" id="trnoshow">
                  <td class="line" colspan="3" id="backhtml"></td>
                </tr>
              </tbody>
            </table>
          </div>
          <div id="normal" style=""> 
            
            <!--不是中介会员，选择支付入口开始-->
            <table class="tb12" cellpadding="0" cellspacing="5">
              <tbody>
                <tr>
                  <td class="int"><input id="pay_methord3" onclick="checkPayMethord(3)" value="3" name="pay_methord" type="radio"></td>
                  <td class="td1"><label for="pay_methord3">使用在线预付整晚保留房间</label></td>
                  <td><!--如果是限制预付或限时预付提示--> 
                    预付房费，房间整晚保留。入住当天18点前取消订单，款项立即退回储值账户，方便您下次支付（不可以取消订单除外）。 </td>
                </tr>
              </tbody>
            </table>
            <table class="tb12" cellpadding="0" cellspacing="5">
              <tbody>
                <tr>
                  <td class="int"><input id="pay_methord1" onclick="checkPayMethord(1)" value="1" name="pay_methord" type="radio"></td>
                  <td class="td1"><label for="pay_methord1">前台支付</label></td>
                  <td> 订单保留到
                    19点，如需入住更有保障，请选择在线预付，房间整晚保留。 </td>
                </tr>
              </tbody>
            </table>
          </div>
          
          <!-- OwnCorpMebID：是否公司下挂卡--> 
          <!--ConsumeOwnerMoney:使用公司卡储值的权限--> 
          
          <!--提示信息start-->
          <div style="padding:15px 0 15px 0;">
            <table>
              <tbody>
                <tr>
                  <td><span class="cOrange"> &nbsp;&nbsp;&nbsp;个人会员单天单店预订如超过3间房（公司会员超过5间），且在30分钟内未支付或支付失败，订单将自动取消。 </span></td>
                </tr>
              </tbody>
            </table>
          </div>
          <!--提示信息end--> 
          
        </div>
        <div class="bottom"></div>
        <div class="blank15"></div>
        <div class="top"></div>
        <div class="contbox icon">
          <input name="btnpay" id="btnpay" class="prev" onclick="history.go(-1);" style="cursor:pointer" type="button">
          <input name="payment" id="payment3" value="" type="hidden">
          <input name="akey" id="akey" value="505051886" type="hidden">
          <input name="payment_type" id="payment_type3" value="下一步" type="hidden">
          <input name="btnpay" id="btnpaynext" class="next" onclick="beforeSub()" type="button">
          <!--支付直通车-->
          <input name="userSpecial" id="userSpecial" value="0" type="hidden">
          
          <!--支付直通车--> 
        </div>
        <div class="bottom"></div>
        <input name="payTimeType" id="payTimeType" value="0" type="hidden">
      </form>
    </div>
    <div class="clear"></div>
    <div class="main_bottom"></div>
  </div>
  <div class="blank10"></div>
  
  <!--世博弹出提示1 start-->
  <div id="msgPrePayBox24" style="display:none;">
    <table cellpadding="0" border="0" height="184" width="594">
      <tbody>
        <tr>
          <td align="center" bgcolor="#FFFFFF" valign="top"><table cellpadding="0" cellspacing="1" border="0" height="184" width="100%">
              <tbody>
                <tr>
                  <td rowspan="2" height="98" width="2%">&nbsp;</td>
                  <td rowspan="2" align="left" valign="middle" width="21%"><img src="images/01.jpg" height="124" width="104"></td>
                  <td align="left" height="122" width="74%"><div style="line-height:24px; font-size:14px;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                      由于该时段本房型房源紧张，预付的订单将优先排队，请登录官网在“订单管理”中进行支付，或致电<span class="cOrange">客服热线4008740087</span>预付房款全程保留您的房间，如24小时内未预付成功，订单将自动取消。如有不便，敬请谅解！ </div></td>
                  <td rowspan="2" width="3%">&nbsp;</td>
                </tr>
                <tr>
                  <td align="center"><input value="现在支付" class="input001" name="Submit2" id="payNowBtn" onclick="searchPayTypeSub('payNowBtn')" type="button">
                    &nbsp;
                    <input value="稍后支付" class="input001" name="Submit3" id="payLaterBtn" onclick="searchPayTypeSub('payLaterBtn')" type="button"></td>
                </tr>
              </tbody>
            </table></td>
        </tr>
      </tbody>
    </table>
  </div>
  <!--世博弹出提示1 end--> 
  <!--世博弹出提示2 start-->
  <div id="msgPrePayBox18" style="display:none; cursor: default;padding:0px;">
    <table cellpadding="0" cellspacing="3" border="0" height="184" width="594">
      <tbody>
        <tr>
          <td align="center" bgcolor="#FFFFFF" valign="top"><table cellpadding="0" cellspacing="1" border="0" height="184" width="100%">
              <tbody>
                <tr>
                  <td rowspan="2" height="98" width="2%">&nbsp;</td>
                  <td rowspan="2" align="left" valign="middle" width="21%"><img src="images/01.jpg" height="124" width="104"></td>
                  <td class="font14pxText" align="left" height="122" width="74%">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <div style=" line-height:24px; font-size:14px;"> 由于该时段本房型房源紧张，预付的订单将优先排队，请您于入住当 天16:00前登录官网在“订单管理”中进 行支付，或致电<span class="cOrange">客服热线4008740087</span>预付房款全程保留您的房间，如入住当天16:00前未预付成功，订单将自动取消。如有不便，敬请谅解！ </div></td>
                  <td rowspan="2" width="3%">&nbsp;</td>
                </tr>
                <tr>
                  <td align="center"><input value="现在支付" class="input001" name="Submit2" id="payNowBtn2" onclick="searchPayTypeSub('payNowBtn2')" type="button">
                    &nbsp;
                    <input value="稍后支付" class="input001" name="Submit3" id="payLaterBtn2" onclick="searchPayTypeSub('payLaterBtn2')" type="button"></td>
                </tr>
              </tbody>
            </table></td>
        </tr>
      </tbody>
    </table>
  </div>
  <!--世博弹出提示2 end--> 
  <!--世博弹出提示3 start-->
  <div id="msgPrePayBox24zj" style="display:none;">
    <table cellpadding="0" cellspacing="3" border="0" height="184" width="594">
      <tbody>
        <tr>
          <td align="center" bgcolor="#FFFFFF" valign="top"><table cellpadding="0" cellspacing="1" border="0" height="184" width="100%">
              <tbody>
                <tr>
                  <td rowspan="2" height="98" width="2%">&nbsp;</td>
                  <td rowspan="2" align="left" valign="middle" width="21%"><img src="images/01.jpg" height="124" width="104"></td>
                  <td class="font14pxText" align="left" height="122" width="74%">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    由于房源紧张，预付的订单将优先排队，请登录官网在“订单管理”中进行支付，或致电客服热线4008740087预付房款全程保留您的房间，如24小时内未预付成功，订单将自动取消。如有不便，敬请谅解！ </td>
                  <td rowspan="2" width="3%">&nbsp;</td>
                </tr>
                <tr>
                  <td align="center"><a href="#"></a>
                    <input value="现在支付" class="input001" name="Submit2z" id="payNowZj" onclick="searchPayTypeSub('payNowZj')" type="button">
                    &nbsp;
                    <input value="稍后支付" class="input001" name="Submit3z" id="payLaterBtnZj" onclick="searchPayTypeSub('payLaterBtnZj')" type="button">
                    <br>
                    <br></td>
                </tr>
              </tbody>
            </table></td>
        </tr>
      </tbody>
    </table>
  </div>
  
  <!--世博弹出提示3 end--> 
  <!--世博弹出提示4 start-->
  
  <div id="msgPrePayBox18zj" style="display:none;">
    <table cellpadding="0" border="0" height="184" width="594">
      <tbody>
        <tr>
          <td align="center" bgcolor="#FFFFFF" valign="top"><table cellpadding="0" cellspacing="1" border="0" height="184" width="100%">
              <tbody>
                <tr>
                  <td rowspan="2" height="98" width="2%">&nbsp;</td>
                  <td rowspan="2" align="left" valign="middle" width="21%"><img src="images/01.jpg" height="124" width="104"></td>
                  <td align="left" height="122" width="74%"><div style=" line-height:24px; font-size:14px;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                      
                      由于房源紧张，预付的订单将优先排队，请您于入住当 天16:00前登录官网在“订单 管理”中进 行支付，或致电客服热线4008740087预付房款全程保留您的房间，如入住当天16:00前未预付成功，订单将自动取消。如有不便，敬请谅解！ </div></td>
                  <td rowspan="2" width="3%">&nbsp;</td>
                </tr>
                <tr>
                  <td align="center"><input value="现在支付" class="bn_02" name="Submit2" id="payNowBtn2zj" onclick="searchPayTypeSub('payNowBtn2zj')" type="button">
                    &nbsp;
                    <input value="稍后支付" class="bn_02" name="Submit3" id="payLaterBtn2zj" onclick="searchPayTypeSub('payLaterBtn2zj')" type="button">
                    <br>
                    <br></td>
                </tr>
              </tbody>
            </table></td>
        </tr>
      </tbody>
    </table>
  </div>
  <!--世博弹出提示4 end-->
  
  <div id="innerHTMLS" style="display:none"> </div>
  <div class="footer">
    <p class="ab7dyas_n1"><a href="http://www.7daysinn.cn/"><span style="color:#ffffff">官网预订：www.7daysinn.cn</span></a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;客服热线：4008740087 +8620 89224488&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="http://www.7daysinn.cn/activity.php?action=weixin">微信预订 （搜“7天会”）</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="http://m.7daysinn.cn/m">手机版：m.7daysinn.cn&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;手机客户端</a></p>
    <div class="footer_sec_1">
      <div class="footer_sec_1_c">
        <p class="ab7dyas_n2"><a href="http://www.plateno.cc/" target="_blank">铂涛酒店集团 </a>| <a href="http://www.7daysinn.cn/about.php">关于7天</a> | <a href="http://www.7daysinn.cn/job.php" target="_blank">诚聘英才</a> | <a href="http://www.7daysinn.cn/about_join.html">合作加盟</a> | <a href="http://www.7daysinn.cn/xzzs.html">县镇招商</a> |<a href="http://www.7daysinn.cn/about_contact.html">联系我们</a> | <a href="http://www.7daysinn.cn/about_link.html">友情链接</a> | <a href="http://www.7daysinn.cn/sitemap.php">网站地图</a></p>
        <p class="ab7dyas_n3"><a href="http://beijing.7daysinn.cn/">北京7天</a> | <a href="http://shenzhen.7daysinn.cn/">深圳7天</a> | <a href="http://guangzhou.7daysinn.cn/">广州7天</a> | <a href="http://shanghai.7daysinn.cn/">上海7天</a></p>
        <p class="ab7dyas_n4">铂涛酒店集团7天连锁酒店版权所有 ©2005-2013 <a href="http://www.miitbeian.gov.cn/" traget="_blank" class="ab7dyas_n4">粤ICP备 05069521号</a> <font color="#FFFFFF">(208)</font></p>
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
<iframe id="CalFrame" name="CalFrame" src="images/datecom.htm" style="display: none; position: absolute; z-index: 110; left: 316px; top: 253px;" frameborder="0" height="190" scrolling="no" width="452"></iframe>
<iframe style="position: absolute; z-index: 1; display: none;" id="ifmdivAddressMenu"></iframe>
<div style="display: none;" id="divAddressMenu"></div>
</body>
</html> 

