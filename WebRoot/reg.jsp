<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml"><head><meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  <title> 7天连锁酒店 </title>
  <base href="<%=basePath%>">
  <meta http-equiv="Cache-control" content="private">
    	<meta http-equiv="pragma" content="no-cache">
        <title>7天连锁酒店官网——经济型快捷连锁酒店预订首选品牌</title>
	<meta content="7天连锁酒店，酒店预订，分店预订，7天连锁经济型酒店" name="Keywords">
	<meta content="7天连锁酒店集团酒店预订已建立覆盖全国家分店的经济型快捷连锁酒店网络，完善的酒店预订系统，让您预订酒店客房更加轻松快捷，是您出差、旅游好选择。" name="Description">
    <link href="images/main.css" rel="stylesheet" type="text/css">
 <script type="text/javascript">pic_domain_url = 'http://img1.7daysinn.cn//upload/webpic/';ad_arr = new Array();ad_arr[0] = new Array('www_club_left_3','1','c888db250c95bf37286efc5a07b8e303.jpg','http://www.7daysinn.cn/cent2000.html','212','80');ad_arr[1] = new Array('www_about_left_2','1','bf62a7e63c2d2a86ebb145d4f283370e.gif','http://www.7daysinn.cn/about_join.html','212','80');ad_arr[2] = new Array('www_gift_centre','1','0738c81a85248d7b292480e08d4cc8ff.jpg','http://www.7daysinn.cn/jifen.php','212','80');ad_arr[3] = new Array('www_gift_centre_banner_top','1','c9f9d9762305d57a43175488ee70a921.jpg','http://www.7daysinn.cn/my_gifts.php','555','129');ad_arr[4] = new Array('www_gift_centre_banner_top','1','e8e1d16ca50f6c50614bb9e246fab7b3.jpg','http://www.7daysinn.cn/gifts.php?qt1=49&gtp=10','555','129');ad_arr[5] = new Array('www_gift_centre_banner_top','1','312251c27e60ef7665eb61684df210d2.jpg','http://www.7daysinn.cn/activity.php?action=exchange','555','129');ad_arr[6] = new Array('www_index_new','1','b6099e9ae70764e62a2a0e030fcd9661.jpg','http://www.7daysinn.cn/activity.php?action=gjh114','200','150');ad_arr[7] = new Array('www_index_new','1','8812985fed7ab2bf7a30029c7d6c3faf.jpg','http://www.7daysinn.cn/activity.php?action=mbsale','200','150');ad_arr[8] = new Array('www_index_new','1','afb12806b2b9c48a22ae71f4a7d1833a.jpg','http://www.7daysinn.cn/wish2014.php','200','150');ad_arr[9] = new Array('www_index_new','1','124036fed19f1b27dedf23a13cd36719.jpg','http://www.7daysinn.cn/guanhuai.php','200','150');ad_arr[10] = new Array('www_index_new','1','811da1939372233b5d9edcbfa8514764.jpg','http://www.7daysinn.cn/huanlesong.php','200','150');ad_arr[11] = new Array('www_index_new','1','8cadc6db7e82e062fe2a475efe636f32.jpg','http://www.7daysinn.cn/goodmind9.php','200','150');ad_arr[12] = new Array('www_index_new','1','6b01379b551f233c8f8d864979b33a07.jpg','http://www.7daysinn.cn/sprgift.php','200','150');ad_arr[13] = new Array('www_index_new','1','295e348771aa4042cd30d3fe72ed86bd.jpg','http://www.7daysinn.cn/jifen.php','200','150');ad_arr[14] = new Array('www_index_new','1','b96d1cc2f0816116a1b8e34a5ab74f34.jpg','http://www.7daysinn.cn/activity_email_bind.php','200','150');ad_arr[15] = new Array('www_index_new','1','7064a560a4ab9587d888ac11746d75ca.jpg','http://www.7daysinn.cn/activity.php?action=cashback','200','150');ad_arr[16] = new Array('www_index_new','1','9b2ac4595a9576ca27263bf3a3f8c03d.jpg','http://www.7daysinn.cn/activity_lucky.php','200','150');ad_arr[17] = new Array('www_index_new','1','a63989984ee970f9a9a8d852e351763a.jpg','http://cps.hicdma.com//Transfer.do?from=100350&sfrom=&target=http://www.hicdma.com/zt/1304/7t/index.jsp?WT.mc_id=130523-YueHuiQT-SY_lunbo','200','150');ad_arr[18] = new Array('www_index_new','1','cbb0e5bd525d1a64b5670bd5b9498983.jpg','activity.php?action=99','200','150');ad_arr[19] = new Array('www_index_new','1','b029f2f8ef0d08c43f0468c6fd625c64.jpg','http://www.7daysinn.cn/activity.php?action=xly','200','150');ad_arr[20] = new Array('www_index_new','1','d91eed9a1476311a8e13614aa874e6af.jpg','http://www.7daysinn.cn/goodmind10.php','200','150');ad_arr[21] = new Array('www_index_new','1','9fe8c4b8d54cb1efcb408f053065ef3e.jpg','http://www1.poco.cn/topic/portofino','200','150');ad_arr[22] = new Array('www_index_new','1','b17827f557fd4f0b10a462aa49aa8b1c.jpg','http://www.7daysinn.cn/goodmind11.php','200','150');ad_arr[23] = new Array('www_index_new','1','fb528dacaf777e4c70686cb1558dc096.jpg','http://www.7daysinn.cn/activity.php?action=alipay','200','150');ad_arr[24] = new Array('www_index_new','1','8bf4eebe0fd07501e325d16bee8ab85f.jpg','http://www.7daysinn.cn/activity.php?action=1212','200','150');ad_arr[25] = new Array('www_index_new','1','696c098b80fea7843878e1b3679daad8.jpg','http://www.jjcoffetel.cc/ptbook','200','150');ad_arr[26] = new Array('www_index_new','1','9c87f9181c34116dd5d013e8a56f70d3.jpg','http://www.7daysinn.cn/activity.php?action=weixin_newyear','200','150');ad_arr[27] = new Array('www_index_new','1','31dbaf46a4ba282cb7a06b0d48ba121a.jpg','http://www.7daysinn.cn/activity.php?action=gjh2014','200','150');ad_arr[28] = new Array('www_index_new','1','9dfab9976a757c41af84f2ed798060d4.jpg','http://ww','200','150');ad_arr[29] = new Array('new_www_index_right_1','1','4d5848a8af58affd1340461308719a31.gif','http://www.7daysinn.cn/qadd.php','200','200');ad_arr[30] = new Array('new_www_index_right_2','1','7dd9e1bfa1039dd608c9836bb202fc55.gif','http://www.7daysinn.cn/about_partner.html','200','200');ad_arr[31] = new Array('www_coo_banner','1','c1766ebd8290968a364b52cbfbff1b51.jpg','http://www.7daysinn.cn/cooperate_58.html','460','120');ad_arr[32] = new Array('www_coo_right_2','1','3f60043458a14e9e76fd0f7a5716c56b.jpg','http://www.7daysinn.cn/cooperate_126.html','160','80');ad_arr[33] = new Array('www_coo_right_2','1','50f432411ef6614462c4c5ac5a87fe30.jpg','http://www.7daysinn.cn/cooperate_102.html','160','80');ad_arr[34] = new Array('www_index_left_bottom','1','9c2e2fcd5cf7d85d871f541cf63c7be8.jpg','http://www.7daysinn.cn/about_join.html','300','211');ad_arr[35] = new Array('book_left','1','4b6de15ebd56a2d1478bd189624d1b3c.jpg','http://www.7daysinn.cn/activity.php?action=weixin','218','118');ad_arr[36] = new Array('book_left','1','df40cf2fedb570c146f233aa7e1621ab.jpg','http://www.7daysinn.cn/wish2014.php','218','118');ad_arr[37] = new Array('book_left','1','2f1ed268f493f2d2d1b5485cab19d7f3.jpg','http://www.7daysinn.cn/activity_lucky.php','218','118');ad_arr[38] = new Array('new_index_center','1','24b1ba620e2dc95993fdf45bce8abfeb.jpg','http://www.7daysinn.cn/gift77.php','279','46');ad_arr[39] = new Array('new_index_center','1','2d0ff0ec9fa3d2f40734b30f5420dab8.jpg','http://www.7daysinn.cn/activity.php?action=88','279','46');ad_arr[40] = new Array('new_index_right_bottom','1','ab979baa932670c412613a73bfc3ed14.gif','http://www.7daysinn.cn/qadd.php','190','118');ad_arr[41] = new Array('new_index_right_bottom','1','831eabb4117869cc3c9bf3939a46ea72.gif','http://www.7daysinn.cn/about_partner.html','190','118');</script>  <script language="javascript" type="text/javascript" src="images/jquery-1.3.2.min.js"></script>
  <script language="javascript" type="text/javascript" src="images/common.js"></script>
 <script type="text/javascript"> <!-- 广告列表 -->

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
	
	var s = "";
	if(s){
		$("#tool").html(s);
	}
});
-->
</script><style id="clearly_highlighting_css" type="text/css">/* selection */ html.clearly_highlighting_enabled ::-moz-selection { background: rgba(246, 238, 150, 0.99); } html.clearly_highlighting_enabled ::selection { background: rgba(246, 238, 150, 0.99); } /* cursor */ html.clearly_highlighting_enabled {    /* cursor and hot-spot position -- requires a default cursor, after the URL one */    cursor: url("chrome-extension://pioclpoplcdbaefihamjohnefbikjilc/clearly/images/highlight--cursor.png") 14 16, text; } /* highlight tag */ em.clearly_highlight_element {    font-style: inherit !important; font-weight: inherit !important;    background-image: url("chrome-extension://pioclpoplcdbaefihamjohnefbikjilc/clearly/images/highlight--yellow.png");    background-repeat: repeat-x; background-position: top left; background-size: 100% 100%; } /* the delete-buttons are positioned relative to this */ em.clearly_highlight_element.clearly_highlight_first { position: relative; } /* delete buttons */ em.clearly_highlight_element a.clearly_highlight_delete_element {    display: none; cursor: pointer;    padding: 0; margin: 0; line-height: 0;    position: absolute; width: 34px; height: 34px; left: -17px; top: -17px;    background-image: url("chrome-extension://pioclpoplcdbaefihamjohnefbikjilc/clearly/images/highlight--delete-sprite.png"); background-repeat: no-repeat; background-position: 0px 0px; } em.clearly_highlight_element a.clearly_highlight_delete_element:hover { background-position: -34px 0px; } /* retina */ @media (min--moz-device-pixel-ratio: 2), (-webkit-min-device-pixel-ratio: 2), (min-device-pixel-ratio: 2) {    em.clearly_highlight_element { background-image: url("chrome-extension://pioclpoplcdbaefihamjohnefbikjilc/clearly/images/highlight--yellow@2x.png"); }    em.clearly_highlight_element a.clearly_highlight_delete_element { background-image: url("chrome-extension://pioclpoplcdbaefihamjohnefbikjilc/clearly/images/highlight--delete-sprite@2x.png"); background-size: 68px 34px; } } </style><style>[touch-action="none"]{ -ms-touch-action: none; touch-action: none; }[touch-action="pan-x"]{ -ms-touch-action: pan-x; touch-action: pan-x; }[touch-action="pan-y"]{ -ms-touch-action: pan-y; touch-action: pan-y; }[touch-action="scroll"],[touch-action="pan-x pan-y"],[touch-action="pan-y pan-x"]{ -ms-touch-action: pan-x pan-y; touch-action: pan-x pan-y; }</style></head>

 

