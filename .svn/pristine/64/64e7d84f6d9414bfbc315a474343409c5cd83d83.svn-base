<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
  <link rel="stylesheet"  href="css/jquery.ui.all.css">
	<link rel="stylesheet"  href="css/demos.css">
 	<script src="./js/jquery-1.6.min.js"></script>	
	<script src="./js/jquery.ui.core.js"></script>
	<script src="./js/jquery.ui.widget.js"></script>
	<script src="./js/jquery.ui.datepicker.js"></script>
	<script src="./js/table.js"></script>
    <base href="<%=basePath%>">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
	<link rel="stylesheet"  href="css/jquery.ui.all.css">
	<link rel="stylesheet"  href="css/demos.css">
 	<script src="./js/jquery-1.6.min.js"></script>	
	<script src="./js/jquery.ui.core.js"></script>
	<script src="./js/jquery.ui.widget.js"></script>
	<script src="./js/jquery.ui.datepicker.js"></script>
	<script src="./js/table.js"></script>
<style type="text/css">
<!--
body {
	margin-left: 0px;
	margin-top: 0px;
	margin-right: 0px;
	margin-bottom: 0px;
	background-color: #F8F9FA;
}
-->
</style>
<link href="images/skin.css" rel="stylesheet" type="text/css" />
<script>
	$(function(){
	
		$( "#from" ).datepicker({
				defaultDate: "+1w",
				changeMonth: true,
				numberOfMonths: 2,
				onClose: function( selectedDate ) {
					$( "#to" ).datepicker( "option",{dateFormat: 'yy-mm-dd'}, "minDate", selectedDate );
				}
		});
		$( "#to" ).datepicker({
			defaultDate: "+1w",
			changeMonth: true,
			numberOfMonths: 2,
			onClose: function( selectedDate ) {
				$( "#from" ).datepicker( "option",{dateFormat: 'yy-mm-dd'}, "maxDate", selectedDate );
			}
		});
	});

