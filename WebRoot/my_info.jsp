<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>7天连锁酒店</title>
<base href="<%=basePath%>">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta http-equiv="Cache-control" content="private">
<meta http-equiv="pragma" content="no-cache">
<title>７天连锁酒店官网——我的７天</title>
<meta content="7天酒店入口，7天酒店登陆，7天酒店注册" name="Keywords">
<meta content="免费注册7天连锁酒店会员，可及时、轻松、快捷预订酒店客房，更可以享受会员优惠服务。" name="Description">
<link href="images/main.css" rel="stylesheet" type="text/css">
<script type="text/javascript">pic_domain_url = 'http://img1.7daysinn.cn//upload/webpic/';ad_arr = new Array();ad_arr[0] = new Array('www_club_left_3','1','c888db250c95bf37286efc5a07b8e303.jpg','http://www.7daysinn.cn/cent2000.html','212','80');ad_arr[1] = new Array('www_about_left_2','1','bf62a7e63c2d2a86ebb145d4f283370e.gif','http://www.7daysinn.cn/about_join.html','212','80');ad_arr[2] = new Array('www_gift_centre','1','0738c81a85248d7b292480e08d4cc8ff.jpg','http://www.7daysinn.cn/jifen.php','212','80');ad_arr[3] = new Array('www_gift_centre_banner_top','1','c9f9d9762305d57a43175488ee70a921.jpg','http://www.7daysinn.cn/my_gifts.php','555','129');ad_arr[4] = new Array('www_gift_centre_banner_top','1','e8e1d16ca50f6c50614bb9e246fab7b3.jpg','http://www.7daysinn.cn/gifts.php?qt1=49&gtp=10','555','129');ad_arr[5] = new Array('www_gift_centre_banner_top','1','312251c27e60ef7665eb61684df210d2.jpg','http://www.7daysinn.cn/activity.php?action=exchange','555','129');ad_arr[6] = new Array('www_index_new','1','b6099e9ae70764e62a2a0e030fcd9661.jpg','http://www.7daysinn.cn/activity.php?action=gjh114','200','150');ad_arr[7] = new Array('www_index_new','1','8812985fed7ab2bf7a30029c7d6c3faf.jpg','http://www.7daysinn.cn/activity.php?action=mbsale','200','150');ad_arr[8] = new Array('www_index_new','1','afb12806b2b9c48a22ae71f4a7d1833a.jpg','http://www.7daysinn.cn/wish2014.php','200','150');ad_arr[9] = new Array('www_index_new','1','124036fed19f1b27dedf23a13cd36719.jpg','http://www.7daysinn.cn/guanhuai.php','200','150');ad_arr[10] = new Array('www_index_new','1','811da1939372233b5d9edcbfa8514764.jpg','http://www.7daysinn.cn/huanlesong.php','200','150');ad_arr[11] = new Array('www_index_new','1','8cadc6db7e82e062fe2a475efe636f32.jpg','http://www.7daysinn.cn/goodmind9.php','200','150');ad_arr[12] = new Array('www_index_new','1','6b01379b551f233c8f8d864979b33a07.jpg','http://www.7daysinn.cn/sprgift.php','200','150');ad_arr[13] = new Array('www_index_new','1','295e348771aa4042cd30d3fe72ed86bd.jpg','http://www.7daysinn.cn/jifen.php','200','150');ad_arr[14] = new Array('www_index_new','1','b96d1cc2f0816116a1b8e34a5ab74f34.jpg','http://www.7daysinn.cn/activity_email_bind.php','200','150');ad_arr[15] = new Array('www_index_new','1','7064a560a4ab9587d888ac11746d75ca.jpg','http://www.7daysinn.cn/activity.php?action=cashback','200','150');ad_arr[16] = new Array('www_index_new','1','9b2ac4595a9576ca27263bf3a3f8c03d.jpg','http://www.7daysinn.cn/activity_lucky.php','200','150');ad_arr[17] = new Array('www_index_new','1','a63989984ee970f9a9a8d852e351763a.jpg','http://cps.hicdma.com//Transfer.do?from=100350&sfrom=&target=http://www.hicdma.com/zt/1304/7t/index.jsp?WT.mc_id=130523-YueHuiQT-SY_lunbo','200','150');ad_arr[18] = new Array('www_index_new','1','cbb0e5bd525d1a64b5670bd5b9498983.jpg','activity.php?action=99','200','150');ad_arr[19] = new Array('www_index_new','1','b029f2f8ef0d08c43f0468c6fd625c64.jpg','http://www.7daysinn.cn/activity.php?action=xly','200','150');ad_arr[20] = new Array('www_index_new','1','d91eed9a1476311a8e13614aa874e6af.jpg','http://www.7daysinn.cn/goodmind10.php','200','150');ad_arr[21] = new Array('www_index_new','1','9fe8c4b8d54cb1efcb408f053065ef3e.jpg','http://www1.poco.cn/topic/portofino','200','150');ad_arr[22] = new Array('www_index_new','1','b17827f557fd4f0b10a462aa49aa8b1c.jpg','http://www.7daysinn.cn/goodmind11.php','200','150');ad_arr[23] = new Array('www_index_new','1','fb528dacaf777e4c70686cb1558dc096.jpg','http://www.7daysinn.cn/activity.php?action=alipay','200','150');ad_arr[24] = new Array('www_index_new','1','8bf4eebe0fd07501e325d16bee8ab85f.jpg','http://www.7daysinn.cn/activity.php?action=1212','200','150');ad_arr[25] = new Array('www_index_new','1','696c098b80fea7843878e1b3679daad8.jpg','http://www.jjcoffetel.cc/ptbook','200','150');ad_arr[26] = new Array('www_index_new','1','9c87f9181c34116dd5d013e8a56f70d3.jpg','http://www.7daysinn.cn/activity.php?action=weixin_newyear','200','150');ad_arr[27] = new Array('www_index_new','1','31dbaf46a4ba282cb7a06b0d48ba121a.jpg','http://www.7daysinn.cn/activity.php?action=gjh2014','200','150');ad_arr[28] = new Array('www_index_new','1','9dfab9976a757c41af84f2ed798060d4.jpg','http://ww','200','150');ad_arr[29] = new Array('new_www_index_right_1','1','4d5848a8af58affd1340461308719a31.gif','http://www.7daysinn.cn/qadd.php','200','200');ad_arr[30] = new Array('new_www_index_right_2','1','7dd9e1bfa1039dd608c9836bb202fc55.gif','http://www.7daysinn.cn/about_partner.html','200','200');ad_arr[31] = new Array('www_coo_banner','1','c1766ebd8290968a364b52cbfbff1b51.jpg','http://www.7daysinn.cn/cooperate_58.html','460','120');ad_arr[32] = new Array('www_coo_right_2','1','3f60043458a14e9e76fd0f7a5716c56b.jpg','http://www.7daysinn.cn/cooperate_126.html','160','80');ad_arr[33] = new Array('www_coo_right_2','1','50f432411ef6614462c4c5ac5a87fe30.jpg','http://www.7daysinn.cn/cooperate_102.html','160','80');ad_arr[34] = new Array('www_index_left_bottom','1','624fcb57c7bce06e197e60a8015a25f4.jpg','http://www.7daysinn.cn/about_join.html#youpin','300','211');ad_arr[35] = new Array('book_left','1','4b6de15ebd56a2d1478bd189624d1b3c.jpg','http://www.7daysinn.cn/activity.php?action=weixin','218','118');ad_arr[36] = new Array('book_left','1','df40cf2fedb570c146f233aa7e1621ab.jpg','http://www.7daysinn.cn/wish2014.php','218','118');ad_arr[37] = new Array('book_left','1','2f1ed268f493f2d2d1b5485cab19d7f3.jpg','http://www.7daysinn.cn/activity_lucky.php','218','118');ad_arr[38] = new Array('new_index_center','1','24b1ba620e2dc95993fdf45bce8abfeb.jpg','http://www.7daysinn.cn/gift77.php','279','46');ad_arr[39] = new Array('new_index_center','1','2d0ff0ec9fa3d2f40734b30f5420dab8.jpg','http://www.7daysinn.cn/activity.php?action=88','279','46');ad_arr[40] = new Array('new_index_right_bottom','1','ab979baa932670c412613a73bfc3ed14.gif','http://www.7daysinn.cn/qadd.php','190','118');ad_arr[41] = new Array('new_index_right_bottom','1','831eabb4117869cc3c9bf3939a46ea72.gif','http://www.7daysinn.cn/about_partner.html','190','118');</script><script language="javascript" type="text/javascript" src="images/jquery.js"></script>
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
	
	var s = "<a href='my_order.php' >订单管理</a>&nbsp;<span class=nalsecimg> </span>&nbsp;<a href='my_gifts.php' target='_blank'>7天商城</a>&nbsp;<span class=nalsecimg> </span>&nbsp;<a href='manual.php?fid=2' target='_blank'>帮助中心</a>";
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
        <div class="user_info" id="myinfo">注册会员：陈国庆&nbsp;&nbsp;&nbsp;0积分</div>
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
  <link href="images/my7day.css" rel="stylesheet" type="text/css">
  <link rel="stylesheet" href="images/tipswindown.css" type="text/css" media="all">
  <script type="text/javascript" src="images/tipswindown.js"></script> 
  <script language="javascript" type="text/javascript" src="images/Validator.js"></script> 
  <script src="images/jquery_002.js" type="text/javascript"></script>
  <style>