<body>

<div id="headet_info" class="headet_info" style="display: none;"></div>

<div class="content">
	<div class="robotScroll"><a href="http://www.7daysinn.cn/sec_robot.php"><img src="images/7robot.gif" border="0"></a></div>	
  <!--top start-->
  <div class="header">
    <div class="logo"><a href="index.jsp"><img src="images/logo.gif" title="返回首页"></a></div>
    <div class="toptent">
      <div class="listcode">
      <ul>
			<li style="margin-right: 8px;margin-top:18px;">
			<span id="index-tips" style=" display:inline;"><a href="http://www.7daysinn.cn/login.php">登录</a><span class="spanString"></span><a href="images/reg.htm">注册</a><span class="spanString"></span>|<span class="spanString"></span></span><a href="http://m.7daysinn.cn/m" target="_blank">手机版</a><span class="spanString"></span><a href="http://verified.weibo.com/group/7daysinn?o=1" target="_blank">7天官博</a><span class="spanString"></span>|<span class="spanString"></span><a href="http://www.7daysinn.cn/">7天首页</a>
			</li>
	</ul>
      </div>
	  <div class="topnavcont">
	    <div class="navlis">
		  <ul>
		  <li><a href="guest.action?method=showOrderList">我的7天</a></li>
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
	    <div class="user_info" id="myinfo"></div>
		<div class="sub_menu">
		<ul>
		  <div id="tool" class="tool"></div>					
		</ul>
	  </div>
    </div>
  </div>
