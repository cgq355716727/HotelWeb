<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>所有的房间表</title>
    
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
	<script src="<%=basePath%>admin/js/jquery-1.6.min.js" type="text/javascript"></script>
	<link href="images/skin.css" rel="stylesheet" type="text/css" />
<style type="text/css">
.STYLE10 {color: #000000; font-size: 12px; }
.STYLE19 {	color: #344b50;
	font-size: 12px;
}
.STYLE21 {	font-size: 12px;
	color: #3b6375;
}
.STYLE6 {color: #000000; font-size: 12; }
</style>

<script type="text/javascript">
	var JSON;
	$(function(){
		$(".delete").click(del);
		$(".save").click(save);
		getRoomType();
		$(".update").click(update);
	});
	
	function del(){
		if(confirm("确定要删除吗？")){
			var url="room.action?method=deleteRoom";
			var param={};
			param.orderId=$(this).siblings(".orderId").val();
			$.get(url,param,function(data){
				alert(data);
				location.reload();
			});
		
		}
	}
	function save(){
		alert("save");
		var roomNo=$(this).parent().siblings("#roomNo");
		var roomTypeName=$(this).parent().siblings("#roomTypename");
		var param={};
		if($(roomNo).children().length==0&&$(roomTypeName).children().length==0){
			alert("请先修改房间信息");
			return;
		}
		if($(roomNo).children().length!=0){
		
			param.roomNo=$(roomNo).children()[0].value;
		}else{
			param.roomNo=$(roomNo).html();
		}
		if($(roomTypeName).children().length!=0){
		
			param.roomTypeName=$(roomNo).children()[0].value;
		}else{
			param.roomTypeName=$(roomNo).html();
		}
		param.orderId=$(this).siblings(".orderId").val();
		var url="room.action?method=updateRoom";
		$.get(url,function(data){
			alert(data);
		});
	}
	function update(){
		var roomNo=$(this).parent().siblings("#roomNo");		
		var roomNoValue=roomNo.html();
		roomNo.html("<input size='10' heigth='20' type='text' value='"+roomNoValue+"' />");		
		var roomTypeName=$(this).parent().siblings("#roomTypename");
		var defaultName=roomTypeName.html();
		roomTypeName.html("");
		createRoomType(roomTypeName,defaultName);
	}
	
	function getRoomType(){
	
		var url="room.action?method=getRoomTypes";
		$.getJSON(url,function(json){
			JSON=json;
		});
	}
	
	function createRoomType(e,defaultName){
		
	$(e).append("<select  class='roomTypename' name='roomTypename'></select>");
	$(e).children(".roomTypename").change(createRoom);
	for(var i=0;i<JSON.roomTypes.length;i++){
		
		if(JSON.roomTypes[i].roomTypename==defaultName){
			$(e).children(".roomTypename").append("<option selected='selected' value='"+JSON.roomTypes[i].roomTypename+"'>"+JSON.roomTypes[i].roomTypename+"</option>");
		}else{
			$(e).children(".roomTypename").append("<option value='"+JSON.roomTypes[i].roomTypename+"'>"+JSON.roomTypes[i].roomTypename+"</option>");
		}
	}
}
	
</script>


</head>
<body>
<table width="100%" border="0" cellpadding="0" cellspacing="0">
  <tr>
    <td width="17" height="29" valign="top" background="images/mail_leftbg.gif"><img src="images/left-top-right.gif" width="17" height="29" /></td>
    <td width="935" height="29" valign="top" background="images/content-bg.gif"><table width="100%" height="31" border="0" cellpadding="0" cellspacing="0" class="left_topbg" id="table2">
      <tr>
        <td height="31"><div class="titlebt">基本设置</div></td>
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
            <td class="left_txt">当前位置：基本设置</td>
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
                <td width="90%" valign="top"><span class="left_txt2">显示本宾馆所有的房间信息</span><br></td>
              </tr>
            </table></td>
          </tr>
          <tr>
            <td>&nbsp;</td>
          </tr>
          <tr>
            <td><table width="100%" height="31" border="0" cellpadding="0" cellspacing="0" class="nowtable">
              <tr>
                <td class="left_bt2">&nbsp;&nbsp;&nbsp;&nbsp;房间表</td>
              </tr>
            </table></td>
          </tr>
          <tr>
            <td><table width="100%" border="0" cellpadding="0" cellspacing="1" bgcolor="#a8c7ce" >
              <tr>
         
                <td width="10%" height="20" bgcolor="d3eaef" class="STYLE6"><div align="center"><span class="STYLE10">房间编号</span></div></td>
                <td width="15%" height="20" bgcolor="d3eaef" class="STYLE6"><div align="center"><span class="STYLE10">房间类型</span></div></td>
                <td width="14%" height="20" bgcolor="d3eaef" class="STYLE6"><div align="center"><span class="STYLE10">房间价格</span></div></td>
                <td width="16%" height="20" bgcolor="d3eaef" class="STYLE6"><div align="center"><span class="STYLE10">房间描述</span></div></td>
                <td width="16%" height="20" bgcolor="d3eaef" class="STYLE6"><div align="center"><span class="STYLE10">操作</span></div></td>
                </tr>
          	<c:forEach var="room" items="${ rooms}">
              <tr align="center">
                <td id="roomNo" height="20" bgcolor="#FFFFFF" class="STYLE19">${room.roomNo }</td>
                <td id="roomTypename" height="20" bgcolor="#FFFFFF" class="STYLE19">${room.roomTypename }</td>
                <td height="20" bgcolor="#FFFFFF" class="STYLE19">${room.roomPrice }</td>
                <td height="20" bgcolor="#FFFFFF" class="STYLE19">${room.introduction }</td>
                <td height="20" bgcolor="#FFFFFF">
                <input class="orderId" type="hidden" name="orderId" value="${room.roomId }" />
                <input class="delete" type="button" value="删除" />| <input class="update" type="button" value="修改" />|
                 <input class="save" type="button" value="保存" /></td>
              </tr>
              </c:forEach>
            </table></td>
          </tr>
        </table>
          </td>
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