.transbox{
filter:alpha(opacity=1);
-moz-opacity:0.01;
opacity: 0.01;
position:absolute;
background-color:#000;
left: 245px;
	top: 135px;
	width: 212px;
	height: 780px;
}
.transbox2{
filter:alpha(opacity=1);
-moz-opacity:0.01;
opacity: 0.01;
position:absolute;
background-color:#000;
left: 255px;
	top: 10px;
	width: 855px;
	height: 115px;
}
.transbox3{
filter:alpha(opacity=1);
-moz-opacity:0.01;
opacity: 0.01;
position:absolute;
background-color:#000;
left: 255px;
	top: 925px;
	width: 805px;
	height: 100px;
}
</style>
  <script>  
function checkpass(){      
    window.alert("您的密码过于简单！为了您的账户安全，请您先修改密码！") ;      
}  

function changeMail(){
	$.ajax({
		type: 'POST',
		url: './ajax/changeInfoCode.php',
		data: 't=mail&u='+$("#sEmail").val()+'&r='+Math.random(),
		success: function(msg) {
			if(msg != null) {
				showTipsWindown("提示信息", msg, 300, 120);
			}else{
				showTipsWindown("提示信息", "failID", 300, 120);
			}
		}
	});
}

function checkInfo(t){
	$mobile=$("#Mobile").html();
	if($mobile == null || $mobile=='' || $mobile =='请完善手机号码'){
		alert("请先添加手机号码，再执行此操作");
		return false;
	}else{
		return Validator.Validate(t,3)
	}
}