</script>
</head>
<body>
<table width="100%" border="0" cellpadding="0" cellspacing="0">
  <tr>
    <td width="17" height="29" valign="top" background="images/mail_leftbg.gif"><img src="images/left-top-right.gif" width="17" height="29" /></td>
    <td width="935" height="29" valign="top" background="images/content-bg.gif"><table width="100%" height="31" border="0" cellpadding="0" cellspacing="0" class="left_topbg" id="table2">
        <tr>
          <td height="31"><div class="titlebt">散客入住</div></td>
        </tr>
      </table></td>
    <td width="16" valign="top" background="images/mail_rightbg.gif"><img src="images/nav-right-bg.gif" width="16" height="29" /></td>
  </tr>
  <tr>
    <td height="71" valign="middle" background="images/mail_leftbg.gif">&nbsp;</td>
    <td valign="top" bgcolor="#F7F8F9"><table width="100%" height="138" border="0" cellpadding="0" cellspacing="0">
        <tr>
          <td height="13" valign="top">&nbsp;</td>
        </tr>
        <tr>
          <td valign="top"><table width="98%" border="0" align="center" cellpadding="0" cellspacing="0">
              <tr>
                <td class="left_txt">当前位置：散客入住</td>
              </tr>
              <tr>
                <td height="20"><table width="100%" height="1" border="0" cellpadding="0" cellspacing="0" bgcolor="#CCCCCC">
                    <tr>
                      <td></td>
                    </tr>
                  </table></td>
              </tr>
              <tr>
                <td><table width="100%" height="55" border="0" cellpadding="0" cellspacing="0">
                    <tr>
                      <td width="10%" height="55" valign="middle"><img src="images/title.gif" width="54" height="55"></td>
                      <td width="90%" valign="top"><span class="left_txt2">在这里，您可以根据您的需要，我们给你登记合适你的房间</span></td>
                    </tr>
                  </table></td>
              </tr>
              <tr>
                <td>&nbsp;</td>
              </tr>
              <tr>
                <td><table width="100%" height="31" border="0" cellpadding="0" cellspacing="0" class="nowtable">
                    <tr>
                      <td class="left_bt2">&nbsp;&nbsp;&nbsp;&nbsp;输入入住信息&nbsp;&nbsp;&nbsp;&nbsp;</td>
                      
                      <c:if test="${ ! empty (msg) }">
                      		${ msg }
                      </c:if>
                    </tr>
                  </table></td>
              </tr>
              <tr>
                <td><table width="80%" border="0" cellspacing="0" cellpadding="0">
                      <form name="form1" method="POST" action="order.action?method=addOrder">
                    
                    <tr>
                      <td width="34%" height="30" align="right" bgcolor="#f2f2f2" class="left_txt2">真实姓名：</td>
                      <td width="4%" bgcolor="#f2f2f2">&nbsp;</td>
                      <td width="26%" height="30" bgcolor="#f2f2f2"><input name="guestName" type="text" id="guestName" size="30" /></td>
                      <td width="36%" height="30" bgcolor="#f2f2f2" class="left_txt"> 预订时用的用户名</td>
                    </tr>
                    <tr>
                      <td height="30" align="right" class="left_txt2">身份证号：</td>
                      <td>&nbsp;</td>
                      <td height="30"><input type="text" name="idCard" size="30" /></td>
                      <td height="30" class="left_txt">身份证号</td>
                    </tr>
                    <tr>
                      <td height="30" align="right" class="left_txt2">房间类型：</td>
                      <td>&nbsp;</td>
                      <td height="30">
                      <select id="roomTypeName"  name="roomTypeName">
                     	 <option >请选择</option>
                      		<c:forEach var="roomType" items="${ roomTypes }" >
                      			<option> ${roomType.roomTypename }</option>                      		
                      		</c:forEach>
                      
                      </select></td>
                      <td height="30" class="left_txt">房间类型</td>
                    </tr>
                    <tr>
                      <td height="30" align="right" class="left_txt2">押金金额：</td>
                      <td>&nbsp;</td>
                      <td height="30"><input type="text" name="deposit" size="30" /></td>
                      <td height="30" class="left_txt">押金金额</td>
                    </tr>
                    <tr>
                      <td height="30" align="right" class="left_txt2">入住时间：</td>
                      <td>&nbsp;</td>
                      <td height="30"><input type="text" id="from" name="checkIn" size="30"/></td>
                      <td height="30" class="left_txt">入住时间</td>
                    </tr>
                    <tr>
                      <td height="30" align="right" class="left_txt2">离开时间：</td>
                      <td>&nbsp;</td>
                      <td height="30"><input type="text" id="to" name="checkOut" size="30"/></td>
                      <td height="30" class="left_txt">离开时间</td>
                      <input type="hidden" name="state" value="2" />
                    </tr>
                    <tr>
                      <td width="34%" height="30" align="right"><input type="submit" value="登记预定" name="B1" /></td>
                      <td width="4%" height="30" align="right">&nbsp;</td>
                      <td width="26%" height="30"><input type="reset" value="取消设置" name="B12" /></td>
                    </tr>
                    <tr>
                      <td height="17" colspan="4" align="right" >&nbsp;</td>
                    </tr>
                    </form>
                </table></td>
              </tr>
            </table></td>
        </tr>
      </table></td>
    <td background="images/mail_rightbg.gif">&nbsp;</td>
  </tr>
  <tr>
    <td valign="middle" background="images/mail_leftbg.gif"><img src="images/buttom_left2.gif" width="17" height="17" /></td>
    <td height="17" valign="top" background="images/buttom_bgs.gif"><img src="images/buttom_bgs.gif" width="17" height="17" /></td>
    <td background="images/mail_rightbg.gif"><img src="images/buttom_right2.gif" width="16" height="17" /></td>
  </tr>
</table>
</body>
</html>
    
    