</div>
<!--top end-->
<style>
<!--
div{text-align:left;}
#scode a{color:#226399;}
#scode a:hover{color:#FF8400;}
.confirmBtn {background: url(http://img1.7daysinn.cn//images/bg_icon5.gif) no-repeat;border:none;height:21px;line-height:18px;margin:1px 5px 0px; width:49px;cursor:pointer;}
-->
</style>
<link rel="stylesheet" href="images/tipswindown.css" type="text/css" media="all">
<script type="text/javascript" src="images/tipswindown.js"></script>
<script type="text/javascript" src="images/jquery_003.js"></script>
<script type="text/javascript" src="images/autoput.js"></script>
<script type="text/javascript" src="images/validator_reg.js"></script>
<script type="text/javascript" src="images/ValidatorHelper.js"></script>
<script type="text/javascript">
$().ready(function(){
	RegInit();
	$("#isread").click(popTips);
	$("#isread-text").click(popTips);
	$("#sDocNo").bind('blur', setBir);
	$("#nDoctType").bind('change', DoctTypeChange);
});


	
function clearSafeCode(type){
	$("#safecode_"+type).html('');
}		
</script>
<script type="text/javascript" src="images/jquery.autocomplete.js"></script>
<link rel="stylesheet" type="text/css" href="images/jquery.autocomplete.css">
<style type="text/css">
<!--
.loginad{position:relative;width:260px;height:220px; background-image:url(login_pic9.gif);}
.loginad .ad{position:absolute;z-index:1;left:89px;top:9px;font-size:20px;font-weight:bold;font-family: Arial;color: #9e2f1d;}
#cursorMessageDiv {
	position: absolute;
	z-index: 99999;	
	border: solid 1px #CCC;
	background: #FFF;
	padding: 2px;
	margin: 0px;
	display: none;
	font-size:12px;
}
	-->
</style>


<link href="images/member.css" rel="stylesheet" type="text/css">
<link href="images/reg.css" rel="stylesheet" type="text/css">

<div id="nnzc001">
    <div id="nnzc002">
        <div id="nnzc002_1">
        	<a href="http://www.7daysinn.cn/gift77.php">
        	<img src="images/pic.jpg" width="480" height="440">
        	</a>
        </div>
        <div id="nnzc002_2">
            <div id="nnzc004" class="yellow f20 bold">注册立享77元住五星级大床房</div>
			<form name="form" id="form" onsubmit="return rtnValidator(this,3)" method="post" action="http://www.7daysinn.cn/reg_member.php">
	            <table width="100%" border="0" align="center" cellpadding="0" cellspacing="0" class="f12 regtab">
	                <tbody><tr>
	                    <td width="30%" align="right">姓　　名：&nbsp;</td>
	                    <td width="70%" align="left">
	                    	<input type="text" class="input0" id="s_MebName" name="s_MebName" datatype="Chinese" msg="姓名只允许中文" mod_notice_tip="中文:姓/名" mod_down_tip="姓名只允许中文" maxlength="20" size="30">
	                    	<span class="cOrange">*</span>	                    	
                    	</td>
	                </tr>
	                <tr>
	                    <td width="30%" align="right">密　　码：&nbsp;</td>
	                    <td width="70%" align="left">
	                    	<input type="password" class="input0" id="sPassWord" name="sPassWord" maxlength="20" size="30">                  	
                    	</td>
	                </tr>
	                <tr>
	                    <td width="30%" align="right">确认密码：&nbsp;</td>
	                    <td width="70%" align="left">
	                    	<input type="password" class="input0" id="sVerifyPassWord" name="sVerifyPassWord" maxlength="20" size="30">                 	
                    	</td>
	                </tr>
	                <tr>
	                    <td align="right">手机号码：&nbsp;</td>
	                    <td align="left">
	                    	<input type="text" class="input0 colorgray" size="30" name="sMobile" id="sMobile" datatype="Mobile" msg="请输入正确的手机号码" mod_notice_tip="接收验证和预订成功短信" datacheck="2" maxlength="11" value="" style="color: rgb(153, 153, 153);"> <span class="cOrange">*</span>
						</td>
	                </tr>
	                <tr>
	                    <td align="right">电子邮箱：&nbsp;</td>
	                    <td align="left">
	                    	<input class="input0 colorgray" size="30" name="sEmail" id="sEmail" type="text" value="接收预订成功邮件" style="" onfocus="javascript:if (this.value==&#39;接收预订成功邮件&#39;) {this.value=&#39;&#39;;this.style.color=&#39;#333&#39;}" onblur="javascript:if (this.value==&#39;&#39;) {this.value=&#39;接收预订成功邮件&#39;; this.style.color=&#39;#999&#39;}" maxlength="50"> <span style="color:#FF8B00;"> <span class="cOrange">*</span>	                    	
                    	</span></td>
	                </tr>
	                <tr>
	                    <td align="right">证件类型：&nbsp;</td>
	                    <td align="left">
	                    	<select class="input0" name="nDoctType" id="nDoctType" style="width:172px;height: 20px;" datatype="Require" msg="请选择证件类型"><option label="身份证/驾驶证" value="10">身份证/驾驶证</option>
<option label="台湾居民来往大陆通行证" value="11">台湾居民来往大陆通行证</option>
<option label="港澳居民来往大陆通行证" value="12">港澳居民来往大陆通行证</option>
<option label="外籍护照" value="13">外籍护照</option>
<option label="外交护照" value="14">外交护照</option>
<option label="公务护照" value="15">公务护照</option>
<option label="因公普通护照" value="52">因公普通护照</option>
<option label="军官证" value="55">军官证</option>
<option label="士兵证" value="56">士兵证</option>
</select> <span class="cOrange">*</span>      
	                    </td>
	                </tr>
	                <tr>
	                    <td align="right">证件号码：&nbsp;</td>
	                    <td align="left">
	                    	<input type="text" class="input0" size="30" name="sDoctNo" id="sDocNo" datatype="LimitB" min="6" max="38" datacheck="2" msg="请填写正确的证件号码，最少6位!" mod_down_tip=""> <span class="cOrange">*</span>
                    	</td>
	                </tr>
	                <tr id="trBir" style="display:none;">
	                    <td align="right">出生日期：&nbsp;</td>
	                    <td align="left">	                    	
                        	<select style="width:57px;border: 1px #9CC1D2 solid;" name="bir_year" id="bir_year" onchange="setBirDays()">
                                                              		<option value="1920">1920</option>
								                               		<option value="1921">1921</option>
								                               		<option value="1922">1922</option>
								                               		<option value="1923">1923</option>
								                               		<option value="1924">1924</option>
								                               		<option value="1925">1925</option>
								                               		<option value="1926">1926</option>
								                               		<option value="1927">1927</option>
								                               		<option value="1928">1928</option>
								                               		<option value="1929">1929</option>
								                               		<option value="1930">1930</option>
								                               		<option value="1931">1931</option>
								                               		<option value="1932">1932</option>
								                               		<option value="1933">1933</option>
								                               		<option value="1934">1934</option>
								                               		<option value="1935">1935</option>
								                               		<option value="1936">1936</option>
								                               		<option value="1937">1937</option>
								                               		<option value="1938">1938</option>
								                               		<option value="1939">1939</option>
								                               		<option value="1940">1940</option>
								                               		<option value="1941">1941</option>
								                               		<option value="1942">1942</option>
								                               		<option value="1943">1943</option>
								                               		<option value="1944">1944</option>
								                               		<option value="1945">1945</option>
								                               		<option value="1946">1946</option>
								                               		<option value="1947">1947</option>
								                               		<option value="1948">1948</option>
								                               		<option value="1949">1949</option>
								                               		<option value="1950">1950</option>
								                               		<option value="1951">1951</option>
								                               		<option value="1952">1952</option>
								                               		<option value="1953">1953</option>
								                               		<option value="1954">1954</option>
								                               		<option value="1955">1955</option>
								                               		<option value="1956">1956</option>
								                               		<option value="1957">1957</option>
								                               		<option value="1958">1958</option>
								                               		<option value="1959">1959</option>
								                               		<option value="1960">1960</option>
								                               		<option value="1961">1961</option>
								                               		<option value="1962">1962</option>
								                               		<option value="1963">1963</option>
								                               		<option value="1964">1964</option>
								                               		<option value="1965">1965</option>
								                               		<option value="1966">1966</option>
								                               		<option value="1967">1967</option>
								                               		<option value="1968">1968</option>
								                               		<option value="1969">1969</option>
								                               		<option value="1970">1970</option>
								                               		<option value="1971">1971</option>
								                               		<option value="1972">1972</option>
								                               		<option value="1973">1973</option>
								                               		<option value="1974">1974</option>
								                               		<option value="1975">1975</option>
								                               		<option value="1976">1976</option>
								                               		<option value="1977">1977</option>
								                               		<option value="1978">1978</option>
								                               		<option value="1979">1979</option>
								                               		<option value="1980" selected="selected">1980</option>
								                               		<option value="1981">1981</option>
								                               		<option value="1982">1982</option>
								                               		<option value="1983">1983</option>
								                               		<option value="1984">1984</option>
								                               		<option value="1985">1985</option>
								                               		<option value="1986">1986</option>
								                               		<option value="1987">1987</option>
								                               		<option value="1988">1988</option>
								                               		<option value="1989">1989</option>
								                               		<option value="1990">1990</option>
								                               		<option value="1991">1991</option>
								                               		<option value="1992">1992</option>
								                               		<option value="1993">1993</option>
								                               		<option value="1994">1994</option>
								                               		<option value="1995">1995</option>
								                               		<option value="1996">1996</option>
								                               		<option value="1997">1997</option>
								                               		<option value="1998">1998</option>
								                               		<option value="1999">1999</option>
								                               		<option value="2000">2000</option>
								                               		<option value="2001">2001</option>
								                               		<option value="2002">2002</option>
								                               		<option value="2003">2003</option>
								                               		<option value="2004">2004</option>
								                               		<option value="2005">2005</option>
								                               		<option value="2006">2006</option>
								                               		<option value="2007">2007</option>
								                               		<option value="2008">2008</option>
								                               		<option value="2009">2009</option>
								                               		<option value="2010">2010</option>
								                               		<option value="2011">2011</option>
								                               		<option value="2012">2012</option>
								                               		<option value="2013">2013</option>
																
							</select>年&nbsp;<select style="width:40px;border: 1px #9CC1D2 solid;" name="bir_month" id="bir_month" onchange="setBirDays()">
																	<option value="1">1</option>
																	<option value="2">2</option>
																	<option value="3">3</option>
																	<option value="4">4</option>
																	<option value="5">5</option>
																	<option value="6">6</option>
																	<option value="7">7</option>
																	<option value="8" selected="selected">8</option>
																	<option value="9">9</option>
																	<option value="10">10</option>
																	<option value="11">11</option>
																	<option value="12">12</option>
									
							</select>月&nbsp;<select style="width:40px;border: 1px #9CC1D2 solid;" name="bir_day" id="bir_day">
																	<option value="1">1</option>
																	<option value="2">2</option>
																	<option value="3">3</option>
																	<option value="4">4</option>
																	<option value="5">5</option>
																	<option value="6">6</option>
																	<option value="7">7</option>
																	<option value="8">8</option>
																	<option value="9">9</option>
																	<option value="10">10</option>
																	<option value="11">11</option>
																	<option value="12">12</option>
																	<option value="13">13</option>
																	<option value="14">14</option>
																	<option value="15">15</option>
																	<option value="16">16</option>
																	<option value="17">17</option>
																	<option value="18">18</option>
																	<option value="19">19</option>
																	<option value="20">20</option>
																	<option value="21">21</option>
																	<option value="22">22</option>
																	<option value="23">23</option>
																	<option value="24">24</option>
																	<option value="25">25</option>
																	<option value="26">26</option>
																	<option value="27">27</option>
																	<option value="28" selected="selected">28</option>
																	<option value="29">29</option>
																	<option value="30">30</option>
																	<option value="31">31</option>
															</select>日&nbsp;<span class="cOrange">*</span>
							<label id="bir_label" style="color:red" ;=""></label>
	                    </td>
	                </tr>
	                <tr id="trSex" style="display:none;">
	                    <td align="right">性　　别：&nbsp;</td>
	                    <td align="left">
	                    	<input type="radio" value="男" name="sSex" checked=""><span>男</span>
	                    	<input type="radio" value="女" name="sSex"><span>女</span>
	                    </td>
	                </tr>
	                <tr>
	                    <td style="height:32px;" align="right">验&nbsp;证&nbsp;&nbsp;码：&nbsp;</td>
	                    <td align="left" valign="middle" class="safecode">
	                    	<input name="safecode" id="safecode" type="text" style="width:65px;margin:6px 0px 6px 0px;" class="input1 colorgray" value="请点击输入" onblur="setLeaveMsg(this, 2);" onfocus="cleanLeaveMsg(this, 2);">	                    	                    	
	                    	<label id="lbl_verify"></label>
                    	</td>
	                </tr>	               
	                <tr>
	                    <td height="55" colspan="2" align="center">
		                    <label><input type="checkbox" name="isread" id="isread" style="float:none;"></label><label class="subtd_item" id="isread-text">我已阅读并同意7天连锁酒店<strong>服务条款</strong></label>
		                    <div style="margin-top:5px;"></div>
							<div style="height:22px; display:block;"><div id="lbl_error" class="errmsg" style="width:99%;"></div></div>
							<div style="margin-top:5px;"></div>		                    
		                    <a href="javascript:document.getElementById('subm').click();" style="display:none;" class="blue"><img src="images/but01.gif" width="89" height="24"></a>
		                    <input type="submit" name="subm" id="subm" class="input001" value="立即注册">		                    		                    		                    
	                    </td>
	                </tr>
	            </tbody></table>
            	<input type="hidden" name="sid" value="">
            </form>
        </div>
    </div><!--nnzc002-->
    <div class="clear"></div>
    <div id="nnzc005" class="f20 white bold">会员专享</div>
    <div id="nnzc006">    
        <div id="nnzc006_1"><a href="http://www.7daysinn.cn/manual.php?fid=2&cid=16"><img src="images/mbs_01.gif"></a></div>
        <div id="nnzc006_2"><a href="http://www.7daysinn.cn/manual.php?fid=2&cid=16"><img src="images/mbs_02.gif"></a></div>
        <div id="nnzc006_3"><a href="http://www.7daysinn.cn/manual.php?fid=2&cid=16"><img src="images/mbs_03.gif"></a></div>
        <div id="nnzc006_4"><a href="http://www.7daysinn.cn/manual.php?fid=2&cid=16"><img src="images/mbs_04.gif"></a></div>
        <div id="nnzc006_5"><a href="http://www.7daysinn.cn/manual.php?fid=2&cid=16"><img src="images/mbs_05.gif"></a></div>
        <div id="nnzc006_6"><a href="http://www.7daysinn.cn/gift77.php"><img src="images/mbs_07_77.gif" width="150" height="67"></a></div>    
    </div><!--nnzc006 end-->
    <div id="nnzc0051" class="f20 white bold">星级产品 优质服务</div>
    <div id="nnzc007">    
        <div id="nnzc007_1"><a href="http://www.7daysinn.cn/product.php"><img src="images/Q_Plus.gif" width="157" height="172"></a></div>
        <div id="nnzc007_2"><img src="images/02icon.jpg"></div>
        <div id="nnzc007_3"><a href="http://www.7daysinn.cn/product.php"><img src="images/03icon.jpg"></a></div>    
    </div><!--nzc008 end-->
</div><!--nnzc001 end-->
<div class="agreement" style="display:none;">
	<div id="simTestContent" class="simScrollCont">
                <iframe src="images/term.htm" frameborder="0" height="360px" width="100%"></iframe>
                <div style="text-align:center;height:30px; padding-top:10px;background:#ECF9FF;"><input type="button" id="confirmTerm" value="确定" onclick="confirmTerm(1);" class="confirmBtn"></div>
	</div>
	
	<div id="mobielInfoID">
		<div id="changeInfo" style="text-align:left;">
		  <div style="margin-left:50px;margin-top:20px;" id="sendInfo"></div>
		  <div style="margin-left:75px;margin-top:10px;">请填写短信里的验证码确认</div>
		  <div style="margin-left:85px;margin-top:10px;"><input type="text" maxlength="8" id="mobileCode" size="10px" onfocus="mobileCodeFocus();"><input type="button" id="submitCode" value="确认" style="color:#BF0000;" onclick="javascript:deleteMobile()"></div>
		  <div style="margin-left:125px;margin-top:5px;color:red;" id="tishi"></div>
		 </div>
		  </div>
	 
	 <div id="failID" style="text-align:left;">
	 	<div style="margin-left:75px;margin-top:40px;color:red;font-size:15px;">验证出错，请稍后验证</div>
	 </div>		
	 
	 <div id="checkNums" style="text-align:left;">
	 	<div style="margin-left:50px;margin-top:40px;color:red;font-size:15px;">验证次数过多，请明天重新验证</div>
	 </div>	
</div><div class="footer">

   <p class="ab7dyas_n1"><a href="http://www.7daysinn.cn/"><span style="color:#ffffff">官网预订：www.7daysinn.cn</span></a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;客服热线：4008740087 +8620 89224488&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="http://www.7daysinn.cn/activity.php?action=weixin">微信预订 （搜“7天会”）</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="http://m.7daysinn.cn/m">手机版：m.7daysinn.cn&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;手机客户端</a></p>
   	<div class="footer_sec_1">
		<div class="footer_sec_1_c">
            <p class="ab7dyas_n2"><a href="http://www.plateno.cc/" target="_blank">铂涛酒店集团 </a>| <a href="http://www.7daysinn.cn/about.php">关于7天</a> | <a href="http://www.7daysinn.cn/job.php" target="_blank">诚聘英才</a> | <a href="http://www.7daysinn.cn/about_join.html">合作加盟</a> | <a href="http://www.7daysinn.cn/xzzs.html">县镇招商</a> |<a href="http://www.7daysinn.cn/about_contact.html">联系我们</a> | <a href="http://www.7daysinn.cn/about_link.html">友情链接</a> | <a href="http://www.7daysinn.cn/sitemap.php">网站地图</a></p>
            <p class="ab7dyas_n3"><a href="http://beijing.7daysinn.cn/">北京7天</a>  |  <a href="http://shenzhen.7daysinn.cn/">深圳7天</a> | <a href="http://guangzhou.7daysinn.cn/">广州7天</a> | <a href="http://shanghai.7daysinn.cn/">上海7天</a></p>
            <p class="ab7dyas_n4">铂涛酒店集团7天连锁酒店版权所有 ©2005-2013 <a href="http://www.miitbeian.gov.cn/" traget="_blank" class="ab7dyas_n4">粤ICP备 05069521号</a> <font color="#FFFFFF">(204)</font></p>
    	</div>
    </div>
    <div class="footer_sec_2"><a target="_blank" href="http://guangzhou.cyberpolice.cn/netalarm/netalarm/Welcome.jsp?bano=4401050100071"><img height="53" border="0" width="40" galleryimg="no" title="点此查看备案情况" src="images/waicon.gif"></a>
    </div>
    
</div>

<!--footer end-->

</div>
<input type="hidden" name="et_MebID" id="et_MebID" value="">
<div id="footet_info" style="overflow:hidden;margin:0 auto;text-align:left;width:880px;"> </div><script language="javascript" src="images/hf.js"></script>
<script>hf();</script>

<div id="cursorMessageDiv" style="display: none;"></div></body></html>