</script>
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
              <li><a href="http://www.7daysinn.cn/my_order.php">我的订单</a></li>
            </ul>
          </div>
          <div class="titnav">
            <h4 class="ic03"><a href="http://www.7daysinn.cn/my_7daysinn.php">信息管理</a></h4>
          </div>
          <div class="my7day-list02">
            <ul>
              <li><a href="http://www.7daysinn.cn/my_info.php">个人资料管理</a></li>
              <li><a href="http://www.7daysinn.cn/my_name.php">常用姓名</a></li>
              <li><a href="http://www.7daysinn.cn/my_hotel.php">常住酒店</a></li>
              <li><a href="http://www.7daysinn.cn/my_paymanager.php">我的支付管理</a><img src="images/icon_new_16x16.gif"></li>
            </ul>
          </div>
          <div class="titnav">
            <h4 class="ic05">社区信息</h4>
          </div>
          <div class="my7day-list02">
            <ul>
              <!-- <li><a href="my_club_info.php">社区资料</a></li> -->
              <li><a href="http://www.7daysinn.cn/sec_robot.php">我要留言</a></li>
              <li><a href="http://bbs.7daysinn.cn/myList?tpid=2&amp;card_no=Y">我的留言</a></li>
            </ul>
          </div>
        </div>
        <div class="my7day-left_bottom"></div>
      </div>
    </div>
    <div class="my7day-right">
      <div class="contbox">
        <div class="intitle">
          <div class="left"><img src="images/bar2_left.gif" alt=""></div>
          <h4 class="icon_round22">详细资料</h4>
          <div class="right"><img src="images/bar2_right.gif" alt=""></div>
        </div>
        <div class="tabcon">
          <div class="menber_tit"><strong>尊敬的会员,以下是您的注册资料</strong></div>
          <div class="con_mt3">
            <table class="tablist03" cellpadding="0" cellspacing="0">
              <tbody>
                <tr>
                  <th class="bggray" width="120">卡号</th>
                  <td>15116095367</td>
                </tr>
                <tr>
                  <th class="bggray">姓名</th>
                  <td>陈国庆</td>
                </tr>
                <tr>
                  <th class="bggray">证件号码</th>
                  <td>4****************5</td>
                </tr>
                <tr>
                  <th class="bggray">注册时间</th>
                  <td>2013年10月30日</td>
                </tr>
              </tbody>
            </table>
          </div>
          <div class="menber_tit con_mt3"><strong>如果您的姓名或证件号码有错误，请点击 <a href="javascript:showTipsWindown('%E4%BF%AE%E6%94%B9%E6%B3%A8%E5%86%8C%E8%B5%84%E6%96%99','innerbox',450,220);" class="cOrange">‘修改方法’</a></strong></div>
          <div class="con_mt3">
            <table class="tablist03" cellpadding="0" cellspacing="0">
              <form name="form" id="form" onsubmit="return checkInfo(this)" method="post" action="">
              </form>
              <tbody>
              <input name="submit" value="save" type="hidden">
              <tr>
                <th class="bggray" width="120">新密码</th>
                <td><input name="password" class="input00" style="width:152px;" datatype="LimitP" min="6" max="18" require="false" msg="密码需包含数字和字母，长度6-18位" type="password">
                  <span class="cGray">(如不修改请留空)</span></td>
              </tr>
              <tr>
                <th class="bggray">重复新密码</th>
                <td><input class="input00" style="width:152px;" name="repassword" datatype="Repeat" to="password" msg="两次输入的密码不一致" require="false" type="password"></td>
              </tr>
              <tr>
                <th class="bggray">手机号码</th>
                <td><div>
                    <ul>
                      <li class="cGray" style="width: 160px;float: left;" id="Mobile">151****5367</li>
                      <li> 
                        <!--								<input name="Mobile" id="Mobile" class="input00" type="text" style="width:152px;color:#666;" value="15116095367" readonly dataType="Require" msg="(请输入接收<strong>确认短信</strong>的手机或小灵通号码,手机号码前无须加&quot;0&quot;,小灵通号码必须加区号,区号无须加&quot;-&quot;,   如：手机:13*********,小灵通:010********)">-->
                        <input onclick="showTipsWindownByUrl('修改注册手机号码','changeusermobile.php?act=v',396,210)" value="修改手机" name="cm" id="cm" type="button">
                      </li>
                    </ul>
                  </div></td>
              </tr>
              <tr>
                <th class="bggray">电话号码</th>
                <td><input name="isChangeMobile" id="isChangeMobile" value="555" type="hidden">
                  <input name="TelePhone" class="input00" style="width:152px;" require="false" msg="请输入固定电话号码,无需加86" type="text">
                  <span class="cGray">(固定电话号码，无需加86)</span></td>
              </tr>
              <tr>
                <th class="bggray">出生年月</th>
                <td><!--							  <input name="Birthday" type="text" class="input00" style="width:152px;" value="1987-10-03" readonly style="color:#666;border:solid 1px #CCC"> --> 
                  <!--							  <span class="cGray">(格式：yyyy-mm-dd)</span>-->
                  
                  <div>
                    <ul>
                      <li class="cGray" style="width: 160px;float: left;">1987-10-03</li>
                      <li class="cGray">(格式：yyyy-mm-dd)</li>
                    </ul>
                  </div></td>
              </tr>
              <tr>
                <th class="bggray">电子邮箱</th>
                <td><div>
                    <ul>
                      <li class="cGray" style="width: 160px;float: left;">请完善邮箱</li>
                      <!--							  <input name="Email" type="text"  dataType="Email" msg="信箱格式不正确" value="" readonly class="input00" style="width:152px;color:#666;">-->
                      <li>
                        <input onclick="showTipsWindownByUrl('修改注册邮箱','changeuseremail.php?act=v',396,210)" value="添加邮箱" name="cm" id="cm" type="button">
                        &nbsp;&nbsp; <a class="cOrange" href="http://www.7daysinn.cn/activity_email_bind.php">首次验证邮箱获取100积分</a> </li>
                    </ul>
                  </div></td>
              </tr>
              <tr>
                <th class="bggray">地址</th>
                <td><input name="Address" size="40" require="false" msg="请输入您的联系地址" class="input00" style="width:280px;" type="text"></td>
              </tr>
              <tr>
                <th class="bggray">当前密码</th>
                <td><input name="myPassword" size="40" value="" class="input00" style="width:280px;" datatype="Require" msg="请输入您的当前密码" type="password"></td>
              </tr>
                </tbody>
              
            </table>
          </div>
          <div class="con_mt3 sub_con">
            <input value="" class="bn1" type="submit">
          </div>
        </div>
      </div>
      <div class="my7day-right-bottom"></div>
      <div class="marignbtm08" id="innerbox" style="display:none;">
        <div class="blueborder2">
          <p align="left">如果您的姓名或证件号码有误，请提供以下资料，亲临分店前台或自行传真至客服中心020-89226577-8002进行修改：</p>
          <table cellpadding="0" cellspacing="1" bgcolor="#eaeaea" width="100%">
            <tbody>
              <tr>
                <td align="left" bgcolor="#F7F7F7" height="30px">1、会员卡（号）; </td>
              </tr>
              <tr>
                <td align="left" bgcolor="#FFFFFF" height="30px">2、会员本人身份证件复印件（请注明修改前、后的内容，会员本人签名）；</td>
              </tr>
            </tbody>
          </table>
          <p align="left">客服中心会在收到传真后48小时内完成修改，并将密码短信发送至您登记的手机。</p>
          <table>
            <tbody>
              <tr>
                <td><input name="closeWindown" value="关闭" onclick="js:closeWindown();" type="button"></td>
              </tr>
            </tbody>
          </table>
        </div>
      </div>
    </div>
    <div class="clear"></div>
  </div>
  <div class="blank10"></div>
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
</body>
</html>